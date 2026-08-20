package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class TK implements C5D {
    public final /* synthetic */ TH A00;

    public TK(TH th) {
        this.A00 = th;
    }

    @Override // com.facebook.ads.redexgen.X.C5D
    public final boolean A8b() {
        C1091Sq c1091Sq;
        C1091Sq c1091Sq2;
        c1091Sq = this.A00.A0B;
        if (c1091Sq.canGoBack()) {
            c1091Sq2 = this.A00.A0B;
            c1091Sq2.goBack();
            return true;
        }
        return false;
    }
}
