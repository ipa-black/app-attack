package com.facebook.ads.redexgen.X;

import android.view.animation.Animation;
/* renamed from: com.facebook.ads.redexgen.X.Rm  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1061Rm extends LK {
    public final /* synthetic */ C1060Rl A00;

    public C1061Rm(C1060Rl c1060Rl) {
        this.A00 = c1060Rl;
    }

    @Override // com.facebook.ads.redexgen.X.LK, android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        LL.A0H(this.A00.A01);
        this.A00.A00.ABN();
    }
}
