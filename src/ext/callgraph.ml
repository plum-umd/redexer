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
(* Callgraph                                                           *)
(***********************************************************************)

module St = Stats
module DA = DynArray

module U  = Util
module IM = U.IM

module I = Instr
module D = Dex
module J = Java
module V = Visitor

module Adr = Android
module App = Adr.App
module Con = Adr.Content
module Ads = Adr.Ads

module P = Propagation

module L = List
module H = Hashtbl
module S = String

module Pf = Printf

(***********************************************************************)
(* Basic Types/Elements                                                *)
(***********************************************************************)

module IS = Set.Make(D.IdxKey)

type clzz = {
  c_idx : D.link;
  mutable c_mtd : IS.t;
}

type meth = {
  m_idx : D.link;
  mutable m_succs : IS.t; (* its callees; whom does this call? *)
  mutable m_preds : IS.t; (* its callers; who invokes this? *)
}

type cg = {
  clzz_h : (D.link, clzz) H.t;
  meth_h : (D.link, meth) H.t;
}

let op_invoke_itfs = [I.OP_INVOKE_INTERFACE; I.OP_INVOKE_INTERFACE_RANGE]

(***********************************************************************)
(* Utilities                                                           *)
(***********************************************************************)

let pp = Printf.printf

let (@@) l1 l2 = L.rev_append (L.rev l1) l2

let trim_bracket s : string =
  let len = S.length s in
  if S.get s 0 = '<' && S.get s (len-1) = '>'
  then S.sub s 1 (len-2) else s

let get_mtd_name (dx: D.dex) (mid: D.link) =
  trim_bracket (D.get_mtd_name dx mid)

let trim_semicolon s : string =
  let len = S.length s in
  if S.get s (len-1) = ';'
  then S.sub s 0 (len-1) else s

let get_cls_name (dx: D.dex) (cid: D.link) =
  trim_semicolon (D.get_ty_str dx cid)

let find_class cg (cid: D.link) : clzz =
  H.find cg.clzz_h cid

let find_method cg (mid: D.link) : meth =
  H.find cg.meth_h mid

let find_or_new_method (dx: D.dex) cg (mid: D.link) : meth * bool =
  let cid = D.get_cid_from_mid dx mid in
  let clz =
    try find_class cg cid
    with Not_found ->
      let nod = {
        c_idx = cid;
        c_mtd = IS.empty;
      } in
      H.add cg.clzz_h cid nod; nod
  in
  clz.c_mtd <- IS.add mid clz.c_mtd;
  try find_method cg mid, false
  with Not_found ->
    let nod = {
      m_idx = mid;
      m_succs = IS.empty;
      m_preds = IS.empty;
    } in
    H.add cg.meth_h mid nod; nod, true

(* add_call : D.dex -> cg -> D.link -> D.link -> bool *)
let add_call (dx: D.dex) cg (caller: D.link) (callee: D.link) : bool =
  let caller_n, changed_r = find_or_new_method dx cg caller
  and callee_n, changed_e = find_or_new_method dx cg callee
  in
  caller_n.m_succs <- IS.add callee caller_n.m_succs;
  callee_n.m_preds <- IS.add caller callee_n.m_preds;
  changed_r || changed_e

(***********************************************************************)
(* Call Graph                                                          *)
(***********************************************************************)

let cg = {
  clzz_h = H.create 31;
  meth_h = H.create 153;
}

let calc_const (dx: D.dex) (mid: D.link) (ins: D.link) =
  let cid = D.get_cid_from_mid dx mid in
  let _, citm = D.get_citm dx cid mid in
  let dfa = St.time "const" (P.make_dfa dx) citm in
  let module DFA = (val dfa: Dataflow.ANALYSIS
    with type st = D.link and type l = (P.value U.IM.t))
  in
  St.time "const" DFA.fixed_pt ();
  St.time "const" DFA.out ins

(** whether to conduct Intent resolution analysis or not *)
let intent_analysis = ref false

