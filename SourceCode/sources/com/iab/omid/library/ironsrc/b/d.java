package com.iab.omid.library.ironsrc.b;

import android.content.Context;
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static d f10395a = new d();

    /* renamed from: b  reason: collision with root package name */
    private Context f10396b;

    private d() {
    }

    public static d a() {
        return f10395a;
    }

    public void a(Context context) {
        this.f10396b = context != null ? context.getApplicationContext() : null;
    }

    public Context b() {
        return this.f10396b;
    }
}
