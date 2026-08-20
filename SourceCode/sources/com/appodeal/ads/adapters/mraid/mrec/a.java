package com.appodeal.ads.adapters.mraid.mrec;

import android.content.Context;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.unified.UnifiedMrecCallback;
import com.appodeal.ads.unified.UnifiedMrecParams;
import com.appodeal.ads.unified.mraid.UnifiedMraidNetworkParams;
import com.appodeal.ads.unified.tasks.S2SAdTask;
/* loaded from: classes2.dex */
public final class a implements S2SAdTask.Callback<UnifiedMraidNetworkParams> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ UnifiedMrecParams f6537a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ UnifiedMrecCallback f6538b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ b f6539c;

    public a(b bVar, UnifiedMrecParams unifiedMrecParams, UnifiedMrecCallback unifiedMrecCallback) {
        this.f6539c = bVar;
        this.f6537a = unifiedMrecParams;
        this.f6538b = unifiedMrecCallback;
    }

    @Override // com.appodeal.ads.unified.tasks.S2SAdTask.Callback
    public final void onFail(LoadingError loadingError) {
        this.f6538b.onAdLoadFailed(loadingError);
    }

    @Override // com.appodeal.ads.unified.tasks.S2SAdTask.Callback
    public final void onSuccess(Context context, UnifiedMraidNetworkParams unifiedMraidNetworkParams) {
        this.f6539c.loadMraid(context, this.f6537a, unifiedMraidNetworkParams, this.f6538b);
    }
}
