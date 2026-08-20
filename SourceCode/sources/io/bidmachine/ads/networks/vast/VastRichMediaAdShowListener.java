package io.bidmachine.ads.networks.vast;

import com.explorestack.iab.utils.IabClickCallback;
import com.explorestack.iab.utils.Utils;
import com.explorestack.iab.vast.VastRequest;
import com.explorestack.iab.vast.activity.VastView;
import io.bidmachine.unified.UnifiedBannerAdCallback;
import io.bidmachine.utils.BMError;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class VastRichMediaAdShowListener implements VastView.VastViewListener {
    private final UnifiedBannerAdCallback callback;

    @Override // com.explorestack.iab.vast.activity.VastView.VastViewListener
    public void onComplete(VastView vastView, VastRequest vastRequest) {
    }

    @Override // com.explorestack.iab.vast.activity.VastView.VastViewListener
    public void onFinish(VastView vastView, VastRequest vastRequest, boolean z) {
    }

    @Override // com.explorestack.iab.vast.activity.VastView.VastViewListener
    public void onOrientationRequested(VastView vastView, VastRequest vastRequest, int i) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public VastRichMediaAdShowListener(UnifiedBannerAdCallback unifiedBannerAdCallback) {
        this.callback = unifiedBannerAdCallback;
    }

    @Override // com.explorestack.iab.vast.activity.VastView.VastViewListener
    public void onShown(VastView vastView, VastRequest vastRequest) {
        this.callback.onAdShown();
    }

    @Override // com.explorestack.iab.vast.activity.VastView.VastViewListener
    public void onClick(VastView vastView, VastRequest vastRequest, final IabClickCallback iabClickCallback, String str) {
        this.callback.onAdClicked();
        if (str != null) {
            Utils.openBrowser(vastView.getContext(), str, new Runnable() { // from class: io.bidmachine.ads.networks.vast.VastRichMediaAdShowListener.1
                @Override // java.lang.Runnable
                public void run() {
                    iabClickCallback.clickHandled();
                }
            });
        } else {
            iabClickCallback.clickHandleCanceled();
        }
    }

    @Override // com.explorestack.iab.vast.activity.VastView.VastViewListener
    public void onError(VastView vastView, VastRequest vastRequest, int i) {
        if (i == 3) {
            this.callback.onAdShowFailed(BMError.PlaceholderTimeout);
        } else {
            this.callback.onAdShowFailed(BMError.internal("Error when showing interstitial object"));
        }
    }
}
