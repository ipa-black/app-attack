package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Oo  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC0985Oo implements View.OnClickListener {
    public final /* synthetic */ C0986Op A00;

    public View$OnClickListenerC0985Oo(C0986Op c0986Op) {
        this.A00 = c0986Op;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C6G c6g;
        if (C0864Jt.A02(this)) {
            return;
        }
        try {
            c6g = this.A00.A05;
            c6g.performClick();
        } catch (Throwable th) {
            C0864Jt.A00(th, this);
        }
    }
}
