package com.appodeal.ads.adapters.nast.native_ad;

import android.content.Context;
import com.appodeal.ads.adapters.nast.native_ad.b;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.unified.UnifiedNativeCallback;
import com.appodeal.ads.unified.tasks.S2SAdTask;
/* loaded from: classes2.dex */
public final class a implements S2SAdTask.Callback<String> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ UnifiedNativeCallback f6546a;

    public a(UnifiedNativeCallback unifiedNativeCallback) {
        this.f6546a = unifiedNativeCallback;
    }

    @Override // com.appodeal.ads.unified.tasks.S2SAdTask.Callback
    public final void onFail(LoadingError loadingError) {
        this.f6546a.onAdLoadFailed(loadingError);
    }

    @Override // com.appodeal.ads.unified.tasks.S2SAdTask.Callback
    public final void onSuccess(Context context, String str) {
        b.a a2 = b.a.a(str);
        if (a2 == null) {
            this.f6546a.onAdLoadFailed(LoadingError.InternalError);
        } else {
            this.f6546a.onAdLoaded(a2);
        }
    }
}
