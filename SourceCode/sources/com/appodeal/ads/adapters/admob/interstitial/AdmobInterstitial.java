package com.appodeal.ads.adapters.admob.interstitial;

import com.appodeal.ads.adapters.admob.unified.UnifiedAdContainer;
import com.appodeal.ads.adapters.admob.unified.UnifiedAdmobNetwork;
import com.appodeal.ads.adapters.admob.unified.UnifiedAdmobRequestParams;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.unified.UnifiedInterstitialCallback;
import com.appodeal.ads.unified.UnifiedInterstitialParams;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;
/* loaded from: classes2.dex */
public class AdmobInterstitial extends UnifiedAdmobInterstitial<InterstitialAd, AdRequest> {

    /* loaded from: classes2.dex */
    public static final class a extends InterstitialAdLoadCallback {

        /* renamed from: a  reason: collision with root package name */
        public final UnifiedInterstitialCallback f6446a;

        /* renamed from: b  reason: collision with root package name */
        public final UnifiedAdContainer<InterstitialAd> f6447b;

        public a(UnifiedInterstitialCallback unifiedInterstitialCallback, UnifiedAdContainer<InterstitialAd> unifiedAdContainer) {
            this.f6446a = unifiedInterstitialCallback;
            this.f6447b = unifiedAdContainer;
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public final void onAdFailedToLoad(LoadAdError loadAdError) {
            super.onAdFailedToLoad(loadAdError);
            if (loadAdError != null) {
                this.f6446a.printError(loadAdError.getMessage(), Integer.valueOf(loadAdError.getCode()));
            }
            this.f6446a.onAdLoadFailed(UnifiedAdmobNetwork.mapError(loadAdError));
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public final void onAdLoaded(InterstitialAd interstitialAd) {
            InterstitialAd interstitialAd2 = interstitialAd;
            super.onAdLoaded(interstitialAd2);
            this.f6447b.setAd(interstitialAd2);
            this.f6446a.onAdLoaded();
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public void load(ContextProvider contextProvider, UnifiedInterstitialParams unifiedInterstitialParams, UnifiedAdmobRequestParams<AdRequest> unifiedAdmobRequestParams, UnifiedInterstitialCallback unifiedInterstitialCallback) {
        this.unifiedAdContainer = new UnifiedAdContainer<>();
        InterstitialAd.load(contextProvider.getApplicationContext(), unifiedAdmobRequestParams.key, unifiedAdmobRequestParams.request, new a(unifiedInterstitialCallback, this.unifiedAdContainer));
    }
}
