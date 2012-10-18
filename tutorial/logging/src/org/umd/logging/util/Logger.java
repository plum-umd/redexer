/* Copyright (c) 2010-2012,
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
 */

/*
 * Prototype logging class to dump log information included in manually instrumented apps.
 */
package org.umd.logging.util;

import android.util.Log;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;

import java.util.HashMap;
import java.util.Map;

public class Logger {
  public static final String TAG = "org.umd.logging";

  public enum AppAction {
    onCreate,
    onResume,
    onPause,
    onDestroy,

    onKeyDown,
    onKeyLongPress,
    onKeyMultiple,
    onKeyUp,

    onMenuItemClick,
    onOptionsItemSelected,

    onClick,
    onKey,
    onLongClick,
    onTouch,

    getPowerService,
    newWakeLock,
    acquireWakeLock,
    releaseWakeLock,

    SetText,
    OnBind,
    GetPreferences,
    GetPackageManager,
    GetPreference,
    SetPreference,
    OnRecieve,
    GetAlarmManager,
    SetAlarm,
    CancelAlarm,
    ImapCommand,
    GetContentResolver,
    InsertContentResolver,
    QueryContentResolver,
    QueryReadCursor,
    QueryCursorClose,
    GetAccountManager,
    GetAccountsByType,
    ScheduleRunnableOnUiThread,
    GetConnectivityManager,
    GetNetworkInfo,
    GetWifiService,
    CreateWifiLock,
    AcquireWifiLock,
    GetActiveNetworkInfo,
    OnStart,
    OnStartCommand,
    GetNotificationService,
    OnPreExecute,
    DoInBackground,
    OnProgressUpdate,
    OnPostExecute,
    NewHttpGet,
    NewHttpClient,
    HttpClientExecute,
    UseReflection,
    OnPreferenceChanged,
    StartActivity,
    OnOptionsItemSelected,
    OnCreateDialog
  }

  private static final Map<AppAction,String> actionNames;

  private static String logArgs(String... args) {
    String acc = "";
    if (args == null) return acc;
    for (String arg: args) {
      acc += " argument: " + arg;
    }
    return acc;
  }

  public static void logAction(String c, AppAction a, String... args) {
    String logged = actionNames.get(a) + " component: " + c;
    logged += logArgs(args);
    Log.i(TAG, logged);
  }

  public static void logChildAction(AppAction a, String... args) {
    String c = CallTracer.getChildClass();
    logAction(c, a, args);
  }

  public static void logAction(String c, AppAction a, KeyEvent k, String... args) {
    String logged = actionNames.get(a) + " key: " + k.getKeyCode() + " component: " + c;
    logged += logArgs(args);
    Log.i(TAG, logged);
  }

  public static void logKeyAction(AppAction a, KeyEvent k, String... args) {
    String c = CallTracer.getChildClass();
    logAction(c, a, k, args);
  }

  public static void logAction(String c, AppAction a, MenuItem m, String... args) {
    String logged = actionNames.get(a) + " menu: " + m.getTitle() + " component: " + c;
    logged += logArgs(args);
    Log.i(TAG, logged);
  }

  public static void logMenuAction(AppAction a, MenuItem m, String... args) {
    String c = CallTracer.getChildClass();
    logAction(c, a, m, args);
  }

  public static void logAction(String c, AppAction a, View v, String... args) {
    String logged = actionNames.get(a) + " view: " + v.getId() + " component: " + c;
    logged += logArgs(args);
    Log.i(TAG, logged);
  }

  public static void logViewAction(AppAction a, View v, String... args) {
    String c = CallTracer.getChildClass();
    logAction(c, a, v, args);
  }

