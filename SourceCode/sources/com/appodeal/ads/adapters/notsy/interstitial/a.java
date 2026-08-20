package com.appodeal.ads.adapters.notsy.interstitial;

import com.appodeal.ads.adapters.admob.interstitial.UnifiedAdmobInterstitial;
import com.appodeal.ads.adapters.admob.unified.UnifiedAdContainer;
import com.appodeal.ads.adapters.admob.unified.UnifiedAdmobNetwork;
import com.appodeal.ads.adapters.admob.unified.UnifiedAdmobRequestParams;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.unified.UnifiedInterstitialCallback;
import com.appodeal.ads.unified.UnifiedInterstitialParams;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.admanager.AdManagerInterstitialAd;
import com.google.android.gms.ads.admanager.AdManagerInterstitialAdLoadCallback;
/* loaded from: classes2.dex */
public final class a extends UnifiedAdmobInterstitial<AdManagerInterstitialAd, AdManagerAdRequest> {

    /* renamed from: com.appodeal.ads.adapters.notsy.interstitial.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0121a extends AdManagerInterstitialAdLoadCallback {

        /* renamed from: a  reason: collision with root package name */
        public final UnifiedInterstitialCallback f6547a;

        /* renamed from: b  reason: collision with root package name */
        public final UnifiedAdContainer<AdManagerInterstitialAd> f6548b;

        public C0121a(UnifiedInterstitialCallback unifiedInterstitialCallback, UnifiedAdContainer<AdManagerInterstitialAd> unifiedAdContainer) {
            this.f6547a = unifiedInterstitialCallback;
            this.f6548b = unifiedAdContainer;
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public final void onAdFailedToLoad(LoadAdError loadAdError) {
            super.onAdFailedToLoad(loadAdError);
            if (loadAdError != null) {
                this.f6547a.printError(loadAdError.getMessage(), Integer.valueOf(loadAdError.getCode()));
            }
            this.f6547a.onAdLoadFailed(UnifiedAdmobNetwork.mapError(loadAdError));
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public final void onAdLoaded(AdManagerInterstitialAd adManagerInterstitialAd) {
            AdManagerInterstitialAd adManagerInterstitialAd2 = adManagerInterstitialAd;
            super.onAdLoaded(adManagerInterstitialAd2);
            this.f6548b.setAd(adManagerInterstitialAd2);
            this.f6547a.onAdLoaded();
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void load(ContextProvider contextProvider, UnifiedAdParams unifiedAdParams, Object obj, UnifiedAdCallback unifiedAdCallback) {
        UnifiedInterstitialParams unifiedInterstitialParams = (UnifiedInterstitialParams) unifiedAdParams;
        UnifiedAdmobRequestParams unifiedAdmobRequestParams = (UnifiedAdmobRequestParams) obj;
        this.unifiedAdContainer = new UnifiedAdContainer<>();
        AdManagerInterstitialAd.load(contextProvider.getApplicationContext(), unifiedAdmobRequestParams.key, (AdManagerAdRequest) unifiedAdmobRequestParams.request, new C0121a((UnifiedInterstitialCallback) unifiedAdCallback, this.unifiedAdContainer));
    }
}
