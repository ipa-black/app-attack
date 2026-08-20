package com.appodeal.ads.adapters.mraid.interstitial;

import android.content.Context;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.unified.UnifiedInterstitialCallback;
import com.appodeal.ads.unified.UnifiedInterstitialParams;
import com.appodeal.ads.unified.mraid.UnifiedMraidNetworkParams;
import com.appodeal.ads.unified.tasks.S2SAdTask;
/* loaded from: classes2.dex */
public final class a implements S2SAdTask.Callback<UnifiedMraidNetworkParams> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ UnifiedInterstitialParams f6534a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ UnifiedInterstitialCallback f6535b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ b f6536c;

    public a(b bVar, UnifiedInterstitialParams unifiedInterstitialParams, UnifiedInterstitialCallback unifiedInterstitialCallback) {
        this.f6536c = bVar;
        this.f6534a = unifiedInterstitialParams;
        this.f6535b = unifiedInterstitialCallback;
    }

    @Override // com.appodeal.ads.unified.tasks.S2SAdTask.Callback
    public final void onFail(LoadingError loadingError) {
        this.f6535b.onAdLoadFailed(loadingError);
    }

    @Override // com.appodeal.ads.unified.tasks.S2SAdTask.Callback
    public final void onSuccess(Context context, UnifiedMraidNetworkParams unifiedMraidNetworkParams) {
        this.f6536c.loadMraid(context, this.f6534a, unifiedMraidNetworkParams, this.f6535b);
    }
}
