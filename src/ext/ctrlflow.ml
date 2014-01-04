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
(* Ctrlflow                                                            *)
(***********************************************************************)

module DA = DynArray
module U  = Util
module IS = U.IS

module I = Instr
module D = Dex

module L = List
module A = Array

(***********************************************************************)
(* Basic Types/Elements                                                *)
(***********************************************************************)

module OS = Set.Make(D.OffKey)

type cfg = bb array

and bb = {
  kind  : bb_kind;
  insns : D.link list;
  mutable pred : int list;
  mutable succ : int list;
}

and bb_kind = STRT | END | NORM

type dom = IS.t array

type pdom = dom

(***********************************************************************)
(* Utilities                                                           *)
(***********************************************************************)

let pp = Printf.printf

let (@@) l1 l2 = L.rev_append (L.rev l1) l2

let all (n: int) : IS.t =
  L.fold_left (fun acc i -> IS.add i acc) IS.empty (U.range 0 (n-1) [])

let is_changed bef aft : bool =
  IS.compare bef aft <> 0

(***********************************************************************)
(* Control-Flow Graph                                                  *)
(***********************************************************************)

(* make_cfg : D.dex -> D.code_item -> cfg *)
let rec make_cfg (dx: D.dex) (citm: D.code_item) : cfg =
  let inss = L.filter (D.is_ins dx) (DA.to_list citm.D.insns) in
  let leaders = calc_leaders dx citm.D.tries inss in
  let spl = split leaders inss
  and toBB b = { kind = NORM; insns = b; pred = []; succ = []; } in
  let bbs = L.map toBB spl
  and bb0 = { kind = STRT; insns = []; pred = []; succ = [1]; }
  and bbl = { kind = END; insns = []; pred = []; succ = []; } in
  let g = A.of_list (bb0 :: (bbs @@ [bbl])) in
  make_edges dx citm g;
  g

and calc_leaders (dx: D.dex) (tries: D.try_item list) inss : D.link list =
  let rec iter (acc: OS.t) = function
    | ins1 :: tl ->
    (
      let op, opr = D.get_ins dx ins1 in
      let hx = I.op_to_hx op in
      if 0x0d = hx then (* move-exception: start pt. of exception *)
        iter (OS.add ins1 acc) tl
      else if L.mem hx (U.range 0x0e 0x11 [0x27]) then (* return or throw *)
      (
        let acc' =
          try
            let ins2 = L.hd tl in
            if D.is_ins dx ins2 then OS.add ins2 acc else acc
          with Failure "hd" -> acc
        in
        iter acc' tl
      )
      else if L.mem hx (U.range 0x28 0x2a []) then (* goto *)
      (
        let off = D.opr2off (L.hd opr) in
        iter (OS.add off acc) tl
      )
      else if L.mem hx [0x2b; 0x2c] then (* switch *)
      (
        let ins2 = L.hd tl (* default case *)
        and off = D.opr2off (U.get_last opr) in
        let tgt = ins2 :: (get_sw_tagets dx off) in
        iter (L.fold_left (fun a l -> OS.add l a) acc tgt) tl
      )
      else if L.mem hx (U.range 0x32 0x3d []) then (* if-test *)
      (
        let ins2 = L.hd tl (* false branch *)
        and off = D.opr2off (U.get_last opr) in
        iter (OS.add ins2 (OS.add off acc)) tl
      )
      else iter acc tl
    )
    | _ -> acc
  in
  let fold_try (acc: OS.t) (ti: D.try_item) : OS.t =
    let s = ti.D.start_addr and e = ti.D.end_addr in
    let n = (* [s...e] n, but n could be out of bound *)
      let op, _ = D.get_ins dx e in
      let _, sz = I.op_to_hx_and_size op in
      D.to_off ((D.of_off e) + sz)
    in
    let scc = OS.add s acc in
    if L.mem n inss then OS.add n scc else scc
  in
try
  (* the 1st instr is also a leader *)
  let ld = iter (OS.singleton (L.hd inss)) inss in
  OS.elements (L.fold_left fold_try ld tries)
with Failure "hd" -> [] (* empty body? *)

