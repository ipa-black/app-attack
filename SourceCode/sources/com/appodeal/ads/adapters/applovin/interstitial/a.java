package com.appodeal.ads.adapters.applovin.interstitial;

import android.app.Activity;
import android.text.TextUtils;
import com.applovin.adview.AppLovinInterstitialAd;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdService;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdk;
import com.appodeal.ads.adapters.applovin.ApplovinNetwork;
import com.appodeal.ads.adapters.applovin.b;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.unified.UnifiedInterstitial;
import com.appodeal.ads.unified.UnifiedInterstitialCallback;
import com.appodeal.ads.unified.UnifiedInterstitialParams;
/* loaded from: classes2.dex */
public final class a extends UnifiedInterstitial<ApplovinNetwork.RequestParams> {

    /* renamed from: a  reason: collision with root package name */
    public C0104a f6461a;

    /* renamed from: b  reason: collision with root package name */
    public AppLovinSdk f6462b;

    /* renamed from: c  reason: collision with root package name */
    public AppLovinAd f6463c;

    /* renamed from: com.appodeal.ads.adapters.applovin.interstitial.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0104a extends b<UnifiedInterstitialCallback> implements AppLovinAdDisplayListener {

        /* renamed from: b  reason: collision with root package name */
        public final a f6464b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f6465c;

        public C0104a(UnifiedInterstitialCallback unifiedInterstitialCallback, a aVar, boolean z) {
            super(unifiedInterstitialCallback);
            this.f6464b = aVar;
            this.f6465c = z;
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public final void adDisplayed(AppLovinAd appLovinAd) {
            ((UnifiedInterstitialCallback) this.f6458a).onAdShown();
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public final void adHidden(AppLovinAd appLovinAd) {
            ((UnifiedInterstitialCallback) this.f6458a).onAdClosed();
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public final void adReceived(AppLovinAd appLovinAd) {
            if (this.f6465c && appLovinAd.isVideoAd()) {
                ((UnifiedInterstitialCallback) this.f6458a).onAdLoadFailed(LoadingError.IncorrectCreative);
                return;
            }
            com.appodeal.ads.adapters.applovin.a.a(appLovinAd);
            this.f6464b.f6463c = appLovinAd;
            ((UnifiedInterstitialCallback) this.f6458a).onAdLoaded();
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void load(ContextProvider contextProvider, UnifiedAdParams unifiedAdParams, Object obj, UnifiedAdCallback unifiedAdCallback) throws Exception {
        UnifiedInterstitialParams unifiedInterstitialParams = (UnifiedInterstitialParams) unifiedAdParams;
        ApplovinNetwork.RequestParams requestParams = (ApplovinNetwork.RequestParams) obj;
        UnifiedInterstitialCallback unifiedInterstitialCallback = (UnifiedInterstitialCallback) unifiedAdCallback;
        boolean optBoolean = requestParams.jsonData.optBoolean("check_video");
        this.f6462b = requestParams.sdk;
        this.f6461a = new C0104a(unifiedInterstitialCallback, this, optBoolean);
        AppLovinAd a2 = com.appodeal.ads.adapters.applovin.a.a(requestParams.zoneId);
        this.f6463c = a2;
        if (a2 != null) {
            unifiedInterstitialCallback.onAdLoaded();
            return;
        }
        AppLovinAdService adService = this.f6462b.getAdService();
        if (TextUtils.isEmpty(requestParams.zoneId)) {
            adService.loadNextAd(AppLovinAdSize.INTERSTITIAL, this.f6461a);
        } else {
            adService.loadNextAdForZoneId(requestParams.zoneId, this.f6461a);
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void onDestroy() {
        this.f6463c = null;
        this.f6462b = null;
        this.f6461a = null;
    }

    @Override // com.appodeal.ads.unified.UnifiedFullscreenAd
    public final void show(Activity activity, UnifiedInterstitialCallback unifiedInterstitialCallback) {
        UnifiedInterstitialCallback unifiedInterstitialCallback2 = unifiedInterstitialCallback;
        if (this.f6463c == null) {
            unifiedInterstitialCallback2.onAdShowFailed();
            return;
        }
        AppLovinInterstitialAdDialog create = AppLovinInterstitialAd.create(this.f6462b, activity);
        create.setAdDisplayListener(this.f6461a);
        create.setAdClickListener(this.f6461a);
        create.showAndRender(this.f6463c);
    }
}
