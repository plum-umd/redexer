/* Copyright (c) 2010-2014,
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
 * General logging class to dump log information included in instrumented apps
 */

package org.umd.logging;

import java.lang.Thread;
import java.util.Arrays;
import java.util.Set;
import java.util.HashSet;
import java.util.ArrayList;
import java.io.BufferedWriter;
import android.app.Activity;
import android.content.Intent;
import java.io.File;
import android.view.View;
import android.os.AsyncTask;
import android.widget.TextView;
import android.widget.RadioButton;
import android.widget.CheckBox;
import android.net.Uri;
import java.net.URL;
import android.view.MenuItem;
import android.app.Dialog;
import android.os.Environment;
import android.content.ComponentName;
import android.os.Bundle;
import java.util.Iterator;
import java.lang.reflect.Array;

public class Logger {
  private int MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE = 0;
  private static Activity current_activity = null;
  final static String tag = Logger.class.getPackage().getName();
  static final Set<Class> WRAPPER_TYPES = new HashSet(Arrays.asList(
                                    Boolean.class, Character.class, Byte.class, Short.class, Integer.class,
                                    Long.class, Float.class, Double.class, Void.class));
  static BufferedWriter out = null;
  static ArrayList<String> pipe = null;
  static Thread thread = null;
  static boolean isWrapperType(Class clazz) {
    return WRAPPER_TYPES.contains(clazz);
  }
  
  //Setup when onCreate or onResume are called and save when onPause and on Stop are logged (for the main class)
  private static void writeLog(String msg){
//        if (PackageManager.checkPermission("android.permission.WRITE_EXTERNAL_STORAGE",tag) != 0) {
//            ActivityCompat.requestPermissions(current_activity.getApplicationContext(), new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"},
//                MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE);
//        }
         if(pipe == null){
                pipe = new ArrayList<String>();
         }
         if(thread == null){
                thread = new Thread(new FileWriterHandler(pipe));
                thread.start();
         }
         
         //Date date = new Date();
         //out.write("Logged at" + String.valueOf(date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds() + "\n"));
         pipe.add(msg);
        //}
  }

  static String getExtraString(Bundle bundle){
      String bundleStr = "";
      for (String key : bundle.keySet()) {
          Object value = bundle.get(key);
          String value_str = "None";
          if(value != null){
              value_str = value.toString().replace("\n"," ").replace(",","");
          }
          bundleStr += String.format("<%s=%s>", key, value_str);
      }
      if(bundleStr.equals("")){
          bundleStr = "<extras=NONE>";
      }
      return bundleStr;
  }
  