and split (pts: 'a list) (pool: 'a list) : 'a list list =
  let rec iter pts pool blk blks =
    match pts, pool with
    | _ :: ((pt2 :: _) as pts'), pt :: tl ->
    (
      if pt = pt2 then iter pts' pool [] ((L.rev blk) :: blks)
      else iter pts tl (pt :: blk) blks
    )
    | _, _ -> L.rev (pool :: blks)
  in iter pts pool [] []

and make_edges (dx: D.dex) (citm: D.code_item) (g: cfg) : unit =
  let catch_to (l: D.link) : int list =
    let finder (ti: D.try_item) : bool =
      let s = D.of_off ti.D.start_addr
      and e = D.of_off ti.D.end_addr in
      let t = D.of_off l in s <= t && t <= e
    in
    try
      let ti = L.find finder citm.D.tries in
      let hdl = L.nth citm.D.c_handlers (D.of_idx ti.D.handler_off) in
      let any =
        if 0 = D.of_off hdl.D.catch_all_addr then []
        else [find_bb g hdl.D.catch_all_addr]
      in
      any @@ (L.map (fun ta -> find_bb g ta.D.addr) hdl.D.e_handlers)
    with _ -> []
  in
  let iteri (i: int) (b: bb) : unit =
    let add_pred me des =
      if des <> -1 then g.(des).pred <- me :: g.(des).pred
    in
    let add_edge me des =
      add_pred me des; b.succ <- des :: b.succ
    in
    if b.insns <> [] then (* NORM *)
    (
      let lns = U.get_last b.insns
      in (* see the last instruction of the basic block *)
      let catch_bbs = catch_to lns in
      L.iter (add_pred i) catch_bbs;
      b.succ <- catch_bbs @@ b.succ;
      let op, opr = D.get_ins dx lns in
      let hx = I.op_to_hx op in
      let hx, opr = (* last instruction could be nop for padding *)
        if hx <> 0x00 || L.length b.insns <= 1 then hx, opr else
        let lns' = U.get_last (U.rm_last b.insns) in
        let op, opr = D.get_ins dx lns' in I.op_to_hx op, opr
      in
      if L.mem hx (U.range 0x0e 0x11 [0x27]) then (* return or throw *)
      (
        let des = (A.length g) - 1 in
        add_edge i des
      )
      else if L.mem hx (U.range 0x28 0x2a []) then (* goto *)
      (
        let des = find_bb g (D.opr2off (L.hd opr))
        in add_edge i des
      )
      else if L.mem hx [0x2b; 0x2c] then (* switch *)
      (
        let des1 = i + 1 in (* default case *)
        add_edge i des1;
        let off = D.opr2off (U.get_last opr) in
        let tgt = get_sw_tagets dx off in
        L.iter (fun l -> add_edge i (find_bb g l)) tgt
      )
      else if L.mem hx (U.range 0x32 0x3d []) then (* if-test *)
      (
        let des1 = i + 1 (* false branch *)
        and des2 = find_bb g (D.opr2off (U.get_last opr)) in
        add_edge i des1; add_edge i des2
      )
      else (* general case *)
        let des = i + 1 in add_edge i des
    ) else (* STRT or END *)
    (
      match b.kind with
      | STRT -> add_pred i (i+1)
      | _ -> ()
    )
  in
  A.iteri iteri g;
  let iter (b: bb) : unit =
    b.pred <- L.stable_sort compare b.pred;
    b.succ <- L.stable_sort compare b.succ;
  in
  A.iter iter g

and find_bb (g: cfg) (l: D.link) : int =
  let rec finder i = function
    | bb :: t -> if L.mem l bb.insns then i else finder (i+1) t
    | _ -> -1
  in finder 0 (A.to_list g)

and get_sw_tagets (dx: D.dex) (off: D.link) : D.link list =
  match D.get_data_item dx off with
  | D.SWITCH sw -> sw.D.sw_targets
  | _ -> raise (D.Wrong_match "not SWITCH")

(***********************************************************************)
(* Dominance Relations                                                 *)
(***********************************************************************)

(* doms : cfg -> dom *)
let doms (g: cfg) : dom =
  let len = A.length g in
  let dom = A.make len IS.empty in
  dom.(0) <- IS.singleton 0;
  let bigN = all len in
  for i = 1 to len - 1 do
    dom.(i) <- bigN
  done;
  let chg = ref true in
  while !chg do
    chg := false;
    for i = 1 to len - 1 do
      let p' = if g.(i).pred = [] then IS.empty else
        L.fold_left (fun a p -> IS.inter a dom.(p)) bigN g.(i).pred
      in
      let aft = IS.union (IS.singleton i) p' in
      let chged = is_changed dom.(i) aft in
      if chged then ( chg := chged; dom.(i) <- aft )
    done
  done;
  dom

(* idom : dom -> int -> int *)
let idom dom i : int =
  let dom' = IS.elements (IS.diff dom.(i) (IS.singleton i)) in
  if dom' <> [] then U.get_last dom' else 0

(* cdom : dom -> int list *)
let cdom dom : int list =
  let l = L.tl (A.to_list dom) in (* exclude the start node *)
  IS.elements (L.fold_left (fun a d -> IS.inter a d) (L.hd l) (L.tl l))

(***********************************************************************)
(* Post Dominance Relations                                            *)
(***********************************************************************)

(* pdoms : cfg -> pdom *)
let pdoms (g: cfg) : pdom =
  let len = A.length g in
  let pdom = A.make len IS.empty in
  pdom.(len-1) <- IS.singleton (len-1);
  let bigN = all len in
  for i = 0 to len - 2 do
    pdom.(i) <- bigN
  done;
  let chg = ref true in
  while !chg do
    chg := false;
    for i = 0 to len - 2 do
      let p' = if g.(i).succ = [] then IS.empty else
        L.fold_left (fun a s -> IS.inter a pdom.(s)) bigN g.(i).succ
      in
      let aft = IS.union (IS.singleton i) p' in
      let chged = is_changed pdom.(i) aft in
      if chged then ( chg := chged; pdom.(i) <- aft )
    done
  done;
  pdom

(* ipdom : pdom -> int -> int *)
let ipdom pdom i : int =
  let pdom' = IS.diff pdom.(i) (IS.singleton i) in
  if IS.is_empty pdom' then i else
  L.find (fun i -> IS.equal pdom' pdom.(i)) (IS.elements pdom')

(* cpdom : pdom -> int list *)
let cpdom pdom : int list =
  let l = L.tl (L.rev (A.to_list pdom)) in (* exclude the exit node *)
  IS.elements (L.fold_left (fun a p -> IS.inter a p) (L.hd l) (L.tl l))

(* get_last_inss : cfg -> pdom -> D.link list *)
let get_last_inss (g: cfg) pdom : D.link list =
  let e = (A.length g) - 1 in
  let last_bbs = L.filter (fun bb -> ipdom pdom bb = e) g.(e).pred in
  L.map (fun bb -> U.get_last g.(bb).insns) last_bbs

(***********************************************************************)
(* Control-flow Module for Data-flow Analysis                          *)
(***********************************************************************)

module type CTRLFLOW =
sig
  type st
  val start : st
  val last : st list
  val all : st list
  val pred : st -> st list
  val succ : st -> st list
  val to_s : st -> string
end

type cfg_module = (module CTRLFLOW with type st = D.link)

(* to_module : D.dex -> cfg -> cfg_module *)
let to_module (dx: D.dex) (g: cfg) : cfg_module =
  let pdom = pdoms g
  and len = A.length g in
  let empty = len < 3 in
  let module M =
  struct
    type st = D.link
    let start = if empty then D.no_off else L.hd g.(1).insns
    let last = if empty then [] else get_last_inss g pdom
    let all =
      let all_bb = IS.elements (all len) in
      L.fold_left (fun acc bb -> acc @@ g.(bb).insns) [] all_bb

    let pred ins =
      let b = find_bb g ins in
      if L.hd g.(b).insns = ins then
        try L.map (fun b' -> U.get_last g.(b').insns) g.(b).pred with _ -> []
      else
        let rec find_pred p = function
          | h::_ when h = ins -> p
          | h::t -> find_pred h t
          | [] -> D.no_off
        in
        [find_pred D.no_off g.(b).insns]

    let succ ins =
      let b = find_bb g ins in
      if U.get_last g.(b).insns = ins then
        try L.map (fun b' -> L.hd g.(b').insns) g.(b).succ with _ -> []
      else
        let rec find_succ = function
          | h::s::_ when h = ins -> s
          | _::t -> find_succ t
          | [] -> D.no_off
        in
        [find_succ g.(b).insns]

    let to_s st =
      I.instr_to_string (D.get_ins dx st)

  end
  in
  (module M : CTRLFLOW with type st = D.link)

