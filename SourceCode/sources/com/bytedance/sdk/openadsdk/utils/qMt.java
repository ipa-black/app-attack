package com.bytedance.sdk.openadsdk.utils;

import android.text.TextUtils;
import android.util.Log;
/* compiled from: PAGLogger.java */
/* loaded from: classes2.dex */
public class qMt {
    private static boolean Qhi = false;

    public static void Qhi() {
        Qhi = true;
    }

    public static void cJ() {
        Qhi = false;
    }

    public static void Qhi(String str, String str2, Object... objArr) {
        Qhi(ac(str, str2), objArr);
    }

    public static void Qhi(String str, String str2) {
        if (Qhi && str2 != null) {
            Log.d(Qhi(str), str2);
        }
    }

    public static void Qhi(String str, Object... objArr) {
        if (Qhi && objArr != null) {
            Log.d(Qhi(str), Qhi(objArr));
        }
    }

    public static void cJ(String str, String str2, Object... objArr) {
        cJ(ac(str, str2), objArr);
    }

    public static void cJ(String str, String str2) {
        if (Qhi && str2 != null) {
            Log.e(Qhi(str), str2);
        }
    }

    public static void cJ(String str, Object... objArr) {
        if (Qhi && objArr != null) {
            Log.e(Qhi(str), Qhi(objArr));
        }
    }

    private static String Qhi(String str) {
        return TextUtils.isEmpty("PangleSDK-6206") ? str : Qhi("[PangleSDK-6206]-[" + str + "]");
    }

    private static String ac(String str, String str2) {
        return TextUtils.isEmpty("PangleSDK-6206") ? str : Qhi(str2 + "]-[" + str);
    }

    private static String Qhi(Object... objArr) {
        if (objArr == null || objArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Object obj : objArr) {
            if (obj != null) {
                sb.append(obj.toString());
            } else {
                sb.append(" null ");
            }
            sb.append(" ");
        }
        return sb.toString();
    }
}
