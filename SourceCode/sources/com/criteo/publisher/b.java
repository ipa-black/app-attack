package com.criteo.publisher;

import com.criteo.publisher.model.BannerAdUnit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BannerLogMessage.kt */
/* loaded from: classes2.dex */
public final class b {
    static {
        new b();
    }

    private b() {
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e a(BannerAdUnit bannerAdUnit) {
        return new com.criteo.publisher.logging.e(0, "BannerView initialized for " + bannerAdUnit, null, null, 13, null);
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e c(CriteoBannerView bannerView) {
        Intrinsics.checkParameterIsNotNull(bannerView, "bannerView");
        return new com.criteo.publisher.logging.e(0, "BannerView(" + bannerView.bannerAdUnit + ") is loading", null, null, 13, null);
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e a(CriteoBannerView bannerView, Bid bid) {
        Intrinsics.checkParameterIsNotNull(bannerView, "bannerView");
        return new com.criteo.publisher.logging.e(0, "BannerView(" + bannerView.bannerAdUnit + ") is loading with bid " + (bid != null ? c.a(bid) : null), null, null, 13, null);
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e b(CriteoBannerView criteoBannerView) {
        return new com.criteo.publisher.logging.e(0, "BannerView(" + (criteoBannerView != null ? criteoBannerView.bannerAdUnit : null) + ") is loaded", null, null, 13, null);
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e a(CriteoBannerView criteoBannerView) {
        return new com.criteo.publisher.logging.e(0, "BannerView(" + (criteoBannerView != null ? criteoBannerView.bannerAdUnit : null) + ") failed to load", null, null, 13, null);
    }
}
