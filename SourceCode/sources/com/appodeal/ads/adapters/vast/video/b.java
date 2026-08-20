package com.appodeal.ads.adapters.vast.video;

import android.content.Context;
import com.appodeal.ads.adapters.vast.VASTNetwork;
import com.appodeal.ads.unified.UnifiedVideoCallback;
import com.appodeal.ads.unified.UnifiedVideoParams;
import com.appodeal.ads.unified.tasks.S2SAdTask;
import com.appodeal.ads.unified.vast.UnifiedVastNetworkParams;
import com.appodeal.ads.unified.vast.UnifiedVastVideo;
/* loaded from: classes2.dex */
public final class b extends UnifiedVastVideo<VASTNetwork.RequestParams> {
    @Override // com.appodeal.ads.unified.vast.UnifiedVastUtils.UnifiedFullscreenVast
    public final void performVastRequest(Context context, UnifiedVideoParams unifiedVideoParams, UnifiedVastNetworkParams unifiedVastNetworkParams, UnifiedVideoCallback unifiedVideoCallback, String str) {
        UnifiedVideoCallback unifiedVideoCallback2 = unifiedVideoCallback;
        S2SAdTask.requestVast(context, str, unifiedVastNetworkParams, unifiedVideoCallback2, new a(this, unifiedVideoParams, unifiedVideoCallback2));
    }
}
