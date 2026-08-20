package com.yandex.metrica.impl.ob;

import android.content.Context;
@Deprecated
/* loaded from: classes5.dex */
public class Jd extends Kd {
    public static final /* synthetic */ int j = 0;

    /* renamed from: f  reason: collision with root package name */
    private final Rd f13259f;

    /* renamed from: g  reason: collision with root package name */
    private final Rd f13260g;

    /* renamed from: h  reason: collision with root package name */
    private final Rd f13261h;
    private final Rd i;

    public Jd(Context context, String str) {
        super(context, str);
        this.f13259f = new Rd("init_event_pref_key", c());
        this.f13260g = new Rd("init_event_pref_key");
        this.f13261h = new Rd("first_event_pref_key", c());
        this.i = new Rd("fitst_event_description_key", c());
    }

    private void a(Rd rd) {
        this.f13367b.edit().remove(rd.a()).apply();
    }

    @Deprecated
    public String b(String str) {
        return this.f13367b.getString(this.f13260g.a(), null);
    }

    public String c(String str) {
        return this.f13367b.getString(this.f13261h.a(), null);
    }

    @Override // com.yandex.metrica.impl.ob.Kd
    protected String d() {
        return "_initpreferences";
    }

    public String d(String str) {
        return this.f13367b.getString(this.f13259f.a(), null);
    }

    @Deprecated
    public void f() {
        a(this.f13260g);
    }

    public void g() {
        a(this.i);
    }

    public void h() {
        a(this.f13261h);
    }

    public void i() {
        a(this.f13259f);
    }

    public void j() {
        a(this.f13259f.a(), "DONE").b();
    }
}
