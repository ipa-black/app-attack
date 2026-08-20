package com.bytedance.sdk.component.utils;

import android.text.TextUtils;
import android.util.Log;
/* compiled from: Logger.java */
/* loaded from: classes2.dex */
public class ABk {
    private static String CJ = "";
    private static boolean Qhi = false;
    private static com.bytedance.sdk.component.Qhi ac = null;
    private static int cJ = 4;

    public static void Qhi(String str) {
        CJ = str;
    }

    public static void Qhi(int i) {
        cJ = i;
    }

    public static boolean Qhi() {
        return cJ <= 3;
    }

    public static void cJ() {
        Qhi = true;
        Qhi(3);
    }

    public static void ac() {
        Qhi = false;
        Qhi(7);
    }

    public static boolean CJ() {
        return Qhi;
    }

    public static void cJ(String str) {
        if (Qhi) {
            Qhi("Logger", str);
        }
    }

    public static void Qhi(String str, String str2) {
        if (ac != null) {
            ac(str);
        }
        if (Qhi && str2 != null && cJ <= 6) {
            Log.e(ac(str), str2);
        }
    }

    public static void Qhi(String str, String str2, String str3, Throwable th) {
        if (Qhi) {
            Qhi(cJ(str, str2), str3, th);
        }
    }

    public static void Qhi(String str, String str2, Throwable th) {
        if (ac != null) {
            ac(str);
        }
        if (Qhi) {
            if (!(str2 == null && th == null) && cJ <= 6) {
                Log.e(ac(str), str2, th);
            }
        }
    }

    public static void Qhi(String str, Object... objArr) {
        if (ac != null) {
            ac(str);
            Qhi(objArr);
        }
        if (Qhi && objArr != null && cJ <= 6) {
            Log.e(ac(str), Qhi(objArr));
        }
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

    public static String ac(String str) {
        return TextUtils.isEmpty(CJ) ? str : Qhi("[" + CJ + "]-[" + str + "]");
    }

    public static String cJ(String str, String str2) {
        return TextUtils.isEmpty(CJ) ? str : Qhi(str2 + "]-[" + str);
    }
}
