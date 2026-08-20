package com.applovin.exoplayer2.l;

import android.os.Trace;
/* loaded from: classes.dex */
public final class ah {
    public static void a() {
        if (ai.f3781a >= 18) {
            b();
        }
    }

    public static void a(String str) {
        if (ai.f3781a >= 18) {
            b(str);
        }
    }

    private static void b() {
        Trace.endSection();
    }

    private static void b(String str) {
        Trace.beginSection(str);
    }
}
