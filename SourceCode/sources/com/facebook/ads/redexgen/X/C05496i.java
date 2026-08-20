package com.facebook.ads.redexgen.X;

import android.os.Handler;
/* renamed from: com.facebook.ads.redexgen.X.6i  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C05496i extends LE {
    public final /* synthetic */ C0861Jq A00;

    public C05496i(C0861Jq c0861Jq) {
        this.A00 = c0861Jq;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.C8V
    /* renamed from: A00 */
    public final void A03(LJ lj) {
        RA ra;
        Handler handler;
        ra = this.A00.A01;
        if (ra == null || lj.A00().getAction() != 0) {
            return;
        }
        handler = this.A00.A04;
        handler.removeCallbacksAndMessages(null);
        this.A00.A07(new PV(this));
    }
}
