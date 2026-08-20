package com.ironsource.sdk.controller;

import android.app.Activity;
import android.content.MutableContextWrapper;
/* loaded from: classes3.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private MutableContextWrapper f11619a;

    public final Activity a() {
        return (Activity) this.f11619a.getBaseContext();
    }

    public final synchronized void a(Activity activity) {
        if (this.f11619a == null) {
            this.f11619a = new MutableContextWrapper(activity);
        }
        this.f11619a.setBaseContext(activity);
    }

    public final synchronized void b() {
        this.f11619a = null;
    }
}
