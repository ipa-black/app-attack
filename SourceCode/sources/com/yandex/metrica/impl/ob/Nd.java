package com.yandex.metrica.impl.ob;

import android.content.Context;
@Deprecated
/* loaded from: classes5.dex */
public class Nd extends Kd {

    /* renamed from: h  reason: collision with root package name */
    private static final Rd f13539h = new Rd("SERVICE_API_LEVEL", null);
    private static final Rd i = new Rd("CLIENT_API_LEVEL", null);

    /* renamed from: f  reason: collision with root package name */
    private Rd f13540f;

    /* renamed from: g  reason: collision with root package name */
    private Rd f13541g;

    public Nd(Context context) {
        super(context, null);
        this.f13540f = new Rd(f13539h.b());
        this.f13541g = new Rd(i.b());
    }

    @Override // com.yandex.metrica.impl.ob.Kd
    protected String d() {
        return "_migrationpreferences";
    }

    public int f() {
        return this.f13367b.getInt(this.f13540f.a(), -1);
    }

    public Nd g() {
        a(this.f13541g.a());
        return this;
    }

    @Deprecated
    public Nd h() {
        a(this.f13540f.a());
        return this;
    }
}
