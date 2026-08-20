package com.appodeal.ads.adapters.vast.video;

import android.content.Context;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.unified.UnifiedVideoCallback;
import com.appodeal.ads.unified.UnifiedVideoParams;
import com.appodeal.ads.unified.tasks.S2SAdTask;
import com.appodeal.ads.unified.vast.UnifiedVastNetworkParams;
/* loaded from: classes2.dex */
public final class a implements S2SAdTask.Callback<UnifiedVastNetworkParams> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ UnifiedVideoParams f6553a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ UnifiedVideoCallback f6554b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ b f6555c;

    public a(b bVar, UnifiedVideoParams unifiedVideoParams, UnifiedVideoCallback unifiedVideoCallback) {
        this.f6555c = bVar;
        this.f6553a = unifiedVideoParams;
        this.f6554b = unifiedVideoCallback;
    }

    @Override // com.appodeal.ads.unified.tasks.S2SAdTask.Callback
    public final void onFail(LoadingError loadingError) {
        this.f6554b.onAdLoadFailed(loadingError);
    }

    @Override // com.appodeal.ads.unified.tasks.S2SAdTask.Callback
    public final void onSuccess(Context context, UnifiedVastNetworkParams unifiedVastNetworkParams) {
        this.f6555c.loadVast(context, this.f6553a, unifiedVastNetworkParams, this.f6554b);
    }
}
