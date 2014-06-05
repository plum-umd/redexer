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
module B = Buffer
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
    let c' = Cg.compare_cc cc1 cc2 in
    if 0 <> c' then c' else compare_path tl1 tl2

module PathKey =
struct
  type t = path
  let compare = compare_path
end

module PS = Set.Make(PathKey)

(** to recommend something because of something *)
let recommand (recomm: string) (reason: string) : unit =
  Log.w (Pf.sprintf "/* REC: %s, for %s */" recomm reason)

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
          let caller = D.get_mtd_sig dx cur_mid
          and callee = D.get_mtd_sig dx mid in
          Log.i (Pf.sprintf "      %s\n----> %s\n" caller callee);
          call_sites := IPS.add (cur_cid, cur_mid) !call_sites
        )
      )
      | _ -> ()

end

let find_api_usage (dx: D.dex) (data: string) =
  let ch = open_in data in
  let lst = U.read_lines ch in
  close_in ch;
  let re = RE.regexp "\\(.+\\)->\\(.+\\)"
  and fb_flag = ref false
  in
  let each_line acc (str: string) =
    let _ = RE.search_forward re str 0 in
    let cname = RE.matched_group 1 str
    and mname = RE.matched_group 2 str in
    if U.contains cname "facebook" then fb_flag := true;
    (cname, mname) :: acc
  in
  let s_apis = L.fold_left each_line [] lst
  in
  if !fb_flag then
  (
    let cid = D.get_cid dx (J.to_java_ty "com.facebook.FacebookSdkVersion") in
    let v =
      if D.no_idx = cid then "<= 2.9.9" else
      try
        let fid, _ = D.get_the_fld dx cid "BUILD"
        and stt_flds = D.get_stt_flds dx cid in
        match L.assoc fid stt_flds with
        | Some (D.VALUE_STRING sid) -> "== "^(D.get_str dx (D.to_idx sid))
      with _ -> "...?"
    in
    Log.i (Pf.sprintf "Facebook SDK version %s\n" v)
  );
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

let make_cg (dx: D.dex) (acts: string list) : Cg.cg =
(*
  St.time "cg" Cg.make_cg dx
*)
  (* Activity(s) defined in the dex file, along with their inner classes *)
  let add_act acc cdef =
    let cid = cdef.D.c_class_id in
    if not (Adr.is_activity dx cid) then acc else
      let inners = D.get_innerclasses dx cid in
      L.fold_right IS.add inners (id_folder acc cid)
  (* *Listener that reacts to user interactions *)
  and add_listener acc cdef =
    let cid = cdef.D.c_class_id in
    if Adr.is_listener dx cid then id_folder acc cid else acc
  in
(*
  let act_cids = L.fold_left add_act IS.empty acts in
*)
  let act_cids = DA.fold_left add_act IS.empty dx.D.d_class_defs in
  let cids = DA.fold_left add_listener act_cids dx.D.d_class_defs in
  if !cg_depth <= 0 then Cg.make_cg dx
  else Cg.make_partial_cg dx !cg_depth (IS.elements cids)

(***********************************************************************)
(* Step 3. find which listeners are related to which activities        *)
(***********************************************************************)

let is_1st_party (dx: D.dex) (pkg: string) (cid: D.link) : bool =
  if D.no_idx = cid then false else
  let cname = J.of_java_ty (D.get_ty_str dx cid) in
  let prefix = U.common_prefix pkg cname in
  1 < L.length (U.split_string prefix '.')

let calc_const (dx: D.dex) (mid: D.link) =
  let cid = D.get_cid_from_mid dx mid in
  let _, citm = D.get_citm dx cid mid in
  let dfa = St.time "const" (P.make_dfa dx) citm in
  let module DFA = (val dfa: Dataflow.ANALYSIS
    with type st = D.link and type l = (P.value U.IM.t))
  in
  St.time "const" DFA.fixed_pt ();
  DFA.inn

(** memoization for method id *)
let cached_onCr = ref IM.empty

let find_onCreate (dx: D.dex) (cid: D.link) : D.link =
  try IM.find cid !cached_onCr
  with Not_found ->
  (
    let mid =
      try fst (St.time "onCreate" (D.get_the_mtd dx cid) App.onCreate)
      with D.Wrong_dex _ -> D.no_idx
    in
    cached_onCr := IM.add cid mid !cached_onCr;
    mid
  )

(** mappings from listener to registering method *)
let listeners = ref IM.empty

let lkup_listener cid : D.link =
  try IM.find cid !listeners
  with Not_found -> D.no_idx

