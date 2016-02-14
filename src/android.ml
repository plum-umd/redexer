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
(* Android                                                             *)
(***********************************************************************)

module St = Stats

module U = Util

module J = Java
module I = Instr
module D = Dex

module V = Visitor

module L = List
module S = String

module Pf = Printf

(***********************************************************************)
(* Libraries                                                           *)
(***********************************************************************)

let adr = "android."

module App =
struct
  let pkg = adr^"app."
  let activity = pkg^"Activity"
  let service = pkg^"Service"
  let application = pkg^"Application"

  let fragment = pkg^"Fragment"
  let v4fragment = adr^"support.v4.app.Fragment"

  let lst_act = pkg^"ListActivity"
  let tab_act = pkg^"TabActivity"

  let onCreate  = "onCreate"
  let onStart   = "onStart"
  let onResume  = "onResume"
  let onPause   = "onPause"
  let onStop    = "onStop"
  let onDestroy = "onDestroy"

  let onBind   = "onBind"
  let onRebind = "onRebind"
  let onUnbind = "onUnbind"

  let onCreateOptionsMenu   = "onCreateOptionsMenu"
  let onOptionsItemSelected = "onOptionsItemSelected"

  let onBackPressed = "onBackPressed"

  let set_view = "setContentView"
  let find_view = "findViewById"
  let query = "managedQuery"

  let clazz () = L.map J.to_java_ty [activity; service; application]

  let lifecycle_act = [onCreate; onStart; onResume; onPause; onStop; onDestroy]
  let lifecycle_srv = [onCreate; onBind; onRebind; onUnbind; onDestroy]
end

module Content =
struct
  let pkg = adr^"content."
  let context = pkg^"Context"
  let intent = pkg^"Intent"
  let provider = pkg^"ContentProvider"
  let uris = pkg^"ContentUris"

  let clazz () = L.map J.to_java_ty [context; provider; uris]

  let pwr_serv = "power"
  let loc_serv = "location"
  let con_serv = "connection"

  let get_sys_serv = "getSystemService"
  let chk_perm = "checkCallingOrSelfPermission"
  let appended = "withAppendedId"
  let query = "query"

  let set_class = "setClass"
  let start_act = "startActivity"
  let start_srv = "startService"

  let uri = "content://com.android.contacts"

  module PM =
  struct
    let pkg = adr^"content.pm."
    let pm = pkg^"PackageManager"

    let clazz () = L.map J.to_java_ty [pm]

    let chk_perm = "checkPermission"
  end
end

module Database =
struct
  let pkg = adr^"database."
  let cursor = pkg^"Cursor"

  let get_col_idx   = "getColumnIndex"
  let get_col_idx_e = "getColumnIndexOrThrow"
end

module Location =
struct
  let pkg = adr^"location."
  let manager = pkg^"LocationManager"

  let clazz () = L.map J.to_java_ty [manager]
end

module Net =
struct
  let pkg = adr^"net."
  let uri = pkg^"Uri"

  let parse = "parse"
  let getHost = "getHost"
  let appended = "withAppendedPath"

  let clazz () = L.map J.to_java_ty [uri]
end

module OS =
struct
  let pkg = adr^"os."
  let bundle = pkg^"Bundle"
  let iitf = pkg^"IInterface"
  let asynctask = pkg^"AsyncTask"
                        
  let onPreExecute = "onPreExecute"

  let task_methods = [onPreExecute]

  let clazz () = L.map J.to_java_ty [bundle]
end

module Preference =
struct
  let pkg = adr^"preference."
  let activity = pkg^"PreferenceActivity"

  let clazz () = L.map J.to_java_ty [activity]
end

module Util =
struct
  let pkg = adr^"util."
  let log = pkg^"Log"

  let clazz () = L.map J.to_java_ty [log]
end

