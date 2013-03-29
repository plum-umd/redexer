(*
 * Copyright (c) 2010-2012,
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
(* Logging                                                             *)
(***********************************************************************)

module St = Stats

module U = Util

module I  = Instr
module D  = Dex
module J  = Java

module App = Android.App
module Acn = Android.Content
module Aos = Android.OS
module Apr = Android.Preference


module V  = Visitor
module M  = Modify

module L  = List

(***********************************************************************)
(* Basic Types/Elements                                                *)
(***********************************************************************)

let sget_obj = I.op_to_hx I.OP_SGET_OBJECT
let call_stt = I.op_to_hx I.OP_INVOKE_STATIC

let logging = "Lorg/umd/logging/"

let logger  = logging^"util/Logger;"
let action  = logging^"util/Logger$AppAction;"
let logActn = "logChildAction"

module SM = Map.Make(String)

let act_comps = [App.activity; App.lst_act; App.tab_act; Apr.activity]

let act_trans = [App.onCreate; App.onResume; App.onPause; App.onDestroy]

let srv_trans = [App.onCreate; App.onDestroy]

(* from component to transition: { Activity => [onCreate; ...], ... } *)
let comp_to_tran =
  let srv_map = SM.add App.service srv_trans SM.empty in
  L.fold_left2 (fun acc comp trans -> SM.add comp trans acc) srv_map
    act_comps (U.repeat act_trans (L.length act_comps) [])


(***********************************************************************)
(* Log transitions of interest                                         *)
(***********************************************************************)

(*
  if the target class' children classes didn't override overridable methods,
  such methods may be called by android.app.Instrument.

  E.g. if some activities didn't implement their own act_trans,

  public class SomeActivity extends Activity {
    // didn't override onResume()
    @Override public void onPause() { ... }
  }

  then, above class' onResume() can't be logged correctly.
  For those cases, we need to add bogus method bodies like this:

  public class SomeActivity extends Activity {
    @Override public void onResume() { super.onResume(); } // added
    @Override public void onPause() { ... }
  }
*)

(*
  for transitions of interest, e.g. onCreate, onResume, etc.,
  insert logger call so that we can see act_trans among the components:

  import org.umd.logging.Logger.*;
  import org.umd.logging.Logger;
  import android.app.Activity;

  public class A extends Activity {
    @Override void onResume() {
      Logger.logChildAction(AppAction.onResume);
      ...
    }
  }

  the corresponding code snippet would be:

    sget-object v0, fld@id          // e.g. Logger$AppAction.onResume;
    const/4 v1, #int 0
    new-array v1, v1, typ@id        // [Ljava/lang/String; (due to varg)
    invoke-static {v0, v1}, mthd@id // Logger.logChildAction

*)

let rec trans_in_hierarchy (dx: D.dex) (cid: D.link) : string list =
  let cname = J.of_java_ty (D.get_ty_str dx cid) in
  try SM.find cname comp_to_tran
  with Not_found ->
    let sid = D.get_superclass dx cid in
    if sid = D.no_idx then [] else trans_in_hierarchy dx sid

let override_cnt = ref 0
let trans_cnt = ref 0

class trans_logger (dx: D.dex) =
  let strs = M.new_ty dx (J.to_java_ty ("["^Java.Lang.str)) in
  let logger_cid::action_cid::[] = L.map (D.get_cid dx) [logger; action] in
  let log_mid, _ = D.get_the_mtd dx logger_cid logActn in
object
  inherit V.iterator dx

  (* to check this inherits a target component or not *)
  val mutable do_this_cls = false
  method v_cdef (cdef: D.class_def_item) : unit =

    let cid = cdef.D.c_class_id
    and sid = cdef.D.superclass in
    (* override all the overridable methods for target components *)
    let per_on mname =
      if mname <> App.onUnbind && not (M.override dx cid mname) then
      ( M.insrt_return_void dx cid mname; incr override_cnt )
    in
    (* NOTE: this would explore all superclasses in hierarchy *)
    L.iter per_on (trans_in_hierarchy dx sid);
    (*
       unlike overriding, we don't need to instrument aggresively
       because children would be logged as well
       if 1) superclass' methods are instrumented, which will be done below
       and 2) children override such methods, which has been done just above
    *)
    let sname = J.of_java_ty (D.get_ty_str dx sid) in
    do_this_cls <- SM.mem sname comp_to_tran

  (* to check this is a transition method or not *)
  val mutable mname = ""
  method v_emtd (emtd: D.encoded_method) : unit =
    mname <- D.get_mtd_name dx emtd.D.method_idx

  method v_citm (citm: D.code_item) : unit =
    if L.mem mname act_trans && do_this_cls then
    (
      let fid, _ = D.get_the_fld dx action_cid mname in
      let ins0 = I.new_stt_fld sget_obj 0 (D.of_idx fid)
      and ins1 = I.new_const 1 0
      and ins2 = I.new_arr 1 1 (D.of_idx strs)
      and ins3 = I.new_invoke call_stt [0; 1; D.of_idx log_mid] in
      let inss = [ins0; ins1; ins2; ins3] in
      let _ = M.insrt_insns_before_end dx citm inss in
      M.update_reg_usage dx citm;
      trans_cnt := !trans_cnt + (L.length inss)
    )

  method finish () : unit =
    (* 2x : super(); return-*; *)
    Log.i ("# of method overriding(s): "^(Log.of_i (!override_cnt * 2)));
    Log.i ("# of transition logging(s): "^(Log.of_i !trans_cnt))

end

let log_transition (dx: D.dex) : unit =
  (* insert method sig first so that M.override can find method_id_item *)
  let insrt_void_no_arg cid mname =
    ignore (M.new_sig dx cid mname J.v [])
  in
  (* Activity family *)
  let per_act (comp: string) : unit =
    let cid = M.new_class dx comp D.pub in
    (* Activity.onCreate *)
    let _ = M.new_sig dx cid App.onCreate J.v [Aos.bundle] in
    (* anything else, e.g., onStart, onResume, etc. *)
    L.iter (insrt_void_no_arg cid) (L.tl act_trans)
  in
  L.iter per_act act_comps;
  (* Service family *)
  let per_srv (comp: string) : unit =
    let cid = M.new_class dx comp D.pub in
    (* Service.(onCreate | onDestroy) *)
    L.iter (insrt_void_no_arg cid) [App.onCreate; App.onDestroy];
    (* Service.(onBind | onRebind) *)
    let insrt_void_intent mname =
      ignore (M.new_sig dx cid mname J.v [Acn.intent])
    in
    L.iter insrt_void_intent [App.onBind; App.onRebind]
  in
  L.iter per_srv [App.service];
  (* then add super() into those overriable methods *)
  V.iter (new trans_logger dx)

(***********************************************************************)
(* Rewrite to log apps behavior                                        *)
(***********************************************************************)

(* modify *)
let modify (dx: D.dex) : unit =
  St.time "transition" log_transition dx
    
