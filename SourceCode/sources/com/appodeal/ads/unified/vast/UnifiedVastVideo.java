package com.appodeal.ads.unified.vast;

import android.app.Activity;
import android.content.Context;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.unified.UnifiedVideo;
import com.appodeal.ads.unified.UnifiedVideoCallback;
import com.appodeal.ads.unified.UnifiedVideoParams;
import com.appodeal.ads.unified.vast.UnifiedVastUtils;
import com.explorestack.iab.vast.VideoType;
/* loaded from: classes2.dex */
public abstract class UnifiedVastVideo<NetworkRequestParams> extends UnifiedVideo<NetworkRequestParams> implements UnifiedVastUtils.UnifiedFullscreenVast<UnifiedVideoParams, UnifiedVideoCallback> {
    public UnifiedVastUtils.UnifiedVastFullscreenAd<UnifiedVideoParams, UnifiedVideoCallback, NetworkRequestParams> unifiedVast = new UnifiedVastUtils.UnifiedVastFullscreenAd<>(this);

    @Override // com.appodeal.ads.unified.vast.UnifiedVastUtils.UnifiedFullscreenVast
    public UnifiedVastFullscreenListener<UnifiedVideoCallback> createListener(Context context, UnifiedVideoParams unifiedVideoParams, UnifiedVastNetworkParams unifiedVastNetworkParams, UnifiedVideoCallback unifiedVideoCallback) {
        return new UnifiedVastVideoListener(unifiedVideoCallback, unifiedVastNetworkParams);
    }

    @Override // com.appodeal.ads.unified.vast.UnifiedVastUtils.UnifiedFullscreenVast
    public VideoType getVideoType() {
        return VideoType.NonRewarded;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.appodeal.ads.unified.UnifiedAd
    public /* bridge */ /* synthetic */ void load(ContextProvider contextProvider, UnifiedAdParams unifiedAdParams, Object obj, UnifiedAdCallback unifiedAdCallback) {
        load(contextProvider, (UnifiedVideoParams) unifiedAdParams, (UnifiedVideoParams) obj, (UnifiedVideoCallback) unifiedAdCallback);
    }

    public void load(ContextProvider contextProvider, UnifiedVideoParams unifiedVideoParams, NetworkRequestParams networkrequestparams, UnifiedVideoCallback unifiedVideoCallback) {
        this.unifiedVast.load(contextProvider, (ContextProvider) unifiedVideoParams, (UnifiedVideoParams) networkrequestparams, (NetworkRequestParams) unifiedVideoCallback);
    }

    @Override // com.appodeal.ads.unified.vast.UnifiedVastUtils.UnifiedFullscreenVast
    public void loadVast(Context context, UnifiedVideoParams unifiedVideoParams, UnifiedVastNetworkParams unifiedVastNetworkParams, UnifiedVideoCallback unifiedVideoCallback) {
        this.unifiedVast.loadVast(context, unifiedVideoParams, unifiedVastNetworkParams, unifiedVideoCallback);
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public void onDestroy() {
        this.unifiedVast.onDestroy();
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public void onPrepareToShow(Activity activity, UnifiedVideoParams unifiedVideoParams) {
        super.onPrepareToShow(activity, (Activity) unifiedVideoParams);
        this.unifiedVast.onPrepareToShow(activity, unifiedVideoParams);
    }

    @Override // com.appodeal.ads.unified.UnifiedFullscreenAd
    public void show(Activity activity, UnifiedVideoCallback unifiedVideoCallback) {
        this.unifiedVast.show(activity, unifiedVideoCallback);
    }
}
