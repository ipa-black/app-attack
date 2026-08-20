package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public class Vc {

    /* renamed from: a  reason: collision with root package name */
    private final C1927vc f14160a;

    /* renamed from: b  reason: collision with root package name */
    private final Xj f14161b;

    /* renamed from: c  reason: collision with root package name */
    private final H2 f14162c;

    /* renamed from: d  reason: collision with root package name */
    private final C1808qc f14163d;

    /* renamed from: e  reason: collision with root package name */
    private final C1507e9 f14164e;

    public Vc(C1927vc c1927vc, H2 h2, C1507e9 c1507e9) {
        this(c1927vc, F0.g().v(), h2, c1507e9, F0.g().i());
    }

    private void a() {
        boolean g2 = this.f14164e.g();
        this.f14160a.a(g2);
        this.f14162c.a(g2);
        this.f14161b.a(g2);
        this.f14163d.c();
    }

    public void b(Object obj) {
        this.f14160a.b(obj);
        this.f14161b.b();
    }

    public Vc(C1927vc c1927vc, Xj xj, H2 h2, C1507e9 c1507e9, C1808qc c1808qc) {
        this.f14160a = c1927vc;
        this.f14161b = xj;
        this.f14162c = h2;
        this.f14164e = c1507e9;
        this.f14163d = c1808qc;
        c1808qc.a(xj);
        a();
    }

    public void a(Object obj) {
        this.f14160a.a(obj);
        this.f14161b.a();
    }

    public void a(boolean z) {
        this.f14160a.a(z);
        this.f14161b.a(z);
        this.f14162c.a(z);
        this.f14164e.d(z);
    }

    public void a(C1790pi c1790pi) {
        this.f14163d.a(c1790pi);
        this.f14162c.a(c1790pi);
        this.f14161b.a(c1790pi);
    }
}
