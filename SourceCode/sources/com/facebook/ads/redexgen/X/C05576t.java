package com.facebook.ads.redexgen.X;

import android.os.Handler;
/* renamed from: com.facebook.ads.redexgen.X.6t  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C05576t extends LE {
    public final /* synthetic */ C0867Jx A00;

    public C05576t(C0867Jx c0867Jx) {
        this.A00 = c0867Jx;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.C8V
    /* renamed from: A00 */
    public final void A03(LJ lj) {
        RA ra;
        boolean z;
        Handler handler;
        boolean A0D;
        boolean z2;
        Handler handler2;
        int i;
        ra = this.A00.A01;
        if (ra == null) {
            return;
        }
        z = this.A00.A03;
        if (z || lj.A00().getAction() != 0) {
            return;
        }
        handler = this.A00.A05;
        handler.removeCallbacksAndMessages(null);
        A0D = this.A00.A0D(EnumC1003Pg.A05);
        if (A0D) {
            this.A00.A03();
            this.A00.A06(true, false);
        }
        z2 = this.A00.A02;
        if (!z2) {
            return;
        }
        handler2 = this.A00.A05;
        K9 k9 = new K9(this);
        i = this.A00.A00;
        handler2.postDelayed(k9, i);
    }
}
