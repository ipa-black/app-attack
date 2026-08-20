package com.appodeal.ads.unified.mraid;

import android.app.Activity;
import android.content.Context;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.unified.UnifiedVideo;
import com.appodeal.ads.unified.UnifiedVideoCallback;
import com.appodeal.ads.unified.UnifiedVideoParams;
import com.appodeal.ads.unified.mraid.UnifiedMraidUtils;
import com.explorestack.iab.mraid.MraidType;
/* loaded from: classes2.dex */
public abstract class UnifiedMraidVideo<NetworkRequestParams> extends UnifiedVideo<NetworkRequestParams> implements UnifiedMraidUtils.UnifiedFullscreenMraid<UnifiedVideoParams, UnifiedVideoCallback> {
    private final UnifiedMraidUtils.UnifiedMraidFullscreenAd<UnifiedVideoParams, UnifiedVideoCallback, NetworkRequestParams> unifiedAd = new UnifiedMraidUtils.UnifiedMraidFullscreenAd<>(this);

    @Override // com.appodeal.ads.unified.mraid.UnifiedMraidUtils.UnifiedFullscreenMraid
    public UnifiedMraidFullscreenListener<UnifiedVideoCallback> createListener(Context context, UnifiedVideoParams unifiedVideoParams, UnifiedMraidNetworkParams unifiedMraidNetworkParams, UnifiedVideoCallback unifiedVideoCallback) {
        return new UnifiedMraidVideoListener(context, unifiedVideoCallback, unifiedMraidNetworkParams);
    }

    @Override // com.appodeal.ads.unified.mraid.UnifiedMraidUtils.UnifiedFullscreenMraid
    public MraidType getMraidType() {
        return MraidType.Video;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.appodeal.ads.unified.UnifiedAd
    public /* bridge */ /* synthetic */ void load(ContextProvider contextProvider, UnifiedAdParams unifiedAdParams, Object obj, UnifiedAdCallback unifiedAdCallback) {
        load(contextProvider, (UnifiedVideoParams) unifiedAdParams, (UnifiedVideoParams) obj, (UnifiedVideoCallback) unifiedAdCallback);
    }

    public void load(ContextProvider contextProvider, UnifiedVideoParams unifiedVideoParams, NetworkRequestParams networkrequestparams, UnifiedVideoCallback unifiedVideoCallback) {
        this.unifiedAd.load(contextProvider, (ContextProvider) unifiedVideoParams, (UnifiedVideoParams) networkrequestparams, (NetworkRequestParams) unifiedVideoCallback);
    }

    @Override // com.appodeal.ads.unified.mraid.UnifiedMraidUtils.UnifiedMraid
    public void loadMraid(Context context, UnifiedVideoParams unifiedVideoParams, UnifiedMraidNetworkParams unifiedMraidNetworkParams, UnifiedVideoCallback unifiedVideoCallback) {
        this.unifiedAd.loadMraid(context, (Context) unifiedVideoParams, unifiedMraidNetworkParams, (UnifiedMraidNetworkParams) unifiedVideoCallback);
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public void onClicked() {
        super.onClicked();
        this.unifiedAd.onClicked();
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public void onDestroy() {
        this.unifiedAd.onDestroy();
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public void onFinished() {
        super.onFinished();
        this.unifiedAd.onFinished();
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public void onPrepareToShow(Activity activity, UnifiedVideoParams unifiedVideoParams) {
        super.onPrepareToShow(activity, (Activity) unifiedVideoParams);
        this.unifiedAd.onPrepareToShow(activity, unifiedVideoParams);
    }

    @Override // com.appodeal.ads.unified.UnifiedFullscreenAd
    public void show(Activity activity, UnifiedVideoCallback unifiedVideoCallback) {
        this.unifiedAd.show(activity, unifiedVideoCallback);
    }
}
