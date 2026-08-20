package com.appodeal.ads.adapters.mraid.video;

import android.content.Context;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.unified.UnifiedVideoCallback;
import com.appodeal.ads.unified.UnifiedVideoParams;
import com.appodeal.ads.unified.mraid.UnifiedMraidNetworkParams;
import com.appodeal.ads.unified.tasks.S2SAdTask;
/* loaded from: classes2.dex */
public final class a implements S2SAdTask.Callback<UnifiedMraidNetworkParams> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ UnifiedVideoParams f6543a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ UnifiedVideoCallback f6544b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ b f6545c;

    public a(b bVar, UnifiedVideoParams unifiedVideoParams, UnifiedVideoCallback unifiedVideoCallback) {
        this.f6545c = bVar;
        this.f6543a = unifiedVideoParams;
        this.f6544b = unifiedVideoCallback;
    }

    @Override // com.appodeal.ads.unified.tasks.S2SAdTask.Callback
    public final void onFail(LoadingError loadingError) {
        this.f6544b.onAdLoadFailed(loadingError);
    }

    @Override // com.appodeal.ads.unified.tasks.S2SAdTask.Callback
    public final void onSuccess(Context context, UnifiedMraidNetworkParams unifiedMraidNetworkParams) {
        this.f6545c.loadMraid(context, this.f6543a, unifiedMraidNetworkParams, this.f6544b);
    }
}
