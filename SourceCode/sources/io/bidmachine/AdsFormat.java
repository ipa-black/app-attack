package io.bidmachine;

import android.text.TextUtils;
import io.bidmachine.banner.BannerSize;
import io.bidmachine.unified.UnifiedAdRequestParams;
import io.bidmachine.unified.UnifiedBannerAdRequestParams;
import io.bidmachine.unified.UnifiedFullscreenAdRequestParams;
import io.bidmachine.unified.UnifiedNativeAdRequestParams;
/* loaded from: classes5.dex */
public enum AdsFormat {
    Banner("banner", new AdsFormatMatcher<UnifiedBannerAdRequestParams>(AdsType.Banner) { // from class: io.bidmachine.AdsFormat.1
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // io.bidmachine.AdsFormat.AdsFormatMatcher
        public boolean isMatch(UnifiedBannerAdRequestParams unifiedBannerAdRequestParams, AdContentType adContentType) {
            return true;
        }
    }),
    Banner_320x50("banner_320x50", new AdsFormatMatcher<UnifiedBannerAdRequestParams>(AdsType.Banner) { // from class: io.bidmachine.AdsFormat.2
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // io.bidmachine.AdsFormat.AdsFormatMatcher
        public boolean isMatch(UnifiedBannerAdRequestParams unifiedBannerAdRequestParams, AdContentType adContentType) {
            return unifiedBannerAdRequestParams.getAdRequestParameters().getBannerSize() == BannerSize.Size_320x50;
        }
    }),
    Banner_300x250("banner_300x250", new AdsFormatMatcher<UnifiedBannerAdRequestParams>(AdsType.Banner) { // from class: io.bidmachine.AdsFormat.3
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // io.bidmachine.AdsFormat.AdsFormatMatcher
        public boolean isMatch(UnifiedBannerAdRequestParams unifiedBannerAdRequestParams, AdContentType adContentType) {
            return unifiedBannerAdRequestParams.getAdRequestParameters().getBannerSize() == BannerSize.Size_300x250;
        }
    }),
    Banner_728x90("banner_728x90", new AdsFormatMatcher<UnifiedBannerAdRequestParams>(AdsType.Banner) { // from class: io.bidmachine.AdsFormat.4
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // io.bidmachine.AdsFormat.AdsFormatMatcher
        public boolean isMatch(UnifiedBannerAdRequestParams unifiedBannerAdRequestParams, AdContentType adContentType) {
            return unifiedBannerAdRequestParams.getAdRequestParameters().getBannerSize() == BannerSize.Size_728x90;
        }
    }),
    Interstitial("interstitial", new AdsFormatMatcher<UnifiedFullscreenAdRequestParams>(AdsType.Interstitial) { // from class: io.bidmachine.AdsFormat.5
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // io.bidmachine.AdsFormat.AdsFormatMatcher
        public boolean isMatch(UnifiedFullscreenAdRequestParams unifiedFullscreenAdRequestParams, AdContentType adContentType) {
            return true;
        }
    }),
    InterstitialVideo("interstitial_video", new AdsFormatMatcher<UnifiedFullscreenAdRequestParams>(AdsType.Interstitial) { // from class: io.bidmachine.AdsFormat.6
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // io.bidmachine.AdsFormat.AdsFormatMatcher
        public boolean isMatch(UnifiedFullscreenAdRequestParams unifiedFullscreenAdRequestParams, AdContentType adContentType) {
            return adContentType == AdContentType.Video;
        }
    }),
    InterstitialStatic("interstitial_static", new AdsFormatMatcher<UnifiedFullscreenAdRequestParams>(AdsType.Interstitial) { // from class: io.bidmachine.AdsFormat.7
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // io.bidmachine.AdsFormat.AdsFormatMatcher
        public boolean isMatch(UnifiedFullscreenAdRequestParams unifiedFullscreenAdRequestParams, AdContentType adContentType) {
            return adContentType == AdContentType.Static;
        }
    }),
    Rewarded("rewarded", new AdsFormatMatcher<UnifiedFullscreenAdRequestParams>(AdsType.Rewarded) { // from class: io.bidmachine.AdsFormat.8
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // io.bidmachine.AdsFormat.AdsFormatMatcher
        public boolean isMatch(UnifiedFullscreenAdRequestParams unifiedFullscreenAdRequestParams, AdContentType adContentType) {
            return true;
        }
    }),
    RewardedVideo("rewarded_video", new AdsFormatMatcher<UnifiedFullscreenAdRequestParams>(AdsType.Rewarded) { // from class: io.bidmachine.AdsFormat.9
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // io.bidmachine.AdsFormat.AdsFormatMatcher
        public boolean isMatch(UnifiedFullscreenAdRequestParams unifiedFullscreenAdRequestParams, AdContentType adContentType) {
            return adContentType == AdContentType.Video;
        }
    }),
    RewardedStatic("rewarded_static", new AdsFormatMatcher<UnifiedFullscreenAdRequestParams>(AdsType.Rewarded) { // from class: io.bidmachine.AdsFormat.10
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // io.bidmachine.AdsFormat.AdsFormatMatcher
        public boolean isMatch(UnifiedFullscreenAdRequestParams unifiedFullscreenAdRequestParams, AdContentType adContentType) {
            return adContentType == AdContentType.Static;
        }
    }),
    Native("native", new AdsFormatMatcher<UnifiedNativeAdRequestParams>(AdsType.Native) { // from class: io.bidmachine.AdsFormat.11
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // io.bidmachine.AdsFormat.AdsFormatMatcher
        public boolean isMatch(UnifiedNativeAdRequestParams unifiedNativeAdRequestParams, AdContentType adContentType) {
            return true;
        }
    }),
    RichMedia("richmedia", new AdsFormatMatcher<UnifiedFullscreenAdRequestParams>(AdsType.RichMedia) { // from class: io.bidmachine.AdsFormat.12
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // io.bidmachine.AdsFormat.AdsFormatMatcher
        public boolean isMatch(UnifiedFullscreenAdRequestParams unifiedFullscreenAdRequestParams, AdContentType adContentType) {
            return adContentType == AdContentType.Video;
        }
    });
    
    private final AdsFormatMatcher matcher;
    private final String remoteName;

    AdsFormat(String str, AdsFormatMatcher adsFormatMatcher) {
        this.remoteName = str;
        this.matcher = adsFormatMatcher;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <T extends UnifiedAdRequestParams> boolean isMatch(AdsType adsType, T t, AdContentType adContentType) {
        return this.matcher.isMatch(adsType, t, adContentType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AdsFormat byRemoteName(String str) {
        AdsFormat[] values;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (AdsFormat adsFormat : values()) {
            if (adsFormat.remoteName.equals(str)) {
                return adsFormat;
            }
        }
        return null;
    }

    /* loaded from: classes5.dex */
    private static abstract class AdsFormatMatcher<T extends UnifiedAdRequestParams> {
        private final AdsType adsType;

        abstract boolean isMatch(T t, AdContentType adContentType);

        AdsFormatMatcher(AdsType adsType) {
            this.adsType = adsType;
        }

        final boolean isMatch(AdsType adsType, T t, AdContentType adContentType) {
            return adsType == this.adsType && isMatch(t, adContentType);
        }
    }
}
