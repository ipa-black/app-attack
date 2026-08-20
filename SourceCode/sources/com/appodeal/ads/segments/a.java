package com.appodeal.ads.segments;
/* loaded from: classes2.dex */
public final /* synthetic */ class a {
    public static int a(String str) {
        int[] b2;
        for (int i : com.appodeal.ads.m.b(2)) {
            if (a(i).equalsIgnoreCase(str)) {
                return i;
            }
        }
        return 0;
    }

    public static /* synthetic */ String a(int i) {
        if (i == 1) {
            return "AND";
        }
        if (i == 2) {
            return "OR";
        }
        throw null;
    }
}
