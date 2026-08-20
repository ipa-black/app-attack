package com.appodeal.ads.unified.vast;

import android.content.Context;
import com.appodeal.ads.unified.UnifiedRewardedCallback;
import com.explorestack.iab.utils.IabClickCallback;
import com.explorestack.iab.vast.VastRequest;
import com.explorestack.iab.vast.activity.VastActivity;
/* loaded from: classes2.dex */
public class UnifiedVastRewardedListener extends UnifiedVastFullscreenListener<UnifiedRewardedCallback> {
    public UnifiedVastRewardedListener(UnifiedRewardedCallback unifiedRewardedCallback, UnifiedVastNetworkParams unifiedVastNetworkParams) {
        super(unifiedRewardedCallback, unifiedVastNetworkParams);
    }

    @Override // com.appodeal.ads.unified.vast.UnifiedVastFullscreenListener, com.explorestack.iab.vast.VastActivityListener
    public /* bridge */ /* synthetic */ void onVastClick(VastActivity vastActivity, VastRequest vastRequest, IabClickCallback iabClickCallback, String str) {
        super.onVastClick(vastActivity, vastRequest, iabClickCallback, str);
    }

    @Override // com.appodeal.ads.unified.vast.UnifiedVastFullscreenListener, com.explorestack.iab.vast.VastActivityListener
    public /* bridge */ /* synthetic */ void onVastComplete(VastActivity vastActivity, VastRequest vastRequest) {
        super.onVastComplete(vastActivity, vastRequest);
    }

    @Override // com.appodeal.ads.unified.vast.UnifiedVastFullscreenListener, com.explorestack.iab.vast.VastActivityListener
    public /* bridge */ /* synthetic */ void onVastDismiss(VastActivity vastActivity, VastRequest vastRequest, boolean z) {
        super.onVastDismiss(vastActivity, vastRequest, z);
    }

    @Override // com.appodeal.ads.unified.vast.UnifiedVastFullscreenListener, com.explorestack.iab.vast.VastErrorListener
    public /* bridge */ /* synthetic */ void onVastError(Context context, VastRequest vastRequest, int i) {
        super.onVastError(context, vastRequest, i);
    }

    @Override // com.appodeal.ads.unified.vast.UnifiedVastFullscreenListener, com.explorestack.iab.vast.VastRequestListener
    public /* bridge */ /* synthetic */ void onVastLoaded(VastRequest vastRequest) {
        super.onVastLoaded(vastRequest);
    }

    @Override // com.appodeal.ads.unified.vast.UnifiedVastFullscreenListener, com.explorestack.iab.vast.VastActivityListener
    public /* bridge */ /* synthetic */ void onVastShown(VastActivity vastActivity, VastRequest vastRequest) {
        super.onVastShown(vastActivity, vastRequest);
    }
}
