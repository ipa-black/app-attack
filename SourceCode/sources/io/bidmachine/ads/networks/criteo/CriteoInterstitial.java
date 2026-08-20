package io.bidmachine.ads.networks.criteo;

import com.criteo.publisher.Bid;
import com.criteo.publisher.CriteoErrorCode;
import com.criteo.publisher.CriteoInterstitialAdListener;
import com.criteo.publisher.model.InterstitialAdUnit;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.unified.UnifiedFullscreenAd;
import io.bidmachine.unified.UnifiedFullscreenAdCallback;
import io.bidmachine.unified.UnifiedFullscreenAdRequestParams;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.utils.BMError;
/* loaded from: classes5.dex */
class CriteoInterstitial extends UnifiedFullscreenAd {
    private com.criteo.publisher.CriteoInterstitial criteoInterstitial;

    @Override // io.bidmachine.unified.UnifiedAd
    public void load(ContextProvider contextProvider, UnifiedFullscreenAdCallback unifiedFullscreenAdCallback, UnifiedFullscreenAdRequestParams unifiedFullscreenAdRequestParams, UnifiedMediationParams unifiedMediationParams, NetworkAdUnit networkAdUnit) throws Throwable {
        InterstitialAdUnit interstitialAdUnit = (InterstitialAdUnit) CriteoAdUnitStorage.getAdUnit(unifiedMediationParams.getString("ad_unit_id"));
        if (interstitialAdUnit == null) {
            unifiedFullscreenAdCallback.onAdLoadFailed(BMError.notFound("AdUnit"));
            return;
        }
        Bid takeBid = CriteoBidTokenStorage.takeBid(networkAdUnit);
        if (takeBid == null) {
            unifiedFullscreenAdCallback.onAdLoadFailed(BMError.notFound("Bid"));
            return;
        }
        com.criteo.publisher.CriteoInterstitial criteoInterstitial = new com.criteo.publisher.CriteoInterstitial(interstitialAdUnit);
        this.criteoInterstitial = criteoInterstitial;
        criteoInterstitial.setCriteoInterstitialAdListener(new Listener(unifiedFullscreenAdCallback));
        this.criteoInterstitial.loadAd(takeBid);
    }

    @Override // io.bidmachine.unified.UnifiedFullscreenAd
    public void show(ContextProvider contextProvider, UnifiedFullscreenAdCallback unifiedFullscreenAdCallback) throws Throwable {
        com.criteo.publisher.CriteoInterstitial criteoInterstitial = this.criteoInterstitial;
        if (criteoInterstitial != null && criteoInterstitial.isAdLoaded()) {
            this.criteoInterstitial.show();
        } else {
            unifiedFullscreenAdCallback.onAdShowFailed(BMError.internal("Interstitial object is null or not loaded"));
        }
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void onDestroy() {
        com.criteo.publisher.CriteoInterstitial criteoInterstitial = this.criteoInterstitial;
        if (criteoInterstitial != null) {
            criteoInterstitial.setCriteoInterstitialAdListener(null);
            this.criteoInterstitial = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class Listener implements CriteoInterstitialAdListener {
        private final UnifiedFullscreenAdCallback callback;

        @Override // com.criteo.publisher.CriteoInterstitialAdListener, com.criteo.publisher.k
        public void onAdLeftApplication() {
        }

        Listener(UnifiedFullscreenAdCallback unifiedFullscreenAdCallback) {
            this.callback = unifiedFullscreenAdCallback;
        }

        @Override // com.criteo.publisher.CriteoInterstitialAdListener
        public void onAdReceived(com.criteo.publisher.CriteoInterstitial criteoInterstitial) {
            this.callback.onAdLoaded();
        }

        @Override // com.criteo.publisher.CriteoInterstitialAdListener, com.criteo.publisher.k
        public void onAdFailedToReceive(CriteoErrorCode criteoErrorCode) {
            this.callback.onAdLoadFailed(CriteoAdapter.mapError(criteoErrorCode));
        }

        @Override // com.criteo.publisher.CriteoInterstitialAdListener, com.criteo.publisher.k
        public void onAdClicked() {
            this.callback.onAdClicked();
        }

        @Override // com.criteo.publisher.CriteoInterstitialAdListener
        public void onAdOpened() {
            this.callback.onAdShown();
        }

        @Override // com.criteo.publisher.CriteoInterstitialAdListener
        public void onAdClosed() {
            this.callback.onAdClosed();
        }
    }
}
