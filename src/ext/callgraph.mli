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
(* Callgraph                                                           *)
(***********************************************************************)

(** This module defines a type for call graph and provides functions for
 generating and printing a call graph. *)

(** Call Graph *)
type cg

(** into the {!cg}, add an edge from the caller to the callee
 returns [true] if a new node is introduced *)
val add_call : Dex.dex -> cg -> Dex.link -> Dex.link -> bool

(** conduct ({!Propagation}-based) [Intent] resolution analysis *)
val intent_analysis : bool ref

(** make call graph for overall {!Dex.dex} file *)
val make_cg : Dex.dex -> cg

(** partial call graph starting from the given classes, with a certain depth *)
val make_partial_cg : Dex.dex -> int -> Dex.link list -> cg

(** Call Chain in a reversed order *)
type cc = Dex.link list

(** call chain comparison *)
val compare_cc : cc -> cc -> int

(** find callers for the given method, with a certain depth *)
val callers : Dex.dex -> int -> cg -> Dex.link -> cc list

(** [true] if the given method is invoked by other methods *)
val has_caller : Dex.dex -> cg -> Dex.link -> bool

(** find dependent classes for the given class *)
val dependants : Dex.dex -> cg -> Dex.link -> Dex.link list

(** print {!cg} in dot format *)
val cg2dot : Dex.dex -> cg -> unit

