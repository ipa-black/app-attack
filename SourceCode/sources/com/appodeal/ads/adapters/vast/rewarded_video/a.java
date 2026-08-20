package com.appodeal.ads.adapters.vast.rewarded_video;

import android.content.Context;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.unified.UnifiedRewardedCallback;
import com.appodeal.ads.unified.UnifiedRewardedParams;
import com.appodeal.ads.unified.tasks.S2SAdTask;
import com.appodeal.ads.unified.vast.UnifiedVastNetworkParams;
/* loaded from: classes2.dex */
public final class a implements S2SAdTask.Callback<UnifiedVastNetworkParams> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ UnifiedRewardedParams f6550a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ UnifiedRewardedCallback f6551b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ b f6552c;

    public a(b bVar, UnifiedRewardedParams unifiedRewardedParams, UnifiedRewardedCallback unifiedRewardedCallback) {
        this.f6552c = bVar;
        this.f6550a = unifiedRewardedParams;
        this.f6551b = unifiedRewardedCallback;
    }

    @Override // com.appodeal.ads.unified.tasks.S2SAdTask.Callback
    public final void onFail(LoadingError loadingError) {
        this.f6551b.onAdLoadFailed(loadingError);
    }

    @Override // com.appodeal.ads.unified.tasks.S2SAdTask.Callback
    public final void onSuccess(Context context, UnifiedVastNetworkParams unifiedVastNetworkParams) {
        this.f6552c.loadVast(context, this.f6550a, unifiedVastNetworkParams, this.f6551b);
    }
}