(**
  given instruction, add an edge from caller to callee, if exists,
  and return the callee ids so as to visit them incrementally
*)
let interpret_ins (dx: D.dex) (caller: D.link) (ins: D.link) : D.link list =
  if not (D.is_ins dx ins) then [] else
  let op, opr = D.get_ins dx ins in
  match I.access_link op with
  | I.METHOD_IDS when L.mem op op_invoke_itfs ->
  (
    (* last opr at invoke-kind must be method id *)
    let itf = D.opr2idx (U.get_last opr) in
    let iid = D.get_cid_from_mid dx itf in
    let cname = D.get_ty_str dx iid
    and mname = D.get_mtd_name dx itf
    and impls = D.get_implementers dx iid
    in
    let per_impl acc cid =
      try
        let callee, _ = D.get_the_mtd dx cid mname in
        if add_call dx cg caller callee then callee :: acc else acc
      with D.Wrong_dex _ -> acc
    in
    (* not to add edges that correspond to user interactions *)
    if U.begins_with cname "Landroid" then [] else
      L.fold_left per_impl [] impls
  )
  | I.METHOD_IDS ->
  (
    (* last opr at invoke-kind must be method id *)
    let callee = D.opr2idx (U.get_last opr) in
    let cid = D.get_cid_from_mid dx callee in
    let cname = D.get_ty_str dx cid
    and mname = D.get_mtd_name dx callee in
    (* Component transition *)
    if ((L.mem mname [Con.start_act; Con.start_srv])
      && Adr.is_context dx cid && 2 < L.length opr)
    (* Intent creation *)
    || ((0 = S.compare cname (J.to_java_ty Con.intent))
      && (L.mem mname [J.init; Con.set_class])) then
    (
      let out = calc_const dx caller ins
      and reg =
        (* invoke-* v_intent, ... *)
        if 0 = S.compare cname (J.to_java_ty Con.intent) then L.hd opr
        (* invoke-virtual v_this, v_intent, @mid *)
        else U.get_last (U.rm_last opr)
      in
      let caller_sig = D.get_mtd_sig dx caller in
      match IM.find (I.of_reg reg) out with
      | P.Intent i when D.no_idx <> D.get_cid dx i ->
      (
        let act_cid = D.get_cid dx i in
        let mids = Adr.find_lifecycle_act dx act_cid in
        if [] = mids then [] else
          let callee = L.hd mids in
          if !intent_analysis then
          (
            let callee_sig = D.get_mtd_sig dx callee in
            Log.i (Pf.sprintf "   %s" caller_sig);
            Log.i (Pf.sprintf "~> %s" callee_sig)
          );
          if add_call dx cg caller callee then [callee] else []
      )
      (* Intent, but can't figure out the target component, i.e., implicit *)
      | P.Intent i when !intent_analysis ->
      (
        Log.i (Pf.sprintf "   %s" caller_sig);
        Log.i (Pf.sprintf "~> (implicit)");
        []
      )
      (* in case of non-Intent *)
      | v when !intent_analysis ->
      (
        Log.i (Pf.sprintf "   %s" caller_sig);
        Log.i (Pf.sprintf "~? %s" (P.val_to_str v));
        []
      )
      | _ -> []
    )
    (* Thread.start() *)
    else if 0 = S.compare mname J.Lang.start
      && 0 = S.compare cname (J.to_java_ty J.Lang.thd) then
    (
      let out = calc_const dx caller ins
      and reg = L.hd opr in
      match IM.find (I.of_reg reg) out with
      | P.Object o when D.no_idx <> D.get_cid dx o ->
      (
        let cid = D.get_cid dx o in
        try
          let callee, _ = D.get_the_mtd dx cid J.Lang.run in
          if add_call dx cg caller callee then [callee] else []
        with D.Wrong_dex _ -> []
      )
      | _ -> []
    )
    else (* explicit call relations *)
      if add_call dx cg caller callee then [callee] else []
  )
  | I.TYPE_IDS when op = I.OP_CONST_CLASS ->
  (
    let cid = D.opr2idx (U.get_last opr) in
    if not (Adr.is_fragment dx cid) then [] else
      let mids = Adr.find_lifecycle_act dx cid in
      if [] = mids then [] else
        let callee = L.hd mids in
        if add_call dx cg caller callee then [callee] else []
  )
  | _ -> []

class cg_maker (dx: D.dex) =
object
  inherit V.iterator dx

  method v_cdef (cdef: D.class_def_item) : unit =
    let cname = J.of_java_ty (D.get_ty_str dx cdef.D.c_class_id) in
    skip_cls <- Adr.is_static_library cname || Ads.is_ads_pkg cname

  val mutable caller = D.no_idx
  method v_emtd (emtd: D.encoded_method) : unit =
    caller <- emtd.D.method_idx

  method v_ins (ins: D.link) : unit =
    ignore (interpret_ins dx caller ins)

end

(* make_cg : D.dex -> cg *)
let make_cg (dx: D.dex) : cg =
  H.clear cg.clzz_h; H.clear cg.meth_h;
  V.iter (new cg_maker dx);
  let iter i (mit: D.method_id_item) =
    let cid = mit.D.m_class_id
    and mid = D.to_idx i in
    let sid = D.get_supermethod dx cid mid in
    if sid <> D.no_idx then
      (* implicit super() call relations *)
      ignore (add_call dx cg mid sid)
  in
  (* visitor see only impl methods; rather, see ids directly *)
  DA.iteri iter dx.D.d_method_ids;
  cg

(* make_partial_cg : D.dex -> int -> D.link list -> cg *)
let make_partial_cg (dx: D.dex) depth (cids: D.link list) : cg =
  H.clear cg.clzz_h; H.clear cg.meth_h;
  let visited = ref IS.empty
  and worklist = ref IS.empty
  and iter_cnt = ref 0 in
  let v_method (mid: D.link) : unit =
    if IS.mem mid !visited then () else
    (
      visited := IS.add mid !visited;
      let v_ins (ins: D.link) =
        let callees = St.time "interpret_ins" (interpret_ins dx mid) ins
        and add_callee callee =
          let cid = D.get_cid_from_mid dx callee in
          let cname = D.get_ty_str dx cid in
          let skip_cls = V.to_be_skipped cname
            || Adr.is_static_library cname || Ads.is_ads_pkg cname
          in
          if not skip_cls then worklist := IS.add callee !worklist
        in
        L.iter add_callee callees
      in
      let cid = D.get_cid_from_mid dx mid in
      let sid = D.get_supermethod dx cid mid in
      (
        (* implicit super() call relations *)
        if sid <> D.no_idx && add_call dx cg mid sid then
          worklist := IS.add sid !worklist
      );
      let insns =
        try let _, citm = D.get_citm dx cid mid in citm.D.insns
        with D.Wrong_dex _ -> DA.create () (* no method body, i.e., library *)
      in
      DA.iter v_ins insns
    )
  in
  let init_worklist acc (cid: D.link) =
    let mids, _ = L.split (D.get_mtds dx cid) in
    L.fold_right IS.add mids acc
  in
  worklist := L.fold_left init_worklist IS.empty cids;
  while !iter_cnt < depth && not (IS.is_empty !worklist) do
    incr iter_cnt;
    let mids = IS.elements !worklist in
    worklist := IS.empty;
    L.iter v_method mids
  done;
  cg

(***********************************************************************)
(* Call Chain                                                          *)
(***********************************************************************)

(**
  m1 -> m4; m2 -> m4; m3 -> m5;
       m4 -> m6;      m5 -> m6;

  callers... m6 = [ [m6; m4; m1]; [m6; m4; m2]; [m6; m5; m3] ]
  callers... m4 = [ [m4; m1]; [m4; m2] ]
  callers... m5 = [ [m5; m3] ]
  callers... m1 = [ [m1] ]
*)

type cc = D.link list

(* compare_cc : cc -> cc -> int *)
let rec compare_cc cc1 cc2 : int =
  let c = compare (L.length cc1) (L.length cc2) in
  if 0 <> c then c else (* same length *)
  match cc1, cc2 with
  | [], [] -> 0
  | id1 :: tl1, id2 :: tl2 ->
    let c' = compare (D.of_idx id1) (D.of_idx id2) in
    if 0 <> c' then c' else compare_cc tl1 tl2

module CCKey =
struct
  type t = cc
  let compare = compare_cc
end

module CS = Set.Make(CCKey)

let induce_cycle (mid: D.link) (cc: cc) : bool =
  L.mem mid cc

(** depth-first search-based call chain generation *)
let rec callers_dfs (dx: D.dex) depth cg (mid: D.link) : cc list =
  if depth <= 0 then [[]] else
  let node, _ = find_or_new_method dx cg mid in
  let preds = IS.elements node.m_preds in
  if [] = preds then [[mid]] else
    let call_chains = L.rev_map (callers_dfs dx (depth-1) cg) preds in
    let sanitize_cc cc acc =
      if induce_cycle mid cc then acc else (mid :: cc) :: acc
    in
    L.fold_right sanitize_cc (L.flatten call_chains) []

(** tail-recursive, breadth-first search-based call chain generation *)
let rec callers_tail (dx: D.dex) depth cg ccs : CS.t =
  if depth <= 0 then ccs else
  let next_ccs = CS.fold (per_cc dx cg) ccs CS.empty in
  if CS.compare ccs next_ccs >= 0 then ccs else
  callers_tail dx (depth-1) cg next_ccs

and per_cc dx cg cc acc =
  if [] = cc then acc else
  let last_mid = U.get_last cc in
  let node, _ = find_or_new_method dx cg last_mid in
  let preds = IS.elements node.m_preds in
  if [] = preds then CS.add cc acc else
    let per_pred pred acc' =
      let next_cc = if induce_cycle pred cc then cc else cc @ [pred] in
      CS.add next_cc acc'
    in
    L.fold_right per_pred preds acc

(** iterative, breadth-first search-based call chain generation *)
let callers_bfs (dx: D.dex) depth cg (mid: D.link) : cc list =
  let iter_cnt = ref 0
  and ccs = ref (CS.singleton [mid])
  and prev_ccs = ref CS.empty in
  while !iter_cnt < depth && CS.compare !prev_ccs !ccs < 0 do
    incr iter_cnt;
    prev_ccs := !ccs;
    ccs := CS.fold (per_cc dx cg) !prev_ccs CS.empty
  done;
  CS.elements !ccs

(* callers : D.dex -> int -> cg -> D.link -> cc list *)
let callers (dx: D.dex) depth cg (mid: D.link) : cc list =
  if D.no_idx = mid then [] else
  (* DFS *) (* callers_dfs dx depth cg mid *)
  (* BFS *) (* CS.elements (callers_tail dx depth cg (CS.singleton [mid])) *)
  (* BFS *) callers_bfs dx depth cg mid

(* has_caller : D.dex -> cg -> D.link -> bool *)
let has_caller (dx: D.dex) cg (mid: D.link) : bool =
  let ccs = callers dx 1 cg mid in
  1 < L.length ccs || ([] <> ccs && 1 < L.length (L.hd ccs))

(* dependants : D.dex -> cg -> D.link -> D.link list *)
let dependants (dx: D.dex) cg (cid: D.link) : D.link list =
  let mtds = D.get_mtds dx cid
  and mapper (mid, _) =
    let mids = L.flatten (callers dx 9 cg mid) in
    L.rev_map (D.get_cid_from_mid dx) mids
  in
  let cids = L.flatten (L.rev_map mapper mtds) in
  IS.elements (L.fold_left (fun acc id -> IS.add id acc) IS.empty cids)

(***********************************************************************)
(* DOTtify                                                             *)
(***********************************************************************)

(* cg2dot : D.dex -> cg -> unit *)
let cg2dot (dx: D.dex) cg : unit =
  pp "digraph callgraph {\n";
  pp "  rankdir=LR\n";
  pp "  node [shape=record]\n";
  let each_clzz _ c =
    pp "  c%d [label=\"%s | " (D.of_idx c.c_idx) (get_cls_name dx c.c_idx);
    let rec dot_list = function
      | [] -> ()
      | [mid] ->
        pp "<m%d> %s\"]\n" (D.of_idx mid) (get_mtd_name dx mid)
      | h::tl ->
        pp "<m%d> %s | " (D.of_idx h) (get_mtd_name dx h); dot_list tl
    in
    dot_list (IS.elements c.c_mtd)
  in
  H.iter each_clzz cg.clzz_h;
  let dot_call _ m =
    let each_callee callee_idx =
      let midx1  = D.of_idx m.m_idx in
      let caller = D.get_mit dx m.m_idx in
      let cidx1  = D.of_idx caller.D.m_class_id in
      let midx2  = D.of_idx callee_idx in
      let callee = D.get_mit dx callee_idx in
      let cidx2  = D.of_idx callee.D.m_class_id in
      pp "  c%d:m%d -> c%d:m%d\n" cidx1 midx1 cidx2 midx2
    in
    IS.iter each_callee m.m_succs
  in
  H.iter dot_call cg.meth_h;
  pp "}\n"

