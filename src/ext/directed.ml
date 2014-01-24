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
(* Directed Exploration                                                *)
(***********************************************************************)

module St = Stats
module DA = DynArray

module U = Util

module J = Java
module I = Instr
module D = Dex

module V = Visitor

module Adr = Android
module App = Adr.App
module Ads = Adr.Ads

module Cg = Callgraph
module P  = Propagation
module Lg = Logging

module L = List
module S = String

module Pf = Printf
module RE = Str

(***********************************************************************)
(* Basic Types/Elements                                                *)
(***********************************************************************)

module IdxPair =
struct
  type t = D.link * D.link
  let compare (cid1, mid1) (cid2, mid2) =
    let c = D.IdxKey.compare cid1 cid2 in
    if c <> 0 then c else D.IdxKey.compare mid1 mid2
end

module IPS = Set.Make(IdxPair)

module IS = Set.Make(D.IdxKey)
module IM = Map.Make(D.IdxKey)

let id_folder acc id = IS.add id acc

type path = Cg.cc list

let rec compare_path (p1: path) (p2: path) : int =
  let c = compare (L.length p1) (L.length p2) in
  if 0 <> c then c else (* same length *)
  match p1, p2 with
  | [], [] -> 0
  | cc1 :: tl1, cc2 :: tl2 ->
    let c' = compare_cc cc1 cc2 in
    if 0 <> c' then c' else compare_path tl1 tl2

and compare_cc (cc1: Cg.cc) (cc2: Cg.cc) : int =
  let c = compare (L.length cc1) (L.length cc2) in
  if 0 <> c then c else (* same length *)
  match cc1, cc2 with
  | [], [] -> 0
  | id1 :: tl1, id2 :: tl2 ->
    let c' = compare (D.of_idx id1) (D.of_idx id2) in
    if 0 <> c' then c' else compare_cc tl1 tl2

module PathKey =
struct
  type t = path
  let compare = compare_path
end

module PS = Set.Make(PathKey)

(***********************************************************************)
(* Step 1. find the methods in which the target calls appear           *)
(***********************************************************************)

let call_sites = ref IPS.empty

class target_finder (dx: D.dex) (apis: IPS.t) =
object
  inherit V.iterator dx

  val mutable cur_cid = D.no_idx
  method v_cdef (cdef: D.class_def_item) : unit =
    cur_cid <- cdef.D.c_class_id;
    let cname = J.of_java_ty (D.get_ty_str dx cur_cid) in
    skip_cls <- Adr.is_static_library cname || Ads.is_ads_pkg cname

  val mutable cur_mid = D.no_idx
  method v_emtd (emtd: D.encoded_method) : unit =
    cur_mid <- emtd.D.method_idx

  method v_ins (ins: D.link) : unit =
    if not (D.is_ins dx ins) then () else
      let op, opr = D.get_ins dx ins in
      match I.access_link op with
      | I.METHOD_IDS (* except for super call *)
        when not (L.mem op [I.OP_INVOKE_SUPER; I.OP_INVOKE_SUPER_RANGE]) ->
      (
        let mid = D.opr2idx (U.get_last opr) in
        let cid = D.get_cid_from_mid dx mid in
        if IPS.mem (cid, mid) apis then
        (
          let er_c = D.get_ty_str dx cur_cid
          and er_m = D.get_mtd_name dx cur_mid
          and ee_c = D.get_ty_str dx cid
          and ee_m = D.get_mtd_name dx mid in
          Log.d (Pf.sprintf "at %s.%s\n-> %s.%s\n" er_c er_m ee_c ee_m);
          call_sites := IPS.add (cur_cid, cur_mid) !call_sites
        )
      )
      | _ -> ()

end

