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
(* Constant Propagation                                                *)
(***********************************************************************)

module St = Stats

module U  = Util
module IM = U.IM

module J  = Java
module JL = Java.Lang
module JN = Java.Net
module I  = Instr
module D  = Dex

module AA = Android.App
module AC = Android.Content
module AD = Android.Database
module AN = Android.Net
module AV = Android.View

module Cf = Ctrlflow
module Df = Dataflow

module I64 = Int64

module L = List
module B = Buffer
module S = String

module RE = Str

(***********************************************************************)
(* Constant Propagation Analysis                                       *)
(***********************************************************************)

type value =
  |  Const of int64           (* numerical constant *)
  | String of string          (* const-string *)
  |  Clazz of string          (* const-class *)
  | Object of string          (* instance *)
  | Intent of string          (* Intent for a specific component *)
  |  Field of string * string (* static fields *)
  | BOT                       (* non-const *)
  | TOP                       (* undefined *)

let meet_val v1 v2 = match v1, v2 with
  | BOT, _ | _, BOT -> BOT
  | TOP, _ -> v2 | _, TOP -> v1
  |  Const c1,  Const c2 when 0 = I64.compare c1 c2 -> v1
  | String s1, String s2 when 0 = S.compare s1 s2 -> v1
  |  Clazz o1,  Clazz o2 when 0 = S.compare o1 o2 -> v1
  | Object o1, Object o2 when 0 = S.compare o1 o2 -> v1
  | Intent i1, Intent i2 when 0 = S.compare i1 i2 -> v1
  | Field (o1, f1), Field (o2, f2)
    when 0 = S.compare o1 o2 && 0 = S.compare f1 f2 -> v1
  | _, _ -> BOT

let compare_val v1 v2 = match v1, v2 with
  | BOT, BOT | TOP, TOP -> 0
  | BOT, _ -> -1 | _, BOT -> 1
  | _, TOP -> -1 | TOP, _ -> 1
  |  Const c1,  Const c2 -> I64.compare c1 c2
  | String s1, String s2 ->   S.compare s1 s2
  |  Clazz o1,  Clazz o2 ->   S.compare o1 o2
  | Object o1, Object o2 ->   S.compare o1 o2
  | Intent i1, Intent i2 ->   S.compare i1 i2
  | Field (o1, f1), Field (o2, f2) ->
    let c = S.compare o1 o2 in if c <> 0 then c else S.compare f1 f2
  | _, _ -> 1 (* not total order; just return either 1 or -1 *)

let val_to_str = function
  |  Const c -> I64.to_string c
  | String s -> "\""^s^"\""
  |  Clazz o -> o
  | Object o -> "Obj("^o^")"
  | Intent i -> "Intent("^i^")"
  | Field (o, f) -> "\""^o^"."^f^"\""
  | BOT -> "non-const"
  | TOP -> "undefined"

let map_to_str l =
  let buf = B.create (IM.cardinal l) in
  let per_kv k v =
    B.add_string buf ("v"^(string_of_int k)^": ");
    B.add_string buf ((val_to_str v)^"\n")
  in
  IM.iter per_kv l;
  B.contents buf

let all (n: int) v : value IM.t =
  L.fold_left (fun acc i -> IM.add i v acc) IM.empty (U.range (-1) (n - 1) [])

let rec get_nth n args =
  if n = 0 then I.of_reg (L.hd args) else get_nth (n-1) (L.tl args)

let get_this args = get_nth 0 args
let get_1st  args = get_nth 1 args

