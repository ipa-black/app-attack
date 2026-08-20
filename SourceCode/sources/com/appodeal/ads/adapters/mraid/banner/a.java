package com.appodeal.ads.adapters.mraid.banner;

import android.content.Context;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.unified.UnifiedBannerCallback;
import com.appodeal.ads.unified.UnifiedBannerParams;
import com.appodeal.ads.unified.mraid.UnifiedMraidNetworkParams;
import com.appodeal.ads.unified.tasks.S2SAdTask;
/* loaded from: classes2.dex */
public final class a implements S2SAdTask.Callback<UnifiedMraidNetworkParams> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ UnifiedBannerParams f6531a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ UnifiedBannerCallback f6532b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ b f6533c;

    public a(b bVar, UnifiedBannerParams unifiedBannerParams, UnifiedBannerCallback unifiedBannerCallback) {
        this.f6533c = bVar;
        this.f6531a = unifiedBannerParams;
        this.f6532b = unifiedBannerCallback;
    }

    @Override // com.appodeal.ads.unified.tasks.S2SAdTask.Callback
    public final void onFail(LoadingError loadingError) {
        this.f6532b.onAdLoadFailed(loadingError);
    }

    @Override // com.appodeal.ads.unified.tasks.S2SAdTask.Callback
    public final void onSuccess(Context context, UnifiedMraidNetworkParams unifiedMraidNetworkParams) {
        this.f6533c.loadMraid(context, this.f6531a, unifiedMraidNetworkParams, this.f6532b);
    }
}
