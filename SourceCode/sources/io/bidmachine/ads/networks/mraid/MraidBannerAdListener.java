package io.bidmachine.ads.networks.mraid;

import com.explorestack.iab.mraid.MraidView;
import com.explorestack.iab.mraid.MraidViewListener;
import com.explorestack.iab.utils.IabClickCallback;
import com.explorestack.iab.utils.Utils;
import io.bidmachine.unified.UnifiedBannerAdCallback;
import io.bidmachine.utils.BMError;
/* loaded from: classes5.dex */
class MraidBannerAdListener implements MraidViewListener {
    private final UnifiedBannerAdCallback callback;

    @Override // com.explorestack.iab.mraid.MraidViewListener
    public void onClose(MraidView mraidView) {
    }

    @Override // com.explorestack.iab.mraid.MraidViewListener
    public void onExpand(MraidView mraidView) {
    }

    @Override // com.explorestack.iab.mraid.MraidViewListener
    public void onPlayVideo(MraidView mraidView, String str) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MraidBannerAdListener(UnifiedBannerAdCallback unifiedBannerAdCallback) {
        this.callback = unifiedBannerAdCallback;
    }

    @Override // com.explorestack.iab.mraid.MraidViewListener
    public void onLoaded(MraidView mraidView) {
        this.callback.onAdLoaded(mraidView);
    }

    @Override // com.explorestack.iab.mraid.MraidViewListener
    public void onError(MraidView mraidView, int i) {
        if (i == 1) {
            this.callback.onAdShowFailed(BMError.internal("Error when showing banner object"));
        } else if (i == 2) {
            this.callback.onAdShowFailed(BMError.PlaceholderTimeout);
        } else if (i == 3) {
            this.callback.onAdExpired();
        } else {
            this.callback.onAdLoadFailed(BMError.noFill());
        }
    }

    @Override // com.explorestack.iab.mraid.MraidViewListener
    public void onShown(MraidView mraidView) {
        this.callback.onAdShown();
    }

    @Override // com.explorestack.iab.mraid.MraidViewListener
    public void onOpenBrowser(MraidView mraidView, String str, final IabClickCallback iabClickCallback) {
        this.callback.onAdClicked();
        Utils.openBrowser(mraidView.getContext(), str, new Runnable() { // from class: io.bidmachine.ads.networks.mraid.MraidBannerAdListener.1
            @Override // java.lang.Runnable
            public void run() {
                iabClickCallback.clickHandled();
            }
        });
    }
}
