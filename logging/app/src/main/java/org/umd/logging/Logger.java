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

import android.util.Log;

import java.lang.Throwable;
import java.lang.Thread;
import java.lang.StackTraceElement;
import java.lang.StringBuilder;

import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.Set;
import java.util.HashSet;

import java.text.SimpleDateFormat;

import java.io.FileOutputStream;
import java.io.File;

import android.widget.CheckBox;
import android.widget.RadioButton;
import android.widget.TextView;

import android.app.Activity;
import android.app.Dialog;

import android.view.MenuItem;
import android.view.View;

import android.net.Uri;

import android.os.Environment;
import android.os.AsyncTask;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.graphics.Paint;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.Canvas;

import org.umd.logging.FragmentMapper;

public class Logger {
  final static String tag = Logger.class.getPackage().getName();
  static final Set<Class> WRAPPER_TYPES = new HashSet(Arrays.asList(
                                    Boolean.class, Character.class, Byte.class, Short.class, Integer.class,
                                    Long.class, Float.class, Double.class, Void.class));
  static boolean isWrapperType(Class clazz) {
    return WRAPPER_TYPES.contains(clazz);
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
        s_arg = arg.toString();
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
          String file = takeScreenshot((Activity)arg, null, "back button");
          s_arg += "<file=" + file + ">";
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
              String file = takeScreenshot(((Activity)((View)arg).getContext()),null,"");
              s_arg += "<file=" + file + ">";
              int[] location = new int[2];
              ((View)arg).getLocationOnScreen(location);
              s_arg += "<x=" + String.valueOf(location[0]) + ">";
              s_arg += "<y=" + String.valueOf(location[1]) + ">";
              s_arg += "<width=" + String.valueOf(((View)arg).getWidth()) + ">";
              s_arg += "<height=" + String.valueOf(((View)arg).getHeight()) + ">";
            }catch(Exception e){
              System.out.println(e.getMessage());
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
              System.out.println(e.getMessage());
          }
        }

        //Extract the URI
        if(arg instanceof Uri){
          s_arg += "<URI=" + ((Uri)arg).toString() + ">";
        }

        if(arg instanceof MenuItem){
          s_arg += "<id=" + ((MenuItem)arg).getItemId() + ">";
          s_arg += "<menuname=" + ((MenuItem)arg).getTitleCondensed() + ">";
          String fname = saveIcon((MenuItem)arg);
          if(fname != ""){
            s_arg += "<iconfile=" + fname + ">";
          }
        }

        //Take image of Dialog
        if(arg instanceof Dialog){
          if(argCount == 0 || argCount == 1){
            s_arg += processDialog((Dialog)arg);
          }
        }
        if(arg instanceof Thread){
          s_arg += "<thread=" + ((Thread)arg).getId() + ">";
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
    Log.i(tag, msg);
  }
  
  static void logMethod(String io, Object... args) {
    StackTraceElement elts[] = (new Throwable ()).getStackTrace();
    // 0 : org.umd.logging.Logger.logMethod
    // 1 : org.umd.logging.Logger.logMethod(Entry|Exit)
    String cname = elts[2].getClassName();
    String mname = elts[2].getMethodName();
    log("Method " + io, cname, mname, args);
  }
  
  public static void logMethodEntry(Object... args) {
    logMethod(">", args);
  }
  
  public static void logMethodExit(Object... args) {
    logMethod("<", args);
  }
  
  public static void logAPIEntry(String cname, String mname, Object... args) {
    log("Api >", cname, mname, args);
  }
  
  public static void logAPIExit(String cname, String mname, Object... args) {
    log("Api <", cname, mname, args);
  }

  private static String processDialog(Dialog dialog){
    String file = takeScreenshot(null, dialog, "");
    String s_arg = "";
    if(file != ""){
      s_arg += "<file=" + file + ">";
      int width = dialog.getWindow().getDecorView().getWidth();
      int height = dialog.getWindow().getDecorView().getHeight();
      int x = (int)dialog.getWindow().getDecorView().getX();
      int y = (int)dialog.getWindow().getDecorView().getY();
      s_arg += "<x=" + String.valueOf(x) + ">";
      s_arg += "<y=" + String.valueOf(y) + ">";
      s_arg += "<width=" + String.valueOf(width) + ">";
      s_arg += "<height=" + String.valueOf(height) + ">";
    }
    return s_arg;
  }

  private static String saveIcon(MenuItem mitem){
    Date now = new Date();
    SimpleDateFormat sdfr = new SimpleDateFormat("yyyy-MM-dd_hh:mm:ss.SSS");

    String dateString = "";
    try{
      // getLocationOnScreen
      dateString = sdfr.format(now);
    } catch (Throwable e) {
      // Several error may come out with file handling or OOM
      e.printStackTrace();
      return "";
    }
    try {
      // image naming and path  to include sd card  appending name you choose for file
      String mPath = Environment.getExternalStorageDirectory().toString() + "/" + dateString + ".jpg";

      Drawable drawable = mitem.getIcon();
      Bitmap bitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);

      Canvas canvas = new Canvas(bitmap);
      drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
      drawable.draw(canvas);

      File imageFile = new File(mPath);

      FileOutputStream outputStream = new FileOutputStream(imageFile);
      int quality = 90;
      bitmap.compress(Bitmap.CompressFormat.JPEG, quality, outputStream);
      outputStream.flush();
      outputStream.close();
    } catch (Throwable e) {
      // Several error may come out with file handling or OOM
      e.printStackTrace();
      return "";
    }
    return dateString;
  }

  private static String takeScreenshot(Activity act, Dialog diag, String addon_text) {
    Date now = new Date();
    SimpleDateFormat sdfr = new SimpleDateFormat("yyyy-MM-dd_hh:mm:ss.SSS");

    String dateString = "";
    try{
      // getLocationOnScreen
      dateString = sdfr.format(now);
    } catch (Throwable e) {
      // Several error may come out with file handling or OOM
      e.printStackTrace();
      return "";
    }
    try {
      // image naming and path  to include sd card  appending name you choose for file
      String mPath = Environment.getExternalStorageDirectory().toString() + "/" + dateString + ".jpg";

      // create bitmap screen capture
      View v1;
      if(act != null){
        v1 = act.getWindow().getDecorView().getRootView();
      }else{
        v1 = diag.getWindow().getDecorView().getRootView();
      }
      v1.setDrawingCacheEnabled(true);
      Bitmap bitmap = Bitmap.createBitmap(v1.getDrawingCache());
      v1.setDrawingCacheEnabled(false);
      if(!addon_text.equals("")){
        bitmap = drawText(addon_text, bitmap);
      }

      File imageFile = new File(mPath);

      FileOutputStream outputStream = new FileOutputStream(imageFile);
      int quality = 90;
      bitmap.compress(Bitmap.CompressFormat.JPEG, quality, outputStream);
      outputStream.flush();
      outputStream.close();
    } catch (Throwable e) {
      // Several error may come out with file handling or OOM
      e.printStackTrace();
      return "";
    }
    return dateString;
  }

  private static Bitmap drawText(String text, Bitmap bitmap){
    android.graphics.Bitmap.Config bitmapConfig =
      bitmap.getConfig();
    // set default bitmap config if none
    if(bitmapConfig == null) {
      bitmapConfig = android.graphics.Bitmap.Config.ARGB_8888;
    }
    // resource bitmaps are imutable, 
    // so we need to convert it to mutable one
    bitmap = bitmap.copy(bitmapConfig, true);
    
    Canvas canvas = new Canvas(bitmap);
    // new antialised Paint
    Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
    // text color - #3D3D3D
    paint.setColor(Color.rgb(61, 61, 61));
    // text size in pixels
    paint.setTextSize((int) (14 * 5));
    // text shadow
    paint.setShadowLayer(1f, 0f, 1f, Color.WHITE);
    
    // draw text to the Canvas center
    Rect bounds = new Rect();
    paint.getTextBounds(text, 0, text.length(), bounds);
    int x = (bitmap.getWidth() - bounds.width())/2;
    int y = (bitmap.getHeight() + bounds.height())/2;
    
    canvas.drawText(text, x, y, paint);
    
    return bitmap;
  }
  
}