module View =
struct
  let pkg = adr^"view."

  let key = pkg^"KeyEvent"
  module KeyEvent =
  struct
    let onKeyDown      = "onKeyDown"
    let onKeyLongPress = "onKeyLongPress"
    let onKeyMultiple  = "onKeyMultiple"
    let onKeyUp        = "onKeyUp"

    let key_abstract () = [onKeyDown; onKeyLongPress; onKeyMultiple; onKeyUp]

    let is_key_abstract (mname: string) : bool =
      L.mem mname (key_abstract ())
  end

  let menu = pkg^"MenuItem"
  module MenuItem =
  struct
    let onMenuItemClick = "onMenuItemClick"

    let menu_abstract () = [onMenuItemClick; App.onOptionsItemSelected]

    let is_menu_abstract (mname: string) : bool =
      L.mem mname (menu_abstract ())
  end

  let view = pkg^"View"

  let onClick     = "onClick"
  let onKey       = "onKey"
  let onLongClick = "onLongClick"
  let onTouch     = "onTouch"

  let view_abstract () = [onClick; onKey; onLongClick; onTouch]

  let is_view_abstract (mname: string) : bool =
    L.mem mname (view_abstract ())
end

(***********************************************************************)
(* Utilities                                                           *)
(***********************************************************************)

(* is_library : string -> bool *)
let is_library (cname: string) : bool =
     L.mem cname (Content.clazz ())
  || L.mem cname (Content.PM.clazz ())
  || L.mem cname (App.clazz ())
  || L.mem cname (Location.clazz ())
  || L.mem cname (OS.clazz ())
  || L.mem cname (Preference.clazz ())
  || L.mem cname (Util.clazz ())

(* is_static_library : string -> bool *)
let is_static_library (cname: string) : bool =
     U.begins_with cname "android.support"
  || U.begins_with cname "com.google"

(* is_abstract : string -> bool *)
let is_abstract (mname: string) : bool =
     L.mem mname (View.view_abstract ())
  || L.mem mname (View.KeyEvent.key_abstract ())
  || L.mem mname (View.MenuItem.menu_abstract ())

