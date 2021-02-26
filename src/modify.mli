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

(** Provides utility functions for modifying Dalvik binaries and
    bytecode. It includes functions that insert and change types,
    strings, methods, etc... It also provides functions that allow
    bytecode manipulation.

    This module also provides utilities for building
    semantics-preserving instrumentation of method bytecode. For
    example, {shift_reg_usage} shifts all registers in a method by a
    certain offset. This allows inserting instructions that use
    "fresh" registers, disjoint from those the method uses.
    
    Rewriting bytecode in a semantics-preserving way is tricky. For
    example, Dalvik includes instructions that can only address a
    subset of registers (e.g., 0-15), and provides variants of those
    instructions (e.g., move/from16) that access larger sets of
    registers (at the expense of a less compact binary
    representation). Because of this, this module also contains
    various cleanup utilities that assist in writing
    semantics-preserving instrumentation, e.g., {expand_opr}. This
    makes it possible to instrument the bytecode without having to
    worry about these auxiliary problems, and later do a cleanup
    pass. However, it is up to the programmer to call these functions
    in the right way.
    
    If you also plan to work with and manipulate bytecode, it is also
    worth reading the notes on instruction sequence representation and
    cursors below.

 *)

(** {2 Utilities} *)

(** set the start address for fresh ones *)
val seed_addr : int -> unit

(** {2 Modification} *)

(** add a new [string] *)
val new_str : Dex.dex -> string -> Dex.link

(** replace old [string] with new one;
    returns [true] if replaced, [false] if newly added *)
val replace_str : Dex.dex -> oldstr:string -> newstr:string -> bool

(** report [string] replacement counts *)
val report_str_repl_cnt : unit -> unit

(** add a new type, return its {!Dex.link} within the type pool  *)
val new_ty : Dex.dex -> tyname:string -> Dex.link

(** add a new class definition;
 pass superclass name, its name, and {!Dex.access_flag}s *)
val new_class : Dex.dex -> ?super:string -> cname:string
 -> Dex.access_flag list -> Dex.link

(** Remove the [final] qualifier on {!Dex.class_def_item} *)
val make_class_overridable : Dex.dex -> cid:Dex.link -> unit

(** Add an interface to a class. *)
val add_interface : Dex.dex -> cid:Dex.link -> interface:string -> unit

(** Add new field definition with name [typ] and its access flags ({!Dex.access_flag}s)*)
val new_field : Dex.dex -> cid:Dex.link -> fname:string
 -> Dex.access_flag list -> ty:string -> Dex.link

(** add a new method signature;
 pass class id, its name, return type, and arguments *)
val new_sig : Dex.dex -> ?is_relaxed:bool -> cid:Dex.link -> mname:string
 -> rety:string -> argv:string list -> Dex.link

(** add a new method definition, along with empty body;
 pass class id, its name, {!Dex.access_flag}s, return type, and arguments *)
val new_method : Dex.dex -> cid:Dex.link -> mname:string
 -> Dex.access_flag list -> rety:string -> argv:string list -> Dex.link

(** Remove [final] qualifer on method specified by the link [mtd]

    @raises {Dex.Wrong_dex} if the method cannot be found (e.g.,
 because it is part of a framework class).
*)
val make_method_overridable : Dex.dex -> cid:Dex.link -> mid:Dex.link -> unit

(** {2 Cursors and instruction insertion} 
    
    Cursors are indices into a method's code. Within Redexer, code
    items are implemented as arrays of links into the data pool. For
    example: 

{v
    0     | 0xADDR0      where 0xADDR0 in data pool is const v0, 0
    1     | 0xADDR1            0xADDR1              is ins2
    2     | ...  
    ...
    n     | 0xADDRn            0xADDRn is the last instruction
v}

    One natural question is why Redexer does not simply keep method
    code as an array of instructions, but instead redirects them
    through the data pool. The reasons are both for efficiency and
    assisting in performing instrumentation that does not alter
    control flow. For example, if we were to represent code items as
    arrays of instructions rather than offsets, consider how we would
    insert code into the middle of a method. We would first add the
    method code in at a given location. But then all of the control
    flow components (if-else, goto, exception tables) would now be
    pointing to the wrong location. If we were to do this, it would
    require a much heavier instrumentation each time an instruction
    was inserted or removed from a code item.

    Redexer provides a cursor API, which allows inserting instructions
    into the middle of methods in a control-flow-preserving way. A
    cursor is an index into a code item, and various functions
    operating on cursors cleanly insert code into the middle of a
    method.

    Keep in mind that--while operating on cursors--the instructions
    corresponding to cursors will change as instructions are added and
    removed from a code item. To assist in this, instructions that
    modify cursors return the cursors after (e.g.,) inserting
    instructions. This allows chaining these operations together by,
    e.g., folding.
 *)

