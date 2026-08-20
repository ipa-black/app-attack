package com.appodeal.ads.unified.vast;

import android.app.Activity;
import android.content.Context;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.unified.UnifiedRewarded;
import com.appodeal.ads.unified.UnifiedRewardedCallback;
import com.appodeal.ads.unified.UnifiedRewardedParams;
import com.appodeal.ads.unified.vast.UnifiedVastUtils;
import com.explorestack.iab.vast.VideoType;
/* loaded from: classes2.dex */
public abstract class UnifiedVastRewarded<NetworkRequestParams> extends UnifiedRewarded<NetworkRequestParams> implements UnifiedVastUtils.UnifiedFullscreenVast<UnifiedRewardedParams, UnifiedRewardedCallback> {
    public UnifiedVastUtils.UnifiedVastFullscreenAd<UnifiedRewardedParams, UnifiedRewardedCallback, NetworkRequestParams> unifiedVast = new UnifiedVastUtils.UnifiedVastFullscreenAd<>(this);

    @Override // com.appodeal.ads.unified.vast.UnifiedVastUtils.UnifiedFullscreenVast
    public UnifiedVastFullscreenListener<UnifiedRewardedCallback> createListener(Context context, UnifiedRewardedParams unifiedRewardedParams, UnifiedVastNetworkParams unifiedVastNetworkParams, UnifiedRewardedCallback unifiedRewardedCallback) {
        return new UnifiedVastRewardedListener(unifiedRewardedCallback, unifiedVastNetworkParams);
    }

    @Override // com.appodeal.ads.unified.vast.UnifiedVastUtils.UnifiedFullscreenVast
    public VideoType getVideoType() {
        return VideoType.Rewarded;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.appodeal.ads.unified.UnifiedAd
    public /* bridge */ /* synthetic */ void load(ContextProvider contextProvider, UnifiedAdParams unifiedAdParams, Object obj, UnifiedAdCallback unifiedAdCallback) {
        load(contextProvider, (UnifiedRewardedParams) unifiedAdParams, (UnifiedRewardedParams) obj, (UnifiedRewardedCallback) unifiedAdCallback);
    }

    public void load(ContextProvider contextProvider, UnifiedRewardedParams unifiedRewardedParams, NetworkRequestParams networkrequestparams, UnifiedRewardedCallback unifiedRewardedCallback) {
        this.unifiedVast.load(contextProvider, (ContextProvider) unifiedRewardedParams, (UnifiedRewardedParams) networkrequestparams, (NetworkRequestParams) unifiedRewardedCallback);
    }

    @Override // com.appodeal.ads.unified.vast.UnifiedVastUtils.UnifiedFullscreenVast
    public void loadVast(Context context, UnifiedRewardedParams unifiedRewardedParams, UnifiedVastNetworkParams unifiedVastNetworkParams, UnifiedRewardedCallback unifiedRewardedCallback) {
        this.unifiedVast.loadVast(context, unifiedRewardedParams, unifiedVastNetworkParams, unifiedRewardedCallback);
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public void onDestroy() {
        this.unifiedVast.onDestroy();
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public void onPrepareToShow(Activity activity, UnifiedRewardedParams unifiedRewardedParams) {
        super.onPrepareToShow(activity, (Activity) unifiedRewardedParams);
        this.unifiedVast.onPrepareToShow(activity, unifiedRewardedParams);
    }

    @Override // com.appodeal.ads.unified.UnifiedFullscreenAd
    public void show(Activity activity, UnifiedRewardedCallback unifiedRewardedCallback) {
        this.unifiedVast.show(activity, unifiedRewardedCallback);
    }
}
