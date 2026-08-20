package com.appodeal.ads.adapters.meta.interstitial;

import android.app.Activity;
import com.appodeal.ads.adapters.meta.MetaNetwork;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.unified.UnifiedInterstitial;
import com.appodeal.ads.unified.UnifiedInterstitialCallback;
import com.appodeal.ads.unified.UnifiedInterstitialParams;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdListener;
/* loaded from: classes2.dex */
public final class a extends UnifiedInterstitial<MetaNetwork.RequestParams> {

    /* renamed from: a  reason: collision with root package name */
    public InterstitialAd f6516a;

    /* renamed from: com.appodeal.ads.adapters.meta.interstitial.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0117a implements InterstitialAdListener {

        /* renamed from: a  reason: collision with root package name */
        public final UnifiedInterstitialCallback f6517a;

        public C0117a(UnifiedInterstitialCallback unifiedInterstitialCallback) {
            this.f6517a = unifiedInterstitialCallback;
        }

        @Override // com.facebook.ads.AdListener
        public final void onAdClicked(Ad ad) {
            this.f6517a.onAdClicked();
        }

        @Override // com.facebook.ads.AdListener
        public final void onAdLoaded(Ad ad) {
            this.f6517a.onAdLoaded();
        }

        @Override // com.facebook.ads.AdListener
        public final void onError(Ad ad, AdError adError) {
            if (ad != null) {
                ad.destroy();
            }
            if (adError != null) {
                this.f6517a.printError(adError.getErrorMessage(), Integer.valueOf(adError.getErrorCode()));
            }
            this.f6517a.onAdLoadFailed(MetaNetwork.mapError(adError));
        }

        @Override // com.facebook.ads.InterstitialAdListener
        public final void onInterstitialDismissed(Ad ad) {
            if (ad != null) {
                ad.destroy();
            }
            this.f6517a.onAdClosed();
        }

        @Override // com.facebook.ads.InterstitialAdListener
        public final void onInterstitialDisplayed(Ad ad) {
        }

        @Override // com.facebook.ads.AdListener
        public final void onLoggingImpression(Ad ad) {
            this.f6517a.onAdShown();
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void load(ContextProvider contextProvider, UnifiedAdParams unifiedAdParams, Object obj, UnifiedAdCallback unifiedAdCallback) {
        UnifiedInterstitialParams unifiedInterstitialParams = (UnifiedInterstitialParams) unifiedAdParams;
        InterstitialAd interstitialAd = new InterstitialAd(contextProvider.getApplicationContext(), ((MetaNetwork.RequestParams) obj).metaKey);
        this.f6516a = interstitialAd;
        interstitialAd.loadAd(interstitialAd.buildLoadAdConfig().withAdListener(new C0117a((UnifiedInterstitialCallback) unifiedAdCallback)).build());
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void onDestroy() {
        InterstitialAd interstitialAd = this.f6516a;
        if (interstitialAd != null) {
            interstitialAd.destroy();
            this.f6516a = null;
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedFullscreenAd
    public final void show(Activity activity, UnifiedInterstitialCallback unifiedInterstitialCallback) {
        UnifiedInterstitialCallback unifiedInterstitialCallback2 = unifiedInterstitialCallback;
        InterstitialAd interstitialAd = this.f6516a;
        if (interstitialAd == null || !interstitialAd.isAdLoaded() || this.f6516a.isAdInvalidated()) {
            unifiedInterstitialCallback2.onAdShowFailed();
        } else {
            this.f6516a.show();
        }
    }
}