let rec transfer (dx: D.dex) (inn: value IM.t) (ins: D.link) : value IM.t =
  let op, opr = D.get_ins dx ins in
  let hx = I.op_to_hx op in
  if 0x00 = hx then (* NOP *)
    inn
  else if L.mem hx (U.range 0x01 0x09 []) then (* MOVE *)
  (
    let dst::src::[] = opr in
    let d = I.of_reg dst
    and s = I.of_reg src in
    IM.add d (IM.find s inn) inn
  )
  else if L.mem hx (U.range 0x0a 0x0d []) then (* MOVE_RESULT *)
  (
    let dst::[] = opr in
    let d = I.of_reg dst in
    IM.add d (IM.find (-1) inn) inn
  )
  else if L.mem hx (U.range 0x12 0x1c []) then (* CONST *)
  (
    let dst::src::[] = opr in
    let d = I.of_reg dst in
    IM.add d (read_const dx op src) inn
  )
  else if 0x1f = hx then (* CHECK-CAST *)
  (
    let dst::id::[] = opr in
    let d = I.of_reg dst
    and cid = D.opr2idx id in
    match IM.find d inn with
    | Object _ ->
	  let cname = D.get_ty_str dx cid in
      IM.add d (Object cname) inn
    | _ -> IM.add d BOT inn
  )
  else if 0x22 = hx then (* NEW *)
  (
    let dst::id::[] = opr in
    let d = I.of_reg dst
    and cid = D.opr2idx id in
    let cname = D.get_ty_str dx cid in
    (* java.lang.StringBuilder, java.net.InetSocketAddress,
       or org.apache.http.client.methods.* *)
    if 0 = S.compare cname (J.to_java_ty JL.sbd)
    || 0 = S.compare cname (J.to_java_ty JN.isoc)
    || L.mem cname (J.Apache.uri_reqs ())
    then
      IM.add d (String "") inn
    else
    (* android.content.Intent *)
    if 0 = S.compare cname (J.to_java_ty AC.intent) then
      IM.add d (Intent "") inn
    else
      IM.add d (Object cname) inn
  )
  else if L.mem hx (U.range 0x32 0x3d [0x2b; 0x2c]) then (* SWITCH/IF(z) *)
    inn
  else if L.mem hx (U.range 0x60 0x66 []) then (* SGET *)
  (
    let dst::id::[] = opr in
    let d = I.of_reg dst
    and fid = D.opr2idx id in
    let cid = D.get_cid_from_fid dx fid in
    let cname = J.of_java_ty (D.get_ty_str dx cid)
    and fname = D.get_fld_name dx fid in
    IM.add d (Field (cname, fname)) inn
  )
  else if L.mem hx (U.range 0x6e 0x72 (U.range 0x74 0x78 [])) then (* INVOKE *)
  (
    let mid = D.opr2idx (U.get_last opr) in
    try
      let reg_x = get_this opr in
      let this = IM.find reg_x inn in
      let cid = D.get_cid_from_mid dx mid in
      let cname = J.of_java_ty (D.get_ty_str dx cid)
      and mname = D.get_mtd_name dx mid in
      match this with
      (* *.<init>(String,...), StringBuilder.append, or String.concat *)
      | String x
      when (0 = S.compare mname J.init)
        || (0 = S.compare cname JL.sbd && 0 = S.compare mname JL.append)
        || (0 = S.compare cname JL.str && 0 = S.compare mname JL.concat) ->
      (
        let reg_y = get_1st opr in
        let xy =
          match IM.find reg_y inn with
          |  Const _ when 0 = S.compare mname J.init -> this
          |  Const y -> String (x^(I64.to_string y))
          | String y -> String (x^y)
          | _ -> BOT
        in
        IM.add (-1) xy (IM.add reg_x xy inn)
      )
      (* String.to(Lower|Upper)Case *)
      | String x
      when 0 = S.compare cname JL.str &&
        (0 = S.compare mname JL.lower || 0 = S.compare mname JL.upper) ->
      (
        let x' =
          if 0 = S.compare mname JL.lower then S.lowercase x else S.uppercase x
        in
        IM.add (-1) (String x') inn
      )
      (* *.toString, *.valueOf, Uri.(parse|getHost), Cursor.move* *)
      | _ when 0 = S.compare mname JL.to_s || 0 = S.compare mname JL.v_of
        || (0 = S.compare cname AN.uri &&
            (0 = S.compare mname AN.parse || 0 = S.compare mname AN.getHost))
        || (0 = S.compare cname AD.cursor && U.begins_with mname "move") ->
      (
        IM.add (-1) this inn
      )
      (* Activity.managedQuery or ContentProvider.query *)
      | _ when 0 = S.compare mname AA.query || 0 = S.compare mname AC.query ->
      (
        let reg_y =
          if L.mem hx (U.range 0x6e 0x72 []) then get_1st opr 
          else (* INVOKE/RANGE *) reg_x + 1
        in
        IM.add (-1) (IM.find reg_y inn) inn
      )
      (* Cursor.getColumnIndex(OrThrow) *)
      | _ when 0 = S.compare cname AD.cursor
        && (0 = S.compare mname AD.get_col_idx
          || 0 = S.compare mname AD.get_col_idx_e) ->
      (
        let reg_y = get_1st opr in
        let xy =
          match this, IM.find reg_y inn with
          | Field (c, _), String y when U.begins_with y "data" -> Field(c, y)
          | String x, String y when U.begins_with y "data" -> String (x^"."^y)
          | _, String y -> String y
          | _ -> BOT
        in
        IM.add (-1) xy inn
      )
      (* Uri.withAppendedPath or ContentUris.withAppendedId *)
      | _ when (0 = S.compare cname AN.uri && 0 = S.compare mname AN.appended)
        || (0 = S.compare cname AC.uris && 0 = S.compare mname AC.appended) ->
      (
        let reg_y = get_1st opr in
        let xy =
          match this, IM.find reg_y inn with
          | Field (c, _), String y -> Field (c, y)
          | Field (c, _), Const  i -> Field (c, I64.to_string i)
          | Field (c, _), TOP -> Field (c, ".*")
          | _ -> BOT
        in
        IM.add (-1) xy inn
      )
      (* TODO: String.format *)
      (* Thread.<init>(Runnable) *)
      | Object o when 0 = S.compare mname J.init && 3 = L.length opr
        && 0 = S.compare o (J.to_java_ty J.Lang.thd) ->
      (
        let reg_y = get_1st opr in
        let y =
          match IM.find reg_y inn with
          | Object o' -> Object o'
          | _ -> this
        in
        IM.add reg_x y inn
      )
      (* Intent.(<init> | setClass)(..., Class | Uri) *)
      | Intent _
      when (0 = S.compare mname J.init && 4 = L.length opr)
        || 0 = S.compare mname AC.set_class ->
      (
        let reg_z = get_nth 2 opr in
        let z =
          match IM.find reg_z inn with
          | String s | Clazz s -> Intent s
          | _ -> this
        in
        IM.add (-1) z (IM.add reg_x z inn)
      )
      (* findViewById(I) *)
      | _ when 0 = S.compare mname AA.find_view ->
      (
        let view = J.to_java_ty AV.view in
        IM.add (-1) (Object view) inn
      )
    with Match_failure _ ->
      let rtid = D.get_rety dx (D.get_mit dx mid) in
      let rety = J.of_java_ty (D.get_ty_str dx rtid) in
      if 0 = S.compare rety JL.str then
        IM.add (-1) (String ".*") inn
      else
        IM.add (-1) BOT inn
  )
  (* NOTE: can improve precesion if necessary *)
  else (* ambiguously define the value for the destination *)
  (
    try
      let dst::_ = opr in
      let d = I.of_reg dst in
      IM.add d BOT inn
    with Match_failure _ -> inn
  )

and read_const (dx: D.dex) (op: I.opcode) (opr: I.operand) : value =
  match op, opr with
  | I.OP_CONST_STRING_JUMBO, I.OPR_INDEX sid
  | I.OP_CONST_STRING, I.OPR_INDEX sid ->
    String (D.get_str dx (D.to_idx sid))
  | I.OP_CONST_CLASS,  I.OPR_INDEX cid ->
    Clazz (D.get_ty_str dx (D.to_idx cid))
  | I.OP_CONST_HIGH16, I.OPR_CONST c ->
    Const (I64.shift_left c (32 - 16))
  | I.OP_CONST_WIDE_HIGH16, I.OPR_CONST c ->
    Const (I64.shift_left c (64 - 16))
  | _, I.OPR_CONST c -> Const c
  | _, _ -> BOT

(* NOTE: cannot use Df instead of Dataflow here *)
type propagation = (module Dataflow.ANALYSIS
  with type st = D.link and type l = (value IM.t))

(* make_dfa : D.dex -> D.code_item -> propagation *)
let make_dfa (dx: D.dex) (citm: D.code_item) : propagation =
  let cfg = St.time "cfg" (Cf.make_cfg dx) citm in
  let cm = St.time "cfg" (Cf.to_module dx) cfg in
  let module CF = (val cm : Cf.CTRLFLOW with type st = D.link) in
  let module RegVal : Df.LATTICE with type l = (value IM.t) =
  struct
    type l = value IM.t
    let bot = all citm.D.registers_size BOT
    let top = all citm.D.registers_size TOP

    let meet l1 l2 =
      let wrapper _ vo1 vo2 = match vo1, vo2 with
        | Some v1, Some v2 -> Some (meet_val v1 v2)
        | Some _, None -> vo1
        | None, Some _ -> vo2
        | _, _ -> None
      in
      IM.merge wrapper l1 l2

    let compare l1 l2 =
      IM.compare compare_val l1 l2

    let to_s = map_to_str

  end
  in
  let module PFlow : Df.DATAFLOW with type l = RegVal.l and type st = CF.st =
  struct
    type l = RegVal.l
    type st = CF.st

    let init (ins: st) : l =
      let _, opr = D.get_ins dx ins in
      let per_opr acc = function
        | I.OPR_REGISTER v -> IM.add v TOP acc
        | _ -> acc
      in
      L.fold_left per_opr IM.empty opr

    let trans (inn: l) (ins: st) : l =
      transfer dx inn ins
  end
  in
  let module DFA = Df.FwDFA (Df.Worklist) (RegVal) (CF) (PFlow) in
  (module DFA : Dataflow.ANALYSIS
    with type st = D.link and type l = (value IM.t))

