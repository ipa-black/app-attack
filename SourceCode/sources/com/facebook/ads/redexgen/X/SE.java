package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;
/* loaded from: assets/audience_network.dex */
public class SE implements N9 {
    public final WeakReference<AbstractC06088x> A00;

    public SE(AbstractC06088x abstractC06088x) {
        this.A00 = new WeakReference<>(abstractC06088x);
    }

    @Override // com.facebook.ads.redexgen.X.N9
    public final void ABA(boolean z) {
        AbstractC06088x cardLayout = this.A00.get();
        if (cardLayout != null) {
            cardLayout.A06 = z;
            cardLayout.A03();
        }
    }
}
