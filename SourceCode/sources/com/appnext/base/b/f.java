package com.appnext.base.b;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Process;
import android.text.TextUtils;
/* loaded from: classes.dex */
public class f {
    public static final String TAG = "f";

    public static NetworkInfo e(Context context) {
        return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
    }

    public static boolean a(Context context, String str) {
        return (context == null || TextUtils.isEmpty(str) || context.checkPermission(str, Process.myPid(), Process.myUid()) != 0) ? false : true;
    }

    public static String getKey() {
        h.aO();
        return h.J(com.appnext.core.f.b(e.getContext(), false));
    }
}
