package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Map;
/* loaded from: assets/audience_network.dex */
public class SU extends Q9 {
    public final /* synthetic */ C0949Nd A00;

    public SU(C0949Nd c0949Nd) {
        this.A00 = c0949Nd;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final void A02() {
        LD ld;
        LD ld2;
        C0743Eu c0743Eu;
        QA qa;
        LD ld3;
        C0743Eu c0743Eu2;
        InterfaceC0821Ia interfaceC0821Ia;
        C0743Eu c0743Eu3;
        C1203Xc c1203Xc;
        C0743Eu c0743Eu4;
        InterfaceC0903Lj interfaceC0903Lj;
        MC mc;
        ld = this.A00.A0H;
        if (!ld.A07()) {
            ld2 = this.A00.A0H;
            ld2.A05();
            c0743Eu = this.A00.A0E;
            if (!TextUtils.isEmpty(c0743Eu.A0m())) {
                NA na = new NA();
                qa = this.A00.A0c;
                NA A03 = na.A03(qa);
                ld3 = this.A00.A0H;
                NA A02 = A03.A02(ld3);
                c0743Eu2 = this.A00.A0E;
                Map<String, String> A05 = A02.A04(c0743Eu2.A0J()).A05();
                interfaceC0821Ia = this.A00.A0G;
                c0743Eu3 = this.A00.A0E;
                interfaceC0821Ia.A9H(c0743Eu3.A0m(), A05);
                c1203Xc = this.A00.A0F;
                c1203Xc.A0E().A2Z();
                c0743Eu4 = this.A00.A0E;
                AnonymousClass29.A00(c0743Eu4.A0I());
                interfaceC0903Lj = this.A00.A0I;
                mc = this.A00.A0J;
                interfaceC0903Lj.A3t(mc.A6t());
            }
        }
    }
}
