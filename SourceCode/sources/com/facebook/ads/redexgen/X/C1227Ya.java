package com.facebook.ads.redexgen.X;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* renamed from: com.facebook.ads.redexgen.X.Ya  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1227Ya implements InterfaceC05164y {
    public final /* synthetic */ E9 A00;

    public C1227Ya(E9 e9) {
        this.A00 = e9;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC05164y
    public final void ADd(AbstractC05094r abstractC05094r, C4U c4u, C4U c4u2) {
        this.A00.A1o(abstractC05094r, c4u, c4u2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC05164y
    public final void ADf(AbstractC05094r abstractC05094r, @NonNull C4U c4u, @Nullable C4U c4u2) {
        this.A00.A0r.A0c(abstractC05094r);
        this.A00.A1p(abstractC05094r, c4u, c4u2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC05164y
    public final void ADh(AbstractC05094r abstractC05094r, @NonNull C4U c4u, @NonNull C4U c4u2) {
        abstractC05094r.A0Z(false);
        if (this.A00.A0C) {
            if (this.A00.A05.A0H(abstractC05094r, abstractC05094r, c4u, c4u2)) {
                this.A00.A1N();
            }
        } else if (!this.A00.A05.A0G(abstractC05094r, c4u, c4u2)) {
        } else {
            this.A00.A1N();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC05164y
    public final void AFi(AbstractC05094r abstractC05094r) {
        this.A00.A06.A1D(abstractC05094r.A0H, this.A00.A0r);
    }
}
