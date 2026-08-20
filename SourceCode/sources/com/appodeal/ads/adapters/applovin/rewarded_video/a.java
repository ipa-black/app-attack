package com.appodeal.ads.adapters.applovin.rewarded_video;

import android.app.Activity;
import com.applovin.adview.AppLovinIncentivizedInterstitial;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.appodeal.ads.adapters.applovin.ApplovinNetwork;
import com.appodeal.ads.adapters.applovin.b;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.unified.UnifiedRewarded;
import com.appodeal.ads.unified.UnifiedRewardedCallback;
import com.appodeal.ads.unified.UnifiedRewardedParams;
/* loaded from: classes2.dex */
public final class a extends UnifiedRewarded<ApplovinNetwork.RequestParams> {

    /* renamed from: a  reason: collision with root package name */
    public C0106a f6468a;

    /* renamed from: b  reason: collision with root package name */
    public AppLovinIncentivizedInterstitial f6469b;

    /* renamed from: com.appodeal.ads.adapters.applovin.rewarded_video.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0106a extends b<UnifiedRewardedCallback> implements AppLovinAdDisplayListener, AppLovinAdVideoPlaybackListener {
        public C0106a(UnifiedRewardedCallback unifiedRewardedCallback) {
            super(unifiedRewardedCallback);
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public final void adDisplayed(AppLovinAd appLovinAd) {
            ((UnifiedRewardedCallback) this.f6458a).onAdShown();
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public final void adHidden(AppLovinAd appLovinAd) {
            ((UnifiedRewardedCallback) this.f6458a).onAdClosed();
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public final void adReceived(AppLovinAd appLovinAd) {
            ((UnifiedRewardedCallback) this.f6458a).onAdLoaded();
        }

        @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
        public final void videoPlaybackBegan(AppLovinAd appLovinAd) {
        }

        @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
        public final void videoPlaybackEnded(AppLovinAd appLovinAd, double d2, boolean z) {
            if (z) {
                ((UnifiedRewardedCallback) this.f6458a).onAdFinished();
            }
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void load(ContextProvider contextProvider, UnifiedAdParams unifiedAdParams, Object obj, UnifiedAdCallback unifiedAdCallback) throws Exception {
        UnifiedRewardedParams unifiedRewardedParams = (UnifiedRewardedParams) unifiedAdParams;
        ApplovinNetwork.RequestParams requestParams = (ApplovinNetwork.RequestParams) obj;
        this.f6468a = new C0106a((UnifiedRewardedCallback) unifiedAdCallback);
        AppLovinIncentivizedInterstitial create = AppLovinIncentivizedInterstitial.create(requestParams.zoneId, requestParams.sdk);
        this.f6469b = create;
        create.preload(this.f6468a);
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void onDestroy() {
        this.f6469b = null;
        this.f6468a = null;
    }

    @Override // com.appodeal.ads.unified.UnifiedFullscreenAd
    public final void show(Activity activity, UnifiedRewardedCallback unifiedRewardedCallback) {
        UnifiedRewardedCallback unifiedRewardedCallback2 = unifiedRewardedCallback;
        AppLovinIncentivizedInterstitial appLovinIncentivizedInterstitial = this.f6469b;
        if (appLovinIncentivizedInterstitial == null || !appLovinIncentivizedInterstitial.isAdReadyToDisplay()) {
            unifiedRewardedCallback2.onAdShowFailed();
            return;
        }
        AppLovinIncentivizedInterstitial appLovinIncentivizedInterstitial2 = this.f6469b;
        C0106a c0106a = this.f6468a;
        appLovinIncentivizedInterstitial2.show(activity, null, c0106a, c0106a, c0106a);
    }
}
