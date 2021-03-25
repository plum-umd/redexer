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

module DA = DynArray
module Pf = Printf
module B = Buffer

(***********************************************************************)
(* Reaching Definition Analysis                                        *)
(***********************************************************************)

(* bot_off = D.no_off *)
let top_off = D.to_off (I32.to_int I32.max_int)

let get_cursor citm off =
  if off = D.no_off then -1 
  else if off = top_off then max_int 
  else DA.index_of (fun e -> e = off) citm.D.insns

let compare_off citm off1 off2 = compare (get_cursor citm off1) (get_cursor citm off2)

let meet_off dx citm off1 off2 =
  if (D.is_ins dx off1) && (D.is_ins dx off2) then
    let (op1, opr1) = D.get_ins dx off1 in
    let (op2, opr2) = D.get_ins dx off2 in
    let hx1 = I.op_to_hx op1 in
    let hx2 = I.op_to_hx op2 in
    (* If hx1 is a const/ and hx2 is a move-object *)
    if (0x12 <= hx1 && hx1 <= 0x15 && 0x07 <= hx2 && hx2 <= 0x09) then
      match opr1 with
      | I.OPR_REGISTER r :: I.OPR_CONST c :: [] when c = 0L -> off2
      | _ -> if compare_off citm off1 off2 < 0 then off1 else off2
    else
      (* If hx2 is a const/ and hx1 is a move-object *)
      if (0x12 <= hx2 && hx2 <= 0x15 && 0x07 <= hx1 && hx1 <= 0x09) then
        (match opr2 with
        | I.OPR_REGISTER r :: I.OPR_CONST c :: [] when c = 0L -> off1
        | _ -> if compare_off citm off1 off2 < 0 then off1 else off2)
      else if compare_off citm off1 off2 < 0 then off1 else off2
  else
    if compare_off citm off1 off2 < 0 then off1 else off2

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

    let meet (l1:l) (l2:l) =
      let wrapper _ vo1 vo2 = match vo1, vo2 with
        | Some v1, Some v2 -> Some (meet_off dx citm v1 v2)
        | Some _, None -> vo1
        | None, Some _ -> vo2
        | _, _ -> None
      in
      IM.merge wrapper l1 l2

    let compare l1 l2 =
      IM.compare (compare_off citm) l1 l2

    let to_s l =
      let buf = B.create (IM.cardinal l) in
      let per_kv k v =
        if v <> D.no_off then
        (
          B.add_string buf ("v"^(string_of_int k)^": ");
          if ((D.of_off v) = 0x7FFFFFFF) then
            B.add_string buf (Pf.sprintf "null\n")
          else
            B.add_string buf (Pf.sprintf "(0x%08X) %s\n" (D.of_off v) (I.instr_to_string (D.get_ins dx v)))
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