  static {
    actionNames = new HashMap<AppAction,String>();

    actionNames.put(AppAction.onCreate, "on-create");
    actionNames.put(AppAction.onResume, "on-resume");
    actionNames.put(AppAction.onPause, "on-pause");
    actionNames.put(AppAction.onDestroy, "on-destroy");

    actionNames.put(AppAction.onKeyDown, "on-key-down");
    actionNames.put(AppAction.onKeyLongPress, "on-key-long-press");
    actionNames.put(AppAction.onKeyMultiple, "on-key-multiple");
    actionNames.put(AppAction.onKeyUp, "on-key-up");

    actionNames.put(AppAction.onMenuItemClick, "on-menu-item-click");
    actionNames.put(AppAction.onOptionsItemSelected, "on-menu-item-click");

    actionNames.put(AppAction.onClick, "on-click");
    actionNames.put(AppAction.onKey, "on-key");
    actionNames.put(AppAction.onLongClick, "on-long-click");
    actionNames.put(AppAction.onTouch, "on-touch");

    actionNames.put(AppAction.getPowerService, "get-power-service");
    actionNames.put(AppAction.newWakeLock, "new-wake-lock");
    actionNames.put(AppAction.acquireWakeLock, "acquire-wake-lock");
    actionNames.put(AppAction.releaseWakeLock, "release-wake-lock");

    actionNames.put(AppAction.SetText, "set-text");
    actionNames.put(AppAction.GetPreferences, "get-preferences");
    actionNames.put(AppAction.GetPackageManager, "get-package-manager");
    actionNames.put(AppAction.GetPreference, "get-preference");
    actionNames.put(AppAction.SetPreference, "set-preference");
    actionNames.put(AppAction.OnRecieve, "on-recieve");
    actionNames.put(AppAction.GetAlarmManager, "get-alarm-manager");
    actionNames.put(AppAction.CancelAlarm, "cancel-alarm");
    actionNames.put(AppAction.ImapCommand, "imap-command");
    actionNames.put(AppAction.GetContentResolver, "get-content-resolver");
    actionNames.put(AppAction.InsertContentResolver, "insert-content-resolver");
    actionNames.put(AppAction.QueryContentResolver, "query-content-resolver");
    actionNames.put(AppAction.QueryReadCursor, "query-read-cursor");
    actionNames.put(AppAction.QueryCursorClose, "query-cursor-close");
    actionNames.put(AppAction.GetAccountManager, "get-account-manager");
    actionNames.put(AppAction.GetAccountsByType, "get-accounts-by-type");
    actionNames.put(AppAction.ScheduleRunnableOnUiThread, "schedule-runnable-on-ui-thread");
    actionNames.put(AppAction.GetConnectivityManager, "get-connectivity-manager");
    actionNames.put(AppAction.GetNetworkInfo, "get-network-info");
    actionNames.put(AppAction.GetWifiService, "get-wifi-service");
    actionNames.put(AppAction.CreateWifiLock, "create-wifi-lock");
    actionNames.put(AppAction.GetActiveNetworkInfo, "get-active-network-info");
    actionNames.put(AppAction.OnStart, "on-start");
    actionNames.put(AppAction.OnStartCommand, "on-start-command");
    actionNames.put(AppAction.GetNotificationService, "get-notification-service");
    actionNames.put(AppAction.OnPreExecute, "on-pre-execute");
    actionNames.put(AppAction.DoInBackground, "do-in-background");
    actionNames.put(AppAction.OnProgressUpdate, "on-progress-update");
    actionNames.put(AppAction.OnPostExecute, "on-post-execute");
    actionNames.put(AppAction.NewHttpClient, "new-http-client");
    actionNames.put(AppAction.HttpClientExecute, "http-client-execute");
    actionNames.put(AppAction.UseReflection, "use-reflection");
    actionNames.put(AppAction.OnPreferenceChanged, "on-preference-changed");
    actionNames.put(AppAction.StartActivity, "start-activity");
    actionNames.put(AppAction.OnCreateDialog, "on-create-dialog");
    actionNames.put(AppAction.OnOptionsItemSelected, "on-options-item-selected");
  }
}
