package com.appodeal.ads.adapters.admob.unified;

import com.appodeal.ads.unified.UnifiedFullscreenAdCallback;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.FullScreenContentCallback;
/* loaded from: classes2.dex */
public final class UnifiedAdmobFullscreenDisplayListener extends FullScreenContentCallback {
    private final UnifiedFullscreenAdCallback callback;

    public UnifiedAdmobFullscreenDisplayListener(UnifiedFullscreenAdCallback unifiedFullscreenAdCallback) {
        this.callback = unifiedFullscreenAdCallback;
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public void onAdClicked() {
        super.onAdClicked();
        this.callback.onAdClicked();
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public void onAdDismissedFullScreenContent() {
        super.onAdDismissedFullScreenContent();
        this.callback.onAdClosed();
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public void onAdFailedToShowFullScreenContent(AdError adError) {
        super.onAdFailedToShowFullScreenContent(adError);
        if (adError != null) {
            this.callback.printError(adError.getMessage(), Integer.valueOf(adError.getCode()));
        }
        this.callback.onAdShowFailed();
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public void onAdShowedFullScreenContent() {
        super.onAdShowedFullScreenContent();
        this.callback.onAdShown();
    }
}
