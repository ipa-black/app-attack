package io.bidmachine.ads.networks.meta_audience;

import com.facebook.ads.Ad;
import com.facebook.ads.RewardedVideoAd;
import com.facebook.ads.RewardedVideoAdListener;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.unified.UnifiedFullscreenAd;
import io.bidmachine.unified.UnifiedFullscreenAdCallback;
import io.bidmachine.unified.UnifiedFullscreenAdRequestParams;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.utils.BMError;
/* loaded from: classes5.dex */
class MetaAudienceRewarded extends UnifiedFullscreenAd {
    private Listener listener;
    private RewardedVideoAd rewardedVideoAd;

    @Override // io.bidmachine.unified.UnifiedAd
    public void load(ContextProvider contextProvider, UnifiedFullscreenAdCallback unifiedFullscreenAdCallback, UnifiedFullscreenAdRequestParams unifiedFullscreenAdRequestParams, UnifiedMediationParams unifiedMediationParams, NetworkAdUnit networkAdUnit) throws Throwable {
        MetaAudienceParams metaAudienceParams = new MetaAudienceParams(unifiedMediationParams);
        if (metaAudienceParams.isValid(unifiedFullscreenAdCallback)) {
            this.listener = new Listener(unifiedFullscreenAdCallback);
            RewardedVideoAd rewardedVideoAd = new RewardedVideoAd(contextProvider.getContext(), metaAudienceParams.placementId);
            this.rewardedVideoAd = rewardedVideoAd;
            rewardedVideoAd.loadAd(rewardedVideoAd.buildLoadAdConfig().withAdListener(this.listener).withBid(metaAudienceParams.bidPayload).withFailOnCacheFailureEnabled(false).build());
        }
    }

    @Override // io.bidmachine.unified.UnifiedFullscreenAd
    public void show(ContextProvider contextProvider, UnifiedFullscreenAdCallback unifiedFullscreenAdCallback) throws Throwable {
        RewardedVideoAd rewardedVideoAd = this.rewardedVideoAd;
        if (rewardedVideoAd != null && rewardedVideoAd.isAdLoaded() && !this.rewardedVideoAd.isAdInvalidated()) {
            this.rewardedVideoAd.show();
        } else {
            unifiedFullscreenAdCallback.onAdShowFailed(BMError.internal("Rewarded object is null or not loaded or invalidated"));
        }
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void onDestroy() {
        this.listener = null;
        RewardedVideoAd rewardedVideoAd = this.rewardedVideoAd;
        if (rewardedVideoAd != null) {
            rewardedVideoAd.destroy();
            this.rewardedVideoAd = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class Listener extends BaseMetaAudienceListener<UnifiedFullscreenAdCallback> implements RewardedVideoAdListener {
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

        @Override // com.facebook.ads.RewardedVideoAdListener
        public void onRewardedVideoCompleted() {
            getCallback().onAdFinished();
        }

        @Override // com.facebook.ads.RewardedVideoAdListener
        public void onRewardedVideoClosed() {
            getCallback().onAdClosed();
        }
    }
}
