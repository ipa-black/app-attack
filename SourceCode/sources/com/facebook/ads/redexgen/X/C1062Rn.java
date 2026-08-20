package com.facebook.ads.redexgen.X;

import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.ads.redexgen.X.Rn  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1062Rn extends K1 {
    public final /* synthetic */ AnonymousClass87 A00;

    public C1062Rn(AnonymousClass87 anonymousClass87) {
        this.A00 = anonymousClass87;
    }

    @Override // com.facebook.ads.redexgen.X.K1
    public final void A06() {
        AbstractC0954Ni abstractC0954Ni;
        int closeButtonStyle;
        AtomicBoolean atomicBoolean;
        AbstractC0954Ni abstractC0954Ni2;
        abstractC0954Ni = this.A00.A00;
        if (abstractC0954Ni != null) {
            abstractC0954Ni2 = this.A00.A00;
            abstractC0954Ni2.A0a();
        }
        AbstractC0902Li abstractC0902Li = this.A00.A07;
        closeButtonStyle = this.A00.getCloseButtonStyle();
        abstractC0902Li.setToolbarActionMode(closeButtonStyle);
        atomicBoolean = this.A00.A05;
        atomicBoolean.set(true);
    }
}
