package com.iab.omid.library.appodeal.b;

import android.content.Context;
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static d f10172a = new d();

    /* renamed from: b  reason: collision with root package name */
    private Context f10173b;

    private d() {
    }

    public static d a() {
        return f10172a;
    }

    public void a(Context context) {
        this.f10173b = context != null ? context.getApplicationContext() : null;
    }

    public Context b() {
        return this.f10173b;
    }
}
