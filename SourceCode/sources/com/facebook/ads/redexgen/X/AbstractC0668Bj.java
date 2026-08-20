package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Bj  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC0668Bj {
    public final InterfaceC0667Bh A00;

    public abstract void A0B(C0799Hc c0799Hc, long j) throws C9Y;

    public abstract boolean A0C(C0799Hc c0799Hc) throws C9Y;

    public AbstractC0668Bj(InterfaceC0667Bh interfaceC0667Bh) {
        this.A00 = interfaceC0667Bh;
    }

    public final void A00(C0799Hc c0799Hc, long j) throws C9Y {
        if (A0C(c0799Hc)) {
            A0B(c0799Hc, j);
        }
    }
}
