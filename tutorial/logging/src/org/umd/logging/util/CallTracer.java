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
 * CallTracer using Java StackTraceElement
 */

package org.umd.logging.util;

import java.lang.Throwable;
import java.lang.StackTraceElement;

public class CallTracer {
  private static boolean partly_equal(String s1, String s2) {
    if (s1.length() < 4) return false;
    int pos1 = s1.lastIndexOf('.');
    int pos2 = s2.lastIndexOf('.');
    String ss1 = s1.substring(0, pos1);
    String ss2 = s2.substring(0, pos2);
    if (ss1.equals(ss2)) return true;
    return partly_equal(ss1, ss2);
  }

  public static String getChildClass() {
    String caller = "";
    StackTraceElement elts[] = (new Throwable ()).getStackTrace();
    // 0 : org.umd.logging.util.CallTracer
    // 1 : org.umd.logging.util.Logger
    // from the caller, trace back the stack
    for (int i = 2; i < elts.length; i++) {
      String name = elts[i].getClassName();
      // until we met the app's component, not ours nor systems
      if (!name.contains("umd.logging") && !name.startsWith("java")
       && !name.startsWith("android") && !name.startsWith("dalvik")) {
        // instead of returning comp's name immediately,
        // keep searching to deal with app's own hierarchy
        if (caller == "" || partly_equal(caller, name)) {
          caller = name;
        }
      }
    }
    if (caller != "") return caller;
    return "something wrong: assumed this method would be called by Logger";
  }
}
