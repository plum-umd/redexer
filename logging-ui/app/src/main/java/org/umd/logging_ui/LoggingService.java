package org.umd.logging_ui;

import android.accessibilityservice.AccessibilityService;
import android.content.Intent;
import android.util.Log;
import android.view.KeyEvent;
import android.view.accessibility.AccessibilityEvent;

public class LoggingService extends AccessibilityService {
    final static String LOG_TAG = LoggingService.class.getPackage().getName();
    final static String DEBUG_TAG = LOG_TAG + ".debugging";
    final static String LIFECYCLE = LOG_TAG + ".lifecycle";

    @Override
    public void onCreate() {
        Log.d(LIFECYCLE, "onCreate()");
        super.onCreate();
    }

    @Override
    public void onServiceConnected() {
        Log.d(LIFECYCLE, "onServiceConnected()");
        super.onServiceConnected();
    }

    @Override
    public boolean onUnbind(Intent intent) {
        Log.d(LIFECYCLE, "onUnbind()");
        return super.onUnbind(intent);
    }

    @Override
    public void onInterrupt() {
        Log.d(LIFECYCLE, "onInterrupt()");
    }

    @Override
    public void onAccessibilityEvent(AccessibilityEvent event) {
        Log.d(DEBUG_TAG, event.toString().replace("\n","<br>"));
    }

    @Override
    public boolean onGesture(int gestureId) {
        Log.d(DEBUG_TAG, "onGesture(" + gestureId + ")");
        return super.onGesture(gestureId);
    }

    @Override
    public boolean onKeyEvent(KeyEvent event) {
        Log.d(DEBUG_TAG, "onKeyEvent(" + event.toString() + ")");
        return super.onKeyEvent(event);
    }
}
