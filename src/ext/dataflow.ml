(*
 * Copyright (c) 2010-2014,
 *  Jinseong Jeon <jsjeon@cs.umd.edu>
 *  Kris Micinski <micinski@cs.umd.edu>
 *  Jeff Foster   <jfoster@cs.umd.edu>
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 * this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 * this list of conditions and the following disclaimer in the documentation
 * and/or other materials provided with the distribution.
 *
 * 3. The names of the contributors may not be used to endorse or promote
 * products derived from this software without specific prior written
 * permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *)

(***********************************************************************)
(* Dataflow                                                            *)
(***********************************************************************)

module St = Stats

module D  = Dex
module Cf = Ctrlflow

module L = List
module H = Hashtbl
module Q = Queue

(***********************************************************************)
(* Data-flow analyses                                                  *)
(***********************************************************************)

let arw = " -> "

module type SCHEDULER =
sig
  type st (* either D.link or I.instr? *)
  val hasNext : unit -> bool
  val next : unit -> st
  val add : st -> unit
end

module Worklist : SCHEDULER with type st = D.link =
struct
  type st = D.link
  let queue = Q.create ()
  let hasNext () = not (Q.is_empty queue)
  let next () = Q.pop queue
  let add e = Q.push e queue
end

module type LATTICE =
sig
  type l
  val bot : l
  val top : l
  val meet : l -> l -> l
  val compare : l -> l -> int
  val to_s : l -> string
end

module type DATAFLOW =
sig
  type l
  type st
  val init : st -> l
  val trans : l -> st -> l
end

module type ANALYSIS =
sig
  type l
  type st
  val to_s : l -> string
  val inn : st -> l
  val out : st -> l
  val fixed_pt : unit -> unit
end

module FwDFA
  (SC: SCHEDULER) (LT: LATTICE)
  (CF: Cf.CTRLFLOW with type st = SC.st)
  (DF: DATAFLOW with type st = SC.st and type l = LT.l)
  : (ANALYSIS with type st = SC.st and type l = LT.l) =
struct
  type l  = LT.l
  type st = SC.st

  let to_s = LT.to_s

  let ins  = H.create 29
  let outs = H.create 29

  let inn s = H.find ins  s
  let out s = H.find outs s

  let fixed_pt () =
    L.iter (fun s -> H.add ins  s LT.bot) CF.all;
    L.iter (fun s -> H.add outs s (DF.init s)) CF.all;
    L.iter (fun s -> SC.add s) CF.all;
    while SC.hasNext () do
      let s = SC.next () in
      let bef_in = inn s
      and per_pred acc s' = St.time "meet" (LT.meet acc) (out s') in
      let aft_in = L.fold_left per_pred LT.top (St.time "cfg" CF.pred s) in
      H.add ins s aft_in;
      let bef_out = out s
      and aft_out = St.time "trans" (DF.trans aft_in) s in
      H.add outs s aft_out;
      if LT.compare bef_out aft_out <> 0 then
      (
        L.iter (fun s' -> SC.add s') (St.time "cfg" CF.succ s);
        Log.v ("IN: "^(LT.to_s bef_in)^arw^(LT.to_s aft_in));
        Log.v (CF.to_s s);
        Log.v ("OUT: "^(LT.to_s bef_out)^arw^(LT.to_s aft_out)^"\n")
      )
    done;
    Log.d "====== Data-flow analysis results ======";
    let per_s s =
      Log.d ("IN: "^(LT.to_s (inn s)));
      Log.d (CF.to_s s);
      Log.d ("OUT: "^(LT.to_s (out s))^"\n")
    in
    L.iter per_s CF.all
end

module BwDFA
  (SC: SCHEDULER) (LT: LATTICE)
  (CF: Cf.CTRLFLOW with type st = SC.st)
  (DF: DATAFLOW with type st = SC.st and type l = LT.l)
  : (ANALYSIS with type st = SC.st and type l = LT.l) =
struct
  type l  = LT.l
  type st = SC.st

  let to_s = LT.to_s

  let ins  = H.create 29
  let outs = H.create 29

  let inn s = H.find ins  s
  let out s = H.find outs s

  let fixed_pt () =
    L.iter (fun s -> H.add outs s LT.bot) CF.all;
    L.iter (fun s -> H.add ins  s (DF.init s)) CF.all;
    L.iter (fun s -> SC.add s) CF.all;
    while SC.hasNext () do
      let s = SC.next () in
      let bef_out = out s
      and per_succ acc s' = St.time "meet" (LT.meet acc) (inn s') in
      let aft_out = L.fold_left per_succ LT.top (St.time "cfg" CF.succ s) in
      H.add outs s aft_out;
      let bef_in = inn s
      and aft_in = St.time "trans" (DF.trans aft_out) s in
      H.add ins s aft_in;
      if LT.compare bef_in aft_in <> 0 then
      (
        L.iter (fun s' -> SC.add s') (St.time "cfg" CF.pred s);
        Log.v ("OUT: "^(LT.to_s bef_out)^arw^(LT.to_s aft_out));
        Log.v (CF.to_s s);
        Log.v ("IN: "^(LT.to_s bef_in)^arw^(LT.to_s aft_in)^"\n")
      )
    done;
    Log.d "====== Data-flow analysis results ======";
    let per_s s =
      Log.d ("IN: "^(LT.to_s (inn s)));
      Log.d (CF.to_s s);
      Log.d ("OUT: "^(LT.to_s (out s))^"\n")
    in
    L.iter per_s CF.all
end
