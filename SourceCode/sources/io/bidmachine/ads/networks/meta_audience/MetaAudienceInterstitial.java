package io.bidmachine.ads.networks.meta_audience;

import com.facebook.ads.Ad;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdListener;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.unified.UnifiedFullscreenAd;
import io.bidmachine.unified.UnifiedFullscreenAdCallback;
import io.bidmachine.unified.UnifiedFullscreenAdRequestParams;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.utils.BMError;
/* loaded from: classes5.dex */
class MetaAudienceInterstitial extends UnifiedFullscreenAd {
    private InterstitialAd interstitialAd;
    private Listener listener;

    @Override // io.bidmachine.unified.UnifiedAd
    public void load(ContextProvider contextProvider, UnifiedFullscreenAdCallback unifiedFullscreenAdCallback, UnifiedFullscreenAdRequestParams unifiedFullscreenAdRequestParams, UnifiedMediationParams unifiedMediationParams, NetworkAdUnit networkAdUnit) throws Throwable {
        MetaAudienceParams metaAudienceParams = new MetaAudienceParams(unifiedMediationParams);
        if (metaAudienceParams.isValid(unifiedFullscreenAdCallback)) {
            this.listener = new Listener(unifiedFullscreenAdCallback);
            InterstitialAd interstitialAd = new InterstitialAd(contextProvider.getContext(), metaAudienceParams.placementId);
            this.interstitialAd = interstitialAd;
            interstitialAd.loadAd(interstitialAd.buildLoadAdConfig().withAdListener(this.listener).withBid(metaAudienceParams.bidPayload).build());
        }
    }

    @Override // io.bidmachine.unified.UnifiedFullscreenAd
    public void show(ContextProvider contextProvider, UnifiedFullscreenAdCallback unifiedFullscreenAdCallback) throws Throwable {
        InterstitialAd interstitialAd = this.interstitialAd;
        if (interstitialAd != null && interstitialAd.isAdLoaded() && !this.interstitialAd.isAdInvalidated()) {
            this.interstitialAd.show();
        } else {
            unifiedFullscreenAdCallback.onAdShowFailed(BMError.internal("Interstitial object is null or not loaded or invalidated"));
        }
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void onDestroy() {
        this.listener = null;
        InterstitialAd interstitialAd = this.interstitialAd;
        if (interstitialAd != null) {
            interstitialAd.destroy();
            this.interstitialAd = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class Listener extends BaseMetaAudienceListener<UnifiedFullscreenAdCallback> implements InterstitialAdListener {
        @Override // com.facebook.ads.InterstitialAdListener
        public void onInterstitialDisplayed(Ad ad) {
        }

        Listener(UnifiedFullscreenAdCallback unifiedFullscreenAdCallback) {
            super(unifiedFullscreenAdCallback);
        }

        @Override // com.facebook.ads.AdListener
        public void onAdLoaded(Ad ad) {
            getCallback().onAdLoaded();
        }

        @Override // com.facebook.ads.AdListener
        public void onLoggingImpression(Ad ad) {
            getCallback().onAdShown();
        }

        @Override // com.facebook.ads.InterstitialAdListener
        public void onInterstitialDismissed(Ad ad) {
            getCallback().onAdClosed();
            ad.destroy();
        }
    }
}
