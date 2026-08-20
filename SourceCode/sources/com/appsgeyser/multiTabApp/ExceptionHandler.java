package com.appsgeyser.multiTabApp;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Process;
import java.lang.Thread;
/* loaded from: classes2.dex */
class ExceptionHandler implements Thread.UncaughtExceptionHandler {
    private static final String DEFAULT_EXCEPTION_HANDLER = "com.appsgeyser.multiTabApp.DefaultExceptionHandler";
    private static final String IS_FIRST_FAULT = "com.appsgeyser.multiTabApp.DefaultExceptionHandler.isFirstFault";
    private final Activity activity;
    private final Thread.UncaughtExceptionHandler oldHandler;

    ExceptionHandler(Activity activity, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.activity = activity;
        this.oldHandler = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        SharedPreferences sharedPreferences = this.activity.getSharedPreferences(DEFAULT_EXCEPTION_HANDLER, 0);
        if (sharedPreferences.getBoolean(IS_FIRST_FAULT, true)) {
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putBoolean(IS_FIRST_FAULT, false);
            edit.apply();
            System.err.println(th.toString());
            Intent intent = new Intent(this.activity, MainNavigationActivity.class);
            intent.addFlags(335577088);
            this.activity.startActivity(intent);
            Process.killProcess(Process.myPid());
            System.exit(0);
            return;
        }
        this.oldHandler.uncaughtException(thread, th);
    }
}
