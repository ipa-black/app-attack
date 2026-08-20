package com.yandex.metrica.impl.ob;

import android.content.Context;
@Deprecated
/* loaded from: classes5.dex */
public class Od extends Kd {

    /* renamed from: g  reason: collision with root package name */
    private static final Rd f13585g = new Rd("PREF_KEY_OFFSET", null);

    /* renamed from: f  reason: collision with root package name */
    private Rd f13586f;

    public Od(Context context, String str) {
        super(context, str);
        this.f13586f = new Rd(f13585g.b(), null);
    }

    public long a(int i) {
        return this.f13367b.getLong(this.f13586f.a(), i);
    }

    @Override // com.yandex.metrica.impl.ob.Kd
    protected String d() {
        return "_servertimeoffset";
    }

    public void f() {
        a(this.f13586f.a()).b();
    }
}
