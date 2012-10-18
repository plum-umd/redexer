(*
 * Copyright (c) 2010-2012,
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

module DA = DynArray

module I = Instr
module D = Dex
module V = Visitor

module L = List
module H = Hashtbl
module S = String

(***********************************************************************)
(* Basic Types/Elements                                                *)
(***********************************************************************)

module IdxKey =
struct
  type t = D.link
  let compare id1 id2 = Pervasives.compare (D.of_idx id1) (D.of_idx id2)
end

module IS = Set.Make(IdxKey)

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

let find_or_new_method (dx: D.dex) cg (mid: D.link) : meth =
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
  try find_method cg mid
  with Not_found ->
    let nod = {
      m_idx = mid;
      m_succs = IS.empty;
      m_preds = IS.empty;
    } in
    H.add cg.meth_h mid nod; nod

let add_call (dx: D.dex) cg (caller: D.link) (callee: D.link) : unit =
  let caller_n = find_or_new_method dx cg caller
  and callee_n = find_or_new_method dx cg callee
  in
  caller_n.m_succs <- IS.add callee caller_n.m_succs;
  callee_n.m_preds <- IS.add caller callee_n.m_preds

(***********************************************************************)
(* Call Graph                                                          *)
(***********************************************************************)

let cg = {
  clzz_h = H.create 31;
  meth_h = H.create 153;
}

class cg_maker (dx: D.dex) =
object
  inherit V.iterator dx

  val mutable caller = D.no_idx
  method v_emtd (emtd: D.encoded_method) =
    caller <- emtd.D.method_idx

  method v_ins (ins: D.link) =
    if not (D.is_ins dx ins) then () else
    let op, opr = D.get_ins dx ins in
    match I.access_link op with
    | I.METHOD_IDS ->
      (* last opr at invoke-kind must be method id *)
      let callee = D.opr2idx (L.hd (L.rev opr)) in
      (* explicit call relations *)
      add_call dx cg caller callee
    | _ -> ()
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
      (* implicit call relations, i.e. super() *)
      add_call dx cg mid sid
  in
  (* visitor see only impl methods; rather, see ids directly *)
  DA.iteri iter dx.D.d_method_ids;
  cg

(* callers : D.dex -> int -> cg -> D.link -> D.link list *)
let rec callers (dx: D.dex) depth cg (mid: D.link) : D.link list =
  if depth <= 0 then [] else
  let node = find_or_new_method dx cg mid in
  let pred = IS.elements node.m_preds in
  pred @@ (L.flatten (L.rev_map (callers dx (depth-1) cg) pred))

(* dependants : D.dex -> cg -> D.link -> D.link list *)
let dependants (dx: D.dex) cg (cid: D.link) : D.link list =
  let mtds = D.get_mtds dx cid
  and mapper (mid, _) =
    let mids = callers dx 9 cg mid in
    L.map (D.get_cid_from_mid dx) mids
  in
  let cids = L.flatten (L.map mapper mtds) in
  IS.elements (L.fold_left (fun acc id -> IS.add id acc) IS.empty cids)

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

