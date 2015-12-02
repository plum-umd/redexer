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
(* Modify                                                              *)
(***********************************************************************)

(** This module provides utility functions for modifying DEX binary. *)

(** {2 Utilities} *)

(** set the start address for fresh ones *)
val seed_addr : int -> unit

(** {2 Modification} *)

(** add a new [string] *)
val new_str : Dex.dex -> string -> Dex.link

(** replace old [string] with new one;
 [true] if replaced, [false] if newly added *)
val replace_str : Dex.dex -> string -> string -> bool

(** report [string] replacement counts *)
val report_str_repl_cnt : unit -> unit

(** add a new type *)
val new_ty : Dex.dex -> string -> Dex.link

(** add a new class definition;
 pass superclass name, its name, and {!Dex.access_flag}s *)
val new_class : Dex.dex -> ?super:string -> string
 -> Dex.access_flag list -> Dex.link

(** rip off the [final] qualifier on {!Dex.class_def_item} *)
val make_class_overridable : Dex.dex -> Dex.link -> unit

(** add an interface to a class. *)
val add_interface : Dex.dex -> Dex.link -> string -> unit

(** add a new field definition;
 pass class id, its name, {!Dex.access_flag}s, and type *)
val new_field : Dex.dex -> Dex.link -> string
 -> Dex.access_flag list -> string -> Dex.link

(** add a new method signature;
 pass class id, its name, return type, and arguments *)
val new_sig : Dex.dex -> Dex.link -> string
 -> string -> string list -> Dex.link

(** add a new method definition, along with empty body;
 pass class id, its name, {!Dex.access_flag}s, return type, and arguments *)
val new_method : Dex.dex -> Dex.link -> string
 -> Dex.access_flag list -> string -> string list -> Dex.link

(** rip off the [final] qualifer on {!Dex.encoded_method} 

    @raises {Dex.Wrong_dex} if the method cannot be found (e.g.,
 because it is part of a framework class).

*)
val make_method_overridable : Dex.dex -> Dex.link -> Dex.link -> unit

(** instruction inserting point *)
type cursor

(** previous instruction *)
val prev : cursor -> cursor

(** next instruction *)
val next : cursor -> cursor

(** get the {!cursor} of the given instruction *)
val get_cursor : Dex.code_item -> Dex.link -> cursor

(** get the first {!cursor} *)
val get_fst_cursor : unit -> cursor

(** get the last {!cursor} *)
val get_last_cursor : Dex.dex -> Dex.code_item -> cursor

(** get the {!Instr.instr} at {!cursor} point *)
val get_ins : Dex.dex -> Dex.code_item -> cursor -> Instr.instr

(** get the first {!Instr.instr} *)
val get_fst_ins : Dex.dex -> Dex.code_item -> Instr.instr

(** get the last {!Instr.instr}, raise {!Dex.No_return} if no return
    for method *)
val get_last_ins : Dex.dex -> Dex.code_item -> Instr.instr

(** insert an {!Instr.instr} at {!cursor} point; {!cursor} will be advanced *)
val insrt_ins : Dex.dex -> Dex.code_item -> cursor -> Instr.instr -> cursor

(** remove an {!Instr.instr} at {!cursor} point; {!cursor} will remain as same *)
val rm_ins : Dex.dex -> Dex.code_item -> cursor -> cursor

(** insert {!Instr.instr}s at {!cursor} point; {!cursor} will be advanced *)
val insrt_insns : Dex.dex -> Dex.code_item -> cursor -> Instr.instr list -> cursor

(** insert {!Instr.instr}s under the specified {!Dex.offset},
 while preserving that {!Dex.offset} at {!cursor} point *)
val insrt_insns_under_off : Dex.dex -> Dex.code_item -> cursor -> Instr.instr list -> cursor

(** insert {!Instr.instr}s over the specified {!Dex.offset},
 while preserving that {!Dex.offset} at {!cursor} point *)
val insrt_insns_over_off : Dex.dex -> Dex.code_item -> cursor -> Instr.instr list -> cursor

(** insert {!Instr.instr}s before the start of {!Dex.code_item} *)
val insrt_insns_before_start : Dex.dex -> Dex.code_item -> Instr.instr list -> cursor

(** insert {!Instr.instr}s after the start of {!Dex.code_item} *)
val insrt_insns_after_start : Dex.dex -> Dex.code_item -> Instr.instr list -> cursor

(** insert {!Instr.instr}s before the end of {!Dex.code_item} *)
val insrt_insns_before_end : Dex.dex -> Dex.code_item -> Instr.instr list -> cursor

(** insert {!Instr.instr}s after the end of {!Dex.code_item} *)
val insrt_insns_after_end : Dex.dex -> Dex.code_item -> Instr.instr list -> cursor

(** insert {!Instr.rv} at the end of the method *)
val insrt_return_void : Dex.dex -> Dex.link -> string -> unit

(** shift register usage so as to secure free registers around 0
 to avoid register truncations, you may need to call [expand_opr] *)
val shift_reg_usage : Dex.dex -> Dex.code_item -> int -> unit

(** shift parameters so as to secure free registers around "this"
 to avoid register truncations, you may need to call [expand_opr] *)
val shift_params : Dex.dex -> Dex.code_item -> int -> unit

(** update register usage: [registers_size] and [outs_size] *)
val update_reg_usage : Dex.dex -> Dex.code_item -> unit

(** [true], adding an abstract method if given class doesn't implement it *)
val implements : Dex.dex -> Dex.link -> Dex.link -> string -> bool

(** [true], adding an overriding method if given class doesn't override it *)
val override : Dex.dex -> Dex.link -> string -> bool

(** {2 Application} *)

(** substitute the given class usage into the new one *)
val subst_cls : Dex.dex -> string list -> string list -> unit

(** rename specific classes *)
val rename_cls : Dex.dex -> string list -> unit

(** discard calls related to specific classes *)
val discard_cls_calls : Dex.dex -> string list -> unit

(** trace call stack by modifying methods of specific classes in the dex *)
val call_trace : Dex.dex -> string list -> unit

(** expand {Instr.operand} usage caused by massive instrumentations *)
val expand_opr : Dex.dex -> unit

(** API test *)
val hello : unit -> Dex.dex

