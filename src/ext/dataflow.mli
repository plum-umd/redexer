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
(* Dataflow                                                            *)
(***********************************************************************)

(** This module provides data-flow analysis frameworks *)

(** Scheduler *)
module type SCHEDULER =
sig
  (** statement type *)
  type st

  (** [true] if it has a next {!st} *)
  val hasNext : unit -> bool

  (** return the next available {!st} *)
  val next : unit -> st

  (** add the given {!st} into the scheduler *)
  val add : st -> unit
end

(** simple queue-based scheduler *)
module Worklist : SCHEDULER with type st = Dex.link

(** Lattice *)
module type LATTICE =
sig
  (** element type *)
  type l

  (** [BOTTOM] of the lattice *)
  val bot : l

  (** [TOP] of the lattice *)
  val top : l

  (** meet operator *)
  val meet : l -> l -> l

  (** partial order between {!l}s *)
  val compare : l -> l -> int

  (** convert {!l} to [string] *)
  val to_s : l -> string
end

(** Data-flow *)
module type DATAFLOW =
sig
  (** same as {!LATTICE.l} *)
  type l

  (** same as {!SCHEDULER.st} *)
  type st

  (** initial {!LATTICE.l} *)
  val init : st -> l

  (** transfer function *)
  val trans : l -> st -> l
end

(** Data-flow analysis *)
module type ANALYSIS =
sig
  (** same as {!LATTICE.l} *)
  type l

  (** same as {!SCHEDULER.st} *)
  type st

  (** same as {!LATTICE.to_s} *)
  val to_s : l -> string

  (** return [IN] for the given {!st} *)
  val inn : st -> l

  (** return [OUT] for the given {!st} *)
  val out : st -> l

  (** calculate fixed point *)
  val fixed_pt : unit -> unit
end

(** Forward Data-flow analysis *)
module FwDFA :
  functor (SC: SCHEDULER) -> functor (LT: LATTICE) ->
  functor (CF: Ctrlflow.CTRLFLOW with type st = SC.st) ->
  functor (DF: DATAFLOW with type st = SC.st and type l = LT.l)
  -> (ANALYSIS with type st = SC.st and type l = LT.l)

(** Backward Data-flow analysis *)
module BwDFA :
  functor (SC: SCHEDULER) -> functor (LT: LATTICE) ->
  functor (CF: Ctrlflow.CTRLFLOW with type st = SC.st) ->
  functor (DF: DATAFLOW with type st = SC.st and type l = LT.l)
  -> (ANALYSIS with type st = SC.st and type l = LT.l)

