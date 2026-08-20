package com.iab.omid.library.adcolony.b;

import android.content.Context;
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static d f9844a = new d();

    /* renamed from: b  reason: collision with root package name */
    private Context f9845b;

    private d() {
    }

    public static d a() {
        return f9844a;
    }

    public void a(Context context) {
        this.f9845b = context != null ? context.getApplicationContext() : null;
    }

    public Context b() {
        return this.f9845b;
    }
}
