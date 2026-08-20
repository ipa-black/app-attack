package com.appodeal.ads.unified.mraid;

import android.content.Context;
import com.appodeal.ads.unified.UnifiedRewardedCallback;
import com.explorestack.iab.mraid.MraidInterstitial;
import com.explorestack.iab.utils.IabClickCallback;
/* loaded from: classes2.dex */
public class UnifiedMraidRewardedListener extends UnifiedMraidFullscreenListener<UnifiedRewardedCallback> {
    public UnifiedMraidRewardedListener(Context context, UnifiedRewardedCallback unifiedRewardedCallback, UnifiedMraidNetworkParams unifiedMraidNetworkParams) {
        super(context, unifiedRewardedCallback, unifiedMraidNetworkParams);
    }

    @Override // com.appodeal.ads.unified.mraid.UnifiedMraidFullscreenListener, com.explorestack.iab.mraid.MraidInterstitialListener
    public void onClose(MraidInterstitial mraidInterstitial) {
        ((UnifiedRewardedCallback) this.callback).onAdFinished();
        super.onClose(mraidInterstitial);
    }

    @Override // com.appodeal.ads.unified.mraid.UnifiedMraidFullscreenListener, com.explorestack.iab.mraid.MraidInterstitialListener
    public /* bridge */ /* synthetic */ void onError(MraidInterstitial mraidInterstitial, int i) {
        super.onError(mraidInterstitial, i);
    }

    @Override // com.appodeal.ads.unified.mraid.UnifiedMraidFullscreenListener, com.explorestack.iab.mraid.MraidInterstitialListener
    public /* bridge */ /* synthetic */ void onLoaded(MraidInterstitial mraidInterstitial) {
        super.onLoaded(mraidInterstitial);
    }

    @Override // com.appodeal.ads.unified.mraid.UnifiedMraidFullscreenListener, com.explorestack.iab.mraid.MraidInterstitialListener
    public /* bridge */ /* synthetic */ void onOpenBrowser(MraidInterstitial mraidInterstitial, String str, IabClickCallback iabClickCallback) {
        super.onOpenBrowser(mraidInterstitial, str, iabClickCallback);
    }

    @Override // com.appodeal.ads.unified.mraid.UnifiedMraidFullscreenListener, com.explorestack.iab.mraid.MraidInterstitialListener
    public /* bridge */ /* synthetic */ void onPlayVideo(MraidInterstitial mraidInterstitial, String str) {
        super.onPlayVideo(mraidInterstitial, str);
    }

    @Override // com.appodeal.ads.unified.mraid.UnifiedMraidFullscreenListener, com.explorestack.iab.mraid.MraidInterstitialListener
    public /* bridge */ /* synthetic */ void onShown(MraidInterstitial mraidInterstitial) {
        super.onShown(mraidInterstitial);
    }
}
