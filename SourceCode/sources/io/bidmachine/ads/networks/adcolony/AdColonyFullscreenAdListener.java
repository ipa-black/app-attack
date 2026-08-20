package io.bidmachine.ads.networks.adcolony;

import com.adcolony.sdk.AdColonyInterstitial;
import com.adcolony.sdk.AdColonyInterstitialListener;
import com.adcolony.sdk.AdColonyReward;
import com.adcolony.sdk.AdColonyRewardListener;
import com.adcolony.sdk.AdColonyZone;
import io.bidmachine.unified.UnifiedFullscreenAdCallback;
import io.bidmachine.utils.BMError;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class AdColonyFullscreenAdListener extends AdColonyInterstitialListener implements AdColonyRewardListener {
    private final AdColonyFullscreenAd adColonyFullscreenAd;
    private final UnifiedFullscreenAdCallback callback;
    private boolean isLoaded;
    private boolean isShown;
    private final String zoneId;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdColonyFullscreenAdListener(String str, AdColonyFullscreenAd adColonyFullscreenAd, UnifiedFullscreenAdCallback unifiedFullscreenAdCallback) {
        this.zoneId = str;
        this.adColonyFullscreenAd = adColonyFullscreenAd;
        this.callback = unifiedFullscreenAdCallback;
    }

    @Override // com.adcolony.sdk.AdColonyInterstitialListener
    public void onRequestFilled(AdColonyInterstitial adColonyInterstitial) {
        this.isLoaded = true;
        this.adColonyFullscreenAd.setAdColonyInterstitial(adColonyInterstitial);
        this.callback.onAdLoaded();
    }

    @Override // com.adcolony.sdk.AdColonyInterstitialListener
    public void onRequestNotFilled(AdColonyZone adColonyZone) {
        this.callback.onAdLoadFailed(BMError.noFill());
    }

    @Override // com.adcolony.sdk.AdColonyInterstitialListener
    public void onOpened(AdColonyInterstitial adColonyInterstitial) {
        this.isShown = true;
        this.callback.onAdShown();
    }

    @Override // com.adcolony.sdk.AdColonyInterstitialListener
    public void onClicked(AdColonyInterstitial adColonyInterstitial) {
        this.callback.onAdClicked();
    }

    @Override // com.adcolony.sdk.AdColonyInterstitialListener
    public void onClosed(AdColonyInterstitial adColonyInterstitial) {
        this.callback.onAdClosed();
    }

    @Override // com.adcolony.sdk.AdColonyInterstitialListener
    public void onExpiring(AdColonyInterstitial adColonyInterstitial) {
        this.callback.onAdExpired();
    }

    @Override // com.adcolony.sdk.AdColonyRewardListener
    public void onReward(AdColonyReward adColonyReward) {
        if (adColonyReward.success()) {
            if (this.isShown) {
                this.callback.onAdFinished();
            } else if (this.isLoaded) {
                this.callback.onAdExpired();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getZoneId() {
        return this.zoneId;
    }
}
