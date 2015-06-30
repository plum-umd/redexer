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
import java.lang.StackTraceElement;
import java.lang.StringBuilder;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
import java.util.HashSet;

public class Logger {
  final static String tag = Logger.class.getPackage().getName();

  static final Set<Class> WRAPPER_TYPES = new HashSet(Arrays.asList(
    Boolean.class, Character.class, Byte.class, Short.class, Integer.class,
    Long.class, Float.class, Double.class, Void.class));

  static boolean isWrapperType(Class clazz) {
    return WRAPPER_TYPES.contains(clazz);
  }

  static String join(Iterable<Object> args, String delimiter) {
    StringBuilder buf = new StringBuilder();
    Iterator<Object> iter = args.iterator();
    while (iter.hasNext()) {
      Object arg = iter.next();
      String s_arg = "";
      if (arg == null) {
        s_arg = "null";
      } else if (isWrapperType(arg.getClass())) {
        s_arg = arg.toString();
      } else if (arg.getClass() == String.class) {
        s_arg = "\"" + ((String)arg).replace("\n","\\n") + "\"";
      } else if (arg.getClass() == Class.class) {
        s_arg = ((Class)arg).getName();
      } else {
        s_arg = arg.getClass().getName() + "@" + System.identityHashCode(arg);
      }
      buf.append(s_arg);
      if (!iter.hasNext()) break;                  
      buf.append(delimiter);
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
    String s_args = join(Arrays.asList(args), ", ");
    String msg = io + " " + ofJavaTy(cname) + "." + mname + "(" + s_args + ")";
    Log.i(tag, msg);
  }

  static void logMethod(String io, Object... args) {
    StackTraceElement elts[] = (new Throwable ()).getStackTrace();
    // 0 : org.umd.logging.Logger.logMethod
    // 1 : org.umd.logging.Logger.logMethod(Entry|Exit)
    String cname = elts[2].getClassName();
    String mname = elts[2].getMethodName();
    log(io, cname, mname, args);
  }

  public static void logMethodEntry(Object... args) {
    logMethod(">", args);
  }

  public static void logMethodExit(Object... args) {
    logMethod("<", args);
  }

  public static void logAPIEntry(String cname, String mname, Object... args) {
    log(">", cname, mname, args);
  }

  public static void logAPIExit(String cname, String mname, Object... args) {
    log("<", cname, mname, args);
  }

}
