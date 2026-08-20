package com.pgl.ssdk;

import android.content.Context;
import android.content.SharedPreferences;
/* compiled from: SpUtil.java */
/* loaded from: classes3.dex */
public class L {

    /* renamed from: a  reason: collision with root package name */
    private static SharedPreferences f12182a;

    public static String a(Context context, String str, String str2) {
        SharedPreferences a2 = a(context);
        return a2 != null ? a2.getString(str, str2) : str2;
    }

    public static void b(Context context, String str, String str2) {
        SharedPreferences a2 = a(context);
        if (a2 != null) {
            a2.edit().putString(str, str2).apply();
        }
    }

    public static SharedPreferences a(Context context) {
        if (f12182a == null) {
            f12182a = context.getSharedPreferences("ss_config", 0);
        }
        return f12182a;
    }
}
