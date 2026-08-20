package com.appodeal.ads.adapters.mraid.rewarded_video;

import android.content.Context;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.unified.UnifiedRewardedCallback;
import com.appodeal.ads.unified.UnifiedRewardedParams;
import com.appodeal.ads.unified.mraid.UnifiedMraidNetworkParams;
import com.appodeal.ads.unified.tasks.S2SAdTask;
/* loaded from: classes2.dex */
public final class a implements S2SAdTask.Callback<UnifiedMraidNetworkParams> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ UnifiedRewardedParams f6540a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ UnifiedRewardedCallback f6541b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ b f6542c;

    public a(b bVar, UnifiedRewardedParams unifiedRewardedParams, UnifiedRewardedCallback unifiedRewardedCallback) {
        this.f6542c = bVar;
        this.f6540a = unifiedRewardedParams;
        this.f6541b = unifiedRewardedCallback;
    }

    @Override // com.appodeal.ads.unified.tasks.S2SAdTask.Callback
    public final void onFail(LoadingError loadingError) {
        this.f6541b.onAdLoadFailed(loadingError);
    }

    @Override // com.appodeal.ads.unified.tasks.S2SAdTask.Callback
    public final void onSuccess(Context context, UnifiedMraidNetworkParams unifiedMraidNetworkParams) {
        this.f6542c.loadMraid(context, this.f6540a, unifiedMraidNetworkParams, this.f6541b);
    }
}
