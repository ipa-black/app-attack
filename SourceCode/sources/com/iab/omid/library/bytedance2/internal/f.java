package com.iab.omid.library.bytedance2.internal;

import android.content.Context;
/* loaded from: classes2.dex */
public class f {

    /* renamed from: b  reason: collision with root package name */
    private static f f10292b = new f();

    /* renamed from: a  reason: collision with root package name */
    private Context f10293a;

    private f() {
    }

    public static f b() {
        return f10292b;
    }

    public Context a() {
        return this.f10293a;
    }

    public void a(Context context) {
        this.f10293a = context != null ? context.getApplicationContext() : null;
    }
}
