package io.bidmachine.ads.networks.mraid;

import android.content.Context;
import com.explorestack.iab.mraid.MraidInterstitial;
import com.explorestack.iab.mraid.MraidInterstitialListener;
import com.explorestack.iab.utils.IabClickCallback;
import com.explorestack.iab.utils.Utils;
import io.bidmachine.measurer.MraidOMSDKAdMeasurer;
import io.bidmachine.unified.UnifiedFullscreenAdCallback;
import io.bidmachine.utils.BMError;
/* loaded from: classes5.dex */
class MraidFullScreenAdListener implements MraidInterstitialListener {
    private final Context applicationContext;
    private final UnifiedFullscreenAdCallback callback;
    private final MraidOMSDKAdMeasurer mraidOMSDKAdMeasurer;

    @Override // com.explorestack.iab.mraid.MraidInterstitialListener
    public void onPlayVideo(MraidInterstitial mraidInterstitial, String str) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MraidFullScreenAdListener(Context context, UnifiedFullscreenAdCallback unifiedFullscreenAdCallback, MraidOMSDKAdMeasurer mraidOMSDKAdMeasurer) {
        this.applicationContext = context;
        this.callback = unifiedFullscreenAdCallback;
        this.mraidOMSDKAdMeasurer = mraidOMSDKAdMeasurer;
    }

    @Override // com.explorestack.iab.mraid.MraidInterstitialListener
    public void onLoaded(MraidInterstitial mraidInterstitial) {
        this.callback.onAdLoaded();
    }

    @Override // com.explorestack.iab.mraid.MraidInterstitialListener
    public void onError(MraidInterstitial mraidInterstitial, int i) {
        if (i == 1) {
            this.callback.onAdShowFailed(BMError.internal("Error when showing interstitial object"));
        } else if (i == 2) {
            this.callback.onAdShowFailed(BMError.PlaceholderTimeout);
        } else if (i == 3) {
            this.callback.onAdExpired();
        } else {
            this.callback.onAdLoadFailed(BMError.noFill());
        }
    }

    @Override // com.explorestack.iab.mraid.MraidInterstitialListener
    public void onShown(MraidInterstitial mraidInterstitial) {
        MraidOMSDKAdMeasurer mraidOMSDKAdMeasurer = this.mraidOMSDKAdMeasurer;
        if (mraidOMSDKAdMeasurer != null) {
            mraidOMSDKAdMeasurer.onAdShown();
        }
        this.callback.onAdShown();
    }

    @Override // com.explorestack.iab.mraid.MraidInterstitialListener
    public void onOpenBrowser(MraidInterstitial mraidInterstitial, String str, final IabClickCallback iabClickCallback) {
        this.callback.onAdClicked();
        Utils.openBrowser(this.applicationContext, str, new Runnable() { // from class: io.bidmachine.ads.networks.mraid.MraidFullScreenAdListener.1
            @Override // java.lang.Runnable
            public void run() {
                iabClickCallback.clickHandled();
            }
        });
    }

    @Override // com.explorestack.iab.mraid.MraidInterstitialListener
    public void onClose(MraidInterstitial mraidInterstitial) {
        MraidOMSDKAdMeasurer mraidOMSDKAdMeasurer = this.mraidOMSDKAdMeasurer;
        if (mraidOMSDKAdMeasurer != null) {
            mraidOMSDKAdMeasurer.destroy();
        }
        this.callback.onAdFinished();
        this.callback.onAdClosed();
    }
}
