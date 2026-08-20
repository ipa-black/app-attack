package com.bytedance.sdk.component.Qhi;

import android.text.TextUtils;
/* compiled from: SerializeHelper.java */
/* loaded from: classes2.dex */
class CQU {
    private static boolean Qhi;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String Qhi(Throwable th) {
        return "{\"code\":" + (th instanceof tP ? ((tP) th).Qhi : 0) + "}";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String Qhi(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            return "{\"code\":1}";
        }
        if (!Qhi) {
            str2 = "";
        } else {
            str2 = str.substring(1, str.length() - 1);
        }
        String concat = "{\"code\":1,\"__data\":".concat(String.valueOf(str));
        if (!str2.isEmpty()) {
            return concat + "," + str2 + "}";
        }
        return concat + "}";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String Qhi() {
        return "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void Qhi(boolean z) {
        Qhi = z;
    }
}
