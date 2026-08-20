package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class Y2 extends AbstractRunnableC0859Jo {
    public final /* synthetic */ C1226Xz A00;
    public final /* synthetic */ JA A01;

    public Y2(C1226Xz c1226Xz, JA ja) {
        this.A00 = c1226Xz;
        this.A01 = ja;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC0859Jo
    public final void A01() {
        C5W c5w;
        C5W c5w2;
        c5w = this.A00.A00;
        if (c5w.A00() != null) {
            c5w2 = this.A00.A00;
            c5w2.A00().onAdError(KW.A00(this.A01));
        }
    }
}
