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
(* HTML Dump of Dex                                                    *)
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
  
module FN = Filename
  
module U = Util
  
(***********************************************************************)
(* Basic Types/Elements                                                *)
(***********************************************************************)
let cur_out = ref stdout
  
let output_dir = ref "output"
  
let pp fmt = P.fprintf !cur_out fmt
  
let error fmt = P.fprintf stderr fmt
  
let output_directory () =
  let d =
    if FN.is_relative (!output_dir) then
      FN.concat FN.current_dir_name !output_dir
    else
      !output_dir
  in
  P.printf "%s\n" d;
  d
(*  (P.printf "%s\n" (FN.concat FN.current_dir_name !output_dir);
    FN.concat FN.current_dir_name !output_dir) *)
    
let find_file_path name = FN.concat (output_directory ()) (name ^ ".html")
  
let find_link_path name = name ^ ".html"
  
let explode s =
  let rec expl i l = if i < 0 then l else expl (i - 1) (s.[i] :: l)
  in expl ((S.length s) - 1) []
  
let implode l =
  let result = String.create (List.length l) in
  let rec imp i =
    function | [] -> result | c :: l -> (result.[i] <- c; imp (i + 1) l)
  in imp 0 l

(***********************************************************************)
(* HTML unparsing                                                      *)
(***********************************************************************)

let printed_method_name (mtd_name: string) =
  if (mtd_name = "") then
    "<i>Constructor</i>"
  else
    mtd_name
      
let get_class_link fname = find_link_path (U.sanatize_class_filename fname)
  
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
      
(* print_beginning : string -> unit *)
let print_beginning (title : string) : unit =
  (pp "<html>\n";
   pp "<head><title>%s</title>\n" title;
   pp "<link rel=stylesheet href=\"dex-format.css\">\n</head>\n";
   pp
     "\n\n<body>\n<a href=\"index.html\">Index</a><br><h1 class=\"title\">%s</h1>\n"
     title)
    
(* close_output : unit -> unit *)
let close_output () : unit = close_out_noerr !cur_out
  
(* print_end_close : unit -> unit *)
let print_end_close () : unit = (pp "\n</body>\n</html>\n"; close_output ())
  
(* print_methods : D.dex -> unit *)
let print_methods (d : D.dex) : unit =
  let rec print_mtd_ids mtd_id_item_list num =
    match mtd_id_item_list with
      | [] -> ()
      | mtd_id_item::tl -> 
	let cls_name = get_ty_str d mtd_id_item.D.m_class_id in
	let proto_id = D.get_pit d mtd_id_item in
	let shorty = get_str d proto_id.D.shorty in
	let name = printed_method_name (get_str d mtd_id_item.D.m_name_id) in
	let link = Printf.sprintf "%s#%s;%s" (get_class_link cls_name) (U.sanatize_class_filename cls_name) name in
	pp "<tr><td>%X</td><td><a name=\"method%d\"></a><a href=\"%s\">%s</a></td><td>%s</td><td>%s</td></tr>" 
	  num num link name cls_name shorty;
	print_mtd_ids tl (num+1) 
  in
  (pp "<table><thead><tr><th>ID</th><th>Method Name</th><th>Class name</th><th>Prototype</th></tr></thead>";
   let _ = print_mtd_ids (A.to_list d.D.d_method_ids) 0 in
   pp "</tbody></table>")
    
(* make_methods : D.dex -> unit *)	
let make_methods (d : D.dex) : unit =
  (cur_out := open_out (find_file_path "methods");
   print_beginning "Methods";
   print_methods d;
   print_end_close())
    
(* print_strings : D.dex -> unit *)
let print_strings (d : D.dex) : unit =
  let rec print_string_row id links =
    match links with
      | link :: tl ->
        let str =
          (match D.get_data_item d link with
            | D.STRING_DATA str -> str
            | _ -> "<font color=\"red\" style=\"bold\">invalid string</font>")
        in
        (pp "<tr>\n";
         pp "<td><a name=\"string";
         pp "%d" id;
         pp "\">";
         pp "%d" id;
         pp "</a></td><td>";
         pp "%s" str;
         pp "</td>\n</tr>\n";
         print_string_row (id + 1) tl)
      | [] -> ()
  in
  (pp "<table><thead><tr><th>Id</th><th>Value</th></tr></thead>\n<tbody>\n";
   print_string_row 0 (A.to_list d.D.d_string_ids);
   pp "</tbody></table>")
    
