package com.facebook.ads.redexgen.X;

import android.view.View;
/* loaded from: assets/audience_network.dex */
public class MV implements View.OnClickListener {
    public final /* synthetic */ C2H A00;
    public final /* synthetic */ ML A01;
    public final /* synthetic */ C1094St A02;

    public MV(C1094St c1094St, ML ml, C2H c2h) {
        this.A02 = c1094St;
        this.A01 = ml;
        this.A00 = c2h;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (C0864Jt.A02(this)) {
            return;
        }
        try {
            this.A01.A01();
            this.A02.A0B.ABs(this.A00);
        } catch (Throwable th) {
            C0864Jt.A00(th, this);
        }
    }
}
