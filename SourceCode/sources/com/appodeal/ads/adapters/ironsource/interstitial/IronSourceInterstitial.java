package com.appodeal.ads.adapters.ironsource.interstitial;

import android.app.Activity;
import com.appodeal.ads.LoadingError;
import com.appodeal.ads.adapters.ironsource.IronSourceNetwork;
import com.appodeal.ads.unified.UnifiedInterstitial;
import com.appodeal.ads.unified.UnifiedInterstitialCallback;
import com.appodeal.ads.unified.UnifiedInterstitialParams;
import com.ironsource.mediationsdk.IronSource;
/* loaded from: classes2.dex */
public class IronSourceInterstitial extends UnifiedInterstitial<IronSourceNetwork.RequestParams> {
    private String instanceId;
    boolean isLoaded = false;
    boolean isLoadFailed = false;

    @Override // com.appodeal.ads.unified.UnifiedAd
    public void onDestroy() {
    }

    public void load(Activity activity, UnifiedInterstitialParams unifiedInterstitialParams, IronSourceNetwork.RequestParams requestParams, UnifiedInterstitialCallback unifiedInterstitialCallback) throws Exception {
        this.instanceId = requestParams.instanceId;
        IronSourceNetwork.registerInterstitialInstances(requestParams.jsonData.optJSONArray("instances"));
        if (IronSourceNetwork.canLoadInstance(this.instanceId)) {
            IronSourceNetwork.subscribeInterstitialListener(this.instanceId, new IronSourceInterstitialListener(this, unifiedInterstitialCallback));
            if (IronSource.isISDemandOnlyInterstitialReady(this.instanceId)) {
                unifiedInterstitialCallback.onAdLoaded();
                return;
            }
            IronSourceNetwork.setInProgressInstance(true);
            IronSource.loadISDemandOnlyInterstitial(activity, this.instanceId);
        } else if (IronSourceNetwork.isInstanceInProgress()) {
            unifiedInterstitialCallback.onAdLoadFailed(LoadingError.Canceled);
        } else {
            unifiedInterstitialCallback.onAdLoadFailed(LoadingError.IncorrectAdunit);
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedFullscreenAd
    public void show(Activity activity, UnifiedInterstitialCallback unifiedInterstitialCallback) {
        if (IronSource.isISDemandOnlyInterstitialReady(this.instanceId)) {
            IronSource.showISDemandOnlyInterstitial(this.instanceId);
        } else {
            unifiedInterstitialCallback.onAdShowFailed();
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public void onLoaded() {
        super.onLoaded();
        this.isLoaded = true;
    }

    public void onError(LoadingError loadingError) {
        super.onError(loadingError);
        this.isLoadFailed = true;
    }
}
