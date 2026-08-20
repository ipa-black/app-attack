package io.bidmachine.ads.networks.mraid;

import android.content.Context;
import com.explorestack.iab.mraid.MraidInterstitial;
import com.explorestack.iab.mraid.MraidType;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.measurer.MraidOMSDKAdMeasurer;
import io.bidmachine.unified.UnifiedFullscreenAd;
import io.bidmachine.unified.UnifiedFullscreenAdCallback;
import io.bidmachine.unified.UnifiedFullscreenAdRequestParams;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.utils.BMError;
/* loaded from: classes5.dex */
class MraidFullScreenAd extends UnifiedFullscreenAd {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private MraidInterstitial mraidInterstitial;
    private MraidOMSDKAdMeasurer mraidOMSDKAdMeasurer;
    private final MraidType mraidType;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MraidFullScreenAd(MraidType mraidType) {
        this.mraidType = mraidType;
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void load(ContextProvider contextProvider, final UnifiedFullscreenAdCallback unifiedFullscreenAdCallback, UnifiedFullscreenAdRequestParams unifiedFullscreenAdRequestParams, UnifiedMediationParams unifiedMediationParams, NetworkAdUnit networkAdUnit) throws Throwable {
        String str;
        final MraidParams mraidParams = new MraidParams(unifiedMediationParams);
        if (mraidParams.isValid(unifiedFullscreenAdCallback)) {
            final Context applicationContext = contextProvider.getApplicationContext();
            if (mraidParams.omsdkEnabled) {
                MraidOMSDKAdMeasurer mraidOMSDKAdMeasurer = new MraidOMSDKAdMeasurer();
                this.mraidOMSDKAdMeasurer = mraidOMSDKAdMeasurer;
                str = mraidOMSDKAdMeasurer.injectMeasurerJS(mraidParams.creativeAdm);
            } else {
                str = mraidParams.creativeAdm;
            }
            final String str2 = str;
            Utils.onUiThread(new Runnable() { // from class: io.bidmachine.ads.networks.mraid.MraidFullScreenAd.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        MraidFullScreenAd.this.mraidInterstitial = MraidInterstitial.newBuilder().setCacheControl(mraidParams.cacheControl).setPlaceholderTimeoutSec(mraidParams.placeholderTimeoutSec).setCloseTime(mraidParams.skipOffset).forceUseNativeCloseButton(mraidParams.useNativeClose).setListener(new MraidFullScreenAdListener(applicationContext, unifiedFullscreenAdCallback, MraidFullScreenAd.this.mraidOMSDKAdMeasurer)).setR1(mraidParams.r1).setR2(mraidParams.r2).setDurationSec(mraidParams.progressDuration).setProductLink(mraidParams.storeUrl).setCloseStyle(mraidParams.closeableViewStyle).setCountDownStyle(mraidParams.countDownStyle).setProgressStyle(mraidParams.progressStyle).setAdMeasurer(MraidFullScreenAd.this.mraidOMSDKAdMeasurer).build(applicationContext);
                        MraidFullScreenAd.this.mraidInterstitial.load(str2);
                    } catch (Throwable th) {
                        Logger.log(th);
                        unifiedFullscreenAdCallback.onAdLoadFailed(BMError.internal("Exception when loading fullscreen object"));
                    }
                }
            });
        }
    }

    @Override // io.bidmachine.unified.UnifiedFullscreenAd
    public void show(ContextProvider contextProvider, UnifiedFullscreenAdCallback unifiedFullscreenAdCallback) throws Throwable {
        MraidInterstitial mraidInterstitial = this.mraidInterstitial;
        if (mraidInterstitial != null && mraidInterstitial.isReady()) {
            this.mraidInterstitial.show(contextProvider.getContext(), this.mraidType);
        } else {
            unifiedFullscreenAdCallback.onAdShowFailed(BMError.internal("Fullscreen object is null or not ready"));
        }
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void onDestroy() {
        MraidOMSDKAdMeasurer mraidOMSDKAdMeasurer = this.mraidOMSDKAdMeasurer;
        if (mraidOMSDKAdMeasurer != null) {
            mraidOMSDKAdMeasurer.destroy(new Runnable() { // from class: io.bidmachine.ads.networks.mraid.MraidFullScreenAd.2
                @Override // java.lang.Runnable
                public void run() {
                    MraidFullScreenAd.this.destroyMraidInterstitial();
                }
            });
            this.mraidOMSDKAdMeasurer = null;
            return;
        }
        destroyMraidInterstitial();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void destroyMraidInterstitial() {
        MraidInterstitial mraidInterstitial = this.mraidInterstitial;
        if (mraidInterstitial != null) {
            mraidInterstitial.destroy();
            this.mraidInterstitial = null;
        }
    }
}
