package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Re  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1053Re implements O4 {
    public final /* synthetic */ C1052Rd A00;

    public C1053Re(C1052Rd c1052Rd) {
        this.A00 = c1052Rd;
    }

    @Override // com.facebook.ads.redexgen.X.O4
    public final void AD4(View view) {
        if (this.A00.A09) {
            this.A00.A07 = false;
        }
    }

    @Override // com.facebook.ads.redexgen.X.O4
    public final void AD6(View view) {
        SF sf = (SF) view;
        sf.A0i();
        if (this.A00.A09) {
            this.A00.A07 = true;
        }
        if (this.A00.A04.A0Z() && ((Integer) sf.getTag(-1593835536)).intValue() == 0) {
            this.A00.A04.A0U();
        }
    }
}
