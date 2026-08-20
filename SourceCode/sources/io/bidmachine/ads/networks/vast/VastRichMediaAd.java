package io.bidmachine.ads.networks.vast;

import com.explorestack.iab.CacheControl;
import com.explorestack.iab.vast.VastRequest;
import com.explorestack.iab.vast.activity.VastView;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.unified.UnifiedBannerAdCallback;
import io.bidmachine.unified.UnifiedFullscreenAdRequestParams;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.unified.UnifiedRichMediaAd;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes5.dex */
class VastRichMediaAd extends UnifiedRichMediaAd {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final AtomicBoolean isPrepareToShowExecuted = new AtomicBoolean(false);
    private VastRichMediaAdLoadListener loadListener;
    private VastRichMediaAdShowListener showListener;
    VastRequest vastRequest;
    VastView vastView;

    @Override // io.bidmachine.unified.UnifiedAd
    public void load(ContextProvider contextProvider, UnifiedBannerAdCallback unifiedBannerAdCallback, UnifiedFullscreenAdRequestParams unifiedFullscreenAdRequestParams, UnifiedMediationParams unifiedMediationParams, NetworkAdUnit networkAdUnit) throws Throwable {
        VastParams vastParams = new VastParams(unifiedMediationParams);
        if (vastParams.isValid(unifiedBannerAdCallback)) {
            if (vastParams.cacheControl == CacheControl.PartialLoad) {
                setConsiderNetworkImpressionTracking(true);
            }
            this.showListener = new VastRichMediaAdShowListener(unifiedBannerAdCallback);
            VastView vastView = new VastView(contextProvider.getContext());
            this.vastView = vastView;
            vastView.setListener(this.showListener);
            this.loadListener = new VastRichMediaAdLoadListener(unifiedBannerAdCallback, this.vastView);
            VastRequest build = VastRequest.newBuilder().setCacheControl(vastParams.cacheControl).setPlaceholderTimeoutSec(vastParams.placeholderTimeoutSec).setVideoCloseTime(vastParams.skipOffset).setCompanionCloseTime(vastParams.companionSkipOffset).forceUseNativeCloseTime(vastParams.useNativeClose).build();
            this.vastRequest = build;
            build.loadVideoWithData(contextProvider.getContext(), vastParams.creativeAdm, this.loadListener);
        }
    }

    @Override // io.bidmachine.unified.UnifiedViewAd
    public void prepareToShow() throws Throwable {
        VastView vastView;
        super.prepareToShow();
        if (!this.isPrepareToShowExecuted.compareAndSet(false, true) || this.vastRequest == null || (vastView = this.vastView) == null) {
            return;
        }
        vastView.setCanAutoResume(false);
        this.vastView.setCanIgnorePostBanner(true);
        this.vastView.onWindowFocusChanged(true);
        this.vastRequest.display(this.vastView);
    }

    @Override // io.bidmachine.unified.UnifiedRichMediaAd
    public void onResume() throws Throwable {
        super.onResume();
        VastView vastView = this.vastView;
        if (vastView != null) {
            vastView.resume();
        }
    }

    @Override // io.bidmachine.unified.UnifiedRichMediaAd
    public void onPause() throws Throwable {
        super.onPause();
        VastView vastView = this.vastView;
        if (vastView != null) {
            vastView.pause();
        }
    }

    @Override // io.bidmachine.unified.UnifiedRichMediaAd
    public void onMute() throws Throwable {
        super.onMute();
        VastView vastView = this.vastView;
        if (vastView != null) {
            vastView.mute();
        }
    }

    @Override // io.bidmachine.unified.UnifiedRichMediaAd
    public void onUnMute() throws Throwable {
        super.onUnMute();
        VastView vastView = this.vastView;
        if (vastView != null) {
            vastView.unmute();
        }
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void onDestroy() {
        this.loadListener = null;
        this.vastRequest = null;
        this.showListener = null;
        VastView vastView = this.vastView;
        if (vastView != null) {
            vastView.destroy();
            this.vastView = null;
        }
    }
}
