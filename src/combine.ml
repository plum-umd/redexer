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
(* Combine                                                             *)
(***********************************************************************)

module DA = DynArray

module I  = Instr
module D  = Dex

module IM = I.IM

module I32 = Int32

module L = List

(***********************************************************************)
(* Basic Types/Elements                                                *)
(***********************************************************************)

type shift = {
  str_sz : int;
  typ_sz : int;
  pro_sz : int;
  fld_sz : int;
  mtd_sz : int;
  cls_sz : int;
  f_size : int;
}

(***********************************************************************)
(* Utilities                                                           *)
(***********************************************************************)

let sft_off (shift: int) l : D.link =
  let off = D.of_off l in
  if off = D.no_offset then l else D.to_off (off + shift)

let sft_idx (shift: int) l : D.link =
  let idx = D.of_idx l in
  if idx = D.no_index then l else D.to_idx (idx + shift)

(***********************************************************************)
(* Combining DEX binaries                                              *)
(***********************************************************************)

(* combine: D.dex -> D.dex -> D.dex *)
let rec combine (lx: D.dex) (tx: D.dex) : D.dex =
  let dx = D.empty_dex ()
  and sft = {
    str_sz = DA.length lx.D.d_string_ids;
    typ_sz = DA.length lx.D.d_type_ids;
    pro_sz = DA.length lx.D.d_proto_ids;
    fld_sz = DA.length lx.D.d_field_ids;
    mtd_sz = DA.length lx.D.d_method_ids;
    cls_sz = DA.length lx.D.d_class_defs;
    f_size = lx.D.header.D.file_size;
  } in
  dx.D.header.D.file_size <- lx.D.header.D.file_size + tx.D.header.D.file_size;
  (* append string_ids *)
  DA.append lx.D.d_string_ids dx.D.d_string_ids;
  let fs it = sft_off sft.f_size it in
  DA.append (DA.map fs tx.D.d_string_ids) dx.D.d_string_ids;
  (* append type_ids *)
  DA.append lx.D.d_type_ids dx.D.d_type_ids;
  let ft it = sft_idx sft.str_sz it in
  DA.append (DA.map ft tx.D.d_type_ids) dx.D.d_type_ids;
  (* append proto_ids *)
  DA.append lx.D.d_proto_ids dx.D.d_proto_ids;
  let fp it = {
    D.shorty        = sft_idx sft.str_sz it.D.shorty;
    D.return_type   = sft_idx sft.typ_sz it.D.return_type;
    D.parameter_off = sft_off sft.f_size it.D.parameter_off;
  } in
  DA.append (DA.map fp tx.D.d_proto_ids) dx.D.d_proto_ids;
  (* append field_ids *)
  DA.append lx.D.d_field_ids dx.D.d_field_ids;
  let ff it = {
    D.f_class_id = sft_idx sft.typ_sz it.D.f_class_id;
    D.f_type_id  = sft_idx sft.typ_sz it.D.f_type_id;
    D.f_name_id  = sft_idx sft.str_sz it.D.f_name_id;
  } in
  DA.append (DA.map ff tx.D.d_field_ids) dx.D.d_field_ids;
  (* append method_ids *)
  DA.append lx.D.d_method_ids dx.D.d_method_ids;
  let fm it = {
    D.m_class_id = sft_idx sft.typ_sz it.D.m_class_id;
    D.m_proto_id = sft_idx sft.pro_sz it.D.m_proto_id;
    D.m_name_id  = sft_idx sft.str_sz it.D.m_name_id;
  } in
  DA.append (DA.map fm tx.D.d_method_ids) dx.D.d_method_ids;
  (* append class_defs *)
  DA.append lx.D.d_class_defs dx.D.d_class_defs;
  let fc it = {
    it with
    D.c_class_id    = sft_idx sft.typ_sz it.D.c_class_id;
    D.superclass    = sft_idx sft.typ_sz it.D.superclass;
    D.interfaces    = sft_off sft.f_size it.D.interfaces;
    D.source_file   = sft_idx sft.str_sz it.D.source_file;
    D.annotations   = sft_off sft.f_size it.D.annotations;
    D.class_data    = sft_off sft.f_size it.D.class_data;
    D.static_values = sft_off sft.f_size it.D.static_values;
  } in
  DA.append (DA.map fc tx.D.d_class_defs) dx.D.d_class_defs;
  dx.D.d_data <- IM.fold (sft_data sft) tx.D.d_data lx.D.d_data;
  dx

