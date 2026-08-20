package com.facebook.ads.redexgen.X;

import android.view.View;
/* loaded from: assets/audience_network.dex */
public final class PS implements PI {
    public final View A00;
    public final C1203Xc A01;

    public PS(C1203Xc c1203Xc, View view) {
        this.A01 = c1203Xc;
        this.A00 = view;
    }

    @Override // com.facebook.ads.redexgen.X.PI
    public final double A82() {
        QB result = QA.A0E(this.A00, 0, this.A01);
        return result.A00();
    }
}