(* make_strings : D.dex -> unit *)
let make_strings (d : D.dex) : unit =
  (cur_out := open_out (find_file_path "strings");
   print_beginning "Strings";
   print_strings d;
   print_end_close ())
    
(* print_types : D.dex -> unit *)
let print_types (d : D.dex) : unit =
  let rec print_type_row id types =
    match types with
      | t :: tl ->
        let str = D.get_str d t
        in
        (pp "<tr>\n";
         pp "<td><a name=\"type";
         pp "%d" id;
         pp "\">";
         pp "%d" id;
         pp "</a></td><td>";
         pp "%s" str;
         pp "</td>\n</tr>\n";
         print_type_row (id + 1) tl)
      | [] -> pp "</tbody></table>"
  in
  (pp "<h2><a name=\"types\"></a>Types</h2>\n";
   pp "<table><thead><tr><th>Id</th><th>Value</th></thead>\n<tbody>\n";
   print_type_row 0 (A.to_list d.D.d_type_ids))
    
(* make_types : D.dex -> unit *)
let make_types (d : D.dex) : unit =
  (cur_out := open_out (find_file_path "types");
   print_beginning "Types";
   print_types d;
   print_end_close ())
    
(* print_index_body : D.dex -> unit *)
let print_index_body (d : D.dex) : unit =
  let rec print_class_names c =
    match c with
      | hd :: tl ->
        let class_name = D.get_ty_str d hd.D.c_class_id in
        let class_name_link = get_class_link class_name
        in
        (pp "<a href=\"%s\"><code>%s</code></a><br>\n" class_name_link
           class_name;
         print_class_names tl)
      | [] -> ()
  in
    (*pp "<b><a href=\"header_item.html\"><code>header_item</code></a></b><br>\n";*)
  (pp "<h2>File Index:</h2>\n";
   pp "<b><a href=\"strings.html\"><code>Strings</code</a></b><br>\n";
   pp "<b><a href=\"types.html\"><code>Types</code></a></b><br>\n";
   pp "<b><a href=\"methods.html\"><code>Methods</code></a></b></br>\n";
   pp "<b>Classes:</b><br>\n";
   print_class_names (A.to_list d.D.d_class_defs))
    
(* print_index_header : D.dex_head -> unit *)
let print_index_header (h : D.dex_header) : unit =
  (pp "<h2> <a name=\"header\"></a><code>header_item</code></h2>\n";
   pp "<table>\n";
   pp "<thead>\n<tr>\n<th>Name</th>\n<th>Value</th>\n</tr>\n</thead>\n";
   pp "<tbody>\n";
   pp "<tr>\n";
   pp "<td><code>magic</code></td>";
   pp "<td><code>";
   pp "%s" h.D.magic;
   pp "</code></td>\n";
   pp "</tr>\n";
   pp "<tr>\n";
   pp "<td><code>checksum</code></td>";
   pp "<td><code>";
   pp "%LX" h.D.checksum;
   pp "</code></td>\n";
   pp "</tr>\n";
   pp "<tr>\n";
   pp "<td>";
   pp "</tr></tbody></table>\n")
    
(* print_index_into : string -> unit *)
let print_index_intro name : unit =
  (pp "<html>\n";
   pp "<head><title>Dex Dump: ";
   pp "%s" name;
   pp "</title>\n";
   pp "<link rel=stylesheet href=\"dex-format.css\">\n";
   pp "</head>\n";
   pp "\n\n<body>\n<h1 class=\"title\">Dex File Dump: <code>";
   pp "%s" name;
   pp "</code></h1>\n\n")
    
(* make_index : D.dex -> string -> unit *)
let make_index (d : D.dex) filename : unit =
  (cur_out := open_out (find_file_path "index");
   print_index_intro filename;
   print_index_body d;
   print_end_close ())
    
