package io.bidmachine.ads.networks.notsy;

import io.bidmachine.ads.networks.notsy.InternalNotsyFullscreenAd;
import io.bidmachine.unified.UnifiedFullscreenAdCallback;
import io.bidmachine.utils.BMError;
/* loaded from: classes5.dex */
class NotsyFullscreenAdListener<NotsyAdType extends InternalNotsyFullscreenAd> implements InternalNotsyAdLoadListener<NotsyAdType>, InternalNotsyFullscreenAdPresentListener {
    protected final UnifiedFullscreenAdCallback callback;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.bidmachine.ads.networks.notsy.InternalNotsyAdLoadListener
    public /* bridge */ /* synthetic */ void onAdLoaded(InternalNotsyAd internalNotsyAd) {
        onAdLoaded((NotsyFullscreenAdListener<NotsyAdType>) ((InternalNotsyFullscreenAd) internalNotsyAd));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NotsyFullscreenAdListener(UnifiedFullscreenAdCallback unifiedFullscreenAdCallback) {
        this.callback = unifiedFullscreenAdCallback;
    }

    public void onAdLoaded(NotsyAdType notsyadtype) {
        this.callback.onAdLoaded();
    }

    @Override // io.bidmachine.ads.networks.notsy.InternalNotsyAdLoadListener
    public void onAdLoadFailed(BMError bMError) {
        this.callback.onAdLoadFailed(bMError);
    }

    @Override // io.bidmachine.ads.networks.notsy.InternalNotsyAdPresentListener
    public void onAdShowFailed(BMError bMError) {
        this.callback.onAdShowFailed(bMError);
    }

    @Override // io.bidmachine.ads.networks.notsy.InternalNotsyAdPresentListener
    public void onAdShown() {
        this.callback.onAdShown();
    }

    @Override // io.bidmachine.ads.networks.notsy.InternalNotsyAdPresentListener
    public void onAdClicked() {
        this.callback.onAdClicked();
    }

    @Override // io.bidmachine.ads.networks.notsy.InternalNotsyFullscreenAdPresentListener
    public void onAdComplete() {
        this.callback.onAdFinished();
    }

    @Override // io.bidmachine.ads.networks.notsy.InternalNotsyFullscreenAdPresentListener
    public void onAdClosed() {
        this.callback.onAdClosed();
    }
}