(***********************************************************************)
(* DOTtify                                                             *)
(***********************************************************************)

let ins_toDOT addr (op, opr) =
  pp "0x%08X: %s" (D.of_off addr) (I.op_to_string op);
  if opr <> [] then L.iter (fun opr -> pp " %s" (I.opr_to_string opr)) opr

let bb2node dx i bb =
  match bb.kind with
  | STRT -> pp "  start [shape=ellipse]\n"
  | END  -> pp "  end [shape=ellipse]\n"
  | NORM ->
  (
    pp "  bb%d [label=\"" i;
    L.iter (fun ins -> ins_toDOT ins (D.get_ins dx ins); pp "\\l") bb.insns;
    pp "\"];\n" (* \\l : left-justified vs. \\n : centered *)
  )

let dot_prologue (g_name: string) : unit =
  pp "digraph %s {\n" g_name;
  pp " node [shape=record fontname=\"courier\"]\n"

let node_to_str kind i =
  match kind with
  | STRT -> "start"
  | END  -> "end"
  | NORM -> "bb"^(string_of_int i)

let edge_toDOT g i j =
  let i = node_to_str g.(i).kind i
  and j = node_to_str g.(j).kind j in
  pp "  %s -> %s\n" i j

(* cfg2dot : D.dex -> cfg -> unit *)
let cfg2dot (dx: D.dex) (g: cfg) : unit =
  dot_prologue "cfg";
  A.iteri (bb2node dx) g;
  let dot_edge i bb =
    L.iter (edge_toDOT g i) bb.succ
  in
  A.iteri dot_edge g;
  pp "}\n"

(* dom2dot : D.dex -> cfg -> dom -> unit *)
let dom2dot (dx: D.dex) g dom : unit =
  dot_prologue "dominator_tree";
  A.iteri (bb2node dx) g;
  let dot_edge j _ =
    let i = idom dom j in
    if i = j then () else edge_toDOT g i j
  in
  A.iteri dot_edge dom;
  pp "}\n"

(* pdom2dot : D.dex -> cfg -> pdom -> unit *)
let pdom2dot (dx: D.dex) g pdom : unit =
  dot_prologue "post_dom_tree";
  A.iteri (bb2node dx) g;
  let dot_edge j _ =
    let i = ipdom pdom j in
    if i = j then () else edge_toDOT g j i
  in
  A.iteri dot_edge pdom;
  pp "}\n"

