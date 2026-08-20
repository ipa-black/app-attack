package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Map;
/* loaded from: assets/audience_network.dex */
public class RS extends Q9 {
    public final /* synthetic */ C7E A00;

    public RS(C7E c7e) {
        this.A00 = c7e;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final void A02() {
        LD ld;
        LD ld2;
        String str;
        QA qa;
        LD ld3;
        AbstractC1268Zs abstractC1268Zs;
        InterfaceC0821Ia interfaceC0821Ia;
        String str2;
        C1203Xc c1203Xc;
        AbstractC1268Zs abstractC1268Zs2;
        ld = this.A00.A0E;
        if (!ld.A07()) {
            C7E c7e = this.A00;
            ld2 = c7e.A0E;
            c7e.setImpressionRecordingFlag(ld2);
            str = this.A00.A0A;
            if (!TextUtils.isEmpty(str)) {
                NA na = new NA();
                qa = this.A00.A09;
                NA A03 = na.A03(qa);
                ld3 = this.A00.A0E;
                NA A02 = A03.A02(ld3);
                abstractC1268Zs = ((T9) this.A00).A0A;
                Map<String, String> A05 = A02.A04(abstractC1268Zs.A0J()).A05();
                interfaceC0821Ia = ((T9) this.A00).A0C;
                str2 = this.A00.A0A;
                interfaceC0821Ia.A9H(str2, A05);
                c1203Xc = this.A00.A0D;
                c1203Xc.A0E().A2Z();
                abstractC1268Zs2 = this.A00.A03;
                AnonymousClass29.A00(abstractC1268Zs2.A0I());
            }
        }
    }
}
