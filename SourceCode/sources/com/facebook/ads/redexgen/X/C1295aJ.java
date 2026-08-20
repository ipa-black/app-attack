package com.facebook.ads.redexgen.X;

import java.util.concurrent.CountDownLatch;
/* renamed from: com.facebook.ads.redexgen.X.aJ  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1295aJ extends K1 {
    public final /* synthetic */ C04110u A00;

    public C1295aJ(C04110u c04110u) {
        this.A00 = c04110u;
    }

    @Override // com.facebook.ads.redexgen.X.K1
    public final void A06() {
        C04100t c04100t;
        CountDownLatch countDownLatch;
        this.A00.A07();
        c04100t = this.A00.A02;
        c04100t.A06();
        countDownLatch = this.A00.A05;
        countDownLatch.countDown();
    }
}