and sft_data sft (k: I.offset) (it: D.data_item) acc =
  let sft_off' = sft_off sft.f_size in
  let it' = match it with
    | D.ANNO_SET_REF ll -> D.ANNO_SET_REF (L.map sft_off' ll)
    | D.ANNO_SET     ll -> D.ANNO_SET     (L.map sft_off' ll)
    | D.CODE_ITEM    ci ->
    (
      let dbg  = sft_off' ci.D.debug_info_off
      and fi l = sft_off' l
      and ft t = { t with
        D.start_addr = sft_off' t.D.start_addr;
        D.end_addr   = sft_off' t.D.end_addr;
      }
      and fh h =
        let fp p = {
          D.ch_type_idx = sft_idx sft.typ_sz p.D.ch_type_idx;
          D.addr        = sft_off sft.f_size p.D.addr;
        } in
        {
          D.e_handlers     = L.map fp h.D.e_handlers;
          D.catch_all_addr = sft_off' h.D.catch_all_addr;
        }
      in
      let ci' = {
        ci with
        D.debug_info_off = dbg;
        D.insns          = DA.map fi ci.D.insns;
        D.tries          =  L.map ft ci.D.tries;
        D.c_handlers     =  L.map fh ci.D.c_handlers;
      } in D.CODE_ITEM ci'
    )
    | D.ANNO_DIR     an ->
    (
      let ff a = {
        D.target         = sft_idx sft.fld_sz a.D.target;
        D.annotation_off = sft_off sft.f_size a.D.annotation_off;
      }
      and fm a = {
        D.target         = sft_idx sft.mtd_sz a.D.target;
        D.annotation_off = sft_off sft.f_size a.D.annotation_off;
      } in
      let fp a = fm a in
      let an' = {
        D.class_anno_off = sft_off' an.D.class_anno_off;
        D.fields         = L.map ff an.D.fields;
        D.methods        = L.map fm an.D.methods;
        D.parameters     = L.map fp an.D.parameters;
      } in D.ANNO_DIR an'
    )
    | D.TYPE_LIST    ll -> D.TYPE_LIST  (L.map (sft_idx sft.typ_sz) ll)
    | D.DEBUG_INFO  dbg -> D.DEBUG_INFO (sft_dbg sft dbg)
    | D.ANNOTATION   ai ->
    (
      let ai' = { ai with D.annotation = sft_ann sft ai.D.annotation } in
      D.ANNOTATION ai'
    )
    | D.STATIC_VALUE st -> D.STATIC_VALUE (L.map (sft_ev sft) st)
    | D.CLASS_DATA   ci ->
    (
      let ef e : D.encoded_field = {
        e with D.field_idx = sft_idx sft.fld_sz e.D.field_idx
      }
      and em e : D.encoded_method = {
        e with
        D.method_idx = sft_idx sft.mtd_sz e.D.method_idx;
        D.code_off   = sft_off sft.f_size e.D.code_off;
      } in
      let ci' = {
        D.static_fields   = L.map ef ci.D.static_fields;
        D.instance_fields = L.map ef ci.D.instance_fields;
        D.direct_methods  = L.map em ci.D.direct_methods;
        D.virtual_methods = L.map em ci.D.virtual_methods;
      } in D.CLASS_DATA ci'
    )
    | D.INSTRUCTION ins ->
    (
      let op, opr = ins in
      let hx = I.op_to_hx op in
      let f opr = match opr with
        | I.OPR_OFFSET _ ->
          D.off2opr (sft_off' (D.opr2off opr))
        | I.OPR_INDEX  _ ->
          if 0x1a <= hx && hx <= 0x1b then
            D.idx2opr (sft_idx sft.str_sz (D.opr2idx opr))
          else if hx = 0x1c || (0x1f <= hx && hx <= 0x20)
            || (0x22 <= hx && hx <= 0x25) then
            D.idx2opr (sft_idx sft.typ_sz (D.opr2idx opr))
          else if 0x52 <= hx && hx <= 0x6d then
            D.idx2opr (sft_idx sft.fld_sz (D.opr2idx opr))
          else if 0x6e <= hx && hx <= 0x78 then
            D.idx2opr (sft_idx sft.mtd_sz (D.opr2idx opr))
          else opr
        | _ -> opr
      in D.INSTRUCTION (op, L.map f opr)
    )
    | D.SWITCH       sw ->
      let sw' = {
        sw with
        D.sw_base    =       sft_off' sw.D.sw_base;
        D.sw_targets = L.map sft_off' sw.D.sw_targets;
      } in D.SWITCH sw'
    | _ -> it
  in
  IM.add (I32.add k (I32.of_int sft.f_size)) it' acc

