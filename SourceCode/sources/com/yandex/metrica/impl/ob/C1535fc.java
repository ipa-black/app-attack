package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.fc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1535fc extends Pb {

    /* renamed from: com.yandex.metrica.impl.ob.fc$a */
    /* loaded from: classes5.dex */
    class a implements InterfaceC1560gc {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1560gc
        public void a(long j) {
            C1535fc.this.f13687a.h(j);
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1560gc
        public long getLastAttemptTimeSeconds() {
            return C1535fc.this.f13687a.c(0L);
        }
    }

    public C1535fc(Cc cc, C1507e9 c1507e9) {
        this(cc, c1507e9, new G1());
    }

    @Override // com.yandex.metrica.impl.ob.Pb
    public InterfaceC1560gc a() {
        return new a();
    }

    @Override // com.yandex.metrica.impl.ob.Pb
    protected String b() {
        return "gps";
    }

    @Override // com.yandex.metrica.impl.ob.Pb
    protected String c() {
        return "gps";
    }

    C1535fc(Cc cc, C1507e9 c1507e9, G1 g1) {
        super(cc, c1507e9, g1);
    }

    @Override // com.yandex.metrica.impl.ob.Pb
    protected InterfaceC2024zd a(C2000yd c2000yd) {
        return this.f13689c.c(c2000yd);
    }
}