let add_listener_rel (dx: D.dex) (listener_cid: D.link) (mid: D.link) : unit =
  if not (Adr.is_listener dx listener_cid) then () else
  let cid = D.get_cid_from_mid dx mid in
  if Adr.is_activity dx cid then
  (
    let onCr = find_onCreate dx cid in
    if D.no_idx <> onCr then
      listeners := IM.add listener_cid onCr !listeners
  )
  else
    listeners := IM.add listener_cid mid !listeners

class listener_finder (dx: D.dex) (pkg: string) =
object
  inherit V.iterator dx

  val mutable cur_cid = D.no_idx
  val mutable cname = ""
  method v_cdef (cdef: D.class_def_item) : unit =
    cur_cid <- cdef.D.c_class_id;
    cname <- J.of_java_ty (D.get_ty_str dx cur_cid);
    skip_cls <- not (is_1st_party dx pkg cur_cid)

  val mutable cur_mid = D.no_idx
  val mutable inn_calced = false
  val mutable cur_inn = fun l -> (U.IM.empty: P.value U.IM.t)
  method v_emtd (emtd: D.encoded_method) : unit =
    cur_mid <- emtd.D.method_idx;
    inn_calced <- false;
    cur_inn <- fun l -> (U.IM.empty: P.value U.IM.t)

  method v_ins (ins: D.link) : unit =
    if not (D.is_ins dx ins) then () else
      let op, opr = D.get_ins dx ins in
      match I.access_link op with
      | I.METHOD_IDS ->
      (
        let callee = D.opr2idx (U.get_last opr) in
        (* android...set...Listener() *)
        if Adr.is_set_listener dx callee then
        (
          (if not inn_calced then
              (inn_calced <- true; cur_inn <- calc_const dx cur_mid)
          );
          let inn = cur_inn ins
          and reg_v, reg_l = L.hd opr, U.get_last (U.rm_last opr) in
          let v = U.IM.find (I.of_reg reg_v) inn
          and l = U.IM.find (I.of_reg reg_l) inn in
          match v, l with
          | _, P.Object o -> add_listener_rel dx (D.get_cid dx o) cur_mid
          | _, _ ->
          (
            let cid = D.get_cid_from_mid dx cur_mid in
            let _, citm = D.get_citm dx cid cur_mid in
            if I.of_reg reg_l = D.calc_this citm then (* this *)
              add_listener_rel dx cid cur_mid
            else
            (
              let caller_name = D.get_mtd_sig dx cur_mid
              and callee_name = D.get_mtd_sig dx callee in
              Log.w (Pf.sprintf "lack of listener @ %s" caller_name);
              Log.w (Pf.sprintf "which calls %s\n" callee_name);
            )
          )
        )
        (* setContentView *)
        else if 0 = S.compare (D.get_mtd_name dx callee) App.set_view then
        (
          (if not inn_calced then
              (inn_calced <- true; cur_inn <- calc_const dx cur_mid)
          );
          let inn = cur_inn ins
          and reg = U.get_last (U.rm_last opr) in
          match U.IM.find (I.of_reg reg) inn with
          | P.Const c ->
            Log.i (Pf.sprintf "  0x%08x\n~ %s\n" (Int64.to_int c) cname)
          | P.Field (cls, fld) ->
            Log.i (Pf.sprintf "  %s.%s\n~ %s\n" cls fld cname)
          | _ -> ()
        )
      )
      (* iput-object v_obj, v_this, @fid *)
      | I.FIELD_IDS when op = I.OP_IPUT_OBJECT ->
      (
        (if not inn_calced then
            (inn_calced <- true; cur_inn <- calc_const dx cur_mid)
        );
        let inn = cur_inn ins
        and reg = L.hd opr in
        match U.IM.find (I.of_reg reg) inn with
        | P.Object o -> add_listener_rel dx (D.get_cid dx o) cur_mid
        | _ -> ()
      )
      | _ -> ()

end

(* find_listener : D.dex -> string -> unit *)
let find_listener (dx: D.dex) (pkg: string) : unit =
  listeners := IM.empty;
  V.iter (new listener_finder dx pkg);
  let p_map (listener_cid: D.link) (mid: D.link) =
    let listener_name = D.get_ty_str dx listener_cid
    and caller = D.get_mtd_sig dx mid in
    Log.i (Pf.sprintf "      %s\n-##-> %s\n" caller listener_name)
  in
  IM.iter p_map !listeners

(***********************************************************************)
(* Step 4. backtrack from the target methods to the target classes     *)
(***********************************************************************)

