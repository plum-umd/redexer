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
(* Logging                                                             *)
(***********************************************************************)

module St = Stats
module CL = Clist
module DA = DynArray

module U = Util

module I  = Instr
module Cf = Ctrlflow
module D  = Dex
module J  = Java
module JL = Java.Lang

module App = Android.App
module Acn = Android.Content
module Aos = Android.OS
module Apr = Android.Preference

module V  = Visitor
module M  = Modify

module A  = Array
module L  = List
module S  = String

module Pf = Printf

module Js = Yojson.Safe

(***********************************************************************)
(* Basic Types/Elements                                                *)
(***********************************************************************)

(* opcodes *)
let mv_r_obj = I.op_to_hx I.OP_MOVE_RESULT_OBJECT
let cnst_str = I.op_to_hx I.OP_CONST_STRING
let aput_obj = I.op_to_hx I.OP_APUT_OBJECT
let call_stt = I.op_to_hx I.OP_INVOKE_STATIC
let stt_rnge = I.op_to_hx I.OP_INVOKE_STATIC_RANGE

let logging = "Lorg/umd/logging"
let logger = logging^"/Logger;"
let logBBEnter = "logBasicBlockEntry"
let logMEnt = "logMethodEntry"
let logMExt = "logMethodExit"
let logAEnt = "logAPIEntry"
let logAExt = "logAPIExit"

(* Granularity of methods to be logged *)
type detail =
  | Default
  | Fine
  | Regex of Js.json

