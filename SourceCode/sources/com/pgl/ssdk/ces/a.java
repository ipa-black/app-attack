package com.pgl.ssdk.ces;

import android.content.Context;
/* loaded from: classes3.dex */
public final class a {
    public static native Object meta(int i, Context context, Object obj);

    public static Object njss(int i, Object obj) {
        try {
            c g2 = c.g();
            if (g2 != null) {
                return g2.a(i, obj);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }
}
