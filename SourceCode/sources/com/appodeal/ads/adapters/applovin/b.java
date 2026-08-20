package com.appodeal.ads.adapters.applovin;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.unified.UnifiedAdCallback;
/* loaded from: classes2.dex */
public abstract class b<UnifiedAdCallbackType extends UnifiedAdCallback> implements AppLovinAdClickListener, AppLovinAdLoadListener {

    /* renamed from: a  reason: collision with root package name */
    public UnifiedAdCallbackType f6458a;

    public b(UnifiedAdCallbackType unifiedadcallbacktype) {
        this.f6458a = unifiedadcallbacktype;
    }

    @Override // com.applovin.sdk.AppLovinAdClickListener
    public final void adClicked(AppLovinAd appLovinAd) {
        this.f6458a.onAdClicked();
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public final void failedToReceiveAd(int i) {
        String str;
        LoadingError loadingError = LoadingError.NoFill;
        if (i == 204) {
            str = "no ad is available";
        } else if (i >= 500) {
            str = "internal server error";
        } else {
            loadingError = LoadingError.InternalError;
            str = "internal errors";
        }
        this.f6458a.printError(str, Integer.valueOf(i));
        this.f6458a.onAdLoadFailed(loadingError);
    }
}
