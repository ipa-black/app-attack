package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Nf  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC0951Nf implements View.OnClickListener {
    public final /* synthetic */ View$OnClickListenerC1075Sa A00;
    public final /* synthetic */ String A01;

    public View$OnClickListenerC0951Nf(View$OnClickListenerC1075Sa view$OnClickListenerC1075Sa, String str) {
        this.A00 = view$OnClickListenerC1075Sa;
        this.A01 = str;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (C0864Jt.A02(this)) {
            return;
        }
        try {
            this.A00.A09(this.A01);
        } catch (Throwable th) {
            C0864Jt.A00(th, this);
        }
    }
}
