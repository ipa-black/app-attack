package com.facebook.ads.redexgen.X;

import com.facebook.ads.NativeAd;
import java.util.List;
/* loaded from: assets/audience_network.dex */
public class Y0 implements C6E {
    public final List<C1283a7> A00;
    public final /* synthetic */ C1226Xz A01;

    public Y0(C1226Xz c1226Xz, List<C1283a7> list) {
        this.A01 = c1226Xz;
        this.A00 = list;
    }

    private void A00() {
        C5W c5w;
        C5W c5w2;
        C5W c5w3;
        C1203Xc c1203Xc;
        C5W c5w4;
        C5W c5w5;
        C1203Xc c1203Xc2;
        c5w = this.A01.A00;
        c5w.A05(true);
        c5w2 = this.A01.A00;
        c5w2.A02();
        c5w3 = this.A01.A00;
        c5w3.A03(0);
        for (C1283a7 c1283a7 : this.A00) {
            c1203Xc = this.A01.A01;
            InterfaceC0844Ix A0K = C1115Tp.A0K();
            c5w4 = this.A01.A00;
            C1115Tp c1115Tp = new C1115Tp(c1203Xc, c1283a7, null, A0K, c5w4.A01());
            if (c1115Tp.A0y() != null && c1115Tp.A0y().A0F() != null) {
                ((ZV) c1115Tp.A0y().A0F()).A00(c1115Tp);
            }
            c5w5 = this.A01.A00;
            c1203Xc2 = this.A01.A01;
            c5w5.A04(new NativeAd(c1203Xc2, c1115Tp));
        }
        C0863Js.A00(new Y1(this));
    }

    @Override // com.facebook.ads.redexgen.X.C6E
    public final void AAT() {
        A00();
    }

    @Override // com.facebook.ads.redexgen.X.C6E
    public final void AAb() {
        A00();
    }
}