  static String join(Iterable<Object> args, String delimiter, String mname) {
    StringBuilder buf = new StringBuilder();
    Iterator<Object> iter = args.iterator();
    int argCount = 0;
    while (iter.hasNext()) {
      Object arg = iter.next();
      String s_arg = "";
      if (arg == null) {
        s_arg = "null";
      } else if (isWrapperType(arg.getClass())) {
        s_arg = System.identityHashCode(arg) + "&" + arg.toString();
      //Check if first argument is a string
      } else if (arg.getClass() == String.class) {
        s_arg = "\"" + ((String)arg).replace("\n","\\n") + "\"";
      //Check if it a class object
      } else if (arg.getClass() == Class.class) {
        s_arg = ((Class)arg).getName();
      //Check if first argument is an activity
      }else if(argCount == 0 && arg instanceof Activity){
        s_arg = arg.getClass().getName() + "@" + System.identityHashCode(arg) + "<activity=true>";
        if(mname.equals("onBackPressed")){
//          String file = takeScreenshot(null, "back button");
//          s_arg += "<file=" + file + ">";
        }else if(mname.equals("onResume")){
          current_activity = (Activity)arg;
        }
      //Check if first argument is a fragment
      }else if(argCount == 0 && FragmentMapper.getInstance().isFragment(arg.getClass())){
        s_arg = arg.getClass().getName() + "@" + System.identityHashCode(arg) + "<fragment=true>";
      //Check if first argument is an asynctask object
      }else if(argCount == 0 && arg instanceof AsyncTask){
        s_arg = arg.getClass().getName() + "@" + System.identityHashCode(arg) + "<atask=true>";
      //Try to annotate all of the arguments
      }else{
        s_arg = arg.getClass().getName() + "@" + System.identityHashCode(arg);
        if(arg instanceof View){
          if(argCount == 0 || argCount == 1){
            try{
//              String file = takeScreenshot(null,"");
//              s_arg += "<file=" + file + ">";
              int[] location = new int[2];
              ((View)arg).getLocationOnScreen(location);
              s_arg += "<x=" + String.valueOf(location[0]) + ">";
              s_arg += "<y=" + String.valueOf(location[1]) + ">";
              s_arg += "<width=" + String.valueOf(((View)arg).getWidth()) + ">";
              s_arg += "<height=" + String.valueOf(((View)arg).getHeight()) + ">";
            }catch(Exception e){
              ;//System.out.println(e.getMessage());
            }
          }
          
          //TextView and specific subclasses
          if(arg instanceof TextView){
            s_arg += "<text=" + ((TextView)arg).getText() + ">";
            if(arg instanceof RadioButton){
              s_arg += "<value=" + ((RadioButton)arg).isChecked() + ">";
            }else if(arg instanceof CheckBox){
              s_arg += "<value=" + ((CheckBox)arg).isChecked() + ">";
            }
          }

          try{
            s_arg += "<id=" + ((View)arg).getId() + ">"; //This is unique per app
            s_arg += "<imagename=" + ((View)arg).getResources().getResourceEntryName(((View)arg).getId()) + ">";
          }catch(Exception e){
            ;//System.out.println(e.getMessage());
          }
        }

        //Extract the URI
        if(arg instanceof Uri){
          s_arg += "<URI=" + ((Uri)arg).toString() + ">";
        }

        //Extract the URL
        if(arg instanceof URL){
          s_arg += "<URL=" + ((URL)arg).toString() + ">";
        }

        if(arg instanceof MenuItem){
          s_arg += "<id=" + ((MenuItem)arg).getItemId() + ">";
          s_arg += "<menuname=" + ((MenuItem)arg).getTitleCondensed() + ">";
//          String fname = saveIcon((MenuItem)arg);
//          if(fname != ""){
//            s_arg += "<iconfile=" + fname + ">";
//          }
//          try{
////            String file = takeScreenshot(null,"");
//            s_arg += "<file=" + file + ">";
//          }catch(Exception e){
//            ;//System.out.println(e.getMessage());
//          }
        }

        //Take image of Dialog
//        if(arg instanceof Dialog){
//          if(argCount == 0 || argCount == 1){
//            s_arg += processDialog((Dialog)arg);
//          }
//        }
        if(arg instanceof Thread){
          s_arg += "<thread=" + ((Thread)arg).getId() + ">";
        }
        if(arg instanceof File){
          File sdcard = Environment.getExternalStorageDirectory();
          String sdcard_path = sdcard.getAbsolutePath();
          s_arg += "<file_path=" + ((File)arg).getAbsolutePath() + ">";
        }
        if (arg.getClass().isArray()) {
          s_arg += "<array_length=" + Array.getLength(arg) + ">";
        }
        if(arg instanceof Intent && ((Intent)arg).getAction()!="android.intent.action.VIEW" && ((Intent)arg).getAction()!="android.intent.action.MAIN"){
          s_arg += "<action=" + ((Intent)arg).getAction() + ">";
          s_arg += "<data=" + ((Intent)arg).getDataString() + ">";
          s_arg += "<package=" + ((Intent)arg).getPackage() + ">";
          ComponentName comp_name = (ComponentName)((Intent)arg).getComponent();
          if(comp_name != null)
              s_arg += "<component=" + ((ComponentName)((Intent)arg).getComponent()).flattenToShortString() +">";
          else
              s_arg += "<component=null>";
          s_arg += "<type=" + ((Intent)arg).getType() + ">";
          s_arg += "<filter_hashcode=" + ((Intent)arg).filterHashCode() + ">";
          Bundle bundle = ((Intent)arg).getExtras();
          if(bundle != null){
              if(!bundle.keySet().contains("umd_Intent_key")){
                  ((Intent)arg).putExtra("umd_Intent_key",System.currentTimeMillis());
                  bundle = ((Intent)arg).getExtras();
              }
              s_arg += getExtraString(bundle);
          }
          else{
              ((Intent)arg).putExtra("umd_Intent_key",System.currentTimeMillis());
              s_arg += getExtraString(((Intent)arg).getExtras());
          }
          
        }
      }

      buf.append(s_arg);
      if (!iter.hasNext())
        break;
      buf.append(delimiter);
      argCount++;
    }
    return buf.toString();
  }
  
  static String ofJavaTy(String cname) {
    String sanitized = cname;
    if (cname.startsWith("L") && cname.endsWith(";")) {
      sanitized = cname.substring(1, cname.length() - 1).replace('/','.');
    }
    return sanitized;
  }
  
  static void log(String io, String cname, String mname, Object... args) {
    String s_args = join(Arrays.asList(args), ", ", mname);
    long threadId = Thread.currentThread().getId();
    String msg = io + " " + threadId + " " + ofJavaTy(cname) + "." + mname + "(" + s_args + ")";
    //Log.i(tag, msg.replaceAll("\n"," "));
    writeLog(msg.replaceAll("\n"," "));
  }
  
  static void logMethod(String io, Object... args) {
    StackTraceElement elts[] = (new Throwable ()).getStackTrace();
    // 0 : org.umd.logging.Logger.logMethod
    // 1 : org.umd.logging.Logger.logMethod(Entry|Exit)
    String cname = elts[2].getClassName();
    String mname = elts[2].getMethodName();
    log("Method " + io, cname, mname, args);
//    writeLog("Method " + io + " " + "TODO");
  }

  public static void logBasicBlockEntry(int arg) {
    writeLog(String.valueOf(arg));
  }

//  public static String objToString(Object obj) {
//    String arg;
//    if (obj == null) {
//      arg = "null";
//    } else if (isWrapperType(obj.getClass())) {
//      arg = obj.toString();
//      //Check if first objument is a string
//    } else if (obj.getClass() == String.class) {
//      arg = "\"" + ((String)obj).replace("\n","\\n") + "\"";
//      //Check if it a class object
//    } else if (obj.getClass() == Class.class) {
//      arg = ((Class)obj).getName();
//      //Check if first objument is an activity
//    } else {
//      arg = obj.getClass().getName() + "@" + System.identityHashCode(obj);
//    }
//    return arg;
//  }

  public static void logMethodEntry(String cname, String mname, Object... args) {
    logMethod(">", args);
  }
  
  public static void logMethodExit(Object... args) {
    logMethod("<", args);
  }
  
  public static void logAPIEntry(String cname, String mname, Object... args) {
    writeLog("Api > " + cname + mname);
  }
  
  public static void logAPIExit(String cname, String mname, Object... args) {
    writeLog("Api < " + cname + mname);
  }

}
