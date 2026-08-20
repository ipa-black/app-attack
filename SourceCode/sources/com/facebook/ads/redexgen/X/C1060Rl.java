package com.facebook.ads.redexgen.X;

import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
/* renamed from: com.facebook.ads.redexgen.X.Rl  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1060Rl extends K1 {
    public final /* synthetic */ InterfaceC0975Od A00;
    public final /* synthetic */ C0976Oe A01;

    public C1060Rl(C0976Oe c0976Oe, InterfaceC0975Od interfaceC0975Od) {
        this.A01 = c0976Oe;
        this.A00 = interfaceC0975Od;
    }

    @Override // com.facebook.ads.redexgen.X.K1
    public final void A06() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(300L);
        alphaAnimation.setInterpolator(new AccelerateInterpolator());
        alphaAnimation.setAnimationListener(new C1061Rm(this));
        this.A01.startAnimation(alphaAnimation);
    }
}
