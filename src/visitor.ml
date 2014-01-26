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
(* Visitor                                                             *)
(***********************************************************************)

module DA = DynArray

module U = Util

module J = Java
module I = Instr
module D = Dex

module IM = I.IM

module L = List

(***********************************************************************)
(* Basic Types/Elements                                                *)
(***********************************************************************)

class type visitor =
object
  val dx : D.dex
  method get_dx : unit -> D.dex

  method v_fit  : D.field_id_item -> unit
  method v_mit  : D.method_id_item -> unit

  val mutable skip_cls : bool
  method get_skip_cls : unit -> bool
  method v_cdef : D.class_def_item -> unit

  method r_eval : D.encoded_value -> D.encoded_value
  method v_anno : D.encoded_annotation -> unit

  method v_cdat : D.class_data_item -> unit
  method v_efld : D.encoded_field -> unit

  val mutable skip_mtd : bool
  method get_skip_mtd : unit -> bool
  method v_emtd : D.encoded_method -> unit

  method v_citm : D.code_item -> unit
  method v_ins  : D.link -> unit
  method v_try  : D.try_item -> unit
  method v_hdl  : D.encoded_catch_handler -> unit
  method v_dbg  : D.debug_info_item -> unit

  method finish : unit -> unit
end

class iterator (d: D.dex) : visitor =
object (self)
  val dx = d
  method get_dx () = dx

  method v_fit _ = ()
  method v_mit _ = ()

  val mutable skip_cls = false
  method get_skip_cls () = skip_cls
  method v_cdef _ = ()

  method r_eval ev: D.encoded_value =
    match ev with
    | D.VALUE_ANNOTATION an -> self#v_anno an; ev
    | _ -> ev

  method v_anno (en: D.encoded_annotation) : unit =
    let per_elt (e: D.annotation_element) : unit =
      e.D.value <- self#r_eval e.D.value
    in
    L.iter per_elt en.D.elements

  method v_cdat _ = ()
  method v_efld _ = ()

  val mutable skip_mtd = false
  method get_skip_mtd () = skip_mtd
  method v_emtd _ = ()

  method v_citm _ = ()
  method v_ins  _ = ()
  method v_try  _ = ()
  method v_hdl  _ = ()
  method v_dbg  _ = ()

  method finish () = ()
end

(***********************************************************************)
(* DEX Iteration                                                       *)
(***********************************************************************)

let skips = ref ([]: string list)

(* set_skip_pkgs : string list -> unit *)
let set_skip_pkgs (pkgs: string list) : unit =
  skips := pkgs

(* to_be_skipped : string -> bool *)
let to_be_skipped (cname: string) : bool =
  let cname = J.of_java_ty cname in
  L.exists (fun pkg -> U.begins_with cname pkg) !skips

(* iter: visitor -> unit *)
let rec iter (v: visitor) : unit =
  let dx = v#get_dx () in
  let per_citm (citm: D.code_item) : unit =
    v#v_citm citm;
    L.iter v#v_ins (DA.to_list citm.D.insns);
    L.iter v#v_try citm.D.tries;
    L.iter v#v_hdl citm.D.c_handlers;
    if citm.D.debug_info_off = D.no_off then () else
    match D.get_data_item dx citm.D.debug_info_off with
    | D.DEBUG_INFO dbg -> v#v_dbg dbg
    | _ -> raise (D.Wrong_match "citm: not DEBUG_INFO")
  in
  let per_cdat (cdat: D.class_data_item) : unit =
    v#v_cdat cdat;
    L.iter v#v_efld cdat.D.static_fields;
    L.iter v#v_efld cdat.D.instance_fields;
    let v_mtd (emtd: D.encoded_method) : unit =
      v#v_emtd emtd;
      if v#get_skip_mtd () then () else
      if emtd.D.code_off = D.no_off then () else
      match D.get_data_item dx emtd.D.code_off with
      | D.CODE_ITEM citm -> per_citm citm
      | _ -> raise (D.Wrong_match "cdat: not CODE_ITEM")
    in
    L.iter v_mtd cdat.D.direct_methods;
    L.iter v_mtd cdat.D.virtual_methods
  in
  let per_cdef (cdef: D.class_def_item) : unit =
    v#v_cdef cdef;
    let stt_off = cdef.D.static_values in
    if stt_off <> D.no_off then
    (
      match D.get_data_item dx stt_off with
      | D.STATIC_VALUE evl ->
        D.insrt_stt dx stt_off (L.map v#r_eval evl)
      | _ -> raise (D.Wrong_match "cdef: not STATIC_VALUE")
    );
    iter_anno_dir dx v#v_anno cdef.D.annotations;
    let cname = D.get_ty_str dx cdef.D.c_class_id in
    if to_be_skipped cname then () else
    if v#get_skip_cls () then () else
    if cdef.D.class_data = D.no_off then () else
    (
      match D.get_data_item dx cdef.D.class_data with
      | D.CLASS_DATA cdat -> per_cdat cdat
      | _ -> raise (D.Wrong_match "cdef: not CLASS_DATA")
    )
  in
  DA.iter v#v_fit  dx.D.d_field_ids;
  DA.iter v#v_mit  dx.D.d_method_ids;
  DA.iter per_cdef dx.D.d_class_defs;
  v#finish ()

and iter_anno_dir dx v_anno a_dir : unit =
  if a_dir <> D.no_off then
  let iter_set off =
    iter_anno_set dx v_anno off.D.annotation_off
  and iter_ref off =
    iter_anno_ref dx v_anno off.D.annotation_off
  in
  match D.get_data_item dx a_dir with
  | D.ANNO_DIR dir ->
  (
    iter_anno_set dx v_anno dir.D.class_anno_off;
    L.iter iter_set dir.D.fields;
    L.iter iter_set dir.D.methods;
    L.iter iter_ref dir.D.parameters
  )
  | _ -> raise (D.Wrong_match "iter_anno: not ANNO_DIR")

and iter_anno_ref dx v_anno a_ref : unit =
  if a_ref <> D.no_off then
  match D.get_data_item dx a_ref with
  | D.ANNO_SET_REF ll -> L.iter (iter_anno_set dx v_anno) ll
  | _ -> raise (D.Wrong_match "iter_anno_ref: not ANNO_SET_REF")

and iter_anno_set dx v_anno a_set : unit =
  if a_set <> D.no_off then
  match D.get_data_item dx a_set with
  | D.ANNO_SET ll -> L.iter (iter_anno_itm dx v_anno) ll
  | _ -> raise (D.Wrong_match "iter_anno_set: not ANNO_SET")

and iter_anno_itm dx v_anno a_itm : unit =
  if a_itm <> D.no_off then
  match D.get_data_item dx a_itm with
  | D.ANNOTATION an -> v_anno an.D.annotation
  | _ -> raise (D.Wrong_match "iter_anno_itm: not ANNOTATION")

