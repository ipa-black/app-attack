package com.appodeal.ads.adapters.meta.banner;

import android.content.Context;
import com.appodeal.ads.adapters.meta.MetaNetwork;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.unified.UnifiedBanner;
import com.appodeal.ads.unified.UnifiedBannerCallback;
import com.appodeal.ads.unified.UnifiedBannerParams;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
/* loaded from: classes2.dex */
public final class a extends UnifiedBanner<MetaNetwork.RequestParams> {

    /* renamed from: a  reason: collision with root package name */
    public AdSize f6512a;

    /* renamed from: b  reason: collision with root package name */
    public AdView f6513b;

    /* renamed from: com.appodeal.ads.adapters.meta.banner.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public final class C0116a implements AdListener {

        /* renamed from: a  reason: collision with root package name */
        public final UnifiedBannerCallback f6514a;

        public C0116a(UnifiedBannerCallback unifiedBannerCallback) {
            this.f6514a = unifiedBannerCallback;
        }

        @Override // com.facebook.ads.AdListener
        public final void onAdClicked(Ad ad) {
            this.f6514a.onAdClicked();
        }

        @Override // com.facebook.ads.AdListener
        public final void onAdLoaded(Ad ad) {
            this.f6514a.onAdLoaded(a.this.f6513b, -1, a.this.f6512a.getHeight());
        }

        @Override // com.facebook.ads.AdListener
        public final void onError(Ad ad, AdError adError) {
            if (ad != null) {
                ad.destroy();
            }
            if (adError != null) {
                this.f6514a.printError(adError.getErrorMessage(), Integer.valueOf(adError.getErrorCode()));
            }
            this.f6514a.onAdLoadFailed(MetaNetwork.mapError(adError));
        }

        @Override // com.facebook.ads.AdListener
        public final void onLoggingImpression(Ad ad) {
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void load(ContextProvider contextProvider, UnifiedAdParams unifiedAdParams, Object obj, UnifiedAdCallback unifiedAdCallback) {
        MetaNetwork.RequestParams requestParams = (MetaNetwork.RequestParams) obj;
        UnifiedBannerCallback unifiedBannerCallback = (UnifiedBannerCallback) unifiedAdCallback;
        Context applicationContext = contextProvider.getApplicationContext();
        this.f6512a = ((UnifiedBannerParams) unifiedAdParams).needLeaderBoard(applicationContext) ? AdSize.BANNER_HEIGHT_90 : AdSize.BANNER_HEIGHT_50;
        AdView adView = new AdView(applicationContext, requestParams.metaKey, this.f6512a);
        this.f6513b = adView;
        adView.loadAd(adView.buildLoadAdConfig().withAdListener(new C0116a(unifiedBannerCallback)).build());
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void onDestroy() {
        AdView adView = this.f6513b;
        if (adView != null) {
            adView.destroy();
            this.f6513b = null;
        }
        this.f6512a = null;
    }
}
