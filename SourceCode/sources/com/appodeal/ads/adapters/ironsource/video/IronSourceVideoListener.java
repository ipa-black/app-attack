package com.appodeal.ads.adapters.ironsource.video;

import com.appodeal.ads.LoadingError;
import com.appodeal.ads.adapters.ironsource.IronSourceNetwork;
import com.appodeal.ads.unified.UnifiedVideoCallback;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.sdk.ISDemandOnlyInterstitialListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class IronSourceVideoListener implements ISDemandOnlyInterstitialListener {
    private final IronSourceVideo adObject;
    private final UnifiedVideoCallback callback;

    /* JADX INFO: Access modifiers changed from: package-private */
    public IronSourceVideoListener(IronSourceVideo ironSourceVideo, UnifiedVideoCallback unifiedVideoCallback) {
        this.adObject = ironSourceVideo;
        this.callback = unifiedVideoCallback;
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyInterstitialListener
    public void onInterstitialAdReady(String str) {
        if (this.adObject.isLoaded || this.adObject.isLoadFailed) {
            IronSourceNetwork.unsubscribeInterstitialListener(str);
            IronSourceNetwork.setInProgressInstance(false);
            if (this.adObject.isLoaded) {
                this.callback.onAdExpired();
                return;
            }
            return;
        }
        this.callback.onAdLoaded();
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyInterstitialListener
    public void onInterstitialAdLoadFailed(String str, IronSourceError ironSourceError) {
        IronSourceNetwork.unsubscribeInterstitialListener(str);
        IronSourceNetwork.prepareInstance();
        if (ironSourceError != null) {
            this.callback.printError(ironSourceError.getErrorMessage(), Integer.valueOf(ironSourceError.getErrorCode()));
            this.callback.onAdLoadFailed(IronSourceNetwork.mapError(ironSourceError.getErrorCode()));
            return;
        }
        this.callback.onAdLoadFailed((LoadingError) null);
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyInterstitialListener
    public void onInterstitialAdOpened(String str) {
        this.callback.onAdShown();
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyInterstitialListener
    public void onInterstitialAdClosed(String str) {
        IronSourceNetwork.unsubscribeInterstitialListener(str);
        IronSourceNetwork.setInProgressInstance(false);
        this.callback.onAdClosed();
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyInterstitialListener
    public void onInterstitialAdShowFailed(String str, IronSourceError ironSourceError) {
        IronSourceNetwork.unsubscribeInterstitialListener(str);
        IronSourceNetwork.setInProgressInstance(false);
        if (ironSourceError != null) {
            this.callback.printError(ironSourceError.getErrorMessage(), Integer.valueOf(ironSourceError.getErrorCode()));
        }
        this.callback.onAdShowFailed();
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyInterstitialListener
    public void onInterstitialAdClicked(String str) {
        this.callback.onAdClicked();
    }
}
