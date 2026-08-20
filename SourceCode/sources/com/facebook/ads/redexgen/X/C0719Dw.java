package com.facebook.ads.redexgen.X;

import android.widget.FrameLayout;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdLayout;
/* renamed from: com.facebook.ads.redexgen.X.Dw  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0719Dw extends Y5 {
    public P9 A00;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final void A04(NativeAdLayout nativeAdLayout, C1203Xc c1203Xc, NativeAd nativeAd, J0 j0) {
        NU nu = new NU(c1203Xc);
        MediaView mediaView = new MediaView(c1203Xc);
        AdOptionsView adOptionsView = new AdOptionsView(c1203Xc, nativeAd, nativeAdLayout);
        j0.A09(adOptionsView, 28);
        this.A00 = new RG(c1203Xc, nativeAd, j0, C1115Tp.A0L(nativeAd.getInternalNativeAd()).A17(), nu, mediaView, adOptionsView);
        LL.A0M(nativeAdLayout, j0.A00());
        nativeAd.registerViewForInteraction(nativeAdLayout, mediaView, nu, this.A00.getViewsForInteraction());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        nativeAdLayout.addView(this.A00.getView(), layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.C5K, com.facebook.ads.internal.api.AdComponentViewParentApi
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.A00.unregisterView();
    }
}
