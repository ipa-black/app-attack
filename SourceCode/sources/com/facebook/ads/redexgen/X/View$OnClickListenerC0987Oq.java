package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Oq  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC0987Oq implements View.OnClickListener {
    public final /* synthetic */ C0990Ot A00;

    public View$OnClickListenerC0987Oq(C0990Ot c0990Ot) {
        this.A00 = c0990Ot;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        InterfaceC0989Os interfaceC0989Os;
        EnumC0988Or enumC0988Or;
        if (C0864Jt.A02(this)) {
            return;
        }
        try {
            interfaceC0989Os = this.A00.A02;
            enumC0988Or = this.A00.A01;
            interfaceC0989Os.ACi(enumC0988Or);
        } catch (Throwable th) {
            C0864Jt.A00(th, this);
        }
    }
}
