package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.a5  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1403a5 extends X4 {

    /* renamed from: b  reason: collision with root package name */
    private final C1431b8 f14397b;

    public C1403a5(L3 l3) {
        this(l3, l3.x());
    }

    @Override // com.yandex.metrica.impl.ob.S4
    public boolean a(C1448c0 c1448c0) {
        L3 a2 = a();
        if (this.f14397b.k()) {
            return false;
        }
        if (!this.f14397b.l()) {
            a2.r().a(C1448c0.b(c1448c0));
        }
        this.f14397b.a(true);
        return false;
    }

    C1403a5(L3 l3, C1431b8 c1431b8) {
        super(l3);
        this.f14397b = c1431b8;
    }
}
