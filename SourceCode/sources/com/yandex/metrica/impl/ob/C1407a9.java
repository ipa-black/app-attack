package com.yandex.metrica.impl.ob;
@Deprecated
/* renamed from: com.yandex.metrica.impl.ob.a9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1407a9 extends AbstractC1482d9 {

    /* renamed from: c  reason: collision with root package name */
    private final Rd f14401c;

    /* renamed from: d  reason: collision with root package name */
    private final Rd f14402d;

    public C1407a9(S7 s7) {
        super(s7);
        this.f14401c = new Rd("init_event_pref_key");
        this.f14402d = new Rd("first_event_pref_key");
    }

    @Deprecated
    public boolean f() {
        return a(this.f14402d.a(), (String) null) != null;
    }

    @Deprecated
    public String g(String str) {
        return a(this.f14401c.a(), (String) null);
    }

    @Deprecated
    public C1407a9 h() {
        return (C1407a9) f(this.f14402d.a());
    }

    @Deprecated
    public C1407a9 i() {
        return (C1407a9) f(this.f14401c.a());
    }

    @Deprecated
    public void j() {
        b(this.f14402d.a(), "DONE").d();
    }

    @Deprecated
    public void k() {
        b(this.f14401c.a(), "DONE").d();
    }

    @Deprecated
    public boolean g() {
        return a(this.f14401c.a(), (String) null) != null;
    }
}
