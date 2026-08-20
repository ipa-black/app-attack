package com.appodeal.ads.adapters.applovin.mrec;

import android.content.Context;
import android.widget.FrameLayout;
import com.applovin.adview.AppLovinAdView;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdSize;
import com.appodeal.ads.adapters.applovin.ApplovinNetwork;
import com.appodeal.ads.adapters.applovin.b;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.unified.UnifiedAdUtils;
import com.appodeal.ads.unified.UnifiedMrec;
import com.appodeal.ads.unified.UnifiedMrecCallback;
import com.appodeal.ads.unified.UnifiedMrecParams;
/* loaded from: classes2.dex */
public final class a extends UnifiedMrec<ApplovinNetwork.RequestParams> {

    /* renamed from: a  reason: collision with root package name */
    public AppLovinAdView f6466a;

    /* renamed from: com.appodeal.ads.adapters.applovin.mrec.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0105a extends b<UnifiedMrecCallback> {

        /* renamed from: b  reason: collision with root package name */
        public final AppLovinAdView f6467b;

        public C0105a(UnifiedMrecCallback unifiedMrecCallback, AppLovinAdView appLovinAdView) {
            super(unifiedMrecCallback);
            this.f6467b = appLovinAdView;
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public final void adReceived(AppLovinAd appLovinAd) {
            ((UnifiedMrecCallback) this.f6458a).onAdLoaded(this.f6467b);
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void load(ContextProvider contextProvider, UnifiedAdParams unifiedAdParams, Object obj, UnifiedAdCallback unifiedAdCallback) throws Exception {
        UnifiedMrecParams unifiedMrecParams = (UnifiedMrecParams) unifiedAdParams;
        ApplovinNetwork.RequestParams requestParams = (ApplovinNetwork.RequestParams) obj;
        Context applicationContext = contextProvider.getApplicationContext();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(Math.round(UnifiedAdUtils.getScreenDensity(applicationContext) * AppLovinAdSize.MREC.getWidth()), Math.round(UnifiedAdUtils.getScreenDensity(applicationContext) * AppLovinAdSize.MREC.getHeight()), 1);
        AppLovinAdView appLovinAdView = new AppLovinAdView(requestParams.sdk, AppLovinAdSize.MREC, requestParams.zoneId, applicationContext);
        this.f6466a = appLovinAdView;
        C0105a c0105a = new C0105a((UnifiedMrecCallback) unifiedAdCallback, appLovinAdView);
        appLovinAdView.setLayoutParams(layoutParams);
        this.f6466a.setAdLoadListener(c0105a);
        this.f6466a.setAdClickListener(c0105a);
        this.f6466a.loadNextAd();
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void onDestroy() {
        AppLovinAdView appLovinAdView = this.f6466a;
        if (appLovinAdView != null) {
            appLovinAdView.destroy();
            this.f6466a = null;
        }
    }
}
