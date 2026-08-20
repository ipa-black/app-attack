package com.appodeal.ads.adapters.admob.interstitial;

import android.app.Activity;
import com.appodeal.ads.adapters.admob.unified.UnifiedAdContainer;
import com.appodeal.ads.adapters.admob.unified.UnifiedAdmobFullscreenDisplayListener;
import com.appodeal.ads.adapters.admob.unified.UnifiedAdmobRequestParams;
import com.appodeal.ads.unified.UnifiedInterstitial;
import com.appodeal.ads.unified.UnifiedInterstitialCallback;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.interstitial.InterstitialAd;
/* loaded from: classes2.dex */
public abstract class UnifiedAdmobInterstitial<InterstitialType extends InterstitialAd, AdRequestType extends AdRequest> extends UnifiedInterstitial<UnifiedAdmobRequestParams<AdRequestType>> {
    public UnifiedAdContainer<InterstitialType> unifiedAdContainer;

    @Override // com.appodeal.ads.unified.UnifiedAd
    public void onDestroy() {
        UnifiedAdContainer<InterstitialType> unifiedAdContainer = this.unifiedAdContainer;
        if (unifiedAdContainer != null) {
            unifiedAdContainer.destroy();
            this.unifiedAdContainer = null;
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedFullscreenAd
    public void show(Activity activity, UnifiedInterstitialCallback unifiedInterstitialCallback) {
        UnifiedAdContainer<InterstitialType> unifiedAdContainer = this.unifiedAdContainer;
        InterstitialType ad = unifiedAdContainer != null ? unifiedAdContainer.getAd() : null;
        if (ad == null) {
            unifiedInterstitialCallback.onAdShowFailed();
            return;
        }
        ad.setFullScreenContentCallback(new UnifiedAdmobFullscreenDisplayListener(unifiedInterstitialCallback));
        ad.show(activity);
    }
}
