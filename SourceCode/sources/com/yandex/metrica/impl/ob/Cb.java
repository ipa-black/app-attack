package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public final class Cb {
    public static final com.yandex.metrica.appsetid.d a() {
        if (C1575h2.a("com.google.android.gms.appset.AppSet")) {
            return new com.yandex.metrica.appsetid.b();
        }
        return new Db();
    }
}
