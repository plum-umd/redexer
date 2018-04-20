/**
 * This file implements a utility that syncs buffers to disc. This
 * class is implemented in conjection with {@see Logger}, which writes
 * a hand-rolled binary format to a concurrent (lock-free) queue,
 * which then communicates with a set of background threads to write
 * all of the info to disc.
 */
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
import android.os.Parcel;
import android.os.Parcelable;
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
    
    // This concurrentLinkedQueue allows highly efficient
    // communication between the app and the daemon that syncs to the
    // disc
    private ConcurrentLinkedQueue<Object[]> pipe;
    
    // A hash map that holds--for each thread ID--a file to which to
    // write the output
    private HashMap<Long, BufferedWriter> outs;

    final static String tag = Logger.class.getPackage().getName();
    
    // An {@link AtomicInteger} that is attached to each intent that
    // we print out. This allows us to label the intents so that when
    // we see them reappear as arguments to other handlers, we can
    // track them and associate them with the place in which they were
    // sent into the framework.
    static AtomicInteger mIntentKey = new AtomicInteger();
    
    /** 
     * Returns a File handle unique to this thread and time.
     */ 
    static File getFileName(long threadId) {
        File root = Environment.getExternalStorageDirectory();
        File f = new File(root, "Log-" + threadId + "-" + System.currentTimeMillis() + ".txt");
        Log.i(tag, "Creating new log: " + f.getAbsolutePath());
        return f;
    }

    public FileWriterHandler(ConcurrentLinkedQueue<Object[]> p){
        pipe = p;
        try{
            File f = getFileName(1);
            FileWriter lw = new FileWriter(f, true);
            BufferedWriter out = new BufferedWriter(lw, 65536);
            outs = new HashMap();
            outs.put(new Long(1),out);
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
    
    /** 
     * Serialize each key/value pair in an Android {@link Bundle}
     * object into a textual form that will be put into the log.
     */
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
    
    /**
     * Convert a Java type name into a human-friendly type name that
     * will be identified in the log.
     * 
     * TODO: I'm not sure we really need this, because Symdroid later
     * converts this into the mangled type name again. But for now
     * we'll leave it, specifically because we might want other people
     * to use this someday.
     */ 
    static String ofJavaTy(String cname) {
        String sanitized = cname;
        if (cname.startsWith("L") && cname.endsWith(";")) {
          sanitized = cname.substring(1, cname.length() - 1).replace('/','.');
        }
        return sanitized;
    }

    /**
     * Run the main file writing loop. Continually read data from the
     * buffer and sync it to the file on disc associated with this
     * thread.
     */
    public void run() {
        while(true){
            // Block background thread and wait for data to process.
            try {
                Object[] args = pipe.poll();
                if (args == null) {
                    continue;
                }
                String io = (String) args[0];
                long id = (Long)args[1];
                String cname = ofJavaTy((String)args[2]);
                String mname = (String)args[3];
                if(!outs.containsKey(id)){
                    try{
                        File f = getFileName(id);
                        FileWriter LogWriter = new FileWriter(f, true);
                        BufferedWriter out = new BufferedWriter(LogWriter, 65536);
                        outs.put(new Long(id),out);
                    } catch(IOException e){
                        Log.i(tag, "logging error");
                        e.printStackTrace();
                    }
                }
                // Block entry
                if (io == "b") {
                    outs.get(id).write("BBEntry " + id + " " + args[4]);
                    outs.get(id).newLine();
                    continue;
                }
                //String fullname = (String)args[1];
                //Log.i(tag, "fullname = " + fullname);
                //String[] parts = fullname.split("->");
                //String cname = ofJavaTy(parts[0]);
                //String mname = parts[1];
                else if (io == "m") {
                    outs.get(id).write("Method > " + id + " " + cname + "." + mname + "(");
                    //out.write("Method " + cname + "." + mname + "(");
                } else if (io == "e") {
                    outs.get(id).write("Method < " + id + " " + cname + "." + mname + "(");
                } else if (io == "a") {
                    outs.get(id).write("API > " + id + " " + cname + "." + mname + "(");
                    //out.write("API " + cname + "." + mname + "(");
                } else {
                    outs.get(id).write("API < " + id + " " + cname + "." + mname + "(");
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
                    } else if (arg.getClass() == String.class) { // removes /n, shortens to <200 char
                        String new_arg = ((String) arg); // now it's a string
                        int new_argLength = new_arg.length();
                        String s = "";
                        String c;
                        if (new_argLength > 200) { // shortens to strings < 200 chars
                            new_arg = new_arg.substring(0,201);
                        }
                        for (int index = 0; index < new_argLength; index++) {
                            if (index == new_argLength - 1) { // last character of arg
                                s += new_arg.substring(index);
                            }
                            else {
                                c = new_arg.substring(index, index+1);
                                if (c == "/") {
                                    if (index == new_argLength - 2) { // make sure have a i+2 case
                                        if (new_arg.substring(index+1) != "n") {
                                            s += c;
                                        }
                                    }
                                    else if (new_arg.substring(index+1, index+2) == "n") { // then has new line!
                                        index += 1; // skip these two characters
                                    }
                                }
                            }
                        }
                        s_arg = "\"" + s + "\""; // put s within quotes
                        //Check if it a class object
                    } else if (arg.getClass() == Class.class) {
                        s_arg = ((Class) arg).getName();
                        //Check if first argument is an activity
                    }else if(argCount == 0 && arg instanceof Activity){
                        s_arg = arg.getClass().getName() + "@" + System.identityHashCode(arg) + "<activity=true>";
                        
                        // We used to take screenshots when the
                        // activity was changed, but we don't anymore.
                        if(mname.equals("onBackPressed")){
                            //          String file = takeScreenshot(null, "back button");
                            //          s_arg += "<file=" + file + ">";
                        }else if(mname.equals("onResume")){
                            //current_activity = (Activity)arg;
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
                            if(mname.contains("FACEBOOK")){
                                //          Bundle parcelable_1 = (Bundle)bundle.get("com.facebook.LoginFragment:Request");
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
                            if (bundle != null) {
                                if (!bundle.keySet().contains("umd_Intent_key")) {
                                    //Log.i(tag,"Bundle = " + getExtraString(((Intent) arg).getExtras()));
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
                    outs.get(id).write(s_arg);
                    if(i<args.length-1){
                        outs.get(id).write(",");
                    }
                }
                outs.get(id).write(")");
                outs.get(id).newLine();
            } catch(IOException e){
                Log.i(tag, "logging error");
                e.printStackTrace();
            }
        }
    }
  }
