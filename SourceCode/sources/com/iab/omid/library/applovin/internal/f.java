package com.iab.omid.library.applovin.internal;

import android.content.Context;
/* loaded from: classes2.dex */
public class f {

    /* renamed from: b  reason: collision with root package name */
    private static f f10071b = new f();

    /* renamed from: a  reason: collision with root package name */
    private Context f10072a;

    private f() {
    }

    public static f b() {
        return f10071b;
    }

    public Context a() {
        return this.f10072a;
    }

    public void a(Context context) {
        this.f10072a = context != null ? context.getApplicationContext() : null;
    }
}
