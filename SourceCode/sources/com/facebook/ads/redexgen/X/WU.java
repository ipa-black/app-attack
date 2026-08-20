package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public final class WU implements InterfaceC0664Be {
    public final long A00;
    public final C0663Bd A01;

    public WU(long j) {
        this(j, 0L);
    }

    public WU(long j, long j2) {
        this.A00 = j;
        this.A01 = new C0663Bd(j2 == 0 ? C0665Bf.A03 : new C0665Bf(0L, j2));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0664Be
    public final long A6Y() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0664Be
    public final C0663Bd A7a(long j) {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0664Be
    public final boolean A8v() {
        return false;
    }
}
