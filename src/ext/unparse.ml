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
(* Unparse                                                             *)
(***********************************************************************)

module DA = DynArray

module U = Util

module I  = Instr
module D  = Dex
module J  = Java

module V  = Visitor
module IM = I.IM

module I32 = Int32
module I64 = Int64

module L = List
module S = String

module Pf = Printf

(***********************************************************************)
(* Basic Types/Elements                                                *)
(***********************************************************************)

let pp = Pf.printf

(***********************************************************************)
(* Utilities                                                           *)
(***********************************************************************)

(* print_section : D.section -> string -> unit *)
let print_section (s: D.section) (name: string) : unit =
  pp " %s size: %d\n" name s.D.size;
  pp " %s offset: 0x%08X\n" name (D.of_off s.D.offset)

(* print_list : ('a -> unit) -> 'a list -> unit *)
let rec print_list job = function
  | []    -> ()
  | [elt] -> job elt
  | h::tl -> job h; print_string ", "; print_list job tl

(* print_idx : link -> unit *)
let print_idx (idx: D.link) : unit =
  pp "%d" (D.of_idx idx)

(* print_off : link -> unit *)
let print_off (off: D.link) : unit =
  match off with
  | D.Off _ -> pp "0x%08X" (D.of_off off)
  |       _ -> pp ".(%d)"  (D.of_idx off) (* dump debugging *)

(***********************************************************************)
(* Unparsing                                                           *)
(***********************************************************************)

(* unparse : D.dex -> unit *)
let rec unparse (d: D.dex) : unit =
  print_header     d.D.header;
  print_string_ids d.D.d_string_ids;
  print_type_ids   d.D.d_type_ids;
  print_proto_ids  d.D.d_proto_ids;
  print_field_ids  d.D.d_field_ids;
  print_method_ids d.D.d_method_ids;
  print_class_defs d.D.d_class_defs;
  print_data       d.D.d_data

(* print_header : D.dex_header -> unit *)
and print_header (h: D.dex_header) : unit =
  pp "- !header\n";
  (* pp " magic: %s\n" h.D.magic; *)
  pp " magic: dex\\n035\\0\n";
  pp " checksum: %s\n" (I64.to_string h.D.checksum);
  pp " signature: [";
  print_list (fun sg -> pp "%d" (int_of_char sg)) h.D.signature;
  pp "]\n";
  pp " file size: %d\n"   h.D.file_size;
  pp " header size: %d\n" h.D.header_size;
  pp " endian_tag: %s\n" (D.endian_to_str h.D.endian_tag);
  print_section h.D.link "link";
  pp " map offset: "; (print_off h.D.map_off); pp "\n";
  print_section h.D.h_string_ids "string_ids";
  print_section h.D.h_type_ids   "type_ids";
  print_section h.D.h_proto_ids  "proto_ids";
  print_section h.D.h_field_ids  "field_ids";
  print_section h.D.h_method_ids "method_ids";
  print_section h.D.h_class_defs "class_defs";
  print_section h.D.h_data       "data"

(* print_string_ids : D.link DA.t -> unit *)
and print_string_ids (str_ids: D.link DA.t) : unit =
  pp "- !string_ids\n ids: [";
  print_list print_off (DA.to_list str_ids);
  pp "]\n"

(* print_type_ids : D.link DA.t -> unit *)
and print_type_ids (typ_ids: D.link DA.t) : unit =
  pp "- !type_ids\n ids: [";
  print_list print_idx (DA.to_list typ_ids);
  pp "]\n"

(* print_proto_ids : D.proto_id_item DA.t -> unit *)
and print_proto_ids (protos: D.proto_id_item DA.t) : unit =
  pp "- !proto_ids\n ids: [";
  let print_item (item : D.proto_id_item) : unit =
    pp "[shorty: %d," (D.of_idx item.D.shorty);
    pp " ret_ty: %d," (D.of_idx item.D.return_type);
    pp " param: ";    print_off item.D.parameter_off;
    pp "]"
  in
  print_list print_item (DA.to_list protos);
  pp "]\n"

(* print_field_ids : D.field_id_item DA.t -> unit *)
and print_field_ids (fields: D.field_id_item DA.t) : unit =
  pp "- !field_ids\n ids: [";
  let print_item (item : D.field_id_item) : unit =
    pp "[class_id: %d," (D.of_idx item.D.f_class_id);
    pp " type_id: %d,"  (D.of_idx item.D.f_type_id);
    pp " name: %d]"     (D.of_idx item.D.f_name_id)
  in
  print_list print_item (DA.to_list fields);
  pp "]\n"

(* print_method_ids : D.method_id_item DA.t -> unit *)
and print_method_ids (methos: D.method_id_item DA.t) : unit =
  pp "- !method_ids\n ids: [";
  let print_item (item : D.method_id_item) : unit =
    pp "[class_id: %d," (D.of_idx item.D.m_class_id);
    pp " proto_id: %d," (D.of_idx item.D.m_proto_id);
    pp " name: %d]"     (D.of_idx item.D.m_name_id)
  in
  print_list print_item (DA.to_list methos);
  pp "]\n"

(* print_class_defs : D.class_def_item DA.t -> unit *)
and print_class_defs (c_defs: D.class_def_item DA.t) : unit =
  pp "- !class_defs\n defs: [";
  let print_item (item : D.class_def_item) : unit =
    pp "[class_id: %d," (D.of_idx  item.D.c_class_id);
    pp " acc_flag: %d,"            item.D.c_access_flag;
    pp " super: %d,"    (D.of_idx  item.D.superclass);
    pp " itf: ";        (print_off item.D.interfaces);
    pp ", src: %d,"     (D.of_idx  item.D.source_file);
    pp " ann: ";        (print_off item.D.annotations);
    pp ", data: ";      (print_off item.D.class_data);
    pp ", static: ";    (print_off item.D.static_values);
    pp "]"
  in
  print_list print_item (DA.to_list c_defs);
  pp "]\n"

and print_data_item (k: int32 option) (v: D.data_item) : unit =
  let _ = match k with
    | Some k ->
      pp " 0x%08X: " (I32.to_int k);
    | _ ->
      ();
  in
  match v with
    | D.MAP_LIST m_lst ->
      (
        let print_mi (mi: D.map_item) : unit =
          pp "[type: %s," (D.type_code_to_str mi.D.type_of_item);
          pp " size: %d,"                     mi.D.mi_size;
          pp " off: ";             (print_off mi.D.mi_offset);
          pp "]"
        in
        pp "[sort: map_list, list: [";
        print_list print_mi m_lst;
        pp "]]\n"
      )
    | D.TYPE_LIST t_lst ->
      (
        pp "[sort: type_list, size: %d, list: [" (L.length t_lst);
        print_list print_idx t_lst;
        pp "]]\n"
      )
    | D.ANNO_SET_REF r_lst ->
      (
        pp "[sort: anno_set_ref, size: %d, list: [" (L.length r_lst);
        print_list print_off r_lst;
        pp "]]\n"
      )
    | D.ANNO_SET s_lst ->
      (
        pp "[sort: anno_set, size: %d, list: [" (L.length s_lst);
        print_list print_off s_lst;
        pp "]]\n"
      )
    | D.CLASS_DATA item ->
      (
        let s_size = L.length item.D.static_fields
        and i_size = L.length item.D.instance_fields
        and d_size = L.length item.D.direct_methods
        and v_size = L.length item.D.virtual_methods
        in
        pp "[sort: class_data_item,";
        pp " static_fields_size: %d "   s_size;
        pp " instance_fields_size: %d " i_size;
        pp " direct_methods_size: %d "  d_size;
        pp " virtual_methods_size: %d"  v_size;
        let print_en_f (item': D.encoded_field) : unit =
          pp "[field_id: %d," (D.of_idx item'.D.field_idx);
          pp " access_flag: %d]"        item'.D.f_access_flag
        in
        let print_en_m (item': D.encoded_method) : unit =
          pp "[method_id: %d," (D.of_idx item'.D.method_idx);
          pp " access_flag: %d,"         item'.D.m_access_flag;
          pp " code_off: ";    print_off item'.D.code_off; pp "]"
        in
        pp ", static_fields_list: [";
        print_list print_en_f item.D.static_fields;
        pp "], instance_fields_list: [";
        print_list print_en_f item.D.instance_fields;
        pp "], direct_methods_list: [";
        print_list print_en_m item.D.direct_methods;
        pp "], virtual_methods_list: [";
        print_list print_en_m item.D.virtual_methods;
        pp "]]\n"
      )
    | D.CODE_ITEM  item ->
      (
        pp "[sort: code_item,";
        pp " registers_size: %d,"          item.D.registers_size;
        pp " ins_size: %d,"                item.D.ins_size;
        pp " outs_size: %d,"               item.D.outs_size;
        pp " tries_size: %d,"              item.D.tries_size;
        pp " debug_info_off: "; (print_off item.D.debug_info_off); pp ",";
        pp " insns_size: %d"               item.D.insns_size;
        pp ", insns_list: [";
        print_list print_off (DA.to_list item.D.insns);
        pp "]";
        let print_tri (item': D.try_item) : unit =
          pp "[start: ";   (print_off item'.D.start_addr);  pp ",";
          pp " end: ";     (print_off item'.D.end_addr);    pp ",";
          pp " handler: "; (print_off item'.D.handler_off); pp "]"
        in
        let print_handle (item': D.encoded_catch_handler) : unit =
          let print_ty_addr (item'': D.type_addr_pair) : unit =
            pp "[type: %d," (D.of_idx  item''.D.ch_type_idx);
            pp " addr: ";   (print_off item''.D.addr);
            pp "]"
          in
          pp "[e_handlers: [";
          print_list print_ty_addr    item'.D.e_handlers;
          pp "], ch_all: "; print_off item'.D.catch_all_addr;
          pp "]"
        in
        pp ", tries: [";
        print_list print_tri    item.D.tries;
        pp "], handlers: [";
        print_list print_handle item.D.c_handlers;
        pp "]]\n"
      )
    | D.STRING_DATA str ->
      (
        pp "[sort: string_data,";
        pp " str: \"%s\"]\n" str
      )
    | D.DEBUG_INFO dbg ->
      (
        pp "[sort: debug_info,";
        pp " line_start: %d," dbg.D.line_start;
        pp " parameter_names: [";
        print_list print_idx  dbg.D.parameter_name;
        pp "], state_machine: [";
        let print_sm (op, opr) : unit =
          let op_str = D.machine_instr_to_str op in
          pp "[op: %s, opr:[" op_str;
          print_list print_string (L.map I.opr_to_string opr);
          pp "]]"
        in
        print_list print_sm dbg.D.state_machine;
        pp "]]\n"
      )
    | D.ANNOTATION ann ->
      (
        let vis = match ann.D.visible with
          | D.VISIBILITY_BUILD   -> "build"
          | D.VISIBILITY_RUNTIME -> "runtime"
          | D.VISIBILITY_SYSTEM  -> "system"
        in
        pp "[sort: annotation, visibility: %s," vis;
        pp " ann: "; print_ann ann.D.annotation;
        pp "]\n"
      )
    | D.STATIC_VALUE ar ->
      (
        pp "[sort: static_value,";
        pp " data: [";
        print_list print_encoded_value ar;
        pp "]]\n"
      )
    | D.ANNO_DIR ann ->
      (
        pp "[sort: anno_dir,";
        pp " class: "; (print_off ann.D.class_anno_off);
        pp ",";
        let print_anno_off (a_off: D.anno_off) =
          pp "[idx: %d," (D.of_idx a_off.D.target);
          pp " off: ";  (print_off a_off.D.annotation_off);
          pp "]"
        in
        pp " fields: [";
        print_list print_anno_off ann.D.fields;
        pp "], methods: [";
        print_list print_anno_off ann.D.methods;
        pp "], parameters: [";
        print_list print_anno_off ann.D.parameters;
        pp "]]\n"
      )
    | D.INSTRUCTION ins ->
      (
        let op, opr = ins in
        pp "[sort: instruction,";
        print_ins op opr;
        pp "]\n"
      )
    | D.FILL_ARRAY ar ->
      (
        pp "[sort: fill_array_data,";
        pp " width: %d," ar.D.ad_width;
        pp " size: %d,"  ar.D.ad_size;
        pp " data: [";
        let print_arr x =
          match x with
            | I.OPR_CONST i64 -> pp "%s" (I64.to_string i64)
            | _ -> raise (D.Wrong_dex "fill-array-data")
        in
        print_list print_arr ar.D.ad_data;
        pp "]]\n"
      )
    | D.SWITCH sw ->
      (
        pp "[sort: switch,";
        pp " base: "; print_off sw.D.sw_base; pp ", ";
        pp " size: %d," sw.D.sw_size;
        pp " keys: [";
        print_list (fun k -> print_string (string_of_int k)) sw.D.sw_keys;
        pp "], targets: [";
        print_list print_off sw.D.sw_targets;
        pp"]]\n"
      )

(* print_data : D.data_item IM.t -> unit *)
and print_data (data: D.data_item IM.t) : unit =
  let print_item_helper (k: int32) data : unit =
    print_data_item (Some k) data
  in
  pp "- !data\n";
  IM.iter print_item_helper data

(* print_ins : I.opcode -> I.operand list -> unit *)
and print_ins (op: I.opcode) (opr: I.operand list) : unit =
  pp " op: %s" (I.op_to_string op);
  if opr <> [] then
  (
    pp ", opr: [";
    print_list print_string (L.map I.opr_to_string opr);
    pp "]"
  )

(* print_encoded_value : D.encoded_value -> unit *)
and print_encoded_value (ev: D.encoded_value) : unit =
  match ev with
  | D.VALUE_BYTE   i64
  | D.VALUE_SHORT  i64
  | D.VALUE_CHAR   i64
  | D.VALUE_INT    i64
  | D.VALUE_LONG   i64 -> pp "%s" (I64.to_string i64)
  | D.VALUE_FLOAT  i64
  | D.VALUE_DOUBLE i64 -> pp "%f" (I64.float_of_bits i64)
  | D.VALUE_STRING id
  | D.VALUE_TYPE   id
  | D.VALUE_FIELD  id
  | D.VALUE_METHOD id
  | D.VALUE_ENUM   id  -> pp "%s" (string_of_int id)
  | D.VALUE_ARRAY arr  -> pp "["; print_list print_encoded_value arr; pp "]"
  | D.VALUE_ANNOTATION ann -> print_ann ann
  | D.VALUE_NULL       -> pp "null"
  | D.VALUE_BOOLEAN b  -> pp "%s" (string_of_bool b)

(* print_ann : D.encoded_annotation -> unit *)
and print_ann (ann: D.encoded_annotation) : unit =
  pp "[type: %d," (D.of_idx ann.D.an_type_idx);
  pp " elements: [";
  print_list print_ann_elts ann.D.elements;
  pp "]"

and print_ann_elts (elt: D.annotation_element) : unit =
  pp "[name: %d," (D.of_idx elt.D.name_idx);
  pp " v: "; print_encoded_value elt.D.value; pp "]"

(* print_method : D.dex -> D.code_item -> unit *)
let print_method (dx : D.dex) (mtd: D.code_item) : unit =
  let dump_instr ins =
    if D.is_ins dx ins then
    (
      let op, opr = D.get_ins dx ins in
      print_ins op opr; pp "\n"
    )
  in
  print_data_item None (D.CODE_ITEM mtd);
  pp "[Instructions:\n";
  DA.iter dump_instr mtd.D.insns;
  pp "]\n"
  
(***********************************************************************)
(* Info. gathering                                                     *)
(***********************************************************************)

class counter (dx: D.dex) =
object
  inherit V.iterator dx

  val mutable cls_dat = 0
  val mutable cod_itm = 0
  val mutable instrct = 0

  method v_cdat _ = cls_dat <- cls_dat + 1
  method v_citm _ = cod_itm <- cod_itm + 1
  method v_ins  _ = instrct <- instrct + 1

  method finish () =
    Log.i ("cls_dat : "^(Log.of_i cls_dat));
    Log.i ("cod_itm : "^(Log.of_i cod_itm));
    Log.i ("instrct : "^(Log.of_i instrct))
end

(* print_info : D.dex -> unit *)
let print_info (dx: D.dex) : unit =
  V.iter (new counter dx)

let rec extract_cls str =
  let len = S.length str in
  match str.[0] with
  | 'L' -> (* Ljava/lang/Object; *)
    J.of_java_ty str
  | '[' -> (* [...*)
    extract_cls (U.trim_1st str)
  | _ -> ""

class cls_visitor (dx: D.dex) =
object
  inherit V.iterator dx

  method v_cdef (cdef: D.class_def_item) =
    let str = D.get_ty_str dx cdef.D.c_class_id in
    let typ = extract_cls str in
    if typ <> "" then Log.i typ
end

(* print_classes : D.dex -> unit *)
let print_classes (dx: D.dex) : unit =
  V.iter (new cls_visitor dx)

