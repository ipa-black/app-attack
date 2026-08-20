package com.bytedance.adsdk.Qhi.cJ.fl;
/* compiled from: CharType.java */
/* loaded from: classes2.dex */
public class Qhi {
    public static boolean CJ(char c2) {
        return '+' == c2 || '-' == c2 || '*' == c2 || '/' == c2 || '%' == c2 || '=' == c2 || '>' == c2 || '<' == c2 || '!' == c2 || '&' == c2 || '|' == c2 || '?' == c2 || ':' == c2;
    }

    public static boolean Qhi(char c2) {
        return c2 == ' ';
    }

    public static boolean ac(char c2) {
        return c2 >= '0' && c2 <= '9';
    }

    public static boolean cJ(char c2) {
        if (c2 < 'A' || c2 > 'Z') {
            return c2 >= 'a' && c2 <= 'z';
        }
        return true;
    }
}