let config = try
    Js.from_file "data/logging.json"
  with _ -> `Null

(* The logging detail to be used. *)
let detail = ref Default

module SM = Map.Make(String)

(* from descriptor to wrapper class: { Z => java.lang.Boolean, ... } *)
let descr_to_class =
  L.fold_left2 (fun acc descr cls -> SM.add descr cls acc) SM.empty
    (L.tl (L.map J.to_type_descr J.shorties)) (* to remove void *)
    (L.tl (JL.wrappers ())) (* to remove java.lang.Void *)

let act_comps = [App.activity; App.lst_act; App.tab_act; Apr.activity; App.fragment (*; App.v4fragmen*) ]

let act_trans = App.lifecycle_act

let srv_trans = App.lifecycle_srv

(* from component to transition: { Activity => [onCreate; ...], ... } *)
let comp_to_tran =
  let srv_map = SM.add App.service srv_trans SM.empty in
  let act_maps = L.fold_left2 (fun acc comp trans -> SM.add comp trans acc) srv_map
                              act_comps (U.repeat act_trans (L.length act_comps) []) in
  SM.add Aos.asynctask Aos.task_methods act_maps

let (@+) cl1 cl2 = CL.append cl1 cl2

(***********************************************************************)
(* Add transitions of interest                                         *)
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

let rec trans_in_hierarchy (dx: D.dex) (cid: D.link) : string list =
  let cname = J.of_java_ty (D.get_ty_str dx cid) in
  try SM.find cname comp_to_tran
  with Not_found ->
    let sid = D.get_superclass dx cid in
    if sid = D.no_idx then [] else trans_in_hierarchy dx sid

let override_cnt = ref 0

class trans_adder (dx: D.dex) =
object
  inherit V.iterator dx

  method v_cdef (cdef: D.class_def_item) : unit =
    let cid = cdef.D.c_class_id
    and sid = cdef.D.superclass in
    (* override all the overridable methods for target components *)
    let per_on mname =
      try
        if not (L.mem mname [App.onBind; App.onUnbind])
        && not (M.override dx cid mname) then
        ( M.insrt_return_void dx cid mname; incr override_cnt )
      (* if apps overload lifecycle methods, M.override may fail *)
      (* TODO: use shorty to indicate the exact method signature *)
      with D.Wrong_dex _ -> ()
    in
    (* to avoid the Logger *)
    let cname = D.get_ty_str dx cid in
    if U.begins_with cname logging then () else
    (* NOTE: this would explore all superclasses in hierarchy *)
    L.iter per_on (trans_in_hierarchy dx sid)

  method finish () : unit =
    (* 2x : super(); return-*; *)
    Log.i ("# of method overriding(s): "^(Log.of_i (!override_cnt * 2)))
end

let add_transition (dx: D.dex) : unit =
  (* insert method sig first so that M.override can find method_id_item *)
  let insrt_void_no_arg cid mname =
    ignore (M.new_sig dx cid mname J.v [])
  and insrt_void_intent cid mname =
    ignore (M.new_sig dx cid mname J.v [Acn.intent])
  in
  (* Activity family *)
  let per_act (comp: string) : unit =
    let cid = M.new_class dx comp D.pub in
    (* Activity.onCreate *)
    let _ = M.new_sig dx cid App.onCreate J.v [Aos.bundle] in
    (* anything else, e.g., onStart, onResume, etc. *)
    L.iter (insrt_void_no_arg cid) [App.onStart; App.onStop; App.onDestroy;
				    App.onResume; App.onPause];
  in
  L.iter per_act act_comps;
  (* Service family *)
  let per_srv (comp: string) : unit =
    let cid = M.new_class dx comp D.pub in
    (* Service.(onCreate | onDestroy) *)
    L.iter (insrt_void_no_arg cid) [App.onCreate; App.onDestroy;];
    (* Service.onRebind *)
    L.iter (insrt_void_intent cid) [App.onRebind]
  in
  L.iter per_srv [App.service];
  (* Asynctask *)
  let cid = M.new_class dx Aos.asynctask D.pub in
  insrt_void_no_arg cid Aos.onPreExecute;
  (* then add super() into those overriable methods *)
  V.iter (new trans_adder dx)

(***********************************************************************)
(* Log all the methods in the app under test                           *)
(***********************************************************************)

(*
  whenever we met apps methods like the following:

  public class A implements View.OnClickListener {
    @Override void onClick(View v) { ... }
  }

  insert logger call so that we can see which component calls which method:

  import org.umd.logging.Logger;
  import android.view.View;
  public class A implements View.OnClickListener {
    @Override void onClick(View v) {
      Logger.logMethodEntry(this, v);
      ...
      Logger.logMethodExit();
    }
  }

  the code snippet for method entries would be:

    (* vx, vy, vz < this *)
    const/4 vz, #int ins_size         // including "this" or not
    new-array vx, vz, typ@id          // [Ljava/lang/Object; (due to varg)

    const/4 vy, #int n                // n : 0 ~ ins_size - 1
    invoke-static-range {vm}, @v_of   // m : reg_size - ins_size + n
    move-result-object vz             // @v_of : WRAPPER.valueOf
    aput-object vz, vx, vy            // or vm (instead of vz)

    invoke-static {vx}, @mid          // Logger.logMethodEntry(params)

  the code snippet for method exits would be:

    (* vx, vy, vz =/= vr *)
    const/4 vx, #int (0|1)            // void or not
    new-array vx, vx, typ@id          // [Ljava/lang/Object; (due to varg)

    const/4 vy, #int 0                // unless return type is void
    invoke-static-range {vr}, @v_of
    move-result-object vz
    aput-object vz, vx, vy            // or vr (instead of vz)

    invoke-static-range {vx}, @mid    // Logger.logMethodExit(ret)
    return-* vr                       // override this w/ the 1st instruction
*)

(*
  whenever we met API usage like the following:

  public class A extends Activity {
    @Override void onCreate(...) {
      ... setContentView(...); ...
    }
  }

  insert logger call so that we can track such API usage:

  import org.umd.logging.Logger;
  public class A extends Activity {
    @Override void onCreate(...) {
      ...
      Logger.logAPIEntry(Activity.class.getName(), "setContentView", ...);
      setContentView(...);
      Logger.logAPIExit(Activity.class.getName(), "setContentView");
      ...
    }
  }

  the code snippet before API calls would be:

    const/4 vz, #int arg_size         // # of arg for API call
    new-array vz, vz, typ@id          // [Ljava/lang/Object; (due to varg)

    const/4 vy, #int n                // n : 0 ~ arg_size - 1
    invoke-static-range {vi}, @v_of   // i : actual parameters
    move-result-object vx             // @v_of : WRAPPER.valueOf
    aput-object vx, vz, vy            // or vi (instead of vx)

    const-string vx, str@id           // class name
    const-string vy, str@id           // method name
    invoke-static-range {vx:z}, @mid  // Logger.logAPIEntry(params)

  ! invoke-* {vi, vp, ...}, api@id
  ! invoke-*-range {va, vc}, api@id

  the code snippet after API calls would be:

  ! move-result-* vr

    const/4 vz, #int (0|1)            // void or not
    new-array vz, vz, typ@id          // [Ljava/lang/Object; (due to varg)

    const/4 vy, #int 0                // unless return type is void
    invoke-static-range {vr}, @v_of
    move-result-object vx
    aput-object vx, vz, vy            // or vr (instead of vx)

    const-string vx, str@id           // class name
    const-string vy, str@id           // method name
    invoke-static-range {vx:z}, @mid  // Logger.logAPIExit(ret)

*)

let in_out_cnt = ref 0
let api_cnt = ref 0

let libraries = ["Ljava"; "Landroid"; "Lorg/apache"]

let is_library (cname: string) : bool =
  L.exists (U.begins_with cname) libraries

let is_not_javalang (cname: string) : bool =
  not (L.exists (U.begins_with cname) ["Ljava/lang";"Ljava/util"])

(* Don't instrument calls to `java.lang.valueOf`. If we try to do
   that, it messes up our instrumentation: we're using `valueOf` in
   our instrumentation, and trying to instrument it here messes up
   register hygiene.
 *)
let log_call (string) : bool =
  not (L.exists (fun x -> U.ends_with string x) [J.init; J.clinit; J.hashCode])
  &&
    (not ((U.begins_with string "Ljava/lang")
          && (U.ends_with string "valueOf")))

let adr_relevant dx (cid: D.link) regexes : bool =
  let ext_or_impl (cid': D.link) : bool =
    let sname = D.get_ty_str dx (D.get_superclass dx cid')
    and inames = L.map (D.get_ty_str dx) (D.get_interfaces dx cid') in
    L.exists (fun sup -> L.exists (fun regex -> U.matches sup regex) regexes) (sname :: inames)
  in
  D.in_hierarchy dx ext_or_impl cid

let has_supercall dx (mname: string) (citm: D.code_item) : bool =
  let op, _ = M.get_fst_ins dx citm in
  op = I.OP_INVOKE_SUPER || (mname = J.init && op = I.OP_INVOKE_DIRECT)

let has_monitors dx (citm: D.code_item) : bool =
  let is_monitor_instr ins =
    if not (D.is_ins dx ins) then false else
    let op, _ = D.get_ins dx ins in
    L.mem op [I.OP_MONITOR_ENTER; I.OP_MONITOR_EXIT]
  in
  [] <> L.filter is_monitor_instr (DA.to_list citm.D.insns)

let vxyz (s: int) : int list =
  L.map (fun i -> i mod 16) (U.range s (s + 2) [])

let cleanup_pesky_try cursor_before cursor_after citm (try_itm:D.try_item) =
  let s = M.get_cursor citm try_itm.D.start_addr in
  let e = M.get_cursor citm try_itm.D.end_addr in
  if s <= cursor_before && cursor_before <= e then
     let snd = 
       let fresh_addr2 = DA.get citm.D.insns cursor_after in
       { try_itm with 
         D.start_addr = fresh_addr2;
         D.end_addr   = try_itm.D.end_addr
       }
     in
     if s <= cursor_before-1 then
       (* Include the first try block *)
       { try_itm with 
         D.start_addr = try_itm.D.start_addr;
         D.end_addr   = DA.get citm.D.insns (cursor_before-1)
       }::[snd]
     else
       [snd]
  else
    [try_itm]

let cleanup_tries c_before (c_after) (citm) : unit = 
  citm.D.tries <- L.flatten (L.map (cleanup_pesky_try c_before c_after citm) 
                                   (citm.D.tries));
  citm.D.tries_size <- L.length citm.D.tries

(* The logger class is virtual so we can implement different behavior
   for each type of configuration. *)
class virtual logger (dx: D.dex) =
  let logger_cid = D.get_cid dx logger in
  let m_ent_mid, _ = D.get_the_mtd dx logger_cid logMEnt
  and m_ext_mid, _ = D.get_the_mtd dx logger_cid logMExt
  and a_ent_mid, _ = D.get_the_mtd dx logger_cid logAEnt
  and a_ext_mid, _ = D.get_the_mtd dx logger_cid logAExt
  in
  let thrw = M.new_ty dx (J.to_java_ty JL.thr)
  and objs = M.new_ty dx (J.to_java_ty ("["^JL.obj))
  and ty_void = D.find_ty_str dx (J.to_type_descr J.v) in
  let c_map = SM.map (fun cname -> M.new_ty dx cname) descr_to_class
  and get_v_of descr cid =
    fst (D.get_the_mtd_shorty dx cid JL.v_of ("L"^descr))
  in
  let v_of_map = SM.mapi get_v_of c_map in

  let uri_ids = L.map (fun x -> D.find_ty_str dx x) ["Landroid/net/Uri;";
                                                     "Ljava/net/Uri;";
                                                     "[Landroid/net/Uri;";
                                                     "[Ljava/net/Uri;"] in

  let url_ids = L.map (fun x -> D.find_ty_str dx x) ["Ljava/net/URL;";
                                                     "[Ljava/net/URL;"] in

  let auto_boxing (r: int) (ty: D.link) : I.instr =
    let tname = D.get_ty_str dx ty in
    (* below will raise an exception unless primitive type *)
    let v_of = SM.find tname v_of_map in
    (* long or double *)
    let args = if J.is_wide tname then [r; r+1] else [r; r] in
    (* use invoke-*-range to support registers whose index is over 1 byte *)
    I.new_invoke stt_rnge (args @ [D.of_idx v_of])
  in
  
  object(self)
  inherit V.iterator dx

  val mutable cid = D.no_idx

  (* Whether or not this whole class should be skipped. Note that
     libraries (for which we don't have code) will *always* be
     skipped. *)
  method virtual skip_class : string -> bool

  (* Whether or not we should instrument entries / exits of a method. *)
  method virtual log_entry : D.encoded_method -> string -> bool

  (* Whether or not we should instrument calls to entries / exits of a method. *)
  method virtual log_call : string -> bool

  (* Visited upon *class* entry. We skip classes for which we don't
     have any code: Android internal classes, apache.org.* classes,
     etc...
  *)
  method v_cdef (cdef: D.class_def_item) : unit =
    cid <- cdef.D.c_class_id;
    let cname = D.get_ty_str dx cid in
    (* to avoid the Logger class as well as libraries *)
    skip_cls <- U.begins_with cname logging; (*|| is_library cname;*)
    skip_cls <- skip_cls || self#skip_class cname;
    let yesno = if skip_cls then "Skipping log" else "Log" in
    Log.i (Pf.sprintf "%s of class: %s\n" yesno cname)

  val mutable mid = D.no_idx

  (* to determine supercall in constructors *)
  val mutable mname = ""

  (* the type of arguments, if exists *)
  val mutable argv = ([]: D.link list)

  (* the type of return value, if exists *)
  val mutable rety = D.no_idx
  val mutable is_void = false
  val mutable log_entry = false
  val mutable cur_emtd = None
  val mutable has_monitor = false

        
  (* Visits method entries, attempts to insert logging code. *)
  method v_emtd (emtd: D.encoded_method) : unit =
    mid <- emtd.D.method_idx;
    mname <- D.get_mtd_name dx mid;
    cur_emtd <- Some emtd;
    (* TODO: what happens if an exception raised in a synchronized block? *)
    has_monitor <- 
      emtd.D.code_off <> D.no_off &&
        has_monitors dx (snd (D.get_citm dx cid mid));
    let full = D.get_mtd_full_name dx mid in
    (* to skip constructors and synthetic methods (static blocks) *)
    log_entry <- (*not has_monitor && *) (self#log_entry emtd full) &&
                   (* Ignore methods if we don't have source for them *)
                   (try ignore (D.get_data_item dx emtd.D.code_off); true
                    with _ -> false);
    if log_entry then
      Log.i ("Log of method body: "^full)
    else
      Log.i ("Skipping log of method body: "^full);
    let mit = D.get_mit dx mid in
    argv <- D.get_argv dx mit;
    if (not (D.is_static emtd.D.m_access_flag)) then
      argv <- cid :: argv; (* including "this" *)
    rety <- D.get_rety dx mit;
    is_void <- 0 = D.ty_comp dx rety ty_void

  (* to log API usage *)
  val mutable cur_citm = D.empty_citm ()
  method v_citm (citm: D.code_item) : unit =
    Log.i (Pf.sprintf "visit: %s" (D.get_mtd_full_name dx mid));
    let mname = D.get_mtd_name dx mid in 
    let cname = D.get_ty_str dx cid in
    let str_lname = D.of_idx (D.find_str dx cname) in
    let str_mname = D.of_idx (D.find_str dx mname) in
    cur_citm <- citm;
    (* to secure at least three registers for logging *)
    (* 3 is minimum, but 5 here to expand invoke-* operands *)
    M.shift_reg_usage dx citm 5;
    let this = D.calc_this citm in
    (* code snippet for method exits *)
    (* to calc the last ins correctly, do this part first *)
    if log_entry then
      let do_exit () = 
        try
        let per_exit_instr instr_link =
          (* For this exit instruction, calculate the return type and
             the register that will be returned into. We will then use
             this information for autoboxing the return type if
             necessary. *)
          let (rety,vr) =
            if is_void then (rety, this) else
              let op, opr = D.get_ins dx instr_link in
              match op, opr with
              | I.OP_RETURN,        I.OPR_REGISTER r :: []
              | I.OP_RETURN_WIDE,   I.OPR_REGISTER r :: []
              | I.OP_RETURN_OBJECT, I.OPR_REGISTER r :: [] -> (rety, r)
              | I.OP_THROW, I.OPR_REGISTER r :: [] -> (thrw, r)
              | _, _ -> raise (D.Wrong_match "is_void")
          in
          let vx::vy::vz::[] = vxyz 0 in
          let ins0 = I.new_const vz 4
          and ins1 = I.new_arr vz vz (D.of_idx objs)
          and rest = 
            [I.new_const_id cnst_str vx str_lname;
             I.new_const_id cnst_str vy str_mname;
             I.new_invoke stt_rnge [vx; vz; D.of_idx m_ext_mid] ]
          and copy_ret vr vx =
            let ins_c = I.new_const vy 0
            and ins_a =
              try
                let ins_a1 = auto_boxing vr rety
                and ins_a2 = I.new_move_result mv_r_obj vz
                and ins_a3 = I.new_arr_op aput_obj [vz; vx; vy] in
                [ins_a1; ins_a2; ins_a3]
              with Not_found ->
                [I.new_arr_op aput_obj [vr; vx; vy]]
            in
            CL.fromList (ins_c::ins_a)
          in
          let ext_insns =
            CL.toList (
                CL.fromList [ins0; ins1]
                @+ CL.fromList rest)
          in
          let cursor = M.get_cursor citm instr_link in
          let n_plus_k = M.insrt_insns_under_off 
                           dx citm cursor ext_insns in
          cleanup_tries cursor n_plus_k citm;
          in_out_cnt := !in_out_cnt + (L.length ext_insns);
        in
        let last_links = M.get_last_links dx citm in
        L.iter per_exit_instr last_links
        with D.No_return -> ()
      in
      do_exit();
      
      (* code snippet for method entries *)
      let vx::vy::vz::[] = vxyz 0 in
        let argn = 
          if mname = J.init || mname = J.clinit then 0 
          else
            citm.D.ins_size 
        in
        if mname = J.init || mname = J.clinit then 
          argv <- [];
        let ins0 = I.new_const vz (argn+4)
        and ins1 = I.new_arr vz vz (D.of_idx objs)
        and rest = 
          [I.new_const_id cnst_str vx str_lname;
           I.new_const_id cnst_str vy str_mname;
           I.new_invoke stt_rnge [vx; vz; D.of_idx m_ent_mid]]
        and copy_argv (acc, (arr_i, r_i)) ty =
          let tname = D.get_ty_str dx ty in
          let ins_c = I.new_const vy arr_i
          and ins_a =
            try
              let ins_a1 = auto_boxing (this + r_i) ty
              and ins_a2 = I.new_move_result mv_r_obj vx
              and ins_a3 = I.new_arr_op aput_obj [vx; vz; vy] in
              [ins_a1; ins_a2; ins_a3]
            with Not_found ->
              [I.new_arr_op aput_obj [this + r_i; vz; vy]]
          in
          acc @+ (CL.fromList (ins_c::ins_a)),
          (arr_i + 1, if J.is_wide tname then r_i + 2 else r_i + 1)
        in
        let ent_insns = CL.toList (
            CL.fromList [ins0; ins1]
            @+ fst (L.fold_left copy_argv (CL.empty, (4, 0)) argv)
            @+ CL.fromList rest
          ) in
        let _ = M.insrt_insns_before_start dx citm ent_insns in
        in_out_cnt := !in_out_cnt + (L.length ent_insns);
        M.update_reg_usage dx citm

  method v_ins (ins: D.link) : unit =
    let thismname = mname in
    if D.is_ins dx ins then
    (
      let op, opr = D.get_ins dx ins in
      match I.access_link op with
      | I.METHOD_IDS ->
      (
        let mid = D.opr2idx (U.get_last opr) in
        let cid = D.get_cid_from_mid dx mid in
        let mname = D.get_mtd_name dx mid in
        (* Determine whether or not to instrument a given method *)
        let instrument_instr =
          try
            ignore (D.get_citm dx cid mid);
            let emtd = D.get_emtd dx cid mid in
            (* Log constructors *)
            (*(L.mem mname [J.init; J.clinit; J.hashCode])*)
            false
            (* XXX MAJOR HACK *)
            || U.begins_with (D.get_ty_str dx cid) "Landroid/support"
          with D.Wrong_dex _ ->
            (* means that method will be loaded at run-time, i.e., libraries *)
            true
        in
        if instrument_instr then
        (
          let sid = D.get_superclass dx cid in
          let lid = if sid = D.no_idx then cid else sid in
          let lname = D.get_ty_str dx lid in
          let full = D.get_mtd_full_name dx mid in
          let do_logging = log_call full in
          let mit = D.get_mit dx mid in
          
          (* This can be optimized. -- How? *)
          if (not do_logging) then
            Log.i (Printf.sprintf "Skipping log of method call %s %x " full (D.of_off ins))
          else
          (
            Log.i  (Printf.sprintf "Log of method call %s %x " full (D.of_off ins));
            let vx::vy::vz::[] = vxyz 0 in
            let ent_cursor = M.get_cursor cur_citm ins in
            let ext_cursor = M.next ent_cursor in
            let str_lname = D.of_idx (D.find_str dx lname)
            and str_mname = D.of_idx (D.find_str dx mname) in

            (* code snippet for API exits. To avoid altering current
               cursor, do this part first *)
            let instrument_exit () = 
              let rety = D.get_rety dx mit in
              let vr =
                if mname = J.init then I.of_reg (L.hd opr) else
                  let op, opr = M.get_ins dx cur_citm ext_cursor in
                  match op, opr with
                  | I.OP_MOVE_RESULT,        I.OPR_REGISTER r :: []
                  | I.OP_MOVE_RESULT_WIDE,   I.OPR_REGISTER r :: []
                  | I.OP_MOVE_RESULT_OBJECT, I.OPR_REGISTER r :: [] -> r
                  | _, _ -> D.no_index
              in
              let ret_moved = vr <> D.no_index in
              let ins0 = I.new_const vz (if ret_moved then 5 else 4)
              and ins1 = I.new_arr vz vz (D.of_idx objs)
              and ins2 = I.new_const_id cnst_str vx str_lname
              and ins3 = I.new_const_id cnst_str vy str_mname
              and ins4 = I.new_invoke stt_rnge [vx; vz; D.of_idx a_ext_mid]
              and copy_ret vr vx =
                let ins_c = I.new_const vy 4
                and ins_a =
                  try
                    let ins_a1 = auto_boxing vr rety
                    and ins_a2 = I.new_move_result mv_r_obj vx
                    and ins_a3 = I.new_arr_op aput_obj [vx; vz; vy] in
                    [ins_a1; ins_a2; ins_a3]
                  with Not_found ->
                    [I.new_arr_op aput_obj [vr; vz; vy]]
                in
                (ins_c::ins_a)
              in
              let ext_insns = [ins0; ins1]
                              @ (if ret_moved then copy_ret vr vx else [])
                              @ [ins2; ins3; ins4] in
              (* not to alter the control-flow, use ..._over_off *)
              let _ =
                (* If we are to move the return, then *)
                if ret_moved then
                  ignore @@ M.insrt_insns_over_off dx cur_citm ext_cursor ext_insns
                else (
                  let new_cur = M.insrt_insns dx cur_citm ext_cursor ext_insns - 1 in
                  let inserted_idx = DA.get cur_citm.D.insns new_cur in
                  let cleanup_pesky_try (try_itm:D.try_item) =
                    (
                      (*Pf.printf "found a try that ends at %x and we're at %x\n" (D.of_off try_itm.end_addr) (D.of_off ins);*)
                      if try_itm.D.end_addr = ins then
                        (*(Pf.printf "Cleaning up pesky try... Instruction was at %x and is now moved to %x\n" (D.of_off ins) (D.of_off inserted_idx);*)
                        { try_itm with D.end_addr = inserted_idx }
                      else
                        try_itm)
                  in
                  cur_citm.D.tries <- L.map cleanup_pesky_try (cur_citm.D.tries);
                  cur_citm.D.tries_size <- L.length cur_citm.D.tries)
              in
              api_cnt := !api_cnt + (L.length ext_insns)
            in
            (match !detail with
             | Fine         -> instrument_exit ());
            (* code snippet for API entries *)
            let argv = D.get_argv dx mit in
            let argv =
              if L.mem op [I.OP_INVOKE_STATIC; I.OP_INVOKE_STATIC_RANGE]
              then argv else lid :: argv
            in
            let argn = L.length argv in
            let ins0 = I.new_const vz (argn+4)
            and ins1 = I.new_arr vz vz (D.of_idx objs)
            and ins2 = I.new_const_id cnst_str vx str_lname
            and ins3 = I.new_const_id cnst_str vy str_mname
            and ins4 = I.new_invoke stt_rnge [vx; vz; D.of_idx a_ent_mid]
            and copy_argv (acc, (arr_i, params)) ty =
              let tname = D.get_ty_str dx ty
              and r_i::tl = params in
              let ins_c = I.new_const vy arr_i
              and ins_a =
                try
                  let ins_a1 = auto_boxing r_i ty
                  and ins_a2 = I.new_move_result mv_r_obj vx
                  and ins_a3 = I.new_arr_op aput_obj [vx; vz; vy] in
                  [ins_a1; ins_a2; ins_a3]
                with Not_found ->
                  [I.new_arr_op aput_obj [r_i; vz; vy]]
              in
              acc @+ (CL.fromList (ins_c::ins_a)),
              (arr_i + 1, if J.is_wide tname then L.tl tl else tl)
            in
            let params = L.map I.of_reg (I.get_argv (op, opr)) in
            (* Handle case for static methods that have no
            parameters. *)
            let copy_argv_instrs = match params with
              | [] -> CL.empty
              | _  -> fst (L.fold_left copy_argv (CL.empty, (4, params)) argv)
            in
            let ent_insns = CL.toList (
              CL.fromList [ins0; ins1]
              @+ copy_argv_instrs
              @+ CL.fromList [ins2; ins3; ins4]
            ) in
            (* not to alter the control-flow, use ..._under_off *)
            M.insrt_insns_under_off dx cur_citm ent_cursor ent_insns;
            api_cnt := !api_cnt + (L.length ent_insns);
            M.update_reg_usage dx cur_citm
          )
        )
      )
      | _ -> ()
    )

  method finish () : unit =
    Log.i ("# of method  logging instruction(s): "^(Log.of_i !in_out_cnt));
    Log.i ("# of API-use logging instruction(s): "^(Log.of_i !api_cnt))
end

(* Different possible logger implementations. *)

(* Default logging behavior. *)
class default_logger (dx: D.dex) =
  object (self)
    inherit logger dx
    method skip_class _ = false
    method log_entry emtd mname =
      not (L.mem mname [J.init; J.clinit; J.hashCode]
           || D.is_synthetic emtd.D.m_access_flag)
    method log_call _ = false
  end

(* The fine-grained logger will run the app in such a way that it will
   trace its execution. By default, every method's entry and exit will
   be logged. Optionally, basic block entries can also be logged. This
   is much more heavyweight, and should be applied sparingly. It is
   currently a flag set to false.

   Critical things I discovered via doing the logging:

   - Instrumenting code in the presence of exceptions is tricky. We
   break up exceptions into two blocks.

 *)
class fine_logger (dx: D.dex) =
  let logger_cid       = D.get_cid dx logger in
  let m_bbenter, _     = D.get_the_mtd dx logger_cid logBBEnter in

  object (self)
    inherit logger dx as super

    val mutable cur_cname = ""
    val mutable cur_mname = ""
    val mutable selected = false
    val mutable cur_citm = D.empty_citm ()
    val mutable skip = false
    val mutable instrument_bbentries = false
                                     
    method v_cdef (cdef: D.class_def_item) : unit =
      super#v_cdef cdef;
      let cid = cdef.D.c_class_id in
      cur_cname <- D.get_ty_str dx cid

    (* Visit a method, decide whether or not to skip it *)
    method v_emtd (emtd: D.encoded_method) : unit =
      super#v_emtd emtd;
      let cur_mid = emtd.D.method_idx in
      cur_mname <- D.get_mtd_name dx cur_mid;
      has_monitor <-
          emtd.D.code_off <> D.no_off &&
            has_monitors dx (snd (D.get_citm dx cid mid));
      skip_mtd <- has_monitor || (L.mem mname [J.init; J.clinit; J.hashCode])

    (* Visit a code item: first instrument the entry and exit by
       calling the super method, but then also identify all basic
       blocks and instrument those too. *)
    method v_citm citm =
      super#v_citm citm;
      if log_entry then
        let cfg = (St.time "cfg" (Cf.make_cfg dx) citm) in
        let instrs = Cf.get_bb_entries cfg in
        let cursors = L.map (fun x -> (M.get_cursor citm x), x) instrs in
        let i = ref 0 in
        (* Instrument basic block entries. Note that unfortunately,
           this is challenging because of Dalvik's strange ways of
           handling control flow analysis for tries. *)
        let instrument_bbentry (cursor,link) =
          (* The instructions to really add to the method.. *)
          (* The number of instructions we add. Update when inss changes *)
          let numinsns = 2 in
          let index = D.of_off link + numinsns * !i in
          let ins0 = I.new_const 0 index in
          let ins1 = I.new_invoke call_stt [0; D.of_idx m_bbenter] in
          let inss = [ins0; ins1] in
          let rec advance i c = match i with
            | 0 -> c
            | n -> advance (i-1) (M.next c)
          in
          let op, opr = D.get_ins dx link in
          begin
            match op with
            (* Some instructions have to be the beginnings of a basic
               block. In this case, insert logging instrumentation
               *after* the first instruction in that basic block. *)
            | I.OP_MOVE_EXCEPTION
            | I.OP_MOVE_RESULT
            | I.OP_MOVE_RESULT_WIDE
            | I.OP_MOVE_RESULT_OBJECT ->
               (*
                  If we have are inserting an instruction into the
                  middle of an exception handler, where s is the
                  cursor of the beginning of the exception handler, e
                  is the end of the exception handler,

                    exn start s | ... @ addr_st
                                | ...
                     target   n | ins1 @ addr_n
                                | ...
                      exn end e | ...

                  Is rewritten to:

                    exn start s | ... @ addr_st
                                | ... @ 
                     target   n | ins1 @ addr
                            n+1 | mov v0, block_id @ fresh_addr1
                            n+2 | Logger.logBasicBlock(v0) @ fresh_addr2
    cur (result of insrt_insns) | ... @ addr_n+3 
                      exn end e | ... @ addr_end

                  We then alter the try so that:
                  [start: addr_st, end: addr_end, handler: addr_hnd] 
                  Is rewritten to:
                  [start: addr_st, end: addr, handler: addr_hnd] 
                  [start: addr_n+3, end: addr_end, handler: addr_hnd] 
                *)
               let n = advance (numinsns * !i) (M.next cursor) in
               let cur = (M.insrt_insns dx citm n inss) in
               cleanup_tries n cur citm;
               i := !i + 1
            | _ ->

               (* Fixup logging instructions that may alter control
                  flow inside try blocks. 

                  If we have are inserting an instruction into the
                  middle of an exception handler, where s is the
                  cursor of the beginning of the exception handler, e
                  is the end of the exception handler,

                    exn start s | ... @ addr_st
                                | ...
                     target   n | ins1 @ addr_n
                                | ...
                      exn end e | ...

                  Is rewritten to:

                    exn start s | ... @ addr_st
                                | ... @ addr_n-1
                     target   n | mov v0, block_id @ addr
                            n+1 | Logger.logBasicBlock(v0) @ fresh_addr1
                            n+2 | ins1 @ fresh_addr2
                                | ...
                      exn end e | ... @ addr_end

                  We then alter the try so that:
                  [start: addr_st, end: addr_end, handler: addr_hnd] 
                  Is rewritten to:
                  [start: addr_st, end: addr_n-1, handler: addr_hnd] 
                  [start: fresh_addr2, end: addr_end, handler: addr_hnd] 
                *)
               let n = advance (numinsns * !i) cursor in
               let n_plus_2 =
                 (M.insrt_insns_under_off dx citm n inss)
               in
               let inserted_idx = DA.get citm.D.insns n_plus_2 in
               (* If the target instruction lies within this try,
                  split it into two as per the above diagram. *)
               cleanup_tries n n_plus_2 citm;
               i := !i + 1
          end
        in
        if instrument_bbentries then
          L.iter instrument_bbentry cursors;
        (*Unparse.print_method dx citm;*)
        M.update_reg_usage dx citm;
      else
        ()

    (*
       - Log method calls (via `super` call)
       - Log field reads
     *)
    method v_ins ins : unit =
      super#v_ins ins;

    method skip_class c = false
    method log_entry emtd mname =
      not (L.exists (fun x -> U.ends_with mname x) [J.init; J.clinit; J.hashCode])

    method log_call _ = true
  end

(* Log entries only for some key methods (such as .onCreate()) that we
   care about. *)
class log_transition_entries (dx: D.dex) =
  let passoc = function `Assoc x -> x | _ -> failwith "JSON parse error: expected object" in
  let plist = function `List x -> x | _ -> failwith "JSON parse error: expected array" in
  let pstring = function `String x -> x | _ -> failwith "JSON parse error: expected string" in
  let rec concat_regexp (l : string list) : string =
    match l with
      [] -> ""
    | x :: xs -> match xs with
                 | [] -> x
                 | _ -> ((x ^ "\\|") ^ (concat_regexp xs))
  in

  let whitelist_calls_regex_strings =
    let method_calls = L.assoc "method-entries" (passoc config) in
    let entries = plist (L.assoc "whitelist" (passoc method_calls)) in
    concat_regexp (L.map (function `String s -> s | _ -> failwith "unexpected json") entries)
  in
  let whitelist_calls_regexps = U.parse_regexp whitelist_calls_regex_strings in

  let blacklist_calls_regex_strings =
    let method_calls = L.assoc "method-entries" (passoc config) in
    let entries = plist (L.assoc "blacklist" (passoc method_calls)) in
    concat_regexp (L.map (function `String s -> s | _ -> failwith "unexpected json") entries)
  in
  let blacklist_calls_regexps = U.parse_regexp blacklist_calls_regex_strings in

  let whitelist_methods_regex_strings =
    let methods = L.assoc "user-methods" (passoc config) in
    let entries = plist (L.assoc "whitelist" (passoc methods)) in
    concat_regexp (L.map (function `String s -> s | _ -> failwith "unexpected json") entries)
  in
  let whitelist_methods_regexps = U.parse_regexp whitelist_methods_regex_strings in

  let blacklist_methods_regex_strings =
    let methods = L.assoc "user-methods" (passoc config) in
    let entries = plist (L.assoc "blacklist" (passoc methods)) in
    concat_regexp (L.map (function `String s -> s | _ -> failwith "unexpected json") entries)
  in
  let blacklist_methods_regexps = U.parse_regexp blacklist_methods_regex_strings in

  let blacklisted_classes_regex_strings =
    let classes = L.assoc "classes" (passoc config) in
    let entries = plist (L.assoc "blacklist" (passoc classes)) in
    concat_regexp (L.map (function `String s -> s | _ -> failwith "unexpected json") entries)
  in
  let blacklisted_classes_regexps = U.parse_regexp blacklisted_classes_regex_strings in

  object (self)
    inherit logger dx

    method skip_class cname =
      U.matches cname blacklisted_classes_regexps

    method log_entry emtd mname =
      not (L.mem mname [J.init; J.clinit; J.hashCode]
           || D.is_synthetic emtd.D.m_access_flag)
      &&
      (U.matches mname whitelist_methods_regexps)
      && (not (U.matches mname blacklist_methods_regexps))

    (* *)
    method log_call mname =
      (U.matches mname whitelist_calls_regexps)
      && (not (U.matches mname blacklist_calls_regexps))
  end

(***********************************************************************)
(* Rewrite to log apps behavior                                        *)
(***********************************************************************)

(* modify *)
let modify (dx: D.dex) : unit =
  (* add non-overriden transition methods *)
  let logging = match !detail with
    | Default   -> new log_transition_entries dx
    | Fine      -> new fine_logger dx
    | Regex   _ -> failwith "regex flag for logger not implement quite yet"
  in
  (*St.time "transition" add_transition dx;*)
  (* log API uses and entry/exit of all methods, except for Logger itself *)
  St.time "instrument" V.iter (logging : logger :> V.visitor  );
  St.time "expand-opr" M.expand_opr dx;
