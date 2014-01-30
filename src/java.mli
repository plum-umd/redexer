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

(** This module provides utility functions for handling [Java] language *)

(** {2 Primitives} *)

(** [void] *)
val v : string

(** [boolean] *)
val z : string

(** [byte] *)
val b : string

(** [short] *)
val s : string

(** [char] *)
val c : string

(** [int] *)
val i : string

(** [long] *)
val j : string

(** [float] *)
val f : string

(** [double] *)
val d : string

(** list of all short type descriptors *)
val shorties : string list

(** [<init>] *)
val init : string

(** [<clinit>] *)
val clinit : string

(** [hashCode] *)
val hashCode : string

(** {2 Type Descriptions} *)

(** [true] if given [string] is fit for type description *)
val is_type_descr : string -> bool

(** [true] if given [string] is fit for shorty description *)
val is_shorty_descr : string -> bool

(** to type description *)
val to_type_descr : string -> string

(** to shorty description *)
val to_shorty_descr : string list -> string

(** from [java.lang.Object] to [Ljava/lang/Object;] *)
val to_java_ty : string -> string

(** from type description *)
val of_type_descr : string -> string

(** from [Ljava/lang/Object;] to [java.lang.Object] *)
val of_java_ty : string -> string

(** [true] if the given type name is one of primitive types *)
val is_primitive : string -> bool

(** [true] if the given type name is either [long] or [double] *)
val is_wide : string -> bool

(** from [Ljava/lang/Object;] to [java.lang] *)
val get_package_name : string -> string

(** from [Ljava/lang/Object;] to [Object] *)
val get_class_name : string -> string

(** [true] if the given type name is an inner class, such as ...$1 *)
val is_inner_class : string -> bool

(** from [Lpkg/cls$n;] to [Lpkg/cls;] *)
val get_owning_class : string -> string

(** {2 Libraries} *)

module Lang :
sig

  (** [java.lang.Object] *)
  val obj : string

  (** [java.lang.Class] *)
  val cls : string

  (** [java.lang.Package] *)
  val pkg : string

  (** [java.lang.System] *)
  val sys : string

  (** [java.lang.String] *)
  val str : string

  (** [java.lang.StringBuilder] *)
  val sbd : string

  (** [java.lang.Thread] *)
  val thd : string

  (** [java.lang.Throwable] *)
  val thr : string

  (** [java.lang.StackTraceElement] *)
  val stk : string

  (** [java.lang.Void] *)
  val c_void : string

  (** [java.lang.Boolean] *)
  val c_bool : string

  (** [java.lang.Byte] *)
  val c_byte : string

  (** [java.lang.Short] *)
  val c_short : string

  (** [java.lang.Character] *)
  val c_char : string

  (** [java.lang.Integer] *)
  val c_int : string

  (** [java.lang.Long] *)
  val c_long : string

  (** [java.lang.Float] *)
  val c_float : string

  (** [java.lang.Double] *)
  val c_doubl : string

  (** [getClass] *)
  val get_cls : string

  (** [getName] *)
  val get_name : string

  (** [getStackTrace] *)
  val get_stk : string

  (** [toString] *)
  val to_s : string

  (** [append] *)
  val append : string

  (** [start] *)
  val start : string

  (** [run] *)
  val run : string

  (** [concat] *)
  val concat : string

  (** [toLowerCase] *)
  val lower : string

  (** [toUpperCase] *)
  val upper : string

  (** [format] *)
  val _format : string

  (** [valueOf] *)
  val v_of : string

  (** all wrapper classes for primitive types *)
  val wrappers : unit -> string list

end

module IO :
sig

  (** [java.io.PrintStream] *)
  val ps : string

end

module Net :
sig

  (** [java.net.InetSocketAddress] *)
  val isoc : string

end

module Apache :
sig

  (** [class]s that implement [org.apache.http.client.methods.HttpUriRequest] *)
  val uri_reqs : unit -> string list

end

(** [true] if given class is [Java] library *)
val is_library : string -> bool