(** check whether the given class extends the given sort *)
let ext_sort (dx: D.dex) (sort: string) (cid: D.link) : bool =
  let ends_w_sort cid' =
    U.ends_with (D.get_ty_str dx cid') (sort^";")
  in
  D.in_hierarchy dx ends_w_sort (D.get_superclass dx cid)

(** check whether the given class implements the given sort *)
let impl_sort (dx: D.dex) (sort: string) (cid: D.link) : bool =
  let ends_w_sort cid' =
    U.ends_with (D.get_ty_str dx cid') (sort^";")
  in
  L.exists ends_w_sort (D.get_interfaces dx cid)

(* ... extends ...Context { ... } *)
(* is_context : D.dex -> D.link -> bool *)
let is_context (dx: D.dex) (cid: D.link) : bool =
  ext_sort dx "Context" cid

(* ... extends ...Activity { ... } *)
(* is_activity : D.dex -> D.link -> bool *)
let is_activity (dx: D.dex) (cid: D.link) : bool =
  ext_sort dx "Activity" cid

(* ... extends ...Fragment { ... } *)
(* is_fragment : D.dex -> D.link -> bool *)
let is_fragment (dx: D.dex) (cid: D.link) : bool =
  ext_sort dx "Fragment" cid

(* ... implements ...Listener { ... } *)
(* is_listener : D.dex -> D.link -> bool *)
let is_listener (dx: D.dex) (cid: D.link) : bool =
  impl_sort dx "Listener" cid

(* find_lifecycle_act : D.dex -> D.link -> D.link list *)
let find_lifecycle_act (dx: D.dex) (cid: D.link) : D.link list =
  let mid_folder mname acc =
    try
      let mid, _ = D.get_the_mtd dx cid mname in
      mid :: acc
      (* if D.own_the_mtd dx cid mid then mid :: acc else acc *)
    with D.Wrong_dex _ -> acc
  in
  L.fold_right mid_folder App.lifecycle_act []

(* android...set...Listener() *)
(* is_set_listener : D.dex -> D.link -> bool *)
let is_set_listener (dx: D.dex) (mid: D.link) : bool =
  let cid = D.get_cid_from_mid dx mid in
  let cname = D.get_ty_str dx cid
  and mname = D.get_mtd_name dx mid in
  U.begins_with cname "Landroid" &&
  U.begins_with mname "set" &&
  L.exists (U.ends_with mname) ["Listener"; "Items"; "Button"]

(***********************************************************************)
(* Permissions                                                         *)
(***********************************************************************)

module Permission =
struct
  let perm = adr^"permission."
  let internet               = perm^"INTERNET"
  let read_contacts          = perm^"READ_CONTACTS"
  let access_fine_location   = perm^"ACCESS_FINE_LOCATION"
  let access_coarse_location = perm^"ACCESS_COARSE_LOCATION"
  let read_phone_state       = perm^"READ_PHONE_STATE"
  let write_settings         = perm^"WRITE_SETTINGS"
  let access_network_state   = perm^"ACCESS_NETWORK_STATE"
  let change_network_state   = perm^"CHANGE_NETWORK_STATE"
end

(***********************************************************************)
(* Ads                                                                 *)
(***********************************************************************)

module Ads =
struct
  let admob = "admob"
  let g_ads = "google.ads"
  let flury = "flurry"
  let g_anl = "google.analytics"
  let mille = "millennialmedia"
  let mobcx = "mobclix"
  let whirl = "adwhirl"
  let qwapi = "qwapi"
  let youmi = "youmi"
  let mobfx = "mobfox"
  let zestz = "zestadz"
  let cauly = "cauly"
  let inmob = "inmobi"
  let woboo = "wooboo"
  let marvl = "admarvel"
  let smato = "smaato"
  let mobck = "mobclick"
  let nobot = "jp.co.nobot"
  let apush = "airpush"
  let mdotm = "mdotm"

  let ads = [admob; g_ads; flury; g_anl; mille; mobcx; whirl; qwapi; youmi;
    mobfx; zestz; cauly; inmob; woboo; marvl; smato; mobck; nobot; apush; mdotm]

  let is_ads_pkg (cname: string) : bool =
    let cname = J.of_java_ty cname in
    L.exists (fun ads -> U.contains cname ads) ads

end

(***********************************************************************)
(* API usage                                                           *)
(***********************************************************************)

let sdk = ref "android."

let begins_w_sdk cname : bool =
  U.begins_with cname !sdk

class api_visitor (dx: D.dex) =
object
  inherit V.iterator dx

  val mutable cur_cname = ""
  method v_cdef (cdef: D.class_def_item) : unit =
    (* set up the current class *)
    cur_cname <- J.of_java_ty (D.get_ty_str dx cdef.D.c_class_id);
    skip_cls <- is_static_library cur_cname || Ads.is_ads_pkg cur_cname
             || begins_w_sdk cur_cname (* to avoid SDK itself *)

  val mutable cur_mname = ""
  method v_emtd (emtd: D.encoded_method) : unit =
    (* set up the current method *)
    cur_mname <- D.get_mtd_name dx emtd.D.method_idx;
    let mid = emtd.D.method_idx in
    let cid = D.get_cid_from_mid dx mid in
    let s_mid = D.get_supermethod dx cid mid in
    if s_mid <> D.no_idx then
    (
      let s_cid = D.get_cid_from_mid dx s_mid in
      let s_cname = J.of_java_ty (D.get_ty_str dx s_cid) in
      let s_mname = D.get_mtd_name dx s_mid in
      if begins_w_sdk s_cname && 0 <> S.compare s_mname J.init then
      (
        Log.i (Pf.sprintf "at %s.%s" cur_cname cur_mname);
        Log.i (Pf.sprintf "override: %s.%s" s_cname s_mname)
      )
    )

  method v_ins (ins: D.link) : unit =
    if not (D.is_ins dx ins) then () else
      let op, opr = D.get_ins dx ins in
      match I.access_link op with
      | I.METHOD_IDS (* super call would be captured as 'override' *)
        when not (L.mem op [I.OP_INVOKE_SUPER; I.OP_INVOKE_SUPER_RANGE]) ->
      (
        let mid = D.opr2idx (U.get_last opr) in
        let cid = D.get_cid_from_mid dx mid in
        let cname = J.of_java_ty (D.get_ty_str dx cid) in
        let mname = D.get_mtd_name dx mid in
        if begins_w_sdk cname && 0 <> S.compare mname J.init then
        (
          Log.i (Pf.sprintf "at %s.%s" cur_cname cur_mname);
          Log.i (Pf.sprintf "invoke: %s.%s" cname mname)
        )
      )
      | _ -> ()
end

(* api_usage : D.dex -> unit *)
let api_usage (dx: D.dex) : unit =
  V.iter (new api_visitor dx)

