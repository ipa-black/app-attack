package com.appodeal.ads.unified.vast;

import android.content.Context;
import com.appodeal.ads.unified.UnifiedAdCallbackClickTrackListener;
import com.appodeal.ads.unified.UnifiedFullscreenAdCallback;
import com.appodeal.ads.utils.q;
import com.explorestack.iab.utils.IabClickCallback;
import com.explorestack.iab.vast.VastActivityListener;
import com.explorestack.iab.vast.VastRequest;
import com.explorestack.iab.vast.VastRequestListener;
import com.explorestack.iab.vast.activity.VastActivity;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class UnifiedVastFullscreenListener<UnifiedCallbackType extends UnifiedFullscreenAdCallback> implements VastRequestListener, VastActivityListener {
    public final UnifiedCallbackType callback;
    private final q clickHandler = new q();
    public final UnifiedVastNetworkParams vastParams;

    public UnifiedVastFullscreenListener(UnifiedCallbackType unifiedcallbacktype, UnifiedVastNetworkParams unifiedVastNetworkParams) {
        this.callback = unifiedcallbacktype;
        this.vastParams = unifiedVastNetworkParams;
    }

    @Override // com.explorestack.iab.vast.VastActivityListener
    public void onVastClick(VastActivity vastActivity, VastRequest vastRequest, final IabClickCallback iabClickCallback, String str) {
        q qVar = this.clickHandler;
        UnifiedVastNetworkParams unifiedVastNetworkParams = this.vastParams;
        qVar.a(vastActivity, str, unifiedVastNetworkParams.packageName, unifiedVastNetworkParams.expiryTime, new q.b() { // from class: com.appodeal.ads.unified.vast.UnifiedVastFullscreenListener.1
            @Override // com.appodeal.ads.utils.q.b
            public void onHandleError() {
                iabClickCallback.clickHandleError();
            }

            @Override // com.appodeal.ads.utils.q.b
            public void onHandled() {
                iabClickCallback.clickHandled();
            }

            @Override // com.appodeal.ads.utils.q.b
            public void processClick(UnifiedAdCallbackClickTrackListener unifiedAdCallbackClickTrackListener) {
                UnifiedVastFullscreenListener.this.callback.onAdClicked(unifiedAdCallbackClickTrackListener);
            }
        });
    }

    @Override // com.explorestack.iab.vast.VastActivityListener
    public void onVastComplete(VastActivity vastActivity, VastRequest vastRequest) {
    }

    @Override // com.explorestack.iab.vast.VastActivityListener
    public void onVastDismiss(VastActivity vastActivity, VastRequest vastRequest, boolean z) {
        if (z) {
            this.callback.onAdFinished();
        }
        this.callback.onAdClosed();
    }

    @Override // com.explorestack.iab.vast.VastErrorListener
    public void onVastError(Context context, VastRequest vastRequest, int i) {
        this.callback.printError(null, Integer.valueOf(i));
        this.callback.onAdLoadFailed(null);
    }

    @Override // com.explorestack.iab.vast.VastRequestListener
    public void onVastLoaded(VastRequest vastRequest) {
        this.callback.onAdLoaded();
    }

    @Override // com.explorestack.iab.vast.VastActivityListener
    public void onVastShown(VastActivity vastActivity, VastRequest vastRequest) {
        this.callback.onAdShown();
    }
}
