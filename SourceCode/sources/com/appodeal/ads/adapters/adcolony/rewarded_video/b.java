package com.appodeal.ads.adapters.adcolony.rewarded_video;

import com.adcolony.sdk.AdColonyInterstitial;
import com.adcolony.sdk.AdColonyInterstitialListener;
import com.adcolony.sdk.AdColonyReward;
import com.adcolony.sdk.AdColonyRewardListener;
import com.adcolony.sdk.AdColonyZone;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.unified.UnifiedRewardedCallback;
/* loaded from: classes2.dex */
public final class b extends AdColonyInterstitialListener implements AdColonyRewardListener {

    /* renamed from: a  reason: collision with root package name */
    public final UnifiedRewardedCallback f6437a;

    /* renamed from: b  reason: collision with root package name */
    public final a f6438b;

    public b(UnifiedRewardedCallback unifiedRewardedCallback, a aVar) {
        this.f6437a = unifiedRewardedCallback;
        this.f6438b = aVar;
    }

    @Override // com.adcolony.sdk.AdColonyInterstitialListener
    public final void onClicked(AdColonyInterstitial adColonyInterstitial) {
        this.f6437a.onAdClicked();
    }

    @Override // com.adcolony.sdk.AdColonyInterstitialListener
    public final void onClosed(AdColonyInterstitial adColonyInterstitial) {
        this.f6437a.onAdClosed();
    }

    @Override // com.adcolony.sdk.AdColonyInterstitialListener
    public final void onExpiring(AdColonyInterstitial adColonyInterstitial) {
        this.f6437a.onAdExpired();
    }

    @Override // com.adcolony.sdk.AdColonyInterstitialListener
    public final void onOpened(AdColonyInterstitial adColonyInterstitial) {
        this.f6437a.onAdShown();
    }

    @Override // com.adcolony.sdk.AdColonyInterstitialListener
    public final void onRequestFilled(AdColonyInterstitial adColonyInterstitial) {
        this.f6438b.f6435a = adColonyInterstitial;
        this.f6437a.onAdLoaded();
    }

    @Override // com.adcolony.sdk.AdColonyInterstitialListener
    public final void onRequestNotFilled(AdColonyZone adColonyZone) {
        if (adColonyZone != null) {
            this.f6437a.printError("request not filled for zoneId: " + adColonyZone.getZoneID() + ", isValid zone: " + adColonyZone.isValid(), null);
        }
        this.f6437a.onAdLoadFailed(LoadingError.NoFill);
    }

    @Override // com.adcolony.sdk.AdColonyRewardListener
    public final void onReward(AdColonyReward adColonyReward) {
        if (adColonyReward == null || adColonyReward.success()) {
            this.f6437a.onAdFinished();
        }
    }
}
