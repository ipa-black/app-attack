package com.criteo.publisher.n0;

import com.criteo.publisher.v;
/* compiled from: PreconditionsUtil.java */
/* loaded from: classes2.dex */
public class o {
    public static void a(Throwable th) {
        com.criteo.publisher.s.c().J0().a(o.class).a(v.a(th));
        if (com.criteo.publisher.s.c().m0().r()) {
            throw new RuntimeException(th);
        }
    }

    public static boolean a(Object obj) {
        if (obj == null) {
            a((Throwable) new NullPointerException("Expected non null value, but null occurs."));
            return false;
        }
        return true;
    }
}
