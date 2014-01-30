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
(* Java                                                                *)
(***********************************************************************)

module U = Util

module L  = List
module S  = String
module B  = Buffer
module CM = Map.Make(Char)

(***********************************************************************)
(* Basic Types/Elements                                                *)
(***********************************************************************)

let v = "void"
let z = "boolean"
let b = "byte"
let s = "short"
let c = "char"
let i = "int"
let j = "long"
let f = "float"
let d = "double"

let shorties = [v; z; b; s; c; i; j; f; d]

let init = "<init>"
let clinit = "<clinit>"

let hashCode = "hashCode"

(***********************************************************************)
(* Type Description                                                    *)
(***********************************************************************)

let fd_ty = ['Z'; 'B'; 'S'; 'C'; 'I'; 'J'; 'F'; 'D']
let rt_ty = 'V' :: fd_ty
let _L_ty = 'L' :: fd_ty

let replacer (map: char CM.t) str : string =
  let len = S.length str in
  let buf = B.create len in
  for i = 0 to (len - 1) do
    let c = str.[i] in
    let c' = try CM.find c map with Not_found -> c in
    B.add_char buf c'
  done;
  B.contents buf

(* is_type_descr : string -> bool *)
let is_type_descr (str: string) : bool =
try
  if S.length str = 1 then L.mem str.[0] rt_ty else
  let rec loop str' =
    let len' = S.length str' in
    if len' = 1 then L.mem str'.[0] fd_ty
    else if str'.[0] = 'L' then str'.[len'-1] = ';'
    else if str'.[0] = '[' then loop (U.trim_1st str')
    else false
  in loop str
with Invalid_argument _ -> false

(* is_shorty_descr : string -> bool *)
let is_shorty_descr (str: string) : bool =
try
  let rec loop str' =
    if S.length str' = 0 then true else
    (L.mem str'.[0] _L_ty) && (loop (U.trim_1st str'))
  in (L.mem str.[0] ('V' :: _L_ty)) && (loop (U.trim_1st str))
with Invalid_argument _ -> false

(* to_type_descr : string -> string *)
let rec to_type_descr typ : string =
  match typ with
  | "void"    -> "V"
  | "boolean" -> "Z"
  | "byte"    -> "B"
  | "short"   -> "S"
  | "char"    -> "C"
  | "int"     -> "I"
  | "long"    -> "J"
  | "float"   -> "F"
  | "double"  -> "D"
  | _ -> to_java_ty typ

(* to_shorty_descr : string list -> string *)
and to_shorty_descr (tl: string list) : string =
  let buf = B.create (L.length tl) in
  let iter typ : unit =
    let d = to_type_descr typ in
    let d' = if d.[0] = 'L' || d.[0] = '[' then "L" else d in
    B.add_string buf d'
  in
  L.iter iter tl;
  B.contents buf

(* to_java_ty : string -> string *)
and to_java_ty typ : string =
  if S.length typ = 0 then typ
  else if typ.[0] = '[' then "["^(to_java_ty (U.trim_1st typ))
  else "L"^(replacer (CM.add '.' '/' CM.empty) typ)^";"

(* of_type_descr : string -> string *)
let rec of_type_descr typ : string =
  match typ with
  | "V" -> v | "Z" -> z | "B" -> b
  | "S" -> s | "C" -> c | "I" -> i
  | "J" -> j | "F" -> f | "D" -> d
  | _ -> of_java_ty typ

(* of_java_ty : string -> string *)
and of_java_ty typ : string =
  let len = S.length typ in
  if len > 2 && typ.[0] = 'L' && typ.[len-1] = ';' then
    replacer (CM.add '/' '.' CM.empty) (S.sub typ 1 (len-2))
  else if len > 1 && typ.[0] = '[' then
    "["^(of_java_ty (U.trim_1st typ))
  else typ

(* is_primitive : string -> bool *)
let is_primitive (typ: string) : bool =
  L.mem typ (L.map to_type_descr shorties)

(* is_wide : string -> bool *)
let is_wide (typ: string) : bool =
  L.mem typ (L.map to_type_descr [j; d])

(* get_package_name : string -> string *)
let get_package_name full : string =
  let ty = of_java_ty full in
  let pkg = U.rm_last (U.split_string ty '.') in
  S.concat "." pkg

(* get_class_name : string -> string *)
let get_class_name full : string =
  let cls = U.get_last (U.split_string full '/') in
  U.trim_last cls

(* is_inner_class : string -> bool *)
let is_inner_class full : bool =
  let cname = get_class_name full in
  1 < L.length (U.split_string cname '$')

(* get_owning_class : string -> string *)
let get_owning_class full : string =
  if not (is_inner_class full) then full else
    (L.hd (U.split_string full '$'))^";"

(***********************************************************************)
(* Libraries                                                           *)
(***********************************************************************)

let jv = "java."

module Lang =
struct
  let pk  = jv^"lang."
  let obj = pk^"Object"
  let cls = pk^"Class"
  let pkg = pk^"Package"
  let sys = pk^"System"
  let str = pk^"String"
  let sbd = str^"Builder"
  let thd = pk^"Thread"
  let thr = pk^"Throwable"
  let stk = pk^"StackTraceElement"

  let c_void  = pk^"Void"
  let c_bool  = pk^"Boolean"
  let c_byte  = pk^"Byte"
  let c_short = pk^"Short"
  let c_char  = pk^"Character"
  let c_int   = pk^"Integer"
  let c_long  = pk^"Long"
  let c_float = pk^"Float"
  let c_doubl = pk^"Double"

  let get_cls  = "getClass"
  let get_name = "getName"
  let get_stk  = "getStackTrace"

  let to_s   = "toString"
  let append = "append"

  let start = "start"
  let run = "run"

  let concat  = "concat"
  let lower   = "toLowerCase"
  let upper   = "toUpperCase"
  let _format = "format"
  let v_of    = "valueOf"

  let clazz () = L.map to_java_ty [obj; cls; pkg; sys; str; sbd; thd; thr; stk]
  let wrappers () = L.map to_java_ty
    [c_void; c_bool; c_byte; c_short; c_char; c_int; c_long; c_float; c_doubl]
end

module IO =
struct
  let pk = jv^"io."
  let ps = pk^"PrintStream"

  let clazz () = L.map to_java_ty [ps]
end

module Net =
struct
  let pk = jv^"net."
  let isoc = pk^"InetSocketAddress"

  let clazz () = L.map to_java_ty [isoc]
end

module Apache =
struct
  let pk = "org.apache."
  let http = pk^"http."
  let client = http^"client."
  let mtds = client^"methods."

  let _mtds   = mtds^"Http"
  let uri_req = _mtds^"UriRequest"
  let _del    = _mtds^"Delete"
  let _get    = _mtds^"Get"
  let _post   = _mtds^"Post"
  let _put    = _mtds^"Put"

  let uri_reqs () = L.map to_java_ty [uri_req; _del; _get; _post; _put]

end

(* is_library : string -> bool *)
let is_library (cname: string) : bool =
  L.mem cname (Lang.clazz ()) || L.mem cname (IO.clazz ())

