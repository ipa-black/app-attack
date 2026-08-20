package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.kc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1659kc extends Pb {

    /* renamed from: com.yandex.metrica.impl.ob.kc$a */
    /* loaded from: classes5.dex */
    class a implements InterfaceC1560gc {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1560gc
        public void a(long j) {
            C1659kc.this.f13687a.j(j);
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1560gc
        public long getLastAttemptTimeSeconds() {
            return C1659kc.this.f13687a.e(0L);
        }
    }

    public C1659kc(Cc cc, C1507e9 c1507e9) {
        this(cc, c1507e9, new G1());
    }

    @Override // com.yandex.metrica.impl.ob.Pb
    public InterfaceC1560gc a() {
        return new a();
    }

    @Override // com.yandex.metrica.impl.ob.Pb
    protected String b() {
        return "network";
    }

    @Override // com.yandex.metrica.impl.ob.Pb
    protected String c() {
        return "lbs";
    }

    C1659kc(Cc cc, C1507e9 c1507e9, G1 g1) {
        super(cc, c1507e9, g1);
    }

    @Override // com.yandex.metrica.impl.ob.Pb
    protected InterfaceC2024zd a(C2000yd c2000yd) {
        return this.f13689c.a(c2000yd);
    }
}
