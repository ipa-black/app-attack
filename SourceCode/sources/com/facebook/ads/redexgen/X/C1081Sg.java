package com.facebook.ads.redexgen.X;

import android.os.Handler;
/* renamed from: com.facebook.ads.redexgen.X.Sg  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1081Sg extends K1 {
    public final /* synthetic */ N8 A00;

    public C1081Sg(N8 n8) {
        this.A00 = n8;
    }

    @Override // com.facebook.ads.redexgen.X.K1
    public final void A06() {
        boolean z;
        Handler handler;
        Runnable runnable;
        this.A00.A03();
        z = this.A00.A08;
        if (z) {
            handler = this.A00.A0D;
            runnable = this.A00.A0F;
            handler.postDelayed(runnable, 250L);
        }
    }
}
