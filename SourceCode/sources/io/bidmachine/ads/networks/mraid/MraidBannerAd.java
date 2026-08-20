package io.bidmachine.ads.networks.mraid;

import android.content.Context;
import com.explorestack.iab.CacheControl;
import com.explorestack.iab.mraid.MraidView;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.measurer.MraidOMSDKAdMeasurer;
import io.bidmachine.unified.UnifiedBannerAd;
import io.bidmachine.unified.UnifiedBannerAdCallback;
import io.bidmachine.unified.UnifiedBannerAdRequestParams;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.utils.BMError;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes5.dex */
class MraidBannerAd extends UnifiedBannerAd {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final AtomicBoolean isPrepareToShowExecuted = new AtomicBoolean(false);
    private MraidOMSDKAdMeasurer mraidOMSDKAdMeasurer;
    MraidView mraidView;

    @Override // io.bidmachine.unified.UnifiedAd
    public void load(ContextProvider contextProvider, final UnifiedBannerAdCallback unifiedBannerAdCallback, UnifiedBannerAdRequestParams unifiedBannerAdRequestParams, UnifiedMediationParams unifiedMediationParams, NetworkAdUnit networkAdUnit) throws Throwable {
        String str;
        final MraidParams mraidParams = new MraidParams(unifiedMediationParams);
        if (mraidParams.isValid(unifiedBannerAdCallback)) {
            if (mraidParams.cacheControl == CacheControl.PartialLoad) {
                setConsiderNetworkImpressionTracking(true);
            }
            final Context applicationContext = contextProvider.getApplicationContext();
            if (mraidParams.omsdkEnabled) {
                MraidOMSDKAdMeasurer mraidOMSDKAdMeasurer = new MraidOMSDKAdMeasurer();
                this.mraidOMSDKAdMeasurer = mraidOMSDKAdMeasurer;
                str = mraidOMSDKAdMeasurer.injectMeasurerJS(mraidParams.creativeAdm);
            } else {
                str = mraidParams.creativeAdm;
            }
            final String str2 = str;
            Utils.onUiThread(new Runnable() { // from class: io.bidmachine.ads.networks.mraid.MraidBannerAd.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        MraidBannerAd.this.mraidView = new MraidView.Builder().setCacheControl(mraidParams.cacheControl).setPlaceholderTimeoutSec(mraidParams.placeholderTimeoutSec).setListener(new MraidBannerAdListener(unifiedBannerAdCallback)).setAdMeasurer(MraidBannerAd.this.mraidOMSDKAdMeasurer).build(applicationContext);
                        MraidBannerAd.this.mraidView.load(str2);
                    } catch (Throwable th) {
                        Logger.log(th);
                        unifiedBannerAdCallback.onAdLoadFailed(BMError.internal("Exception when loading banner object"));
                    }
                }
            });
        }
    }

    @Override // io.bidmachine.unified.UnifiedViewAd
    public void prepareToShow() throws Throwable {
        MraidView mraidView;
        super.prepareToShow();
        if (this.isPrepareToShowExecuted.compareAndSet(false, true) && (mraidView = this.mraidView) != null) {
            mraidView.show(null);
        }
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void onShown() {
        super.onShown();
        MraidOMSDKAdMeasurer mraidOMSDKAdMeasurer = this.mraidOMSDKAdMeasurer;
        if (mraidOMSDKAdMeasurer != null) {
            mraidOMSDKAdMeasurer.onAdShown();
        }
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void onDestroy() {
        MraidOMSDKAdMeasurer mraidOMSDKAdMeasurer = this.mraidOMSDKAdMeasurer;
        if (mraidOMSDKAdMeasurer != null) {
            mraidOMSDKAdMeasurer.destroy(new Runnable() { // from class: io.bidmachine.ads.networks.mraid.MraidBannerAd.2
                @Override // java.lang.Runnable
                public void run() {
                    MraidBannerAd.this.destroyMraidView();
                }
            });
            this.mraidOMSDKAdMeasurer = null;
            return;
        }
        destroyMraidView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void destroyMraidView() {
        MraidView mraidView = this.mraidView;
        if (mraidView != null) {
            mraidView.destroy();
            this.mraidView = null;
        }
    }
}
