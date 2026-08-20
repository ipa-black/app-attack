package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public class R4 extends X4 {

    /* renamed from: b  reason: collision with root package name */
    private final C1431b8 f13782b;

    /* renamed from: c  reason: collision with root package name */
    private final C1545fm f13783c;

    public R4(L3 l3) {
        this(l3, l3.x(), C1545fm.c());
    }

    @Override // com.yandex.metrica.impl.ob.S4
    public boolean a(C1448c0 c1448c0) {
        L3 a2 = a();
        if (this.f13782b.k() || this.f13782b.l()) {
            return false;
        }
        if (a2.m().P()) {
            this.f13783c.b();
        }
        a().j().a();
        return false;
    }

    R4(L3 l3, C1431b8 c1431b8, C1545fm c1545fm) {
        super(l3);
        this.f13782b = c1431b8;
        this.f13783c = c1545fm;
    }
}
