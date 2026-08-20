package com.appsgeyser.sdk;

import android.util.Log;
import com.appsgeyser.sdk.configuration.Constants;
/* loaded from: classes2.dex */
public class Logger {
    public static void DebugLog(String str) {
        Log.d(Constants.LOG_DEBUG_TAG, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void ErrorLog(String str) {
        Log.e(Constants.LOG_ERROR_TAG, str);
    }

    public static void InfoLog(String str) {
        Log.i(Constants.LOG_INFO_TAG, str);
    }
}
