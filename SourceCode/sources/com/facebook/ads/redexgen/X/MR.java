package com.facebook.ads.redexgen.X;

import android.view.View;
/* loaded from: assets/audience_network.dex */
public class MR implements View.OnClickListener {
    public final /* synthetic */ ML A00;
    public final /* synthetic */ C1094St A01;

    public MR(C1094St c1094St, ML ml) {
        this.A01 = c1094St;
        this.A00 = ml;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (C0864Jt.A02(this)) {
            return;
        }
        try {
            this.A00.A01();
            this.A01.A0B.ABj(C2F.A03);
        } catch (Throwable th) {
            C0864Jt.A00(th, this);
        }
    }
}
