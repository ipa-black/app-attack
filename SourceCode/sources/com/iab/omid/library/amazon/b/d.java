package com.iab.omid.library.amazon.b;

import android.content.Context;
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static d f9951a = new d();

    /* renamed from: b  reason: collision with root package name */
    private Context f9952b;

    private d() {
    }

    public static d a() {
        return f9951a;
    }

    public void a(Context context) {
        this.f9952b = context != null ? context.getApplicationContext() : null;
    }

    public Context b() {
        return this.f9952b;
    }
}