let find_api_usage (dx: D.dex) (data: string) =
  let ch = open_in data in
  let lst = U.read_lines ch in
  close_in ch;
  let re = RE.regexp "\\(.+\\)->\\(.+\\)" in
  let each_line acc (str: string) =
    let _ = RE.search_forward re str 0 in
    let cname = RE.matched_group 1 str
    and mname = RE.matched_group 2 str in
    (cname, mname) :: acc
  in
  let s_apis = L.fold_left each_line [] lst
  in
  let find_ids acc (cname, mname) =
    let cid = D.get_cid dx cname in
    if D.no_idx = cid then
    (
      Log.w (Pf.sprintf "can't find class %s" cname); acc
    )
    else
      let mids, _ = L.split (D.get_mtds dx cid) in
      let add_mid acc' mid =
        let mname' = D.get_mtd_name dx mid in
        if 0 = S.compare mname mname' then IPS.add (cid, mid) acc' else acc'
      in
      L.fold_left add_mid acc mids
  in
  let apis = L.fold_left find_ids IPS.empty s_apis
  in
  call_sites := IPS.empty;
  V.iter (new target_finder dx apis)

(***********************************************************************)
(* Step 2. build call graph, including component transition            *)
(***********************************************************************)

(* a level of partial call graph *)
let cg_depth = ref 5

