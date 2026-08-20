package com.appodeal.ads.adapters.ironsource.rewarded_video;

import android.app.Activity;
import com.appodeal.ads.adapters.ironsource.IronSourceNetwork;
import com.appodeal.ads.unified.UnifiedRewarded;
import com.appodeal.ads.unified.UnifiedRewardedCallback;
import com.appodeal.ads.unified.UnifiedRewardedParams;
import com.ironsource.mediationsdk.IronSource;
/* loaded from: classes2.dex */
public class IronSourceRewarded extends UnifiedRewarded<IronSourceNetwork.RequestParams> {
    private String instanceId;

    @Override // com.appodeal.ads.unified.UnifiedAd
    public void onDestroy() {
    }

    public void load(Activity activity, UnifiedRewardedParams unifiedRewardedParams, IronSourceNetwork.RequestParams requestParams, UnifiedRewardedCallback unifiedRewardedCallback) throws Exception {
        String str = requestParams.instanceId;
        this.instanceId = str;
        boolean isISDemandOnlyRewardedVideoAvailable = IronSource.isISDemandOnlyRewardedVideoAvailable(str);
        IronSource.setISDemandOnlyRewardedVideoListener(new IronSourceRewardedListener(this.instanceId, unifiedRewardedCallback, isISDemandOnlyRewardedVideoAvailable));
        if (isISDemandOnlyRewardedVideoAvailable) {
            unifiedRewardedCallback.onAdLoaded();
        } else {
            IronSource.loadISDemandOnlyRewardedVideo(activity, this.instanceId);
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedFullscreenAd
    public void show(Activity activity, UnifiedRewardedCallback unifiedRewardedCallback) {
        if (IronSource.isISDemandOnlyRewardedVideoAvailable(this.instanceId)) {
            IronSource.showISDemandOnlyRewardedVideo(this.instanceId);
        } else {
            unifiedRewardedCallback.onAdShowFailed();
        }
    }
}
