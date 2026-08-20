package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.D3;
/* loaded from: classes5.dex */
public class Q4 extends M4 {

    /* renamed from: b  reason: collision with root package name */
    private final C1845s2 f13746b;

    /* renamed from: c  reason: collision with root package name */
    private final Vc f13747c;

    public Q4(F3 f3, C1845s2 c1845s2, Vc vc) {
        super(f3);
        this.f13746b = c1845s2;
        this.f13747c = vc;
    }

    @Override // com.yandex.metrica.impl.ob.M4
    public boolean a(C1448c0 c1448c0, C1726n4 c1726n4) {
        D3.a a2 = c1726n4.b().a();
        this.f13746b.a(a2.l);
        Boolean bool = a2.f12787e;
        Boolean bool2 = a2.p;
        Boolean bool3 = Boolean.TRUE;
        if (!bool3.equals(bool) && (bool != null || !bool3.equals(bool2))) {
            if (Boolean.FALSE.equals(bool)) {
                this.f13747c.a(false);
            }
        } else {
            this.f13747c.a(true);
        }
        return false;
    }
}
