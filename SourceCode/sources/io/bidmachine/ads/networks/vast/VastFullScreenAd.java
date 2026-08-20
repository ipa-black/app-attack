package io.bidmachine.ads.networks.vast;

import android.content.Context;
import com.explorestack.iab.vast.VastRequest;
import com.explorestack.iab.vast.VideoType;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.measurer.VastOMSDKAdMeasurer;
import io.bidmachine.unified.UnifiedFullscreenAd;
import io.bidmachine.unified.UnifiedFullscreenAdCallback;
import io.bidmachine.unified.UnifiedFullscreenAdRequestParams;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.utils.BMError;
/* loaded from: classes5.dex */
class VastFullScreenAd extends UnifiedFullscreenAd {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private VastFullScreenAdLoadListener vastAdLoadListener;
    private VastFullScreenAdShowListener vastAdShowListener;
    private VastOMSDKAdMeasurer vastOMSDKAdMeasurer;
    private VastRequest vastRequest;
    private final VideoType videoType;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VastFullScreenAd(VideoType videoType) {
        this.videoType = videoType;
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void load(ContextProvider contextProvider, UnifiedFullscreenAdCallback unifiedFullscreenAdCallback, UnifiedFullscreenAdRequestParams unifiedFullscreenAdRequestParams, UnifiedMediationParams unifiedMediationParams, NetworkAdUnit networkAdUnit) throws Throwable {
        VastParams vastParams = new VastParams(unifiedMediationParams);
        if (vastParams.isValid(unifiedFullscreenAdCallback)) {
            if (vastParams.omsdkEnabled) {
                this.vastOMSDKAdMeasurer = new VastOMSDKAdMeasurer();
            }
            this.vastAdLoadListener = new VastFullScreenAdLoadListener(unifiedFullscreenAdCallback, this.vastOMSDKAdMeasurer);
            VastRequest build = VastRequest.newBuilder().setCacheControl(vastParams.cacheControl).setPlaceholderTimeoutSec(vastParams.placeholderTimeoutSec).setVideoCloseTime(vastParams.skipOffset).setCompanionCloseTime(vastParams.companionSkipOffset).forceUseNativeCloseTime(vastParams.useNativeClose).build();
            this.vastRequest = build;
            build.loadVideoWithData(contextProvider.getApplicationContext(), vastParams.creativeAdm, this.vastAdLoadListener);
        }
    }

    @Override // io.bidmachine.unified.UnifiedFullscreenAd
    public void show(ContextProvider contextProvider, UnifiedFullscreenAdCallback unifiedFullscreenAdCallback) throws Throwable {
        VastRequest vastRequest = this.vastRequest;
        if (vastRequest != null && vastRequest.canDisplay()) {
            this.vastAdShowListener = new VastFullScreenAdShowListener(unifiedFullscreenAdCallback, this.vastOMSDKAdMeasurer);
            VastRequest vastRequest2 = this.vastRequest;
            Context context = contextProvider.getContext();
            VideoType videoType = this.videoType;
            VastFullScreenAdShowListener vastFullScreenAdShowListener = this.vastAdShowListener;
            VastOMSDKAdMeasurer vastOMSDKAdMeasurer = this.vastOMSDKAdMeasurer;
            vastRequest2.display(context, videoType, vastFullScreenAdShowListener, vastOMSDKAdMeasurer, vastOMSDKAdMeasurer);
            return;
        }
        unifiedFullscreenAdCallback.onAdShowFailed(BMError.internal("Fullscreen object is null or can not find video file"));
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void onDestroy() {
        this.vastAdLoadListener = null;
        this.vastAdShowListener = null;
        VastOMSDKAdMeasurer vastOMSDKAdMeasurer = this.vastOMSDKAdMeasurer;
        if (vastOMSDKAdMeasurer != null) {
            vastOMSDKAdMeasurer.destroy();
            this.vastOMSDKAdMeasurer = null;
        }
        if (this.vastRequest != null) {
            this.vastRequest = null;
        }
    }
}