(**
  ma -> mb -#-> m2 (* user interaction *)

  m1 -> m4; m2 -> m4; m3 -> m5;
       m4 -> m6;      m5 -> m6;

  callers... m6 = [ [m6; m4; m1]; [m6; m4; m2]; [m6; m5; m3] ]

    implicit call chain: mb ---> m2

  callers... mb = [ [mb; ma] ]

    finish if ma is inside one of target classes

  backtrack... = [ [ [mb; ma]; [m6; m4; m2] ]; ... ]
*)

let path_to_str (dx: D.dex) (p: path) : string =
  let buf = B.create (L.length p) in
  let per_explicit cc =
    let iter i mid =
      if 0 <> i then B.add_string buf "\n----> ";
      B.add_string buf (D.get_mtd_sig dx mid);
    in
    L.iteri iter (L.rev cc)
  in
  let per_implicit i cc =
    B.add_string buf (if 0 = i then "      " else "\n-##-> ");
    per_explicit cc
  in
  L.iteri per_implicit p;
  B.contents buf

(**
  has_cycle visited cc :=
    true only if \E m s.t. m \in visited && m \in cc

  induce_cycle path cc :=
    visited = { m \in path };
    true only if has_cycle visited cc
*)

let has_cycle (visited: IS.t) (cc: Cg.cc) : bool =
  (* assume cc is acyclic, i.e., no need to update 'visited' *)
  L.exists (fun mid -> IS.mem mid visited) cc

let induce_cycle (p: path) (cc: Cg.cc) : bool =
  let visited = L.fold_right IS.add (L.flatten p) IS.empty in
  has_cycle visited cc

(**
  Some apps' main Activity has incoming edges from apps other parts
  i.e., call chain may already reach the top of the call graph

  sanitize_cc {... m ...} [prev... m post...] [] => [prev... m]
*)

let reach_top (tgt_mids: IS.t) (mid: D.link) : bool =
  IS.mem mid tgt_mids

let rec sanitize_cc (tgt_mids: IS.t) cc : Cg.cc =
  match cc with
  | [] -> []
  | hd :: _ when reach_top tgt_mids hd -> [hd]
  | hd :: tl -> hd :: (sanitize_cc tgt_mids tl)

let sanitize_path (tgt_mids: IS.t) (p: path) : bool =
  [] <> p && reach_top tgt_mids (U.get_last (L.hd p))

(* a length of call chains *)
let cc_len = ref 5

(** memoization for call chains *)
let cached_ccs = ref IM.empty
let max_cc = ref 0
let num_cc = ref 0

let calc_ccs (dx: D.dex) cg (mid: D.link) : Cg.cc list =
  try IM.find mid !cached_ccs
  with Not_found ->
  (
    let ccs = St.time "callers" (Cg.callers dx !cc_len cg) mid in
    let len_cc = L.length ccs in
    max_cc := max !max_cc len_cc;
    num_cc := !num_cc + len_cc;
    cached_ccs := IM.add mid ccs !cached_ccs;
    ccs
  )

(** memoization for Activity *)
let cached_act = ref IM.empty

let is_activity (dx: D.dex) (cid: D.link) : bool =
  try IM.find cid !cached_act
  with Not_found ->
  (
    let ans = St.time "is_act" (Adr.is_activity dx) cid in
    cached_act := IM.add cid ans !cached_act;
    ans
  )

(* a length of paths *)
let path_len = ref 5

(* flags for auto-tuning *)
let cc_flag = ref false
let cc_mid = ref D.no_idx
let p_flag = ref false

(* unique dead ends *)
let dead_ends = ref IS.empty

