package com.facebook.ads.redexgen.X;

import android.view.View;
/* loaded from: assets/audience_network.dex */
public class MN implements View.OnClickListener {
    public final /* synthetic */ C1095Su A00;

    public MN(C1095Su c1095Su) {
        this.A00 = c1095Su;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (C0864Jt.A02(this)) {
            return;
        }
        try {
            this.A00.A0B.ABj(C2F.A03);
        } catch (Throwable th) {
            C0864Jt.A00(th, this);
        }
    }
}
