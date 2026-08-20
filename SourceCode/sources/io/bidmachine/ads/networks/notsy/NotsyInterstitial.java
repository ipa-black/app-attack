package io.bidmachine.ads.networks.notsy;

import android.app.Activity;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.unified.UnifiedFullscreenAd;
import io.bidmachine.unified.UnifiedFullscreenAdCallback;
import io.bidmachine.unified.UnifiedFullscreenAdRequestParams;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.utils.BMError;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class NotsyInterstitial extends UnifiedFullscreenAd {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private Listener listener;
    private InternalNotsyInterstitialAd notsyInterstitialAd;

    @Override // io.bidmachine.unified.UnifiedAd
    public void load(ContextProvider contextProvider, UnifiedFullscreenAdCallback unifiedFullscreenAdCallback, UnifiedFullscreenAdRequestParams unifiedFullscreenAdRequestParams, UnifiedMediationParams unifiedMediationParams, NetworkAdUnit networkAdUnit) throws Throwable {
        if (new NotsyParams(unifiedMediationParams).isValid(unifiedFullscreenAdCallback)) {
            Listener listener = new Listener(unifiedFullscreenAdCallback, this);
            this.listener = listener;
            NotsyNetwork.loadInterstitial(networkAdUnit, listener);
        }
    }

    @Override // io.bidmachine.unified.UnifiedFullscreenAd
    public void show(ContextProvider contextProvider, UnifiedFullscreenAdCallback unifiedFullscreenAdCallback) throws Throwable {
        Listener listener;
        Activity activity = contextProvider.getActivity();
        if (activity == null) {
            unifiedFullscreenAdCallback.onAdShowFailed(BMError.internal("Activity is null"));
            return;
        }
        InternalNotsyInterstitialAd internalNotsyInterstitialAd = this.notsyInterstitialAd;
        if (internalNotsyInterstitialAd != null && (listener = this.listener) != null) {
            internalNotsyInterstitialAd.show(activity, listener);
        } else {
            unifiedFullscreenAdCallback.onAdShowFailed(BMError.internal("Interstitial object is null or not loaded"));
        }
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void onDestroy() {
        this.listener = null;
        InternalNotsyInterstitialAd internalNotsyInterstitialAd = this.notsyInterstitialAd;
        if (internalNotsyInterstitialAd != null) {
            internalNotsyInterstitialAd.destroy();
            this.notsyInterstitialAd = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class Listener extends NotsyFullscreenAdListener<InternalNotsyInterstitialAd> implements InternalNotsyInterstitialAdListener {
        private final NotsyInterstitial notsyInterstitial;

        private Listener(UnifiedFullscreenAdCallback unifiedFullscreenAdCallback, NotsyInterstitial notsyInterstitial) {
            super(unifiedFullscreenAdCallback);
            this.notsyInterstitial = notsyInterstitial;
        }

        @Override // io.bidmachine.ads.networks.notsy.NotsyFullscreenAdListener
        public void onAdLoaded(InternalNotsyInterstitialAd internalNotsyInterstitialAd) {
            this.notsyInterstitial.notsyInterstitialAd = internalNotsyInterstitialAd;
            super.onAdLoaded((Listener) internalNotsyInterstitialAd);
        }
    }
}
