package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class W5 implements InterfaceC0664Be {
    public final /* synthetic */ W4 A00;

    public W5(W4 w4) {
        this.A00 = w4;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0664Be
    public final long A6Y() {
        CR cr;
        long j;
        cr = this.A00.A0B;
        j = this.A00.A07;
        return cr.A03(j);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0664Be
    public final C0663Bd A7a(long granule) {
        CR cr;
        long j;
        long A00;
        long j2;
        if (granule == 0) {
            j2 = this.A00.A09;
            return new C0663Bd(new C0665Bf(0L, j2));
        }
        cr = this.A00.A0B;
        long A04 = cr.A04(granule);
        W4 w4 = this.A00;
        j = w4.A09;
        A00 = w4.A00(j, A04, 30000L);
        return new C0663Bd(new C0665Bf(granule, A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0664Be
    public final boolean A8v() {
        return true;
    }
}