(* ...Activity; *)
let is_act (dx: D.dex) (cid: D.link) : bool =
  let ends_w_act cid' =
    U.ends_with (D.get_ty_str dx cid') "Activity;"
  in
  cid <> D.no_idx && D.in_hierarchy dx ends_w_act cid

(* ... implements ...Listener { ... } *)
let is_listener (dx: D.dex) (cid: D.link) : bool =
  let ends_w_listener cid' =
    U.ends_with (D.get_ty_str dx cid') "Listener;"
  in
  L.exists ends_w_listener (D.get_interfaces dx cid)

let make_cg (dx: D.dex) (acts: string list) : Cg.cg =
(*
  St.time "cg" Cg.make_cg dx
*)
  (* Activity(s) defined in the dex file, along with their inner classes *)
  let add_act acc cdef =
    let cid = cdef.D.c_class_id in
    if not (is_act dx cid) then acc else
      let inners = D.get_innerclasses dx cid in
      L.fold_left id_folder (id_folder acc cid) inners
  (* *Listener that reacts to user interactions *)
  and add_listener acc cdef =
    let cid = cdef.D.c_class_id in
    if is_listener dx cid then id_folder acc cid else acc
  in
(*
  let act_cids = L.fold_left add_act IS.empty acts in
*)
  let act_cids = DA.fold_left add_act IS.empty dx.D.d_class_defs in
  let cids = DA.fold_left add_listener act_cids dx.D.d_class_defs in
  Cg.make_partial_cg dx !cg_depth (IS.elements cids)

(***********************************************************************)
(* Step 3. find which listeners are related to which activities        *)
(***********************************************************************)

let listeners = ref IM.empty

let lkup_listener cid : D.link =
  try IM.find cid !listeners
  with Not_found -> D.no_idx

(* android...set...Listener() *)
let is_set_listener (dx: D.dex) (mid: D.link) : bool =
  let cid = D.get_cid_from_mid dx mid in
  let cname = D.get_ty_str dx cid
  and mname = D.get_mtd_name dx mid in
  U.begins_with cname "Landroid" &&
  U.begins_with mname "set" && U.ends_with mname "Listener"

let calc_current_const (dx: D.dex) (mid: D.link) (ins: D.link) =
  let cid = D.get_cid_from_mid dx mid in
  let _, citm = D.get_citm dx cid mid in
  let dfa = St.time "const" (P.make_dfa dx) citm in
  let module DFA = (val dfa: Dataflow.ANALYSIS
    with type st = D.link and type l = (P.value U.IM.t))
  in
  St.time "const" DFA.fixed_pt ();
  St.time "const" DFA.inn ins

class listener_finder (dx: D.dex) =
object
  inherit V.iterator dx

  val mutable cur_cid = D.no_idx
  method v_cdef (cdef: D.class_def_item) : unit =
    cur_cid <- cdef.D.c_class_id;
    skip_cls <- not (is_act dx cur_cid)

  val mutable cur_mid = D.no_idx
  method v_emtd (emtd: D.encoded_method) : unit =
    cur_mid <- emtd.D.method_idx

  method v_ins (ins: D.link) : unit =
    if not (D.is_ins dx ins) then () else
      let op, opr = D.get_ins dx ins in
      match I.access_link op with
      | I.METHOD_IDS ->
        let callee = D.opr2idx (U.get_last opr) in
        (* android...set...Listener() *)
        if is_set_listener dx callee then
        (
          let inn = calc_current_const dx cur_mid ins
          and reg = U.get_last (U.rm_last opr) in
          match U.IM.find (I.of_reg reg) inn with
          | P.Object o ->
          (
            let listener_cid = D.get_cid dx o in
            listeners := IM.add listener_cid cur_cid !listeners
          )
          | _ -> ()
        )
      (* iput-object v_obj, v_this, @fid *)
      | I.FIELD_IDS when op = I.OP_IPUT_OBJECT ->
      (
        let inn = calc_current_const dx cur_mid ins
        and reg = L.hd opr in
        match U.IM.find (I.of_reg reg) inn with
        | P.Object o ->
        (
          let cid = D.get_cid dx o in
          if is_listener dx cid then
            listeners := IM.add cid cur_cid !listeners
        )
        | _ -> ()
      )
      | _ -> ()

end

let find_listener (dx: D.dex) =
  listeners := IM.empty;
  V.iter (new listener_finder dx);
  let p_map (listener_cid: D.link) (act_cid: D.link) =
    let listener_name = D.get_ty_str dx listener_cid
    and act_name = D.get_ty_str dx act_cid in
    Log.d (Pf.sprintf "%s belongs to %s\n" listener_name act_name)
  in
  IM.iter p_map !listeners

(***********************************************************************)
(* Step 4. backtrack from the target methods to the target classes     *)
(***********************************************************************)

(**
  ma -> mb ---> m2 (* user interaction *)

  m1 -> m4; m2 -> m4; m3 -> m5;
       m4 -> m6;      m5 -> m6;

  callers... m6 = [ [m6; m4; m1]; [m6; m4; m2]; [m6; m5; m3] ]

    implicit call chain: mb ---> m2

  callers... mb = [ [mb; ma] ]

    finish if ma is inside one of target classes

  backtrack... = [ [ [mb; ma]; [m6; m4; m2] ]; ... ]
*)

let path_to_str (dx: D.dex) (p: path) : string =
  let mtd_to_str mid =
    let mname = D.get_mtd_full_name dx mid
    and mit = D.get_mit dx mid in
    let argv = L.map (D.get_ty_str dx) (D.get_argv dx mit)
    and rety = D.get_ty_str dx (D.get_rety dx mit) in
    mname^"("^(L.fold_left (^) "" argv)^")"^rety
  in
  let per_explicit mids =
    let join acc mid =
      let next = mtd_to_str mid in
      if acc = "" then next else next^"\n----> "^acc
    in
    L.fold_left join "" mids
  in
  let per_implicit acc mids =
    let next = per_explicit mids in
    if acc = "" then "      "^next else acc^"\n-##-> "^next
  in
  L.fold_left per_implicit "" p

(**
  has_cycle visited path :=
    true only if \E m s.t. m \in visited && m \in path

  induce_cycle cc path :=
    visited = { m \in cc };
    true only if has_cycle visited path
*)

exception PATH_W_CYCLE

let has_cycle (visited: IS.t) (p: path) : bool =
  let v_mid acc mid =
    if IS.mem mid acc then raise PATH_W_CYCLE else id_folder acc mid
  in
  try ignore (L.fold_left v_mid visited (L.flatten p)); false
  with PATH_W_CYCLE -> true

let induce_cycle (cc: Cg.cc) (p: path) : bool =
  let visited = L.fold_left id_folder IS.empty cc in
  has_cycle visited p

(**
  Some apps' main Activity has incoming edges from apps other parts
  i.e., call chain may already reach the top of the call graph

  sanitize_cc {... m ...} [prev... m post...] [] => [prev... m]
*)

let reach_top (tgt_mids: IS.t) (mid: D.link) : bool =
  IS.mem mid tgt_mids

let rec sanitize_cc (tgt_mids: IS.t) cc acc : Cg.cc =
  match cc with
  | [] -> L.rev acc
  | hd :: tl when reach_top tgt_mids hd -> L.rev (hd :: acc)
  | hd :: tl -> sanitize_cc tgt_mids tl (hd :: acc)

(* a length of paths *)
let path_len = ref 5

let backtrack (dx: D.dex) cg (tgt_cids: D.link list) : path list =
  let add_lifecycle_mtd acc (cid: D.link) =
    let mids = Adr.find_lifecycle_act dx cid in
    if [] = mids then acc else IS.add (L.hd mids) acc
  in
  let tgt_mids = L.fold_left add_lifecycle_mtd IS.empty tgt_cids
  in
  let rec gen_path ps : path list =
    let per_path p =
      if [] = p || !path_len < L.length p then [] else
      let last_mid = U.get_last (L.hd p) in
      let cid = D.get_cid_from_mid dx last_mid in
      (* reach one of the target classes *)
      if reach_top tgt_mids last_mid then [p]
      (* go to the current Activity's onCreate(), assuming user interaction *)
      else if is_act dx cid then
      (
        let mids = Adr.find_lifecycle_act dx cid in
        if [] = mids then [] else add_implicit_call p (L.hd mids)
      )
      (* go to the Activity to which this listener belongs *)
      else if D.no_idx <> lkup_listener cid then
      (
        let act_cid = lkup_listener cid in
        let mids = Adr.find_lifecycle_act dx act_cid in
        if [] = mids then [] else add_implicit_call p (L.hd mids)
      )
      (* go to the owning Activity if this is its inner class *)
      else if is_act dx (D.get_owning_class dx cid) then
      (
        let act_cid = D.get_owning_class dx cid in
        let mids = Adr.find_lifecycle_act dx act_cid in
        if [] = mids then [] else add_implicit_call p (L.hd mids)
      )
      else (* unexplored boundary *)
      (
        let cname = D.get_ty_str dx cid
        and mname = D.get_mtd_name dx last_mid in
        Log.d (Pf.sprintf "can't explore further: %s->%s" cname mname);
        []
      )
    in
    L.flatten (L.rev_map per_path ps)
  and add_implicit_call p mid =
    let ccs = Cg.callers dx 9 cg mid in
    (* if |callers| == 1 then no more interesting call chains *)
    if 1 = L.length ccs && 1 = L.length (L.hd ccs) then [[mid]::p] else
      let add_unless_cycle cc =
        let cc' = sanitize_cc tgt_mids cc [] in
        if induce_cycle cc' p then [] else cc' :: p
      in
    gen_path (L.rev_map add_unless_cycle ccs)
  in
  let to_path (_, mid) = L.rev_map (fun p -> [p]) (Cg.callers dx 9 cg mid) in
  let init_ps = L.flatten (L.rev_map to_path (IPS.elements !call_sites))
  in
  let explored_ps = gen_path init_ps
  in
  let v_p acc p = PS.add p acc in
  let unique_ps = L.fold_left v_p PS.empty explored_ps in
  PS.elements unique_ps

(***********************************************************************)
(* Step 5. instrument necessary user interactions                      *)
(***********************************************************************)



(***********************************************************************)
(* Putting all together                                                *)
(***********************************************************************)

(* directed_explore : D.dex -> string -> string list -> unit *)
let directed_explore (dx: D.dex) (data: string) (acts: string list) : unit =
  St.time "transition" Lg.add_transition dx;
  St.time "api" (find_api_usage dx) data;
  let cg = St.time "cg" (make_cg dx) acts in
  St.time "listener" find_listener dx;
  (* assume the first element is the main Activity *)
  let main_act = J.to_java_ty (L.hd acts) in
  let main_cid = D.get_cid dx main_act in
  let ps = St.time "backtrack" (backtrack dx cg) [main_cid]
  and per_path p =
    Log.i "\n====== path ======";
    Log.i (path_to_str dx p)
  in
  L.iter per_path ps

