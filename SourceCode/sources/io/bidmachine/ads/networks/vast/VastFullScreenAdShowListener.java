package io.bidmachine.ads.networks.vast;

import android.content.Context;
import com.explorestack.iab.utils.IabClickCallback;
import com.explorestack.iab.utils.Utils;
import com.explorestack.iab.vast.VastActivityListener;
import com.explorestack.iab.vast.VastRequest;
import com.explorestack.iab.vast.activity.VastActivity;
import io.bidmachine.measurer.VastOMSDKAdMeasurer;
import io.bidmachine.unified.UnifiedFullscreenAdCallback;
import io.bidmachine.utils.BMError;
/* loaded from: classes5.dex */
class VastFullScreenAdShowListener implements VastActivityListener {
    private final UnifiedFullscreenAdCallback callback;
    private final VastOMSDKAdMeasurer vastOMSDKAdMeasurer;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VastFullScreenAdShowListener(UnifiedFullscreenAdCallback unifiedFullscreenAdCallback, VastOMSDKAdMeasurer vastOMSDKAdMeasurer) {
        this.callback = unifiedFullscreenAdCallback;
        this.vastOMSDKAdMeasurer = vastOMSDKAdMeasurer;
    }

    @Override // com.explorestack.iab.vast.VastErrorListener
    public void onVastError(Context context, VastRequest vastRequest, int i) {
        if (i == 3) {
            this.callback.onAdShowFailed(BMError.PlaceholderTimeout);
        } else {
            this.callback.onAdShowFailed(BMError.internal("Error when showing interstitial object"));
        }
    }

    @Override // com.explorestack.iab.vast.VastActivityListener
    public void onVastShown(VastActivity vastActivity, VastRequest vastRequest) {
        VastOMSDKAdMeasurer vastOMSDKAdMeasurer = this.vastOMSDKAdMeasurer;
        if (vastOMSDKAdMeasurer != null) {
            vastOMSDKAdMeasurer.onAdShown();
        }
        this.callback.onAdShown();
    }

    @Override // com.explorestack.iab.vast.VastActivityListener
    public void onVastClick(VastActivity vastActivity, VastRequest vastRequest, final IabClickCallback iabClickCallback, String str) {
        VastOMSDKAdMeasurer vastOMSDKAdMeasurer = this.vastOMSDKAdMeasurer;
        if (vastOMSDKAdMeasurer != null) {
            vastOMSDKAdMeasurer.onAdClicked();
        }
        this.callback.onAdClicked();
        if (str != null) {
            Utils.openBrowser(vastActivity, str, new Runnable() { // from class: io.bidmachine.ads.networks.vast.VastFullScreenAdShowListener.1
                @Override // java.lang.Runnable
                public void run() {
                    iabClickCallback.clickHandled();
                }
            });
        } else {
            iabClickCallback.clickHandleCanceled();
        }
    }

    @Override // com.explorestack.iab.vast.VastActivityListener
    public void onVastComplete(VastActivity vastActivity, VastRequest vastRequest) {
        this.callback.onAdFinished();
    }

    @Override // com.explorestack.iab.vast.VastActivityListener
    public void onVastDismiss(VastActivity vastActivity, VastRequest vastRequest, boolean z) {
        VastOMSDKAdMeasurer vastOMSDKAdMeasurer = this.vastOMSDKAdMeasurer;
        if (vastOMSDKAdMeasurer != null) {
            vastOMSDKAdMeasurer.destroy();
        }
        this.callback.onAdClosed();
    }
}
