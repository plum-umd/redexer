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
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Member;

import java.net.URL;

import java.text.SimpleDateFormat;

import java.io.FileOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.BufferedOutputStream;

import android.widget.CheckBox;
import android.widget.RadioButton;
import android.widget.TextView;

import android.app.Activity;
import android.app.Dialog;

import android.content.Intent;
import android.content.ComponentName;

import android.view.MenuItem;
import android.view.View;

import android.net.Uri;

import android.os.Environment;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.graphics.Paint;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.Canvas;

import org.umd.logging.FragmentMapper;

public class Logger {
  private static Activity current_activity = null;
  final static String tag = Logger.class.getPackage().getName();
  static final Set<Class> WRAPPER_TYPES = new HashSet(Arrays.asList(
                                    Boolean.class, Character.class, Byte.class, Short.class, Integer.class,
                                    Long.class, Float.class, Double.class, Void.class));
  static boolean isWrapperType(Class clazz) {
    return WRAPPER_TYPES.contains(clazz);
  }
    
  static String getExtraString(Bundle bundle){
      String bundleStr = "";
      for (String key : bundle.keySet()) {
          Object value = bundle.get(key);
          String value_str = "None";
          if(value != null){
              value.toString().replace("\n"," ").replace(",","");
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
          String file = takeScreenshot(null, "back button");
          s_arg += "<file=" + file + ">";
        }else if(mname.equals("onResume")){
          current_activity = (Activity)arg;
        }
      //Check if first argument is a fragment
      }else if(argCount == 0 && FragmentMapper.getInstance().isFragment(arg.getClass())){
        s_arg = arg.getClass().getName() + "@" + System.identityHashCode(arg) + "<fragment=true>";
      //Check if first argument is an asynctask object
      
      }else if(argCount == 0 && arg instanceof AsyncTask){
        s_arg = arg.getClass().getName() + "@" + System.identityHashCode(arg) + "<atask=true>";
      }else if(arg.getClass().getName().equals("com.facebook.GraphRequestBatch") && mname.contains("execute")){
        Class request_batch_c = arg.getClass();
        s_arg = arg.getClass().getName() + "@" + System.identityHashCode(arg);
        try{
            //Log.i(tag, "RequestBatch Class Name: " + request_batch_c.getName());
            for(Field request_batch_f : request_batch_c.getDeclaredFields()){
                //Log.i(tag, "RequestBatch Declared Field Type: " + request_batch_f.getType().getName());
                if(request_batch_f.getType().getName().contains("java.util.List")){
                    request_batch_f.setAccessible(true);
                    ArrayList<Object> request_list = (ArrayList<Object>)request_batch_f.get(arg);
                    if(request_list.size() > 0 && request_list.get(0).getClass().getName().equals("com.facebook.GraphRequest")){
                        for(Object request : request_list){
                            Class request_c = request.getClass();
                            Field httpMethod_f = request_c.getDeclaredField("httpMethod");
                            httpMethod_f.setAccessible(true);
                            String httpMethod = (String)httpMethod_f.get(request).toString();
                            Field graphPath_f = request_c.getDeclaredField("graphPath");
                            graphPath_f.setAccessible(true);
                            String graphPath = (String)graphPath_f.get(request);
                            Field parameters_f = request_c.getDeclaredField("parameters");
                            parameters_f.setAccessible(true);
                            Bundle parameters = (Bundle)parameters_f.get(request);
                            s_arg = s_arg + "<httpMethod=" + httpMethod + "><graphPath=" + graphPath + "><fields=" + parameters.getString("fields").replace(',','|') + ">";
                            //Log.i(tag,"RequestBatch toString(): " + request.toString());
                        }
                        break;
                    }
                }
            }
        } catch(IllegalAccessException|NoSuchFieldException e){
            Log.i(tag, "AccessException: " + e.getMessage());
        }
      //Try to annotate all of the arguments
      }else{
        s_arg = arg.getClass().getName() + "@" + System.identityHashCode(arg);
        
//        if(arg instanceof String && mname.contains("FACEBOOK")){
//            s_arg += "<value" + argCount + "=" + arg + ">";
//        }
        if(arg instanceof View){
          if(argCount == 0 || argCount == 1){
            try{
              String file = takeScreenshot(null,"");
              s_arg += "<file=" + file + ">";
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
          String fname = saveIcon((MenuItem)arg);
          if(fname != ""){
            s_arg += "<iconfile=" + fname + ">";
          }
          try{
            String file = takeScreenshot(null,"");
            s_arg += "<file=" + file + ">";
          }catch(Exception e){
            ;//System.out.println(e.getMessage());
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
        if(arg instanceof File){
          File sdcard = Environment.getExternalStorageDirectory();
          String sdcard_path = sdcard.getAbsolutePath();
          s_arg += "<file_path=" + ((File)arg).getAbsolutePath() + ">";
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
          if(mname.contains("FACEBOOK")){
//            Bundle parcelable_1 = (Bundle)bundle.get("com.facebook.LoginFragment:Request");
            Parcelable parcelable = bundle.getParcelable("request");
            if(parcelable != null){
                Parcel parcel = Parcel.obtain();
                parcelable.writeToParcel(parcel,0);
                parcel.setDataPosition(0);
                ArrayList<String> permissions = new ArrayList<String>();
                String loginBehavior = parcel.readString();
                parcel.readStringList(permissions);
                String perm_list = "";
                for (String perm : permissions){
                    perm_list = perm_list + "|" + perm;
                }
                perm_list = perm_list.substring(1);
                String defaultAudience = parcel.readString();
                String appID = parcel.readString();
                String authID = parcel.readString();
                byte isRequest = parcel.readByte();
                String deviceRedirectUri = parcel.readString();
                
                s_arg += "<loginBehavior=" + loginBehavior + "><permissions=" + perm_list + "><defaultAudience=" + defaultAudience + "><appID=" + appID + "><authID=" + authID + "><isRequest=" + isRequest + "><deviceRedirectUri=" + deviceRedirectUri + ">";
            }
          }
          else if(bundle != null){
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
    Log.i(tag, msg.replaceAll("\n"," "));
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
    Boolean cont = true;
    if(cname.contains("java/io/File")){
        cont = false;
        File sdcard = Environment.getExternalStorageDirectory();
        String sdcard_path = sdcard.getAbsolutePath();
        Iterator<Object> iter = Arrays.asList(args).iterator();
        while (iter.hasNext()) {
            Object arg = iter.next();
            if(arg instanceof File){
                if(((File)arg).getAbsolutePath().startsWith(sdcard_path)){
                    cont = true;
                }
            }
            else if(arg instanceof String){
                if(((String)arg).startsWith(sdcard_path)){
                    cont = true;
                }
            }
        }
    }
    if(mname.contains("startActivityForResult")){
        cont = false;
        Iterator<Object> iter = Arrays.asList(args).iterator();
        while (iter.hasNext()) {
            Object arg = iter.next();
            if(arg instanceof Intent){
                String intent_action =((Intent)arg).getAction();
                if(intent_action=="android.intent.action.GET_CONTENT" || intent_action =="android.intent.action.PICK"){
                    Bundle bundle = ((Intent)arg).getExtras();
                    if(bundle != null){
                        if(!bundle.keySet().contains("android.intent.extra.LOCAL_ONLY")){
                            mname = mname + "CONTENT";
                            cont = true;
                            break;
                        }
                    }
                }
                else if(intent_action=="android.media.action.IMAGE_CAPTURE"){
                    mname = mname + "CAMERA";
                    cont = true;
                    break;
                }
                else if(intent_action=="NATIVE_WITH_FALLBACK"){
                    mname = mname + "FACEBOOK";
                    cont = true;
                }
            }
        }
    }
    if(mname.contains("build") && cname.contains("com.google.android.gms.common.api.GoogleApiClient")){
    	cont = false;
	try{
		Object builder = (ArrayList<Object>)Arrays.asList(args).get(0);
		Class c = builder.getClass();
		Field apiMap_f = c.getField("zzagn");
		Map apiMap = (Map)apiMap_f.get(builder);
		ArrayList<String> apis = new ArrayList<String>();
		for(Object key : apiMap.keySet()){
			Class key_c = key.getClass();
			Field api_f = key_c.getField("mName");
			apis.add((String)api_f.get(key));
		}
		log("Api >", cname, mname, apis);
	} catch(IllegalAccessException|NoSuchFieldException e){
		Log.i(tag, "Exception: " + e.getMessage());
	}
    }
    if(mname.contains("query") && cname.contains("Api") && cname.contains("com.google.android.gms")){
	cont = false;
	try{
		Object query = (ArrayList<Object>)Arrays.asList(args).get(2);
		Class query_c = query.getClass();
		Field logicalFilter_f = query_c.getField("zzatV");
		Object logicalFilter = logicalFilter_f.get(query);
		Class logicalFilter_c = logicalFilter.getClass();
		Field filterList_f = logicalFilter_c.getField("zzaua");
		List<Object> filterList = (List<Object>)filterList_f.get(logicalFilter);
		ArrayList<String> filters = new ArrayList<String>();
		for(Object filter : filterList){
			Class filter_c = filter.getClass();
			Field operator_f = filter_c.getField("zzaug");
			Object operator = operator_f.get(filter);
			Class operator_c = operator.getClass();
			Field tag_f = operator_c.getField("mTag");
			String tag = (String)tag_f.get(operator);
		
			Field metadatabundle_f = filter_c.getField("zzauh");
			Object metadatabundle = metadatabundle_f.get(filter);
			Class metadatabundle_c = metadatabundle.getClass();
			Field bundle_f = metadatabundle_c.getField("zzasQ");
			Bundle bundle = (Bundle)bundle_f.get(metadatabundle);
			String bundle_text = bundle.toString();
			filters.add("Operator: " + tag + ", Filter: " + bundle_text); 
		}
		log("Api >", cname, mname, filters);
	} catch(IllegalAccessException|NoSuchFieldException e){
		Log.i(tag, "Exception: " + e.getMessage());
	}
    }
    if(cont){
        log("Api >", cname, mname, args);
    }
  }
  
  public static void logAPIExit(String cname, String mname, Object... args) {
    Boolean cont = true;
    if(cname.contains("java/io/File")){
        cont = false;
        File sdcard = Environment.getExternalStorageDirectory();
        String sdcard_path = sdcard.getAbsolutePath();
        Iterator<Object> iter = Arrays.asList(args).iterator();
        while (iter.hasNext()) {
            Object arg = iter.next();
            if(arg instanceof File){
                if(((File)arg).getAbsolutePath().startsWith(sdcard_path)){
                    cont = true;
                }
            }
            else if(arg instanceof String){
                if(((String)arg).startsWith(sdcard_path)){
                    cont = true;
                }
            }
        }
    }
    if(mname.contains("startActivityForResult")){
        cont = false;
        Iterator<Object> iter = Arrays.asList(args).iterator();
        while (iter.hasNext()) {
            Object arg = iter.next();
            if(arg instanceof Intent){
                String intent_action =((Intent)arg).getAction();
                if(intent_action=="android.intent.action.GET_CONTENT" || intent_action=="android.intent.action.PICK"){
                    Bundle bundle = ((Intent)arg).getExtras();
                    if(bundle != null){
                        if(!bundle.keySet().contains("android.intent.extra.LOCAL_ONLY")){
                            mname = mname + "CONTENT";
                            cont = true;
                            break;
                        }
                    }
                }
                else if(intent_action=="android.media.action.IMAGE_CAPTURE"){
                    mname = mname + "CAMERA";
                    cont = true;
                    break;
                }
                else if(intent_action=="NATIVE_WITH_FALLBACK"){
                    mname = mname + "FACEBOOK";
                    cont = true;
                }
            }
        }
    }
    if(cont){
        log("Api <", cname, mname, args);
    }
  }

  private static String processDialog(Dialog dialog){
    String file = takeScreenshot(dialog, "");
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
      ;//e.printStackTrace();
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
      ;//e.printStackTrace();
      return "";
    }
    return dateString;
  }
  
  private static String takeScreenshot(Dialog diag, String addon_text){
    return "";
  }

//  private static String takeScreenshot(Dialog diag, String addon_text) {
//    Date now = new Date();
//    SimpleDateFormat sdfr = new SimpleDateFormat("yyyy-MM-dd_hh:mm:ss.SSS");
//
//    String dateString = "";
//    try{
//      // getLocationOnScreen
//      dateString = sdfr.format(now);
//    } catch (Throwable e) {
//      // Several error may come out with file handling or OOM
//      ;//e.printStackTrace();
//      return "";
//    }
//    try {
//      // image naming and path  to include sd card  appending name you choose for file
//      String mPath = Environment.getExternalStorageDirectory().toString() + "/" + dateString + ".jpg";
//
//      // create bitmap screen capture
//      View v1;
//      if(diag != null){
//        v1 = diag.getWindow().getDecorView().getRootView();
//      }else if(current_activity != null){
//        v1 = current_activity.getWindow().getDecorView().getRootView();
//      }else{
//        return "";
//      }
//
//      v1.setDrawingCacheEnabled(true);
//      Bitmap bitmap = Bitmap.createBitmap(v1.getDrawingCache());
//      v1.setDrawingCacheEnabled(false);
//      if(!addon_text.equals("")){
//        bitmap = drawText(addon_text, bitmap);
//      }
//
//      File imageFile = new File(mPath);
//
//      FileOutputStream outputStream = new FileOutputStream(imageFile);
//      int quality = 90;
//      bitmap.compress(Bitmap.CompressFormat.JPEG, quality, outputStream);
//      outputStream.flush();
//      outputStream.close();
//    } catch (Throwable e) {
//      // Several error may come out with file handling or OOM
//      ;//e.printStackTrace();
//      return "";
//    }
//    return dateString;
//  }

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
