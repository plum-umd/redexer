package org.umd.logging;

import java.lang.reflect.Array;
import java.net.URL;
import java.util.Arrays;
import java.util.HashMap;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.lang.Thread;

import java.io.File;
import java.io.FileWriter;
import java.io.BufferedWriter;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;

import android.os.Environment;
import android.view.MenuItem;
import android.view.View;
import android.widget.CheckBox;
import android.widget.RadioButton;
import android.widget.TextView;

public class FileWriterHandler implements Runnable{
    private ConcurrentLinkedQueue<Object[]> pipe;
    private BufferedWriter out;
    private static Activity current_activity = null;
    static Thread thread = null;
    final static String tag = Logger.class.getPackage().getName();
    static AtomicInteger mIntentKey = new AtomicInteger();

    public FileWriterHandler(ConcurrentLinkedQueue<Object[]> p){
        pipe = p;
        try{
            File root = Environment.getExternalStorageDirectory();
            Log.i(tag, root.getAbsolutePath() +"/" + root.getName());
            File  LogFile = new File(root, "Log.txt");
            FileWriter LogWriter = new FileWriter(LogFile, true);
            out = new BufferedWriter(LogWriter, 65536);
        }catch(IOException e){
                Log.i(tag, "logging error");
                e.printStackTrace();
        }
    }

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
                value_str = value.toString().replace("\n"," ").replace(",","");
            }
            bundleStr += String.format("<%s=%s>", key, value_str);
        }
        if(bundleStr.equals("")){
            bundleStr = "<extras=NONE>";
        }
        return bundleStr;
    }
    
    static String ofJavaTy(String cname) {
        String sanitized = cname;
        if (cname.startsWith("L") && cname.endsWith(";")) {
          sanitized = cname.substring(1, cname.length() - 1).replace('/','.');
        }
        return sanitized;
    }

    public void run() {
        while(true){
            // Block background thread and wait for data to process.
            try {
                Object[] args = pipe.poll();
                if (args == null) {
                    continue;
                }
                //for(int i = 0; i<args.length; i++){
                //    Log.i(tag, i + " = " + args[i]);
                //}
                //Log.i(tag, "here" + args[0]);
                String io = (String) args[0];
                long id = (Long)args[1];
                String cname = ofJavaTy((String)args[2]);
                String mname = (String)args[3];
                    // Block entry
                    if (io == "b") {
                        out.write("BBEntry " + id + " " + args[4]);
                        out.newLine();
                        continue;
                    }
                    //String fullname = (String)args[1];
                    //Log.i(tag, "fullname = " + fullname);
                    //String[] parts = fullname.split("->");
                    //String cname = ofJavaTy(parts[0]);
                    //String mname = parts[1];
                    else if (io == "m") {
                      out.write("Method > " + id + " " + cname + "." + mname + "(");
                        //out.write("Method " + cname + "." + mname + "(");
                    } else if (io == "e") {
                      out.write("Method < " + id + " " + cname + "." + mname + "(");
                    } else if (io == "a") {
                        out.write("API > " + id + " " + cname + "." + mname + "(");
                        //out.write("API " + cname + "." + mname + "(");
                    } else {
                        out.write("API < " + id + " " + cname + "." + mname + "(");
                    }
                
                    // Method entry / API call
                    for (int i = 4; i < args.length; i++) {
                        String s_arg;
                        Object arg = args[i];
                        int argCount = i-4;
                        if (arg == null) {
                            s_arg = "null";
                        } else if (isWrapperType(arg.getClass())) {
                            //s_arg = System.identityHashCode(arg) + "&" + arg.toString();
                            s_arg = System.identityHashCode(arg) + "&" + arg.getClass().getName() + "@" + System.identityHashCode(arg);
                            //Check if first argument is a string
                        } else if (arg.getClass() == String.class) {
                            s_arg = "\"\"";
                            //Check if it a class object
                        } else if (arg.getClass() == Class.class) {
                            s_arg = ((Class) arg).getName();
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
                        } else {
                            s_arg = arg.getClass().getName() + "@" + System.identityHashCode(arg);

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
                                s_arg += "<action=" + ((Intent) arg).getAction() + ">";
//                                s_arg += "<data=" + ((Intent) arg).getDataString() + ">";
                                s_arg += "<package=" + ((Intent) arg).getPackage() + ">";
                                ComponentName comp_name = (ComponentName) ((Intent) arg).getComponent();
                                if (comp_name != null)
                                    s_arg += "<component=" + ((ComponentName) ((Intent) arg).getComponent()).flattenToShortString() + ">";
                                else
                                    s_arg += "<component=null>";
                                s_arg += "<type=" + ((Intent) arg).getType() + ">";
                                s_arg += "<filter_hashcode=" + ((Intent) arg).filterHashCode() + ">";
                                Bundle bundle = ((Intent) arg).getExtras();
                                if (bundle != null) {
                                    if (!bundle.keySet().contains("umd_Intent_key")) {
                                        ((Intent) arg).putExtra("umd_Intent_key", mIntentKey.getAndIncrement());
                                        bundle = ((Intent) arg).getExtras();
                                    }
                                    s_arg += getExtraString(bundle);
                                } else {
                                    ((Intent) arg).putExtra("umd_Intent_key", mIntentKey.getAndIncrement());
                                    s_arg += getExtraString(((Intent) arg).getExtras());
                                }
                            }
                        }
                        out.write(s_arg);
                        if(i<args.length-1){
                            out.write(",");
                        }
                    }
                    out.write(")");
                    out.newLine();
//                    out.flush();
                } catch(IOException e){
                    Log.i(tag, "logging error");
                    e.printStackTrace();
                }
        }
    }


  }
