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

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;

public class BogusActivity extends Activity {
  /** Called when the activity is first created. */
  @Override
  public void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    TextView tv = new TextView(this);
    Logger.logAPIEntry(TextView.class.getName(), "setText", "Hello, Loggig");
    tv.setText("Hello, Logging");
    setContentView(tv);
    Logger.logAPIExit(this.getClass().getSuperclass().getName(), "setContentView");

    boolean b = true;
    char c = 'A';
    byte bt = 0xA;
    short s = 0xAA;
    int i = 1;
    long l = 2L;
    float f = 3.14f;
    double d = 4.0;
    Logger.logMethodEntry(this, b, c, bt, s, i, l, f, d);

    Intent intent = new Intent(this, DisplayActivity.class);
    String message = "Hello, another Activity";
    intent.putExtra(DisplayActivity.EXTRA_MESSAGE, message);
    startActivity(intent);
    finish();
  }

}
