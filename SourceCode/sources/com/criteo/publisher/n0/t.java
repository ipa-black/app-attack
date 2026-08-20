package com.criteo.publisher.n0;
/* compiled from: URLUtil.java */
/* loaded from: classes2.dex */
public class t {
    public static boolean c(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        return a(str) || b(str);
    }

    private static boolean a(String str) {
        return str != null && str.length() > 6 && str.substring(0, 7).equalsIgnoreCase("http://");
    }

    private static boolean b(String str) {
        return str != null && str.length() > 7 && str.substring(0, 8).equalsIgnoreCase("https://");
    }
}
