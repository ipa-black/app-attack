package com.appodeal.ads.adapters.adcolony.video;

import com.adcolony.sdk.AdColonyInterstitial;
import com.adcolony.sdk.AdColonyInterstitialListener;
import com.adcolony.sdk.AdColonyZone;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.unified.UnifiedVideoCallback;
/* loaded from: classes2.dex */
public final class b extends AdColonyInterstitialListener {

    /* renamed from: a  reason: collision with root package name */
    public final UnifiedVideoCallback f6440a;

    /* renamed from: b  reason: collision with root package name */
    public final a f6441b;

    public b(UnifiedVideoCallback unifiedVideoCallback, a aVar) {
        this.f6440a = unifiedVideoCallback;
        this.f6441b = aVar;
    }

    @Override // com.adcolony.sdk.AdColonyInterstitialListener
    public final void onClicked(AdColonyInterstitial adColonyInterstitial) {
        this.f6440a.onAdClicked();
    }

    @Override // com.adcolony.sdk.AdColonyInterstitialListener
    public final void onClosed(AdColonyInterstitial adColonyInterstitial) {
        this.f6440a.onAdClosed();
    }

    @Override // com.adcolony.sdk.AdColonyInterstitialListener
    public final void onExpiring(AdColonyInterstitial adColonyInterstitial) {
        this.f6440a.onAdExpired();
    }

    @Override // com.adcolony.sdk.AdColonyInterstitialListener
    public final void onOpened(AdColonyInterstitial adColonyInterstitial) {
        this.f6440a.onAdShown();
    }

    @Override // com.adcolony.sdk.AdColonyInterstitialListener
    public final void onRequestFilled(AdColonyInterstitial adColonyInterstitial) {
        this.f6441b.f6439a = adColonyInterstitial;
        this.f6440a.onAdLoaded();
    }

    @Override // com.adcolony.sdk.AdColonyInterstitialListener
    public final void onRequestNotFilled(AdColonyZone adColonyZone) {
        if (adColonyZone != null) {
            this.f6440a.printError("request not filled for zoneId: " + adColonyZone.getZoneID() + ", isValid zone: " + adColonyZone.isValid(), null);
        }
        this.f6440a.onAdLoadFailed(LoadingError.NoFill);
    }
}
