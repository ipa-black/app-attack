package com.appodeal.ads.utils;

import android.content.Context;
/* loaded from: classes2.dex */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    public static final com.appodeal.ads.storage.o f7820a = com.appodeal.ads.storage.o.f7663b;

    public static boolean a(Context context, String str) {
        com.appodeal.ads.storage.o oVar;
        Long g2;
        if (context != null && !str.isEmpty() && (g2 = (oVar = f7820a).g(str)) != null) {
            if (g2.longValue() > System.currentTimeMillis()) {
                return true;
            }
            oVar.d(str);
        }
        return false;
    }
}
