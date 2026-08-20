package io.bidmachine.ads.networks.pangle;

import android.app.Activity;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.unified.UnifiedFullscreenAd;
import io.bidmachine.unified.UnifiedFullscreenAdCallback;
import io.bidmachine.unified.UnifiedFullscreenAdRequestParams;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.utils.BMError;
/* loaded from: classes5.dex */
class PangleRewardedAd extends UnifiedFullscreenAd {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private LoadListener loadListener;
    private TTAdNative ttAdNative;
    private TTRewardVideoAd ttRewardVideoAd;

    @Override // io.bidmachine.unified.UnifiedAd
    public void load(ContextProvider contextProvider, UnifiedFullscreenAdCallback unifiedFullscreenAdCallback, UnifiedFullscreenAdRequestParams unifiedFullscreenAdRequestParams, UnifiedMediationParams unifiedMediationParams, NetworkAdUnit networkAdUnit) throws Throwable {
        PangleParams pangleParams = new PangleParams(unifiedMediationParams);
        if (pangleParams.isValid(unifiedFullscreenAdCallback)) {
            AdSlot build = new AdSlot.Builder().setCodeId(pangleParams.slotId).withBid(pangleParams.bidPayload).build();
            this.loadListener = new LoadListener(this, unifiedFullscreenAdCallback);
            TTAdNative createAdNative = TTAdSdk.getAdManager().createAdNative(contextProvider.getApplicationContext());
            this.ttAdNative = createAdNative;
            createAdNative.loadRewardVideoAd(build, this.loadListener);
        }
    }

    void setTtRewardVideoAd(TTRewardVideoAd tTRewardVideoAd) {
        this.ttRewardVideoAd = tTRewardVideoAd;
    }

    @Override // io.bidmachine.unified.UnifiedFullscreenAd
    public void show(ContextProvider contextProvider, UnifiedFullscreenAdCallback unifiedFullscreenAdCallback) throws Throwable {
        Activity activity = contextProvider.getActivity();
        if (activity == null) {
            unifiedFullscreenAdCallback.onAdShowFailed(BMError.internal("Activity is null"));
            return;
        }
        TTRewardVideoAd tTRewardVideoAd = this.ttRewardVideoAd;
        if (tTRewardVideoAd == null) {
            unifiedFullscreenAdCallback.onAdShowFailed(BMError.internal("Rewarded object is null"));
            return;
        }
        tTRewardVideoAd.setRewardAdInteractionListener(new ShowListener(unifiedFullscreenAdCallback));
        this.ttRewardVideoAd.showRewardVideoAd(activity);
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void onDestroy() {
        this.ttAdNative = null;
        LoadListener loadListener = this.loadListener;
        if (loadListener != null) {
            loadListener.destroy();
            this.loadListener = null;
        }
        TTRewardVideoAd tTRewardVideoAd = this.ttRewardVideoAd;
        if (tTRewardVideoAd != null) {
            tTRewardVideoAd.setRewardAdInteractionListener((TTRewardVideoAd.RewardAdInteractionListener) null);
            this.ttRewardVideoAd = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class LoadListener implements TTAdNative.RewardVideoAdListener {
        private final UnifiedFullscreenAdCallback callback;
        private boolean isDestroyed;
        private final PangleRewardedAd pangleRewardedAd;

        public void onRewardVideoCached() {
        }

        public LoadListener(PangleRewardedAd pangleRewardedAd, UnifiedFullscreenAdCallback unifiedFullscreenAdCallback) {
            this.pangleRewardedAd = pangleRewardedAd;
            this.callback = unifiedFullscreenAdCallback;
        }

        public void onRewardVideoAdLoad(TTRewardVideoAd tTRewardVideoAd) {
            if (this.isDestroyed) {
                return;
            }
            this.pangleRewardedAd.setTtRewardVideoAd(tTRewardVideoAd);
            this.callback.onAdLoaded();
        }

        public void onError(int i, String str) {
            if (this.isDestroyed) {
                return;
            }
            this.callback.onAdLoadFailed(BMError.noFill());
        }

        public void destroy() {
            this.isDestroyed = true;
        }
    }

    /* loaded from: classes5.dex */
    private static final class ShowListener implements TTRewardVideoAd.RewardAdInteractionListener {
        private final UnifiedFullscreenAdCallback callback;

        public void onRewardVerify(boolean z, int i, String str, int i2, String str2) {
        }

        public void onSkippedVideo() {
        }

        public void onVideoError() {
        }

        public ShowListener(UnifiedFullscreenAdCallback unifiedFullscreenAdCallback) {
            this.callback = unifiedFullscreenAdCallback;
        }

        public void onAdShow() {
            this.callback.onAdShown();
        }

        public void onAdVideoBarClick() {
            this.callback.onAdClicked();
        }

        public void onAdClose() {
            this.callback.onAdClosed();
        }

        public void onVideoComplete() {
            this.callback.onAdFinished();
        }
    }
}
