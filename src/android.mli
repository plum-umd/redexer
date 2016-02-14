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

(** This module provides utility functions for handling [Android]
    platform, for example, it provides a number of typical names for
    commonly used classes within the Android framework (helpful for
    finding and manipulating things like Buttons, for example)
*)

(** {2 Libraries} *)

module App :
sig

  (** [android.app.Activity] *)
  val activity : string

  (** [android.app.Service] *)
  val service : string

  (** [android.app.Application] *)
  val application : string

  (** [android.app.Fragment] *)
  val fragment : string

  (** [android.support.v4.app.Fragment] *)
  val v4fragment : string

  (** [android.app.ListActivity] *)
  val lst_act : string

  (** [android.app.TabActivity] *)
  val tab_act : string

  (** [onCreate] *)
  val onCreate : string

  (** [onStart] *)
  val onStart : string

  (** [onResume] *)
  val onResume : string

  (** [onPause] *)
  val onPause : string

  (** [onStop] *)
  val onStop : string

  (** [onDestroy] *)
  val onDestroy : string

  (** [onBind] *)
  val onBind : string

  (** [onRebind] *)
  val onRebind : string

  (** [onUnbind] *)
  val onUnbind : string

  (** [onCreateOptionsMenu] *)
  val onCreateOptionsMenu : string

  (** [onOptionsItemSelected] *)
  val onOptionsItemSelected : string

  (** [onBackPressed] *)
  val onBackPressed : string

  (** [setContentView] *)
  val set_view : string

  (** [findViewById] *)
  val find_view : string

  (** [managedQuery] *)
  val query : string

  (** [Activity] lifecycle methods *)
  val lifecycle_act : string list

  (** [Service] lifecycle methods *)
  val lifecycle_srv : string list

end

module Content :
sig

  (** [android.content.Context] *)
  val context : string
    
  (** [android.content.Intent] *)
  val intent : string

  (** [android.content.ContentProvider] *)
  val provider : string

  (** [android.content.ContentUris] *)
  val uris : string

  (** [android.content.Context.POWER_SERVICE] *)
  val pwr_serv : string

  (** [android.content.Context.LOCATION_SERVICE] *)
  val loc_serv : string

  (** [android.content.Context.CONNECTIVITY_SERVICE] *)
  val con_serv : string

  (** [getSystemService] *)
  val get_sys_serv : string

  (** [checkCallingOrSelfPermission] *)
  val chk_perm : string

  (** [withAppendedId] *)
  val appended : string

  (** [query] *)
  val query : string

  (** [setClass] *)
  val set_class : string

  (** [startActivity] *)
  val start_act : string

  (** [startService] *)
  val start_srv : string

  (** [content://com.android.contacts] *)
  val uri : string

  module PM :
  sig

    (** [android.content.pm.PackageManager] *)
    val pm : string

    (** [checkPermission] *)
    val chk_perm : string

  end

end

module Database :
sig

  (** [android.database.Cursor] *)
  val cursor : string

  (** [getColumnIndex] *)
  val get_col_idx : string

  (** [getColumnIndexOrThrow] *)
  val get_col_idx_e : string

end

module Location :
sig

  (** [android.location.LocationManager] *)
  val manager : string

end

module Net :
sig

  (** [android.net.Uri] *)
  val uri : string

  (** [parse] *)
  val parse : string

  (** [getHost] *)
  val getHost : string

  (** [withAppendedPath] *)
  val appended : string

end

module OS :
sig

  (** [android.os.Bundle] *)
  val bundle : string

  (** [android.os.AsyncTask *)
  val asynctask : string

  (** [android.os.IInterface] *)
  val iitf : string

  (** [onPreExecute] *)
  val onPreExecute : string
                       
  (** [AsyncTask] methods to be logged *)
  val task_methods : string list
end

module Preference :
sig

  (** [android.preference.PreferenceActivity] *)
  val activity : string

end

module Util :
sig

  (** [android.util.Log] *)
  val log : string

end

module View :
sig

  (** [android.view.KeyEvent] *)
  val key : string

  module KeyEvent :
  sig

    (** [onKeyDown] *)
    val onKeyDown : string

    (** [onKeyLongPress] *)
    val onKeyLongPress : string

    (** [onKeyMultiple] *)
    val onKeyMultiple : string

    (** [onKeyUp] *)
    val onKeyUp : string

    (** [true] if given method is one of [KeyEvent] abstracts *)
    val is_key_abstract : string -> bool

  end

  (** [android.view.MenuItem] *)
  val menu : string

  module MenuItem :
  sig

    (** [onMenuItemClick] *)
    val onMenuItemClick : string

    (** [true] if given method is one of [MenuItem] abstracts *)
    val is_menu_abstract : string -> bool

  end

  (** [android.view.View] *)
  val view : string

  (** [onClick] *)
  val onClick : string

  (** [onKey] *)
  val onKey : string

  (** [onLongClick] *)
  val onLongClick : string

  (** [onTouch] *)
  val onTouch : string

  (** [true] if given method is one of [View] abstracts *)
  val is_view_abstract : string -> bool

end

(** {2 Utilities} *)

(** [true] if given class is [Android] library *)
val is_library : string -> bool

(** [true] if given class is [Android] static library *)
val is_static_library : string -> bool

(** [true] if given method is abstract *)
val is_abstract : string -> bool

(** [true] if given class is subclass of [Context] *)
val is_context : Dex.dex -> Dex.link -> bool

(** [true] if given class is subclass of [Activity] *)
val is_activity : Dex.dex -> Dex.link -> bool

(** [true] if given class is subclass of [Fragment] *)
val is_fragment : Dex.dex -> Dex.link -> bool

(** [true] if given class implements any sorts of [Listener] *)
val is_listener : Dex.dex -> Dex.link -> bool

(** find [Activity] lifecycle methods *)
val find_lifecycle_act : Dex.dex -> Dex.link -> Dex.link list

(** [true] if given method is a setter for [Listener] *)
val is_set_listener : Dex.dex -> Dex.link -> bool

(** {2 Permissions} *)

module Permission :
sig

  (** [android.permission.INTERNET] *)
  val internet : string

  (** [android.permission.READ_CONTACTS] *)
  val read_contacts : string

  (** [android.permission.ACCESS_FINE_LOCATION] *)
  val access_fine_location : string

  (** [android.permission.ACCESS_COARSE_LOCATION] *)
  val access_coarse_location : string

  (** [android.permission.READ_PHONE_STATE] *)
  val read_phone_state : string

  (** [android.permission.WRITE_SETTINGS] *)
  val write_settings : string

  (** [android.permission.ACCESS_NETWORK_STATE] *)
  val access_network_state : string

  (** [android.permission.CHANGE_NETWORK_STATE] *)
  val change_network_state : string

end

(** {2 Ads} *)

module Ads :
sig

  (** [true] if given class is inside [Ads] package *)
  val is_ads_pkg : string -> bool

end

(** {2 Analyses} *)

(** SDK name of interest *)
val sdk : string ref

(** report API usage (including overrides) in the dex file *)
val api_usage : Dex.dex -> unit

