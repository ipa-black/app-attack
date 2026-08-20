package com.appodeal.ads.adapters.adcolony.video;

import android.app.Activity;
import com.adcolony.sdk.AdColony;
import com.adcolony.sdk.AdColonyInterstitial;
import com.appodeal.ads.adapters.adcolony.AdcolonyNetwork;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.unified.UnifiedVideo;
import com.appodeal.ads.unified.UnifiedVideoCallback;
import com.appodeal.ads.unified.UnifiedVideoParams;
/* loaded from: classes2.dex */
public final class a extends UnifiedVideo<AdcolonyNetwork.RequestParams> {

    /* renamed from: a  reason: collision with root package name */
    public AdColonyInterstitial f6439a;

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void load(ContextProvider contextProvider, UnifiedAdParams unifiedAdParams, Object obj, UnifiedAdCallback unifiedAdCallback) {
        UnifiedVideoParams unifiedVideoParams = (UnifiedVideoParams) unifiedAdParams;
        AdcolonyNetwork.RequestParams requestParams = (AdcolonyNetwork.RequestParams) obj;
        AdColony.requestInterstitial(requestParams.zoneId, new b((UnifiedVideoCallback) unifiedAdCallback, this), requestParams.adOptions);
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void onDestroy() {
        AdColonyInterstitial adColonyInterstitial = this.f6439a;
        if (adColonyInterstitial != null) {
            adColonyInterstitial.setListener(null);
            this.f6439a.destroy();
            this.f6439a = null;
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedFullscreenAd
    public final void show(Activity activity, UnifiedVideoCallback unifiedVideoCallback) {
        UnifiedVideoCallback unifiedVideoCallback2 = unifiedVideoCallback;
        AdColonyInterstitial adColonyInterstitial = this.f6439a;
        if (adColonyInterstitial == null || adColonyInterstitial.isExpired()) {
            unifiedVideoCallback2.onAdShowFailed();
        } else {
            this.f6439a.show();
        }
    }
}
