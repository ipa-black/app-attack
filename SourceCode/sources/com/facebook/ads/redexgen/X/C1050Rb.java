package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.Rb  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1050Rb extends Q9 {
    public final /* synthetic */ C7G A00;

    public C1050Rb(C7G c7g) {
        this.A00 = c7g;
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
        F1 f1;
        ld = this.A00.A0H;
        if (!ld.A07()) {
            C7G c7g = this.A00;
            ld2 = c7g.A0H;
            c7g.setImpressionRecordingFlag(ld2);
            str = this.A00.A0C;
            if (!TextUtils.isEmpty(str)) {
                NA na = new NA();
                qa = this.A00.A0B;
                NA A03 = na.A03(qa);
                ld3 = this.A00.A0H;
                NA A02 = A03.A02(ld3);
                abstractC1268Zs = ((T9) this.A00).A0A;
                Map<String, String> A05 = A02.A04(abstractC1268Zs.A0J()).A05();
                interfaceC0821Ia = ((T9) this.A00).A0C;
                str2 = this.A00.A0C;
                interfaceC0821Ia.A9H(str2, A05);
                c1203Xc = this.A00.A0G;
                c1203Xc.A0E().A2Z();
                f1 = this.A00.A04;
                AnonymousClass29.A00(f1.A0I());
            }
        }
    }
}
