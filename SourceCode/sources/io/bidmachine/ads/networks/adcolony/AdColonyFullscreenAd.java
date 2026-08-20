package io.bidmachine.ads.networks.adcolony;

import com.adcolony.sdk.AdColony;
import com.adcolony.sdk.AdColonyAdOptions;
import com.adcolony.sdk.AdColonyInterstitial;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.unified.UnifiedFullscreenAd;
import io.bidmachine.unified.UnifiedFullscreenAdCallback;
import io.bidmachine.unified.UnifiedFullscreenAdRequestParams;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.utils.BMError;
/* loaded from: classes5.dex */
class AdColonyFullscreenAd extends UnifiedFullscreenAd {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private AdColonyInterstitial adColonyInterstitial;
    private final boolean isRewarded;
    private AdColonyFullscreenAdListener listener;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdColonyFullscreenAd(boolean z) {
        this.isRewarded = z;
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void load(ContextProvider contextProvider, UnifiedFullscreenAdCallback unifiedFullscreenAdCallback, UnifiedFullscreenAdRequestParams unifiedFullscreenAdRequestParams, UnifiedMediationParams unifiedMediationParams, NetworkAdUnit networkAdUnit) throws Throwable {
        AdColonyParams adColonyParams = new AdColonyParams(unifiedMediationParams);
        if (adColonyParams.isValid(unifiedFullscreenAdCallback)) {
            this.listener = new AdColonyFullscreenAdListener(adColonyParams.zoneId, this, unifiedFullscreenAdCallback);
            if (this.isRewarded) {
                AdColonyRewardListenerWrapper.get().addListener(this.listener);
            }
            AdColony.requestInterstitial(adColonyParams.zoneId, this.listener, new AdColonyAdOptions().setOption("adm", adColonyParams.adm));
        }
    }

    @Override // io.bidmachine.unified.UnifiedFullscreenAd
    public void show(ContextProvider contextProvider, UnifiedFullscreenAdCallback unifiedFullscreenAdCallback) throws Throwable {
        AdColonyInterstitial adColonyInterstitial = this.adColonyInterstitial;
        if (adColonyInterstitial != null && !adColonyInterstitial.isExpired()) {
            this.adColonyInterstitial.show();
        } else {
            unifiedFullscreenAdCallback.onAdShowFailed(BMError.internal("Interstitial object is null or expired"));
        }
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void onDestroy() {
        AdColonyInterstitial adColonyInterstitial = this.adColonyInterstitial;
        if (adColonyInterstitial != null) {
            adColonyInterstitial.destroy();
            this.adColonyInterstitial = null;
        }
        if (this.listener != null) {
            if (this.isRewarded) {
                AdColonyRewardListenerWrapper.get().removeListener(this.listener);
            }
            this.listener = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAdColonyInterstitial(AdColonyInterstitial adColonyInterstitial) {
        this.adColonyInterstitial = adColonyInterstitial;
    }
}
