(*
 * Copyright (c) 2010-2015,
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
(* JSON Dump of Dex                                                    *)
(***********************************************************************)
module I = Instr
module D = Dex
module V = Visitor
module IM = I.IM
module I32 = Int32
module I64 = Int64
module P = Printf
module L = List
module A = DynArray
module S = String
module CM = Map.Make(Char)

open Yojson.Basic
  
(***********************************************************************)
(* Basic Types/Elements                                                *)
(***********************************************************************)
let printed_method_name (mtd_name: string) =
  if (mtd_name = "") then
    "<i>Constructor</i>"
  else
    mtd_name
      
let get_ty_str d lnk =
  match lnk with
    | D.Idx k ->
      if k = D.no_index
      then "N/A"
      else (try D.get_ty_str d lnk with | _ -> "N/A")
    | D.Off _ -> "N/A"
      
let get_str d lnk =
  match lnk with
    | D.Idx k ->
      if k = D.no_index
      then "N/A"
      else (try D.get_str d lnk with | _ -> "N/A")
    | D.Off _ -> "N/A"
  
let methods (d : D.dex) : json =
  let rec mtd_h mtd_id_item  =
    let proto_id = D.get_pit d mtd_id_item in
    `Assoc
     ["cls_name", `String (get_ty_str d mtd_id_item.D.m_class_id);
      "cls_name", `String (get_ty_str d mtd_id_item.D.m_class_id);
      "shorty", `String (get_str d proto_id.D.shorty);
      "name", `String (printed_method_name (get_str d mtd_id_item.D.m_name_id))]
  in
  `List (L.map mtd_h (A.to_list d.D.d_method_ids))

let strings (d : D.dex) : json =
  `List (L.map (fun link ->
             `String (match D.get_data_item d link with
		      | D.STRING_DATA str -> str
		      | _ -> "invalid string"))
	       (A.to_list d.D.d_string_ids))
    
let types (d : D.dex) : json =
  `List (L.map (fun t -> `String (D.get_str d t))
	       (A.to_list d.D.d_type_ids))
   

(* h.D.magic;
h.D.checksum;
 *)
    
let rec instructions d insns : json =
  let ins = function 
    | (lnk, D.INSTRUCTION ins) ->
       let op = fst ins in
       let opr = snd ins in
       let popr opr =
         (match opr with
          | I.OPR_OFFSET off ->
	     `Assoc ["type", `String "offset";
		     "offset", `Int (I32.to_int off)]
          | I.OPR_CONST i -> 
	     `Assoc ["type", `String "const";
		     "const", `Int (I64.to_int i)]
          | I.OPR_INDEX i ->
             (match Instr.access_link op with
              | I.STRING_IDS ->
		 `Assoc ["type", `String "sring-ref";
			 "index", `Int i;
			 "value", `String (I.opr_to_string opr)]
              | I.TYPE_IDS ->
		 `Assoc ["type", `String "type-ref";
			 "index", `Int i;
			 "value", `String (I.opr_to_string opr)]
              | I.METHOD_IDS ->
		 `Assoc ["type", `String "method-ref";
			 "index", `Int i;
			 "value", `String (I.opr_to_string opr)]
              | I.OFFSET ->
		 `Assoc ["type", `String "offset";
			 "value", `String (I.opr_to_string opr)]
              | I.NOT_LINK -> `String (I.opr_to_string opr)
              | _ -> `String (I.opr_to_string opr))
	  | _ -> `String (I.opr_to_string opr)) in
       `Assoc
	["op", `String (I.op_to_string op);
	 "oprs", `List (L.map popr opr)]
    | _ ->
       `Null
  in
  `List (L.map ins insns)
   
(* get_class_name : D.dex -> D.class_def_item -> string *)
let get_class_name (d : D.dex) (c : D.class_def_item) : string =
  get_ty_str d c.D.c_class_id
    
let p_method (d : D.dex) (c : D.class_def_item) (mtd : D.encoded_method) : json =
  let class_name = get_class_name d c in
  let mid_item = A.get d.D.d_method_ids (D.of_idx mtd.D.method_idx) in
  let proto_item = A.get d.D.d_proto_ids (D.of_idx mid_item.D.m_proto_id) in
  let shorty = get_str d proto_item.D.shorty in
  let return_type = get_ty_str d proto_item.D.return_type in
  let pre_method_name = get_str d mid_item.D.m_name_id in
  let method_name = printed_method_name pre_method_name in
  let citm =
    try Some (snd (D.get_citm d c.D.c_class_id mtd.D.method_idx))
    with | D.Wrong_dex _ -> None
  in
  `Assoc
   (["name", `String method_name;
     "shorty", `String shorty;
     "return", `String return_type]
    @ 
      (match citm with
       | None -> ["has-code", `Bool false]
       | Some citm ->
	  let i = (L.map (fun x -> (x, (D.get_data_item d x))) (A.to_list citm.D.insns))
	  in
	  ["has-code", `Bool true;
	   "regs-used", `Int citm.D.registers_size;
	   "ins-size", `Int citm.D.ins_size;
	   "instructions", instructions d i]))
    
let p_class (d : D.dex) (c : D.class_def_item) : json =
  let class_name = get_class_name d c in
  let fields = D.get_flds d c.D.c_class_id in
  let source_file =
    match c.D.source_file with
      | D.Idx k ->
         if k = D.no_index then `Null else `String (D.get_str d c.D.source_file)
      | _ -> `Null in
  let cdata =
    try Some (snd (D.get_cdata d c.D.c_class_id)) with | _ -> None in
  let pfield (link, (fid : D.field_id_item)) : json =
    `Assoc
     ["name", `String (get_str d fid.D.f_name_id);
      "type", `String (get_ty_str d fid.D.f_type_id)]
  in
  `Assoc
   (
     (match cdata with
      | None -> []
      | Some cdata ->
	 ["direct-methods", `List (L.map (p_method d c) cdata.D.direct_methods);
	  "virtual-methods", `List (L.map (p_method d c) cdata.D.virtual_methods)])
     @
       ["name", `String class_name;
	"access-flags", `Int c.D.c_access_flag;
	"superclass", `String (get_ty_str d c.D.superclass);
	"class-id", `Int (D.of_idx c.D.c_class_id);
	"source-file", source_file;
	"static-fields", `List (L.map pfield fields)])
   
let classes (d : D.dex) : json =
  `List (L.map (p_class d) (A.to_list d.D.d_class_defs))
      
(* generate_documentation : D.dex -> json *)
let rec generate_json (d : D.dex) : json =
  `Assoc
   ["strings", strings d;
    "methods", methods d;
    "types", types d;
    "classes", classes d]
