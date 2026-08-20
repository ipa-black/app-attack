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
public class NotsyRewarded extends UnifiedFullscreenAd {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private Listener listener;
    private InternalNotsyRewardedAd notsyRewardedAd;

    @Override // io.bidmachine.unified.UnifiedAd
    public void load(ContextProvider contextProvider, UnifiedFullscreenAdCallback unifiedFullscreenAdCallback, UnifiedFullscreenAdRequestParams unifiedFullscreenAdRequestParams, UnifiedMediationParams unifiedMediationParams, NetworkAdUnit networkAdUnit) throws Throwable {
        if (new NotsyParams(unifiedMediationParams).isValid(unifiedFullscreenAdCallback)) {
            Listener listener = new Listener(unifiedFullscreenAdCallback, this);
            this.listener = listener;
            NotsyNetwork.loadRewarded(networkAdUnit, listener);
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
        InternalNotsyRewardedAd internalNotsyRewardedAd = this.notsyRewardedAd;
        if (internalNotsyRewardedAd != null && (listener = this.listener) != null) {
            internalNotsyRewardedAd.show(activity, listener);
        } else {
            unifiedFullscreenAdCallback.onAdShowFailed(BMError.internal("Rewarded object is null or not loaded"));
        }
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void onDestroy() {
        this.listener = null;
        InternalNotsyRewardedAd internalNotsyRewardedAd = this.notsyRewardedAd;
        if (internalNotsyRewardedAd != null) {
            internalNotsyRewardedAd.destroy();
            this.notsyRewardedAd = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class Listener extends NotsyFullscreenAdListener<InternalNotsyRewardedAd> implements InternalNotsyRewardedAdListener {
        private final NotsyRewarded notsyRewarded;

        private Listener(UnifiedFullscreenAdCallback unifiedFullscreenAdCallback, NotsyRewarded notsyRewarded) {
            super(unifiedFullscreenAdCallback);
            this.notsyRewarded = notsyRewarded;
        }

        @Override // io.bidmachine.ads.networks.notsy.NotsyFullscreenAdListener
        public void onAdLoaded(InternalNotsyRewardedAd internalNotsyRewardedAd) {
            this.notsyRewarded.notsyRewardedAd = internalNotsyRewardedAd;
            super.onAdLoaded((Listener) internalNotsyRewardedAd);
        }
    }
}