(** A cursor is an index into a code item. *)
type cursor = int

(** Get the previous cursor *)
val prev : cursor -> cursor

(** Get the next cursor *)
val next : cursor -> cursor

(** Lookup the {!cursor} of a given instruction. 
    Note that this takes O(n) time. *)
val get_cursor : Dex.code_item -> Dex.link -> cursor

(** Get the first {!cursor} *)
val get_fst_cursor : unit -> cursor

(** Get the last instruction {!link}s. Note that this returns multiple
    possibly last links because a method can have multiple exit points
    (e.g., a return and also a throw). This function invokes control
    flow analysis, and will not be necessarily quick (especially for
    large methods). *)
val get_last_links : Dex.dex -> Dex.code_item -> Dex.link list

(** Get the last {!cursor}s. Similar to [get_last_links] but returns
    {!cursor}s instead.  *)
val get_last_cursors : Dex.dex -> Dex.code_item -> cursor list

(** Get the {!Instr.instr} at {!cursor} point. O(1) time. *)
val get_ins : Dex.dex -> Dex.code_item -> cursor -> Instr.instr

(** Get the first {!Instr.instr}. O(1) time *)
val get_fst_ins : Dex.dex -> Dex.code_item -> Instr.instr

(** Get the last {!Instr.instr}s, raise {!Dex.No_return} if no return
    for method *)
val get_last_inss : Dex.dex -> Dex.code_item -> Instr.instr list

(** Insert an {!Instr.instr} at {!cursor} point; Return the next
    cursor within the code item *)
val insrt_ins : Dex.dex -> Dex.code_item -> cursor -> Instr.instr -> cursor

(** Remove an {!Instr.instr} at {!cursor} point; Return the same {!cursor} *)
val rm_ins : Dex.dex -> Dex.code_item -> cursor -> cursor

(** insert {!Instr.instr}s at {!cursor} point; Return {!cursor} after
    inserting each of the instructions 

    Be careful when using this instruction, since it will not
    necessarily alter control flow correctly. Specifically, be mindful
    of the fact that inserting instructions at a point will not
    correctly fix up the boundaries of `try` blocks within the code
    block.

 *)

val insrt_insns : Dex.dex -> Dex.code_item -> cursor -> Instr.instr list -> cursor

(** insert {!Instr.instr}s under the specified {!Dex.offset}, while
    preserving that {!Dex.offset} at {!cursor} point:

{v
                 +---------+                      +---------+
   cur | link -> |  instr  |   ==>  cur | link -> |  added  |
                 +---------+                      | snippet |
                                                  +---------+
                                                  |  instr  |
                                                  +---------+
v}

    This helps in writing semantics-preserving transformation because
    it keeps control-flow from being altered. For example, if [link]
    is the target of a goto instruction, the added snippet will be
    included correctly.

    Note: if this instruction was within a try previously, this
    function extends the try 
 *)
val insrt_insns_under_off : Dex.dex -> Dex.code_item -> cursor -> Instr.instr list -> cursor

(** insert {!Instr.instr}s over the specified {!Dex.offset}, while
    preserving that {!Dex.offset} at {!cursor} point.

{v
                                                  +---------+
                                                  |  instr  |
                                                  +---------+
             +---------+                          |  added  |
 n | link -> |  instr  |       ==>    n | link -> | snippet |
             +---------+                          +---------+
v}

 *)
val insrt_insns_over_off : Dex.dex -> Dex.code_item -> cursor -> Instr.instr list -> cursor

(* insrt_insns_meth_entry : D.dex -> D.code_item -> I.instr list -> cursor *)
val insrt_insns_meth_entry : Dex.dex -> Dex.code_item -> Instr.instr list -> cursor

(** insert {!Instr.instr}s before the start of {!Dex.code_item} *)
val insrt_insns_before_start : Dex.dex -> Dex.code_item -> Instr.instr list -> cursor

(** insert {!Instr.instr}s after the start of {!Dex.code_item} *)
val insrt_insns_after_start : Dex.dex -> Dex.code_item -> Instr.instr list -> cursor

(** insert {!Instr.instr}s before the end of {!Dex.code_item} *)
val insrt_insns_before_end : Dex.dex -> Dex.code_item -> Instr.instr list -> cursor list

(** insert {!Instr.instr}s after the end of {!Dex.code_item} *)
val insrt_insns_after_end : Dex.dex -> Dex.code_item -> Instr.instr list -> cursor list

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