(* print_instructions D.dex -> (D.link*D.data_item) list -> n -> unit *)
let rec print_instructions d insns n : unit =
  match insns with
    | hd :: tl ->
      (match hd with
	| (lnk, D.INSTRUCTION ins) ->
          let op = fst ins in
          let opr = snd ins in
          let opr_to_string opr =
            (match opr with
              | I.OPR_OFFSET off ->
                Printf.sprintf "<a href=\"#0x%08X\">0x%08X</a>"
                  (I32.to_int off) (I32.to_int off)
              | I.OPR_CONST i -> Printf.sprintf "#0x%16LX" i
              | I.OPR_INDEX i ->
                (match Instr.access_link op with
                  | I.STRING_IDS ->
                    Printf.sprintf "<a href=\"%s#string%d\">%s</a>\n"
                      (find_link_path "strings") i (I.opr_to_string opr)
                  | I.TYPE_IDS ->
                    Printf.sprintf "<a href=\"%s#type%d\">%s</a>\n"
                      (find_link_path "types") i (I.opr_to_string opr)
                  | I.METHOD_IDS ->
		    Printf.sprintf "<a href=\"methods.html#method%d\">%s</a>\n"
		      i (I.opr_to_string opr)
                  | I.OFFSET -> I.opr_to_string opr
                  | I.NOT_LINK -> I.opr_to_string opr
                  | _ -> I.opr_to_string opr)
	      | _ -> I.opr_to_string opr) in
          let rec build_str oprs s =
            (match oprs with
              | [] -> s
              | hd :: tl ->
                build_str tl (s ^ (", opr [" ^ ((opr_to_string hd) ^ "]")))) in
          let instr_string = build_str opr ("op: " ^ (I.op_to_string op))
          in
          (pp "<tr><td><code><a name=\"0x%08X\"></a>0x%08X</code></td>"
             (D.of_off lnk) (D.of_off lnk);
           pp "<td><code>%s</code></td></tr>\n" instr_string;
           print_instructions d tl (n + 1))
	| _ ->
          (pp "<tr><td>%d</td><td><code>Non instruction</code></td></tr>\n"
             n;
           print_instructions d tl (n + 1)))
    | [] -> ()
      
(* get_class_name : D.dex -> D.class_def_item -> string *)
let get_class_name (d : D.dex) (c : D.class_def_item) : string =
  get_ty_str d c.D.c_class_id
    
(* print_method : D.dex -> D.class_def_item -> D.encoded_method *)
let print_method (d : D.dex) (c : D.class_def_item)
    (mtd : D.encoded_method) : unit =
  let class_name = get_class_name d c in
  let mid_item = A.get d.D.d_method_ids (D.of_idx mtd.D.method_idx) in
  let proto_item = A.get d.D.d_proto_ids (D.of_idx mid_item.D.m_proto_id) in
  (*let initparam_off = proto_item.D.parameter_off in *)
  let shorty = get_str d proto_item.D.shorty in
  let return_type = get_ty_str d proto_item.D.return_type in
  let pre_method_name = get_str d mid_item.D.m_name_id in
  let method_name = printed_method_name pre_method_name in
  let citm =
    try Some (snd (D.get_citm d c.D.c_class_id mtd.D.method_idx))
    with | D.Wrong_dex _ -> None
  in
  (pp "<a name=\"%s;%s\"></a><h3>Method <code>%s</code></h3>\n" (U.sanatize_class_filename class_name)
     method_name method_name;
   pp "<code><b>%s</b></code>\n" shorty;
   pp "Return type: %s\n" return_type;
   match citm with
     | None -> ()
     | Some citm ->
       (pp "Number of registers used: %d, Words used for arguments %d\n" citm.D.registers_size citm.D.ins_size;
        pp
          "<table><thead><tr><th>Address</th><th>Instruction</th></tr></thead><tbody>\n";
        print_instructions d
          (L.map (fun x -> (x, (D.get_data_item d x))) (A.to_list citm.D.insns)) 0;
        pp "</tbody></table>"))
    
