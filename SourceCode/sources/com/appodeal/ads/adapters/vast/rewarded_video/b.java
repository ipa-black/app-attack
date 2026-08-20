package com.appodeal.ads.adapters.vast.rewarded_video;

import android.content.Context;
import com.appodeal.ads.adapters.vast.VASTNetwork;
import com.appodeal.ads.unified.UnifiedRewardedCallback;
import com.appodeal.ads.unified.UnifiedRewardedParams;
import com.appodeal.ads.unified.tasks.S2SAdTask;
import com.appodeal.ads.unified.vast.UnifiedVastNetworkParams;
import com.appodeal.ads.unified.vast.UnifiedVastRewarded;
/* loaded from: classes2.dex */
public final class b extends UnifiedVastRewarded<VASTNetwork.RequestParams> {
    @Override // com.appodeal.ads.unified.vast.UnifiedVastUtils.UnifiedFullscreenVast
    public final void performVastRequest(Context context, UnifiedRewardedParams unifiedRewardedParams, UnifiedVastNetworkParams unifiedVastNetworkParams, UnifiedRewardedCallback unifiedRewardedCallback, String str) {
        UnifiedRewardedCallback unifiedRewardedCallback2 = unifiedRewardedCallback;
        S2SAdTask.requestVast(context, str, unifiedVastNetworkParams, unifiedRewardedCallback2, new a(this, unifiedRewardedParams, unifiedRewardedCallback2));
    }
}
