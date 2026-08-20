package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Mh  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC0927Mh implements View.OnClickListener {
    public final /* synthetic */ C0932Mm A00;

    public View$OnClickListenerC0927Mh(C0932Mm c0932Mm) {
        this.A00 = c0932Mm;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        InterfaceC0931Ml interfaceC0931Ml;
        InterfaceC0931Ml interfaceC0931Ml2;
        if (C0864Jt.A02(this)) {
            return;
        }
        try {
            interfaceC0931Ml = this.A00.A04;
            if (interfaceC0931Ml == null) {
                return;
            }
            interfaceC0931Ml2 = this.A00.A04;
            interfaceC0931Ml2.AAW();
        } catch (Throwable th) {
            C0864Jt.A00(th, this);
        }
    }
}
