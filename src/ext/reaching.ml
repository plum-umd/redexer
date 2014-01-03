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
(* Reaching Definition                                                 *)
(***********************************************************************)

module St = Stats

module U  = Util
module IM = U.IM

module I = Instr
module D = Dex

module Cf = Ctrlflow
module Df = Dataflow

module I32 = Int32

module L = List

module Pf = Printf
module B = Buffer

(***********************************************************************)
(* Reaching Definition Analysis                                        *)
(***********************************************************************)

let compare_off off1 off2 = match off1, off2 with
  | D.Off o1, D.Off o2 -> I32.compare o1 o2

(* bot_off = D.no_off *)
let top_off = D.to_off (I32.to_int I32.max_int)

let meet_off off1 off2 =
  if compare_off off1 off2 < 0 then off1 else off2

let all (n: int) v : D.link IM.t =
  L.fold_left (fun acc i -> IM.add i v acc) IM.empty (U.range 0 (n - 1) [])

let transfer (dx: D.dex) (inn: D.link IM.t) (ins: D.link) : D.link IM.t =
  let op, opr = D.get_ins dx ins in
  let hx = I.op_to_hx op in
  if L.mem hx (U.range 0x01 0x0d []) (* MOVE *)
  || L.mem hx (U.range 0x12 0x1c []) (* CONST *)
  || op = I.OP_ARRAY_LENGTH
  || L.mem hx (U.range 0x22 0x23 []) (* NEW *)
  || L.mem hx (U.range 0x2d 0x31 []) (* COMPARE *)
  || L.mem hx (U.range 0x44 0x4a []) (* AGET *)
  || L.mem hx (U.range 0x52 0x58 []) (* IGET *)
  || L.mem hx (U.range 0x60 0x66 []) (* SGET *)
  || (0x7b <= hx && hx <= 0xe2) (* mathematical op *)
  then
    let d = I.of_reg (L.hd opr) in IM.add d ins inn
  else inn

(* NOTE: cannot use Df instead of Dataflow here *)
type reaching = (module Dataflow.ANALYSIS
  with type st = D.link and type l = (D.link IM.t))

(* make_dfa : D.dex -> D.code_item -> reaching *)
let make_dfa (dx: D.dex) (citm: D.code_item) : reaching =
  let cfg = St.time "cfg" (Cf.make_cfg dx) citm in
  let cm = St.time "cfg" (Cf.to_module dx) cfg in
  let module CF = (val cm : Cf.CTRLFLOW with type st = D.link) in
  let module RegOff : Df.LATTICE with type l = (D.link IM.t) =
  struct
    type l = D.link IM.t
    let bot = all citm.D.registers_size D.no_off
    let top = all citm.D.registers_size top_off

    let meet l1 l2 =
      let wrapper _ vo1 vo2 = match vo1, vo2 with
        | Some v1, Some v2 -> Some (meet_off v1 v2)
        | Some _, None -> vo1
        | None, Some _ -> vo2
        | _, _ -> None
      in
      IM.merge wrapper l1 l2

    let compare l1 l2 =
      IM.compare compare_off l1 l2

    let to_s l =
      let buf = B.create (IM.cardinal l) in
      let per_kv k v =
        if v <> D.no_off then
        (
          B.add_string buf ("v"^(string_of_int k)^": ");
          B.add_string buf (Pf.sprintf "0x%08X\n" (D.of_off v))
        )
      in
      IM.iter per_kv l;
      B.contents buf
  end
  in
  let module RFlow : Df.DATAFLOW with type l = RegOff.l and type st = CF.st =
  struct
    type l = RegOff.l
    type st = CF.st

    let init (ins: st) : l =
      let _, opr = D.get_ins dx ins in
      let per_opr acc = function
        | I.OPR_REGISTER v -> IM.add v top_off acc
        | _ -> acc
      in
      L.fold_left per_opr IM.empty opr

    let trans (inn: l) (ins: st) : l =
      transfer dx inn ins
  end
  in
  let module DFA = Df.FwDFA (Df.Worklist) (RegOff) (CF) (RFlow) in
  (module DFA : Dataflow.ANALYSIS
    with type st = D.link and type l = (D.link IM.t))

