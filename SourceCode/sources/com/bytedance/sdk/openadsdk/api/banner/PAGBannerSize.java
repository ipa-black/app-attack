package com.bytedance.sdk.openadsdk.api.banner;

import com.explorestack.iab.vast.VastError;
/* loaded from: classes2.dex */
public final class PAGBannerSize {
    private final int Qhi;
    private final int cJ;
    public static final PAGBannerSize BANNER_W_320_H_50 = new PAGBannerSize(320, 50);
    public static final PAGBannerSize BANNER_W_300_H_250 = new PAGBannerSize(VastError.ERROR_CODE_GENERAL_WRAPPER, 250);
    public static final PAGBannerSize BANNER_W_728_H_90 = new PAGBannerSize(728, 90);

    public PAGBannerSize(int i, int i2) {
        this.Qhi = i;
        this.cJ = i2;
    }

    public int getWidth() {
        return this.Qhi;
    }

    public int getHeight() {
        return this.cJ;
    }
}
