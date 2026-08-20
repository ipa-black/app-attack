package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.aE  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1290aE extends K1 {
    public final /* synthetic */ C1289aD A00;
    public final /* synthetic */ C06068v A01;

    public C1290aE(C1289aD c1289aD, C06068v c06068v) {
        this.A00 = c1289aD;
        this.A01 = c06068v;
    }

    @Override // com.facebook.ads.redexgen.X.K1
    public final void A06() {
        QA qa;
        QA qa2;
        QA qa3;
        this.A00.A00.A09();
        qa = this.A00.A00.A0A;
        if (qa != null) {
            C06068v c06068v = this.A01;
            qa2 = this.A00.A00.A0A;
            c06068v.setAdViewabilityChecker(qa2);
            qa3 = this.A00.A00.A0A;
            qa3.A0U();
        }
    }
}
