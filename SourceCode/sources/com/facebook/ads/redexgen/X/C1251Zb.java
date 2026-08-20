package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Zb  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1251Zb extends K1 {
    public final /* synthetic */ AbstractC1250Za A00;
    public final /* synthetic */ JA A01;

    public C1251Zb(AbstractC1250Za abstractC1250Za, JA ja) {
        this.A00 = abstractC1250Za;
        this.A01 = ja;
    }

    @Override // com.facebook.ads.redexgen.X.K1
    public final void A06() {
        this.A00.A0B.A0E().A4c(this.A01.A03().getErrorCode(), this.A01.A04());
        if (this.A00.A06 != null) {
            this.A00.A06.A0G(this.A01);
        }
    }
}
