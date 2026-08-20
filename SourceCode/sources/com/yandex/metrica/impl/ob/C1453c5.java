package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.c5  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1453c5 extends X4 {

    /* renamed from: b  reason: collision with root package name */
    private final C1431b8 f14525b;

    public C1453c5(L3 l3) {
        super(l3);
        this.f14525b = l3.x();
    }

    @Override // com.yandex.metrica.impl.ob.S4
    public boolean a(C1448c0 c1448c0) {
        L3 a2 = a();
        a2.e().toString();
        if (this.f14525b.k() && a2.B()) {
            a2.r().d(C1448c0.a(c1448c0, a2));
            return false;
        }
        return false;
    }
}
