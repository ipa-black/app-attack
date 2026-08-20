package com.appodeal.ads.adapters.mraid.banner;

import android.content.Context;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.unified.UnifiedBannerCallback;
import com.appodeal.ads.unified.UnifiedBannerParams;
import com.appodeal.ads.unified.mraid.UnifiedMraidBanner;
import com.appodeal.ads.unified.mraid.UnifiedMraidNetworkParams;
import com.appodeal.ads.unified.tasks.S2SAdTask;
/* loaded from: classes2.dex */
public final class b extends UnifiedMraidBanner<UnifiedMraidNetworkParams> {
    @Override // com.appodeal.ads.unified.mraid.UnifiedMraidUtils.UnifiedMraid
    public final void requestMraid(Context context, UnifiedAdParams unifiedAdParams, UnifiedMraidNetworkParams unifiedMraidNetworkParams, UnifiedAdCallback unifiedAdCallback, String str) {
        UnifiedBannerCallback unifiedBannerCallback = (UnifiedBannerCallback) unifiedAdCallback;
        S2SAdTask.requestMraid(context, str, unifiedMraidNetworkParams, unifiedBannerCallback, new a(this, (UnifiedBannerParams) unifiedAdParams, unifiedBannerCallback));
    }
}