let backtrack (dx: D.dex) cg pkg (tgt_mids: IS.t) : path list =
  cached_ccs := IM.empty;
  max_cc := 0;
  num_cc := 0;
  dead_ends := IS.empty;
  let rec gen_path ps : PS.t =
    let per_path p =
      if [] = p then PS.empty else
      if !path_len < L.length p then PS.singleton p else
      let last_mid = U.get_last (L.hd p) in
      let cid = D.get_cid_from_mid dx last_mid in
      (* reach one of the target classes *)
      if reach_top tgt_mids last_mid then
        PS.singleton p
      (* go to the current Activity's onCreate(), assuming user interaction *)
      else if is_activity dx cid then
        add_implicit_call p (find_onCreate dx cid)
      (* go to the Activity to which this listener belongs *)
      else if D.no_idx <> lkup_listener cid then
        add_implicit_call p (lkup_listener cid)
      else
      (
        let act_cid = D.get_owning_class dx cid in
        (* go to the owning Activity if this is its inner class *)
        if Adr.is_activity dx act_cid then
          add_implicit_call p (find_onCreate dx act_cid)
        else (* unexplored boundary *)
        (
          if Cg.has_caller dx cg last_mid then
          (
            cc_flag := true;
            cc_mid := last_mid
          )
          else if is_1st_party dx pkg cid then
          (
            dead_ends := IS.add last_mid !dead_ends;
          );
          PS.empty
        )
      )
    in
    PS.fold (fun p acc -> PS.union acc (per_path p)) ps PS.empty
  and add_implicit_call p mid =
    let ccs = calc_ccs dx cg mid in
    let add_unless_cycle cc acc =
      let cc' = St.time "sanitize_cc" (sanitize_cc tgt_mids) cc in
      if St.time "induce_cycle" (induce_cycle p) cc' then acc
      else PS.add (cc' :: p) acc
    in
    let explored = gen_path (L.fold_right add_unless_cycle ccs PS.empty) in
    if [] = p then explored else PS.add p explored
  in
  let mids = snd (L.split (IPS.elements !call_sites)) in
  let ps = L.rev_map (add_implicit_call []) mids in
  PS.elements (L.fold_right PS.union ps PS.empty)

(***********************************************************************)
(* Step 5. instrument necessary user interactions                      *)
(***********************************************************************)



(***********************************************************************)
(* Putting all together                                                *)
(***********************************************************************)

let num_try = ref 5

(* directed_explore : D.dex -> string -> string -> string list -> unit *)
let directed_explore (dx: D.dex) pkg data (acts: string list) : unit =
  if [] = acts then raise (D.Wrong_dex "directed: no activities");
  St.time "transition" Lg.add_transition dx;
  St.time "api" (find_api_usage dx) data;
  let cg = St.time "cg" (make_cg dx) acts in
  St.time "listener" (find_listener dx) pkg;
  let tgt_mids =
    let comps = L.map J.to_java_ty acts in
    let cids = L.map (D.get_cid dx) comps in
    let onCrs = L.map (find_onCreate dx) cids in
    let add_valid_mid acc mid =
      if mid = D.no_idx then acc else IS.add mid acc
    in
    L.fold_left add_valid_mid IS.empty onCrs
  in
  (* (partial) paths per iteration *)
  let ps = ref ([]: path list)
  and pps = ref ([]: path list)
  and iter_cnt = ref 0 in
  while !iter_cnt < !num_try && [] = !ps do
    incr iter_cnt;
    cc_flag := false; p_flag := false;
    let msg = Pf.sprintf "backtrack (cc: %d, p: %d)" !cc_len !path_len in
    let unique_ps = St.time msg (backtrack dx cg pkg) tgt_mids in
    let u_ps, u_pps = L.partition (sanitize_path tgt_mids) unique_ps in
    ps := u_ps; pps := u_pps;
    let len_san = L.length u_ps in
    (* if paths disappear due to sanitizing, increase path_len *)
    if 0 = len_san && len_san < L.length unique_ps then p_flag := true;
    if !cc_flag then incr cc_len;
    if !p_flag then incr path_len;
    (* break the loop if no more useful suggestion *)
    if not !cc_flag && not !p_flag then iter_cnt := !num_try;
  done;
  let print_dead_end mid =
    let mname = D.get_mtd_full_name dx mid in
    Log.w (Pf.sprintf "dead end: %s" mname)
  in
  L.iter print_dead_end (IS.elements !dead_ends);
  if [] = !ps then
  (
    if !p_flag then
    (
      let recomm = Pf.sprintf "incr path_len(%d)" !path_len
      and reason = "paths decr to 0 after sanitizing" in
      recommand recomm reason
    );
    if !cc_flag then
    (
      let mname = D.get_mtd_full_name dx !cc_mid in
      let recomm = Pf.sprintf "incr cc_len(%d)" !cc_len
      and reason = Pf.sprintf "there are callers for %s" mname in
      recommand recomm reason
    );
  );
  let print_path p =
    let msg =
      if sanitize_path tgt_mids p
      then "\n====== path ======"
      else "\n====== partial path ======"
    in
    Log.i msg;
    Log.i (path_to_str dx p)
  in
  L.iter print_path !ps;
  if [] = !ps then L.iter print_path !pps;
  Log.i (Pf.sprintf "\nmax / # of cc(s): %d / %d" !max_cc !num_cc);
  Log.i (Pf.sprintf "# of path(s): %d" (L.length !ps));
  Log.i (Pf.sprintf "# of partial path(s): %d" (L.length !pps));

