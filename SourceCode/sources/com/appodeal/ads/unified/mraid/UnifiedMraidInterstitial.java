package com.appodeal.ads.unified.mraid;

import android.app.Activity;
import android.content.Context;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.unified.UnifiedInterstitial;
import com.appodeal.ads.unified.UnifiedInterstitialCallback;
import com.appodeal.ads.unified.UnifiedInterstitialParams;
import com.appodeal.ads.unified.mraid.UnifiedMraidUtils;
import com.explorestack.iab.mraid.MraidType;
/* loaded from: classes2.dex */
public abstract class UnifiedMraidInterstitial<NetworkRequestParams> extends UnifiedInterstitial<NetworkRequestParams> implements UnifiedMraidUtils.UnifiedFullscreenMraid<UnifiedInterstitialParams, UnifiedInterstitialCallback> {
    private final UnifiedMraidUtils.UnifiedMraidFullscreenAd<UnifiedInterstitialParams, UnifiedInterstitialCallback, NetworkRequestParams> unifiedAd = new UnifiedMraidUtils.UnifiedMraidFullscreenAd<>(this);

    @Override // com.appodeal.ads.unified.mraid.UnifiedMraidUtils.UnifiedFullscreenMraid
    public UnifiedMraidFullscreenListener<UnifiedInterstitialCallback> createListener(Context context, UnifiedInterstitialParams unifiedInterstitialParams, UnifiedMraidNetworkParams unifiedMraidNetworkParams, UnifiedInterstitialCallback unifiedInterstitialCallback) {
        return new UnifiedMraidInterstitialListener(context, unifiedInterstitialCallback, unifiedMraidNetworkParams);
    }

    @Override // com.appodeal.ads.unified.mraid.UnifiedMraidUtils.UnifiedFullscreenMraid
    public MraidType getMraidType() {
        return MraidType.Static;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.appodeal.ads.unified.UnifiedAd
    public /* bridge */ /* synthetic */ void load(ContextProvider contextProvider, UnifiedAdParams unifiedAdParams, Object obj, UnifiedAdCallback unifiedAdCallback) {
        load(contextProvider, (UnifiedInterstitialParams) unifiedAdParams, (UnifiedInterstitialParams) obj, (UnifiedInterstitialCallback) unifiedAdCallback);
    }

    public void load(ContextProvider contextProvider, UnifiedInterstitialParams unifiedInterstitialParams, NetworkRequestParams networkrequestparams, UnifiedInterstitialCallback unifiedInterstitialCallback) {
        this.unifiedAd.load(contextProvider, (ContextProvider) unifiedInterstitialParams, (UnifiedInterstitialParams) networkrequestparams, (NetworkRequestParams) unifiedInterstitialCallback);
    }

    @Override // com.appodeal.ads.unified.mraid.UnifiedMraidUtils.UnifiedMraid
    public void loadMraid(Context context, UnifiedInterstitialParams unifiedInterstitialParams, UnifiedMraidNetworkParams unifiedMraidNetworkParams, UnifiedInterstitialCallback unifiedInterstitialCallback) {
        this.unifiedAd.loadMraid(context, (Context) unifiedInterstitialParams, unifiedMraidNetworkParams, (UnifiedMraidNetworkParams) unifiedInterstitialCallback);
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
    public void onPrepareToShow(Activity activity, UnifiedInterstitialParams unifiedInterstitialParams) {
        super.onPrepareToShow(activity, (Activity) unifiedInterstitialParams);
        this.unifiedAd.onPrepareToShow(activity, unifiedInterstitialParams);
    }

    @Override // com.appodeal.ads.unified.UnifiedFullscreenAd
    public void show(Activity activity, UnifiedInterstitialCallback unifiedInterstitialCallback) {
        this.unifiedAd.show(activity, unifiedInterstitialCallback);
    }
}
