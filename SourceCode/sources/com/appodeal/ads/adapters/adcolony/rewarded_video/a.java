package com.appodeal.ads.adapters.adcolony.rewarded_video;

import android.app.Activity;
import com.adcolony.sdk.AdColony;
import com.adcolony.sdk.AdColonyInterstitial;
import com.appodeal.ads.adapters.adcolony.AdcolonyNetwork;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.unified.UnifiedRewarded;
import com.appodeal.ads.unified.UnifiedRewardedCallback;
import com.appodeal.ads.unified.UnifiedRewardedParams;
/* loaded from: classes2.dex */
public final class a extends UnifiedRewarded<AdcolonyNetwork.RequestParams> {

    /* renamed from: a  reason: collision with root package name */
    public AdColonyInterstitial f6435a;

    /* renamed from: b  reason: collision with root package name */
    public b f6436b;

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void load(ContextProvider contextProvider, UnifiedAdParams unifiedAdParams, Object obj, UnifiedAdCallback unifiedAdCallback) {
        UnifiedRewardedParams unifiedRewardedParams = (UnifiedRewardedParams) unifiedAdParams;
        AdcolonyNetwork.RequestParams requestParams = (AdcolonyNetwork.RequestParams) obj;
        b bVar = new b((UnifiedRewardedCallback) unifiedAdCallback, this);
        this.f6436b = bVar;
        AdColony.setRewardListener(bVar);
        AdColony.requestInterstitial(requestParams.zoneId, this.f6436b, requestParams.adOptions);
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void onDestroy() {
        AdColonyInterstitial adColonyInterstitial = this.f6435a;
        if (adColonyInterstitial != null) {
            if (this.f6436b == adColonyInterstitial.getListener()) {
                this.f6435a.setListener(null);
            }
            this.f6435a.destroy();
            this.f6435a = null;
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedFullscreenAd
    public final void show(Activity activity, UnifiedRewardedCallback unifiedRewardedCallback) {
        UnifiedRewardedCallback unifiedRewardedCallback2 = unifiedRewardedCallback;
        AdColonyInterstitial adColonyInterstitial = this.f6435a;
        if (adColonyInterstitial == null || adColonyInterstitial.isExpired()) {
            unifiedRewardedCallback2.onAdShowFailed();
        } else {
            this.f6435a.show();
        }
    }
}
