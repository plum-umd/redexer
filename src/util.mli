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
(* Utilities                                                           *)
(***********************************************************************)

(** This module offers some utility functions *)

module IntKey :
sig
  type t = int
  val compare : t -> t -> int
end

module IS : Set.S with type elt = IntKey.t

module IM : Map.S with type key = IntKey.t

(** read each line from {!in_channel} *)
val read_lines : in_channel -> string list

(** tail-recursive version of python range *)
val range : int -> int -> int list -> int list

(** tail-recursive version of python itertools.repeat *)
val repeat : 'a -> int -> 'a list -> 'a list

(** get the last element in a [list] *)
val get_last : 'a list -> 'a

(** remove the last element in a [list] *)
val rm_last : 'a list -> 'a list

(** trim the 1st [char] *)
val trim_1st : string -> string

(** trim the last [char] *)
val trim_last : string -> string

(** split a [string] into a [list] of [char]s *)
val explode : string -> char list

(** reverse the given [string] *)
val str_rev : string -> string

(** split a [string] into a [list] of [string]s, with separator [split] *)
val split_string : string -> char -> string list

(** [true] if the given [string] begins with the given prefix *)
val begins_with : string -> string -> bool

(** [true] if the given [string] ends with the given suffix *)
val ends_with : string -> string -> bool

(** [true] if the given [string] matches the regular expression [string] *)
val contains : string -> string -> bool

(** parse a [string] into a [Str.regexp] *)
val parse_regexp : string -> Str.regexp

(** [true] if the given [string] begins with the given prefix described by the [Str.regexp] *)
val matches : string -> Str.regexp -> bool

(** find the common prefix of the given [string]s *)
val common_prefix : string -> string -> string

(** Take a java class name and turn it into a name that can be placed into a file *)
val sanatize_class_filename : string -> string

(** select a field in a JSON object hierarchy using a string e.g., "foo/bar/baz" *)
val json_select : Yojson.Safe.json -> string -> Yojson.Safe.json
