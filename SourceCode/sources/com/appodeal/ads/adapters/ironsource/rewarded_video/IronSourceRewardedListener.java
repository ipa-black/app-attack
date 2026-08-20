package com.appodeal.ads.adapters.ironsource.rewarded_video;

import android.text.TextUtils;
import com.appodeal.ads.LoadingError;
import com.appodeal.ads.adapters.ironsource.IronSourceNetwork;
import com.appodeal.ads.unified.UnifiedRewardedCallback;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.sdk.ISDemandOnlyRewardedVideoListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class IronSourceRewardedListener implements ISDemandOnlyRewardedVideoListener {
    private final UnifiedRewardedCallback callback;
    private boolean isAvailableStateReceived;
    private final String localInstanceId;

    /* JADX INFO: Access modifiers changed from: package-private */
    public IronSourceRewardedListener(String str, UnifiedRewardedCallback unifiedRewardedCallback, boolean z) {
        this.localInstanceId = str;
        this.callback = unifiedRewardedCallback;
        this.isAvailableStateReceived = z;
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyRewardedVideoListener
    public void onRewardedVideoAdOpened(String str) {
        if (TextUtils.equals(str, this.localInstanceId)) {
            this.callback.onAdShown();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyRewardedVideoListener
    public void onRewardedVideoAdClosed(String str) {
        if (TextUtils.equals(str, this.localInstanceId)) {
            this.callback.onAdClosed();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyRewardedVideoListener
    public void onRewardedVideoAdLoadSuccess(String str) {
        if (TextUtils.equals(str, this.localInstanceId)) {
            if (this.isAvailableStateReceived) {
                this.callback.onAdExpired();
                return;
            }
            this.isAvailableStateReceived = true;
            this.callback.onAdLoaded();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyRewardedVideoListener
    public void onRewardedVideoAdLoadFailed(String str, IronSourceError ironSourceError) {
        if (TextUtils.equals(str, this.localInstanceId)) {
            if (this.isAvailableStateReceived) {
                this.callback.onAdExpired();
            } else if (ironSourceError != null) {
                this.callback.printError(ironSourceError.getErrorMessage(), Integer.valueOf(ironSourceError.getErrorCode()));
                this.callback.onAdLoadFailed(IronSourceNetwork.mapError(ironSourceError.getErrorCode()));
            } else {
                this.callback.onAdLoadFailed((LoadingError) null);
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyRewardedVideoListener
    public void onRewardedVideoAdRewarded(String str) {
        if (TextUtils.equals(str, this.localInstanceId)) {
            this.callback.onAdFinished();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyRewardedVideoListener
    public void onRewardedVideoAdShowFailed(String str, IronSourceError ironSourceError) {
        if (TextUtils.equals(str, this.localInstanceId)) {
            if (ironSourceError != null) {
                this.callback.printError(ironSourceError.getErrorMessage(), Integer.valueOf(ironSourceError.getErrorCode()));
            }
            this.callback.onAdShowFailed();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyRewardedVideoListener
    public void onRewardedVideoAdClicked(String str) {
        if (TextUtils.equals(str, this.localInstanceId)) {
            this.callback.onAdClicked();
        }
    }
}
