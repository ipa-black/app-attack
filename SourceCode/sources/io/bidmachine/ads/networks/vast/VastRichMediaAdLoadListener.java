package io.bidmachine.ads.networks.vast;

import android.content.Context;
import com.explorestack.iab.vast.VastRequest;
import com.explorestack.iab.vast.VastRequestListener;
import com.explorestack.iab.vast.activity.VastView;
import io.bidmachine.unified.UnifiedBannerAdCallback;
import io.bidmachine.utils.BMError;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class VastRichMediaAdLoadListener implements VastRequestListener {
    private final UnifiedBannerAdCallback callback;
    private final VastView vastView;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VastRichMediaAdLoadListener(UnifiedBannerAdCallback unifiedBannerAdCallback, VastView vastView) {
        this.callback = unifiedBannerAdCallback;
        this.vastView = vastView;
    }

    @Override // com.explorestack.iab.vast.VastRequestListener
    public void onVastLoaded(VastRequest vastRequest) {
        this.callback.onAdLoaded(this.vastView);
    }

    @Override // com.explorestack.iab.vast.VastErrorListener
    public void onVastError(Context context, VastRequest vastRequest, int i) {
        if (i == 4) {
            this.callback.onAdExpired();
        } else {
            this.callback.onAdLoadFailed(BMError.noFill());
        }
    }
}
