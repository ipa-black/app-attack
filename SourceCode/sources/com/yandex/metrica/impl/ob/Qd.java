package com.yandex.metrica.impl.ob;

import android.content.Context;
@Deprecated
/* loaded from: classes5.dex */
public class Qd extends Kd {

    /* renamed from: f  reason: collision with root package name */
    private Rd f13758f;

    public Qd(Context context, String str) {
        super(context, null);
        this.f13758f = new Rd("LOCATION_TRACKING_ENABLED");
    }

    @Override // com.yandex.metrica.impl.ob.Kd
    protected String d() {
        return "_serviceproviderspreferences";
    }

    public boolean f() {
        return this.f13367b.getBoolean(this.f13758f.a(), false);
    }

    public void g() {
        a(this.f13758f.a()).b();
    }
}
