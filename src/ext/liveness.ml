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
(* Liveness                                                            *)
(***********************************************************************)

module St = Stats

module U  = Util
module IS = U.IS

module I  = Instr
module D  = Dex

module Cf = Ctrlflow
module Df = Dataflow

module L = List
module B = Buffer

(***********************************************************************)
(* Liveness Analysis                                                   *)
(***********************************************************************)

let all (n: int) : IS.t =
  L.fold_left (fun acc i -> IS.add i acc) IS.empty (U.range 0 (n - 1) [])

let only_using op : bool =
  let hx = I.op_to_hx op in
     (0x0e <= hx && hx <= 0x11) (* return *)
  || (0x1d <= hx && hx <= 0x1f) (* monitor, chk-cast *)
  || (0x24 <= hx && hx <= 0x27) (* fill-array, throw *)
  || (0x2b <= hx && hx <= 0x2c) (* switch *)
  || (0x32 <= hx && hx <= 0x3d) (* branch *)
  || (0x4b <= hx && hx <= 0x51) (* aput *)
  || (0x59 <= hx && hx <= 0x5f) (* iput *)
  || (0x67 <= hx && hx <= 0x6d) (* sput *)
  || (0x6e <= hx && hx <= 0x78) (* invoke *)

let pairs op : bool =
  let hx = I.op_to_hx op in
  L.mem op [I.OP_NEG_LONG; I.OP_NOT_LONG; I.OP_NEG_DOUBLE]
  || (0x9b <= hx && hx <= 0xa5) (* bop-long *)
  || (0xab <= hx && hx <= 0xaf) (* bop-double *)
  || (0xbb <= hx && hx <= 0xc5) (* bop/2addr-long *)
  || (0xcb <= hx && hx <= 0xcf) (* bop/2addr-double *)

let defs_pair op : bool =
  pairs op || L.mem op
  [
    I.OP_INT_TO_LONG; I.OP_INT_TO_DOUBLE; I.OP_LONG_TO_DOUBLE;
    I.OP_FLOAT_TO_LONG; I.OP_FLOAT_TO_DOUBLE; I.OP_DOUBLE_TO_LONG
  ]

let used_pair op : bool =
  pairs op || L.mem op
  [
    I.OP_LONG_TO_INT; I.OP_LONG_TO_FLOAT; I.OP_LONG_TO_DOUBLE;
    I.OP_DOUBLE_TO_INT; I.OP_DOUBLE_TO_LONG; I.OP_DOUBLE_TO_FLOAT
  ]

let defs op opr =
  if opr = [] || only_using op then IS.empty else
  match L.hd opr with
  | I.OPR_REGISTER v ->
    let vset = IS.singleton v in
    if defs_pair op then IS.union vset (IS.singleton (v+1)) else vset
  | _ -> IS.empty

let used op opr =
  if opr = [] then IS.empty else
  let reg_filter = function
    | I.OPR_REGISTER _ -> true | _ -> false
  and opr2int = function
    | I.OPR_REGISTER v -> if used_pair op then [v; v+1] else [v]
    | _ -> raise (D.Wrong_dex "filtered?")
  in
  let opr' = if only_using op then opr else L.tl opr in
  let regs = L.map opr2int (L.filter reg_filter opr') in
  L.fold_left (fun acc r -> IS.add r acc) IS.empty (L.flatten regs)

(* NOTE: cannot use Df instead of Dataflow here *)
type liveness = (module Dataflow.ANALYSIS
  with type st = D.link and type l = IS.t)

(* make_dfa : D.dex -> D.code_item -> liveness *)
let make_dfa (dx: D.dex) (citm: D.code_item) : liveness =
  let cfg = St.time "cfg" (Cf.make_cfg dx) citm in
  let cm = St.time "cfg" (Cf.to_module dx) cfg in
  let module CF = (val cm : Cf.CTRLFLOW with type st = D.link) in
  let module Regs : Df.LATTICE with type l = IS.t =
  struct
    type l = IS.t
    let bot = all citm.D.registers_size
    let top = IS.empty

    let meet = IS.union
    let compare = IS.compare

    let to_s l =
      let buf = B.create (IS.cardinal l) in
      B.add_string buf "{ ";
      IS.iter (fun e -> B.add_string buf ("v"^(string_of_int e)^" ")) l;
      B.add_char buf '}';
      B.contents buf
  end
  in
  let module LiveFlow : Df.DATAFLOW with type l = Regs.l and type st = CF.st =
  struct
    type l = Regs.l
    type st = CF.st

    let init (ins: st) : l =
      let op, opr = D.get_ins dx ins in used op opr

    let trans (out: l) (ins: st) : l =
      let op, opr = D.get_ins dx ins in
      let hx = I.op_to_hx op in
      IS.union (used op opr) (IS.diff out (defs op opr))
  end
  in
  let module DFA = Df.BwDFA (Df.Worklist) (Regs) (CF) (LiveFlow) in
  (module DFA : Dataflow.ANALYSIS
    with type st = D.link and type l = IS.t)

