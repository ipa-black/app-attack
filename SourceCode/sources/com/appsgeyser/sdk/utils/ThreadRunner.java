package com.appsgeyser.sdk.utils;

import android.content.Context;
import android.os.Handler;
/* loaded from: classes2.dex */
public class ThreadRunner {
    public static void runOnUiThreadDelayed(Context context, Runnable runnable, long j) {
        new Handler(context.getMainLooper()).postDelayed(runnable, j);
    }

    public static void runOnUiThread(Context context, Runnable runnable) {
        new Handler(context.getMainLooper()).post(runnable);
    }
}
