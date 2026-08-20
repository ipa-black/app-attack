package com.appodeal.ads.unified.mraid;

import com.appodeal.ads.unified.UnifiedMrecCallback;
import com.explorestack.iab.mraid.MraidView;
import com.explorestack.iab.utils.IabClickCallback;
/* loaded from: classes2.dex */
public class UnifiedMraidMrecListener extends UnifiedMraidViewListener<UnifiedMrecCallback> {
    public UnifiedMraidMrecListener(UnifiedMrecCallback unifiedMrecCallback, UnifiedMraidNetworkParams unifiedMraidNetworkParams) {
        super(unifiedMrecCallback, unifiedMraidNetworkParams);
    }

    @Override // com.appodeal.ads.unified.mraid.UnifiedMraidViewListener, com.explorestack.iab.mraid.MraidViewListener
    public /* bridge */ /* synthetic */ void onClose(MraidView mraidView) {
        super.onClose(mraidView);
    }

    @Override // com.appodeal.ads.unified.mraid.UnifiedMraidViewListener, com.explorestack.iab.mraid.MraidViewListener
    public /* bridge */ /* synthetic */ void onError(MraidView mraidView, int i) {
        super.onError(mraidView, i);
    }

    @Override // com.appodeal.ads.unified.mraid.UnifiedMraidViewListener, com.explorestack.iab.mraid.MraidViewListener
    public /* bridge */ /* synthetic */ void onExpand(MraidView mraidView) {
        super.onExpand(mraidView);
    }

    @Override // com.explorestack.iab.mraid.MraidViewListener
    public void onLoaded(MraidView mraidView) {
        ((UnifiedMrecCallback) this.callback).onAdLoaded(mraidView);
    }

    @Override // com.appodeal.ads.unified.mraid.UnifiedMraidViewListener, com.explorestack.iab.mraid.MraidViewListener
    public /* bridge */ /* synthetic */ void onOpenBrowser(MraidView mraidView, String str, IabClickCallback iabClickCallback) {
        super.onOpenBrowser(mraidView, str, iabClickCallback);
    }

    @Override // com.appodeal.ads.unified.mraid.UnifiedMraidViewListener, com.explorestack.iab.mraid.MraidViewListener
    public /* bridge */ /* synthetic */ void onPlayVideo(MraidView mraidView, String str) {
        super.onPlayVideo(mraidView, str);
    }

    @Override // com.appodeal.ads.unified.mraid.UnifiedMraidViewListener, com.explorestack.iab.mraid.MraidViewListener
    public /* bridge */ /* synthetic */ void onShown(MraidView mraidView) {
        super.onShown(mraidView);
    }
}
