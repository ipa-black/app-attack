package io.bidmachine.ads.networks.notsy;

import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.unified.UnifiedBannerAd;
import io.bidmachine.unified.UnifiedBannerAdCallback;
import io.bidmachine.unified.UnifiedBannerAdRequestParams;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.utils.BMError;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class NotsyBanner extends UnifiedBannerAd {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private InternalNotsyBannerAdListener listener;
    private InternalNotsyBannerAd notsyBannerAd;

    @Override // io.bidmachine.unified.UnifiedAd
    public void load(ContextProvider contextProvider, UnifiedBannerAdCallback unifiedBannerAdCallback, UnifiedBannerAdRequestParams unifiedBannerAdRequestParams, UnifiedMediationParams unifiedMediationParams, NetworkAdUnit networkAdUnit) throws Throwable {
        if (new NotsyParams(unifiedMediationParams).isValid(unifiedBannerAdCallback)) {
            Listener listener = new Listener(unifiedBannerAdCallback);
            this.listener = listener;
            NotsyNetwork.loadBanner(networkAdUnit, listener);
        }
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void onDestroy() {
        this.listener = null;
        InternalNotsyBannerAd internalNotsyBannerAd = this.notsyBannerAd;
        if (internalNotsyBannerAd != null) {
            internalNotsyBannerAd.destroy();
            this.notsyBannerAd = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class Listener implements InternalNotsyBannerAdListener {
        private final UnifiedBannerAdCallback callback;
        private final NotsyBanner notsyBanner;

        @Override // io.bidmachine.ads.networks.notsy.InternalNotsyAdPresentListener
        public void onAdShown() {
        }

        private Listener(NotsyBanner notsyBanner, UnifiedBannerAdCallback unifiedBannerAdCallback) {
            this.notsyBanner = notsyBanner;
            this.callback = unifiedBannerAdCallback;
        }

        @Override // io.bidmachine.ads.networks.notsy.InternalNotsyAdLoadListener
        public void onAdLoaded(InternalNotsyBannerAd internalNotsyBannerAd) {
            this.notsyBanner.notsyBannerAd = internalNotsyBannerAd;
            this.callback.onAdLoaded(internalNotsyBannerAd.getAdView());
        }

        @Override // io.bidmachine.ads.networks.notsy.InternalNotsyAdLoadListener
        public void onAdLoadFailed(BMError bMError) {
            this.callback.onAdLoadFailed(bMError);
        }

        @Override // io.bidmachine.ads.networks.notsy.InternalNotsyAdPresentListener
        public void onAdShowFailed(BMError bMError) {
            this.callback.onAdShowFailed(bMError);
        }

        @Override // io.bidmachine.ads.networks.notsy.InternalNotsyAdPresentListener
        public void onAdClicked() {
            this.callback.onAdClicked();
        }
    }
}
