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
(* Android                                                             *)
(***********************************************************************)

module St = Stats

module J = Java
module I = Instr
module D = Dex

module V = Visitor

module L = List
module S = String

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

  let onCreate  = "onCreate"
  let onDestroy = "onDestroy"
  let onResume  = "onResume"
  let onPause   = "onPause"

  let onOptionsItemSelected = "onOptionsItemSelected"

  let query = "managedQuery"

  let clazz () = L.map J.to_java_ty [activity; service; application]
end

module Content =
struct
  let pkg = adr^"content."
  let context = pkg^"Context"
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

(* is_library : string -> bool *)
let is_library (cname: string) : bool =
     L.mem cname (Content.clazz ())
  || L.mem cname (Content.PM.clazz ())
  || L.mem cname (App.clazz ())
  || L.mem cname (Location.clazz ())
  || L.mem cname (OS.clazz ())
  || L.mem cname (Preference.clazz ())
  || L.mem cname (Util.clazz ())

(* is_abstract : string -> bool *)
let is_abstract (mname: string) : bool =
     L.mem mname (View.view_abstract ())
  || L.mem mname (View.KeyEvent.key_abstract ())
  || L.mem mname (View.MenuItem.menu_abstract ())

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
