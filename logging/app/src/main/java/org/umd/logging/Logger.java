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
import java.util.concurrent.ConcurrentLinkedQueue;
import java.lang.System;
import android.util.Log;

public class Logger implements LoggerI {
  final static String tag = Logger.class.getPackage().getName();
  static final Set<Class> WRAPPER_TYPES = new HashSet(Arrays.asList(
                                    Boolean.class, Character.class, Byte.class, Short.class, Integer.class,
                                    Long.class, Float.class, Double.class, Void.class));

  // The pipe that allows communicating with the background thread
  // that writes out the buffer to the disc
  static ConcurrentLinkedQueue<Object[]> pipe = null;
  static Thread thread = null;
  static boolean isWrapperType(Class clazz) {
    return WRAPPER_TYPES.contains(clazz);
  }

  public void logPut(Object[] params) {
    if(pipe == null){
        pipe = new ConcurrentLinkedQueue<Object[]>();
    }
    if(thread == null){
      thread = new Thread(new FileWriterHandler(pipe));
      thread.start();
    }
    params[2] = Thread.currentThread().getId();
    pipe.add(params);
  }
  
  void log(String io, String additional, String cname, String mname, Object... args) {
    long threadId = Thread.currentThread().getId();
    Object[] p_args = {io,additional,threadId,cname,mname};
    Object[] combinedArray = new Object[p_args.length + args.length];
    System.arraycopy(p_args, 0, combinedArray, 0, p_args.length);
    System.arraycopy(args, 0, combinedArray, p_args.length, args.length);
    logPut(combinedArray);
  }
  
  void logMethod(String io, Object... args) {
    StackTraceElement elts[] = (new Throwable ()).getStackTrace();
    // 0 : org.umd.logging.Logger.logMethod
    // 1 : org.umd.logging.Logger.logMethod(Entry|Exit)
    String cname = elts[2].getClassName();
    String mname = elts[2].getMethodName();
    log("Method ", io, cname, mname, args);
  }

  /** 
   * Log the occurrence of a basic block entry.
   * 
   * @param arg The basic block ID that occurred.
   */
  public void logBasicBlockEntry(int arg) {
    Object[] params = {"b","","","",String.valueOf(arg)};
    if(pipe == null){
      pipe = new ConcurrentLinkedQueue<Object[]>();
    }
    if(thread == null){
      thread = new Thread(new FileWriterHandler(pipe));
      thread.start();
    }
    params[1] = Thread.currentThread().getId();
    pipe.add(params);
  }

  /**
   * Log the occurrence of a method entry
   * @param cname The class name being entered
   * @param mname The method name being entered
   * @param args An Object[] array of the required length, see note at
   * the top of this file. In this case it holds the method return
   * value.
   */
  public void logMethodEntry(String cname, String mname, Object[] args) {
    //logMethod(">", args);
    //Log.i(tag,"Method arg length = " + args.length);
    args[0] = "m";
    args[1] = Thread.currentThread().getId();
    args[2] = cname;
    args[3] = mname;
    if(pipe == null){
      pipe = new ConcurrentLinkedQueue<Object[]>();
    }
    if(thread == null){
      thread = new Thread(new FileWriterHandler(pipe));
      thread.start();
    }
    pipe.add(args);
  }
  
  /**
   * Log the occurrence of a method exit
   * @param cname The class name being exited
   * @param mname The method name being exited
   * @param args An Object[] array of the required length, see note at
   * the top of this file. In this case it holds the method return
   * value.
   */
  public void logMethodExit(String cname, String mname, Object[] args) {
    //logMethod(">", args);
    //Log.i(tag,"Method arg length = " + args.length);
    args[0] = "e";
    args[1] = Thread.currentThread().getId();
    args[2] = cname;
    args[3] = mname;
    if(pipe == null){
      pipe = new ConcurrentLinkedQueue<Object[]>();
    }
    if(thread == null){
      thread = new Thread(new FileWriterHandler(pipe));
      thread.start();
    }
    pipe.add(args);
  }
  
  /**
   * Log the occurrence of an API entry
   * @param cname The class name being called
   * @param mname The method name being called
   * @param args An Object[] array of the required length, see note at
   * the top of this file.
   */
  public void logAPIEntry(String cname, String mname, Object[] args) {
    //logMethod(">", args);
    //Log.i(tag,"API arg length = " + args.length);
    args[0] = "a";
    args[1] = Thread.currentThread().getId();
    args[2] = cname;
    args[3] = mname;
    if(pipe == null){
      pipe = new ConcurrentLinkedQueue<Object[]>();
    }
    if(thread == null){
      thread = new Thread(new FileWriterHandler(pipe));
      thread.start();
    }

    for(int i = 4; i < args.length; i++) {
      Object arg = args[i];
      if(arg instanceof Intent) {
        ComponentName comp_name = (ComponentName) ((Intent) arg).getComponent();
        Bundle bundle = ((Intent) arg).getExtras();
        if (bundle != null) {
          if (!bundle.keySet().contains("umd_Intent_key")) {
            ((Intent) arg).putExtra("umd_Intent_key", FileWriterHandler.mIntentKey.getAndIncrement());
            bundle = ((Intent) arg).getExtras();
          }
        } else {
          ((Intent) arg).putExtra("umd_Intent_key", FileWriterHandler.mIntentKey.getAndIncrement());
        }

      }
    }
    pipe.add(args);
  }
  
  public void logAPIExit(String cname, String mname, Object[] args) {
      // four null values followed by nothing else, or four nulls followed by the return value
      //    writeLog("Api < " + cname + mname);
      //Log.i(tag,"API Exit arg length = " + args.length);
      args[0] = "ae";
      args[1] = Thread.currentThread().getId();
      args[2] = cname;
      args[3] = mname;
      if(pipe == null){
          pipe = new ConcurrentLinkedQueue<Object[]>();
      }
      if(thread == null){
          thread = new Thread(new FileWriterHandler(pipe));
          thread.start();
      }
      pipe.add(args);
  }
}
