package com.facebook.ads.redexgen.X;

import java.util.Map;
/* loaded from: assets/audience_network.dex */
public class SC extends Q9 {
    public final /* synthetic */ C06078w A00;

    public SC(C06078w c06078w) {
        this.A00 = c06078w;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final void A02() {
        LD ld;
        LD ld2;
        QA qa;
        LD ld3;
        InterfaceC0821Ia interfaceC0821Ia;
        AbstractC1268Zs abstractC1268Zs;
        C1203Xc c1203Xc;
        AbstractC1268Zs abstractC1268Zs2;
        InterfaceC0903Lj interfaceC0903Lj;
        InterfaceC0903Lj interfaceC0903Lj2;
        MC mc;
        ld = this.A00.A0B;
        if (!ld.A07()) {
            ld2 = this.A00.A0B;
            ld2.A05();
            NA na = new NA();
            qa = this.A00.A0H;
            NA A03 = na.A03(qa);
            ld3 = this.A00.A0B;
            Map<String, String> A05 = A03.A02(ld3).A05();
            interfaceC0821Ia = this.A00.A08;
            abstractC1268Zs = this.A00.A06;
            interfaceC0821Ia.A9H(abstractC1268Zs.A0m(), A05);
            c1203Xc = this.A00.A07;
            c1203Xc.A0E().A2Z();
            abstractC1268Zs2 = this.A00.A06;
            AnonymousClass29.A00(abstractC1268Zs2.A0I());
            interfaceC0903Lj = this.A00.A0C;
            if (interfaceC0903Lj != null) {
                interfaceC0903Lj2 = this.A00.A0C;
                mc = this.A00.A0D;
                interfaceC0903Lj2.A3t(mc.A6t());
            }
        }
    }
}
