package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Ma  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC0920Ma implements View.OnClickListener {
    public final /* synthetic */ C1093Ss A00;

    public View$OnClickListenerC0920Ma(C1093Ss c1093Ss) {
        this.A00 = c1093Ss;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (C0864Jt.A02(this)) {
            return;
        }
        try {
            this.A00.A0B.A86();
        } catch (Throwable th) {
            C0864Jt.A00(th, this);
        }
    }
}
