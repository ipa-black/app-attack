package com.appodeal.ads.adapters.ironsource.video;

import android.app.Activity;
import com.appodeal.ads.LoadingError;
import com.appodeal.ads.adapters.ironsource.IronSourceNetwork;
import com.appodeal.ads.unified.UnifiedVideo;
import com.appodeal.ads.unified.UnifiedVideoCallback;
import com.appodeal.ads.unified.UnifiedVideoParams;
import com.ironsource.mediationsdk.IronSource;
/* loaded from: classes2.dex */
public class IronSourceVideo extends UnifiedVideo<IronSourceNetwork.RequestParams> {
    private String instanceId;
    boolean isLoaded = false;
    boolean isLoadFailed = false;

    @Override // com.appodeal.ads.unified.UnifiedAd
    public void onDestroy() {
    }

    public void load(Activity activity, UnifiedVideoParams unifiedVideoParams, IronSourceNetwork.RequestParams requestParams, UnifiedVideoCallback unifiedVideoCallback) throws Exception {
        this.instanceId = requestParams.instanceId;
        IronSourceNetwork.registerInterstitialInstances(requestParams.jsonData.optJSONArray("instances"));
        if (IronSourceNetwork.canLoadInstance(this.instanceId)) {
            IronSourceNetwork.subscribeInterstitialListener(this.instanceId, new IronSourceVideoListener(this, unifiedVideoCallback));
            if (IronSource.isISDemandOnlyInterstitialReady(this.instanceId)) {
                unifiedVideoCallback.onAdLoaded();
                return;
            }
            IronSourceNetwork.setInProgressInstance(true);
            IronSource.loadISDemandOnlyInterstitial(activity, this.instanceId);
        } else if (IronSourceNetwork.isInstanceInProgress()) {
            unifiedVideoCallback.onAdLoadFailed(LoadingError.Canceled);
        } else {
            unifiedVideoCallback.onAdLoadFailed(LoadingError.IncorrectAdunit);
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedFullscreenAd
    public void show(Activity activity, UnifiedVideoCallback unifiedVideoCallback) {
        if (IronSource.isISDemandOnlyInterstitialReady(this.instanceId)) {
            IronSource.showISDemandOnlyInterstitial(this.instanceId);
        } else {
            unifiedVideoCallback.onAdShowFailed();
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
