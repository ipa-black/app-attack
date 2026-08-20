package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Es  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0741Es extends AbstractC1250Za {
    public C0741Es(C1203Xc c1203Xc, C04321p c04321p) {
        super(c1203Xc, c04321p);
    }

    private InterfaceC04140x A00(Runnable runnable) {
        return new ZY(this, runnable);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1250Za
    public final void A0L() {
        C1285a9 interstitialAdapter = (C1285a9) this.A01;
        interstitialAdapter.A0B();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1250Za
    public final void A0N(InterfaceC04040n interfaceC04040n, C8A c8a, AnonymousClass88 anonymousClass88, C04331q c04331q) {
        C1285a9 c1285a9 = (C1285a9) interfaceC04040n;
        ZZ zz = new ZZ(this, c04331q, c1285a9);
        A0E().postDelayed(zz, c8a.A05().A05());
        c1285a9.A0A(this.A0B, A00(zz), c04331q, this.A07.A0A, this.A07.A04, this.A07.A05, this.A07.A02);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1250Za
    /* renamed from: A0V */
    public final AbstractC1268Zs A0F() {
        return ((C1285a9) this.A01).A09();
    }
}
