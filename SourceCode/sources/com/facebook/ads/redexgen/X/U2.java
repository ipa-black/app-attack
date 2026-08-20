package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;
/* loaded from: assets/audience_network.dex */
public class U2 implements InterfaceC0838Ir {
    public WeakReference<C1115Tp> A00;

    public U2(C1115Tp c1115Tp) {
        this.A00 = new WeakReference<>(c1115Tp);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0838Ir
    public final void ABx(boolean z) {
        if (this.A00.get() != null) {
            this.A00.get().A1c(z, false);
        }
    }
}
