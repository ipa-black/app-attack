package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
/* renamed from: com.facebook.ads.redexgen.X.Ry  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1073Ry extends Q9 {
    public final /* synthetic */ AbstractC1069Ru A00;

    public C1073Ry(AbstractC1069Ru abstractC1069Ru) {
        this.A00 = abstractC1069Ru;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final void A02() {
        if (!this.A00.A06.A07()) {
            this.A00.A06.A05();
            if (!TextUtils.isEmpty(this.A00.A01.A0m())) {
                this.A00.A04.A9H(this.A00.A01.A0m(), new NA().A03(this.A00.A0A).A02(this.A00.A06).A04(this.A00.A01.A0J()).A05());
                this.A00.A03.A0E().A2Z();
                AnonymousClass29.A00(this.A00.A01.A0I());
                this.A00.A08.A3t(this.A00.A09.A6t());
            }
        }
    }
}