and sft_dbg sft dbg : D.debug_info_item =
  let f = D.to_idx and g = D.of_idx in
  let p_map = sft_idx sft.str_sz
  and m_map (op, opr) =
    match op with
    | D.DBG_START_LOCAL          ->
    (
      let v::n::t::[] = opr in
      let opr' = match v, n, t with
        | I.OPR_REGISTER _, I.OPR_INDEX n', I.OPR_INDEX t' ->
          let nn = I.OPR_INDEX (g (sft_idx sft.str_sz (f n')))
          and nt = I.OPR_INDEX (g (sft_idx sft.typ_sz (f t')))
          in v::nn::nt::[]
        | _, _, _ -> raise (D.Wrong_dex "DBG_START_LOCAL")
      in (op, opr')
    )
    | D.DBG_START_LOCAL_EXTENDED ->
    (
      let v::n::t::s::[] = opr in
      let opr' = match v, n, t, s with
        | I.OPR_REGISTER _, I.OPR_INDEX n', I.OPR_INDEX t', I.OPR_INDEX s' ->
          let nn = I.OPR_INDEX (g (sft_idx sft.str_sz (f n')))
          and nt = I.OPR_INDEX (g (sft_idx sft.typ_sz (f t')))
          and ns = I.OPR_INDEX (g (sft_idx sft.str_sz (f s')))
          in v::nn::nt::ns::[]
        | _, _, _, _ -> raise (D.Wrong_dex "DBG_START_LOCAL_EXTENDED")
      in (op, opr')
    )
    | D.DBG_SET_FILE             ->
    (
      let n::[] = opr in
      let opr' = match n with
        | I.OPR_INDEX n' ->
          I.OPR_INDEX (g (sft_idx sft.str_sz (f n'))) :: []
        | _ -> raise (D.Wrong_dex "DBG_SET_FILE")
      in (op, opr')
    )
    | _ -> (op, opr)
  in
  {
    D.line_start     = dbg.D.line_start;
    D.parameter_name = L.map p_map dbg.D.parameter_name;
    D.state_machine  = L.map m_map dbg.D.state_machine;
  }

and sft_ev sft ev : D.encoded_value =
  let f = D.to_idx and g = D.of_idx in
  match ev with
  | D.VALUE_BYTE       _
  | D.VALUE_SHORT      _
  | D.VALUE_CHAR       _
  | D.VALUE_INT        _
  | D.VALUE_LONG       _
  | D.VALUE_FLOAT      _
  | D.VALUE_DOUBLE     _ -> ev
  | D.VALUE_STRING     i -> D.VALUE_STRING (g (sft_idx sft.str_sz (f i)))
  | D.VALUE_TYPE       i -> D.VALUE_TYPE   (g (sft_idx sft.typ_sz (f i)))
  | D.VALUE_FIELD      i -> D.VALUE_FIELD  (g (sft_idx sft.fld_sz (f i)))
  | D.VALUE_METHOD     i -> D.VALUE_METHOD (g (sft_idx sft.mtd_sz (f i)))
  | D.VALUE_ENUM       i -> D.VALUE_ENUM   (g (sft_idx sft.fld_sz (f i)))
  | D.VALUE_ARRAY      l -> D.VALUE_ARRAY  (L.map (sft_ev sft) l)
  | D.VALUE_ANNOTATION a -> D.VALUE_ANNOTATION (sft_ann sft a)
  | D.VALUE_NULL         -> ev
  | D.VALUE_BOOLEAN    _ -> ev

and sft_ann sft ann : D.encoded_annotation =
  let sft_elt (e: D.annotation_element) = {
    D.name_idx = sft_idx sft.str_sz e.D.name_idx;
    D.value    = sft_ev sft e.D.value;
  } in
  {
    D.an_type_idx = sft_idx sft.typ_sz ann.D.an_type_idx;
    D.elements    = L.map sft_elt ann.D.elements;
  }