(* print_methods_index : D.dex -> string -> D.class_data_item -> unit *)
let print_methods_index (d : D.dex) class_name cdata : unit =
  let print_method_index mtd =
    let mid_item = A.get d.D.d_method_ids (D.of_idx mtd.D.method_idx) in
    let name = get_str d mid_item.D.m_name_id in
    pp "<a href=\"#%s;%s\"><code>%s</code></a><br>" (U.sanatize_class_filename class_name) name 
      (printed_method_name name)
  in
  (pp "<b>Direct methods:</b><br>";
   let _ = L.map print_method_index cdata.D.direct_methods
   in
   (pp "<b>Virtual methods:</b><br>";
    let _ = L.map print_method_index cdata.D.virtual_methods in ()))
    
(* print_class : D.dex -> D.class_def_item -> unit *)
let print_class (d : D.dex) (c : D.class_def_item) : unit =
  let class_name = get_class_name d c in
  let source_file =
    match c.D.source_file with
      | D.Idx k ->
        if k = D.no_index then "N/A" else D.get_str d c.D.source_file
      | _ -> "N/A" in
  let fields = D.get_flds d c.D.c_class_id in
  let cdata =
    try Some (snd (D.get_cdata d c.D.c_class_id)) with | _ -> None in
  let print_field (link, (fid : D.field_id_item)) : unit =
    pp "<tr><td>%s</td><td>%s</td></tr>" (get_str d fid.D.f_name_id)
      (get_ty_str d fid.D.f_type_id)
  in
  (pp "\n\n<h2>Class <code><a name=\"%s\"></a>%s</code></h2>\n" class_name
     class_name;
   pp
     "<table><thead><tr><th>Property</th><th>Value</th></tr></thead><tbody>\n";
   pp "<tr><td>Access Flags</td><td><code>0x%08X</code></td></tr>\n"
     c.D.c_access_flag;
   pp "<tr><td>Superclass</td><td><code>%s</code></td></tr>\n"
     (get_ty_str d c.D.superclass);
   pp "<tr><td>Class ID</td><td>0x%08X</td></tr>\n" (D.of_idx c.D.c_class_id);
   pp "<tr><td>Source file</td><td><code>%s</code></td></tr>\n" source_file;
   pp "</tbody></table>\n";
   pp "<h3>Static fields</h3>\n";
   pp
     "<table><thead><tr><th>Field name</th><th>Type</th></tr></thead><tbody>\n";
   let _ = L.map print_field fields
   in
   (pp "\n</tbody></table>\n";
    match cdata with
      | None -> ()
      | Some cdata ->
        (print_methods_index d class_name cdata;
         pp "<h2>Methods</h2>";
         pp "<h3>Direct methods</h3>";
         let _ = L.map (print_method d c) cdata.D.direct_methods
         in
         (();
          pp "<h3>Virtual methods</h3>";
          let _ = L.map (print_method d c) cdata.D.virtual_methods
          in ()))))
    
(* make_class : D.dex -> D.class_def_item -> unit *)
let make_class (d : D.dex) (c : D.class_def_item) : unit =
  let class_name = get_class_name d c
  in
  (cur_out :=
     open_out (find_file_path (U.sanatize_class_filename class_name));
   print_beginning class_name;
   print_class d c;
   print_end_close ())
    
(* make_classes : D.dex -> unit *)
let make_classes (d : D.dex) : unit =
  let _ = L.map (fun x -> make_class d x) (A.to_list d.D.d_class_defs) in ()

let mkdir_if_needed(d: string) : unit =
  match d, Sys.os_type with
      "output", "Unix" -> ignore (Sys.command ("mkdir -p " ^ d))
  (* d is safe to stick in a shell command,
   * and we're running a system where mkdir -p
   * makes sense *)
    | _ -> ()

      
(* generate_documentation : D.dex -> unit *)
let rec generate_documentation (d : D.dex) (output : string) name : unit =
  (output_dir := output;
   mkdir_if_needed (!output_dir);
   make_index d name;
   make_strings d;
   make_methods d;
   make_types d;
   make_classes d)
    
