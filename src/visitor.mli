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

(** This module provides visitor pattern. *)

(** visitor *)
class type visitor =
object
  val dx : Dex.dex

  (** invoke if you want to get modified {!Dex.dex} *)
  method get_dx : unit -> Dex.dex

  (** visiting {!Dex.field_id_item} *)
  method v_fit  : Dex.field_id_item -> unit

  (** visiting {!Dex.method_id_item} *)
  method v_mit  : Dex.method_id_item -> unit

  (** skip the current class *)
  val mutable skip_cls : bool

  (** getter for {!skip_cls} *)
  method get_skip_cls : unit -> bool

  (** visiting {!Dex.class_def_item} *)
  method v_cdef : Dex.class_def_item -> unit

  (** remapping {!Dex.encoded_value} stored at [STATIC_VALUE] *)
  method r_eval : Dex.encoded_value -> Dex.encoded_value

  (** visiting {!Dex.encoded_annotation} stored at [ANNOTATION] *)
  method v_anno : Dex.encoded_annotation -> unit

  (** visiting {!Dex.class_data_item} *)
  method v_cdat : Dex.class_data_item -> unit

  (** visiting {!Dex.encoded_field} *)
  method v_efld : Dex.encoded_field -> unit

  (** skip the current method *)
  val mutable skip_mtd : bool

  (** getter for {!skip_mtd} *)
  method get_skip_mtd : unit -> bool

  (** visiting {!Dex.encoded_method} *)
  method v_emtd : Dex.encoded_method -> unit

  (** visiting {!Dex.code_item} *)
  method v_citm : Dex.code_item -> unit

  (** visiting [INSTRUCTION] *)
  method v_ins  : Dex.link -> unit

  (** visiting {!Dex.try_item} *)
  method v_try  : Dex.try_item -> unit

  (** visiting {!Dex.encoded_catch_handler} *)
  method v_hdl  : Dex.encoded_catch_handler -> unit

  (** visiting {!Dex.debug_info_item} *)
  method v_dbg  : Dex.debug_info_item -> unit

  (** invoked after traversing {!Dex.dex} *)
  method finish : unit -> unit
end

(** iterator *)
class iterator : Dex.dex -> visitor

(** set packages names to be skipped *)
val set_skip_pkgs : string list -> unit

(** [true] if the given class name is set to be skipped *)
val to_be_skipped : string -> bool

(** traversing {!Dex.dex} using {!iterator}-like {!visitor} *)
val iter : visitor -> unit

