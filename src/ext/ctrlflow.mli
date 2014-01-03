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
(* Ctrlflow                                                            *)
(***********************************************************************)

(** This module defines types for control-flow graph and dominance relations,
 and provides utility functions for obtaining information from such graphs. *)

(** {2 Control-Flow Graph} *)

(** Control-Flow Graph *)
type cfg

(** make control-flow graph for given {!Dex.code_item} *)
val make_cfg : Dex.dex -> Dex.code_item -> cfg

(** {2 Dominator Tree} *)

(** Dominator Tree *)
type dom

(** compute block-level dominance relations for given {!cfg} *)
val doms : cfg -> dom

(** immediate dominator according to dominance relations *)
val idom : dom -> int -> int

(** longest common dominators *)
val cdom : dom -> int list

(** {2 Post Dominator Tree} *)

(** Post Dominator Tree *)
type pdom

(** compute block-level post dominace relations for given {!cfg} *)
val pdoms : cfg -> pdom

(** immediate post dominator according to post dominace realtions *)
val ipdom : pdom -> int -> int

(** longest common post dominators *)
val cpdom : pdom -> int list

(** get the last instructions *)
val get_last_inss : cfg -> pdom -> Dex.link list

(** {2 Control-flow Module for Data-flow Analysis} *)

(** Control-flow *)
module type CTRLFLOW =
sig
  (** statement type *)
  type st

  (** starting statement *)
  val start : st

  (** last statements *)
  val last : st list

  (** all statements *)
  val all : st list

  (** predecessors *)
  val pred : st -> st list

  (** successors *)
  val succ : st -> st list

  (** for debugging *)
  val to_s : st -> string
end

type cfg_module = (module CTRLFLOW with type st = Dex.link)

(** make {!cfg_module} type module using {!cfg} *)
val to_module : Dex.dex -> cfg -> cfg_module

(** {2 DOTtify} *)

(** print control-flow graph in dot format *)
val cfg2dot : Dex.dex -> cfg -> unit

(** print dominator tree in dot format *)
val dom2dot : Dex.dex -> cfg -> dom -> unit

(** print post dominator tree in dot format *)
val pdom2dot : Dex.dex -> cfg -> pdom -> unit
