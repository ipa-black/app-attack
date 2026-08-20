package com.appodeal.ads.adapters.applovin.video;

import android.app.Activity;
import android.text.TextUtils;
import com.applovin.adview.AppLovinInterstitialAd;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdService;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdk;
import com.appodeal.ads.adapters.applovin.ApplovinNetwork;
import com.appodeal.ads.adapters.applovin.b;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.unified.UnifiedVideo;
import com.appodeal.ads.unified.UnifiedVideoCallback;
import com.appodeal.ads.unified.UnifiedVideoParams;
/* loaded from: classes2.dex */
public final class a extends UnifiedVideo<ApplovinNetwork.RequestParams> {

    /* renamed from: a  reason: collision with root package name */
    public C0107a f6470a;

    /* renamed from: b  reason: collision with root package name */
    public AppLovinSdk f6471b;

    /* renamed from: c  reason: collision with root package name */
    public AppLovinAd f6472c;

    /* renamed from: com.appodeal.ads.adapters.applovin.video.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0107a extends b<UnifiedVideoCallback> implements AppLovinAdDisplayListener, AppLovinAdVideoPlaybackListener {

        /* renamed from: b  reason: collision with root package name */
        public final a f6473b;

        public C0107a(UnifiedVideoCallback unifiedVideoCallback, a aVar) {
            super(unifiedVideoCallback);
            this.f6473b = aVar;
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public final void adDisplayed(AppLovinAd appLovinAd) {
            ((UnifiedVideoCallback) this.f6458a).onAdShown();
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public final void adHidden(AppLovinAd appLovinAd) {
            ((UnifiedVideoCallback) this.f6458a).onAdClosed();
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public final void adReceived(AppLovinAd appLovinAd) {
            com.appodeal.ads.adapters.applovin.a.a(appLovinAd);
            this.f6473b.f6472c = appLovinAd;
            ((UnifiedVideoCallback) this.f6458a).onAdLoaded();
        }

        @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
        public final void videoPlaybackBegan(AppLovinAd appLovinAd) {
        }

        @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
        public final void videoPlaybackEnded(AppLovinAd appLovinAd, double d2, boolean z) {
            if (z) {
                ((UnifiedVideoCallback) this.f6458a).onAdFinished();
            }
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void load(ContextProvider contextProvider, UnifiedAdParams unifiedAdParams, Object obj, UnifiedAdCallback unifiedAdCallback) throws Exception {
        UnifiedVideoParams unifiedVideoParams = (UnifiedVideoParams) unifiedAdParams;
        ApplovinNetwork.RequestParams requestParams = (ApplovinNetwork.RequestParams) obj;
        UnifiedVideoCallback unifiedVideoCallback = (UnifiedVideoCallback) unifiedAdCallback;
        this.f6471b = requestParams.sdk;
        this.f6470a = new C0107a(unifiedVideoCallback, this);
        AppLovinAd a2 = com.appodeal.ads.adapters.applovin.a.a(requestParams.zoneId);
        this.f6472c = a2;
        if (a2 != null) {
            unifiedVideoCallback.onAdLoaded();
            return;
        }
        AppLovinAdService adService = this.f6471b.getAdService();
        if (TextUtils.isEmpty(requestParams.zoneId)) {
            adService.loadNextAd(AppLovinAdSize.INTERSTITIAL, this.f6470a);
        } else {
            adService.loadNextAdForZoneId(requestParams.zoneId, this.f6470a);
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void onDestroy() {
        this.f6472c = null;
        this.f6471b = null;
        this.f6470a = null;
    }

    @Override // com.appodeal.ads.unified.UnifiedFullscreenAd
    public final void show(Activity activity, UnifiedVideoCallback unifiedVideoCallback) {
        UnifiedVideoCallback unifiedVideoCallback2 = unifiedVideoCallback;
        if (this.f6472c == null) {
            unifiedVideoCallback2.onAdShowFailed();
            return;
        }
        AppLovinInterstitialAdDialog create = AppLovinInterstitialAd.create(this.f6471b, activity);
        create.setAdDisplayListener(this.f6470a);
        create.setAdClickListener(this.f6470a);
        create.setAdVideoPlaybackListener(this.f6470a);
        create.showAndRender(this.f6472c);
    }
}
