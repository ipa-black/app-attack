package com.appodeal.ads.adapters.applovin.banner;

import android.content.Context;
import com.applovin.adview.AppLovinAdView;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdSize;
import com.appodeal.ads.adapters.applovin.ApplovinNetwork;
import com.appodeal.ads.adapters.applovin.b;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.unified.UnifiedBanner;
import com.appodeal.ads.unified.UnifiedBannerCallback;
import com.appodeal.ads.unified.UnifiedBannerParams;
/* loaded from: classes2.dex */
public final class a extends UnifiedBanner<ApplovinNetwork.RequestParams> {

    /* renamed from: a  reason: collision with root package name */
    public AppLovinAdView f6459a;

    /* renamed from: com.appodeal.ads.adapters.applovin.banner.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0103a extends b<UnifiedBannerCallback> {

        /* renamed from: b  reason: collision with root package name */
        public final AppLovinAdView f6460b;

        public C0103a(UnifiedBannerCallback unifiedBannerCallback, AppLovinAdView appLovinAdView) {
            super(unifiedBannerCallback);
            this.f6460b = appLovinAdView;
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public final void adReceived(AppLovinAd appLovinAd) {
            ((UnifiedBannerCallback) this.f6458a).onAdLoaded(this.f6460b, appLovinAd.getSize().getWidth(), appLovinAd.getSize().getHeight());
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void load(ContextProvider contextProvider, UnifiedAdParams unifiedAdParams, Object obj, UnifiedAdCallback unifiedAdCallback) throws Exception {
        ApplovinNetwork.RequestParams requestParams = (ApplovinNetwork.RequestParams) obj;
        UnifiedBannerCallback unifiedBannerCallback = (UnifiedBannerCallback) unifiedAdCallback;
        Context applicationContext = contextProvider.getApplicationContext();
        AppLovinAdView appLovinAdView = new AppLovinAdView(requestParams.sdk, ((UnifiedBannerParams) unifiedAdParams).needLeaderBoard(applicationContext) ? AppLovinAdSize.LEADER : AppLovinAdSize.BANNER, requestParams.zoneId, applicationContext);
        this.f6459a = appLovinAdView;
        C0103a c0103a = new C0103a(unifiedBannerCallback, appLovinAdView);
        appLovinAdView.setAdLoadListener(c0103a);
        this.f6459a.setAdClickListener(c0103a);
        this.f6459a.loadNextAd();
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void onDestroy() {
        AppLovinAdView appLovinAdView = this.f6459a;
        if (appLovinAdView != null) {
            appLovinAdView.destroy();
            this.f6459a = null;
        }
    }
}
