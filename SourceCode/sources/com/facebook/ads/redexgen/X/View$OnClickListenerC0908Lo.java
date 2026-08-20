package com.facebook.ads.redexgen.X;

import android.view.View;
import com.facebook.ads.internal.view.FullScreenAdToolbar;
/* renamed from: com.facebook.ads.redexgen.X.Lo  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC0908Lo implements View.OnClickListener {
    public final /* synthetic */ FullScreenAdToolbar A00;

    public View$OnClickListenerC0908Lo(FullScreenAdToolbar fullScreenAdToolbar) {
        this.A00 = fullScreenAdToolbar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        InterfaceC0901Lh interfaceC0901Lh;
        M4 m4;
        InterfaceC0901Lh interfaceC0901Lh2;
        if (C0864Jt.A02(this)) {
            return;
        }
        try {
            interfaceC0901Lh = this.A00.A01;
            if (interfaceC0901Lh != null) {
                m4 = this.A00.A06;
                if (m4.A04()) {
                    interfaceC0901Lh2 = this.A00.A01;
                    interfaceC0901Lh2.AAW();
                }
            }
        } catch (Throwable th) {
            C0864Jt.A00(th, this);
        }
    }
}
