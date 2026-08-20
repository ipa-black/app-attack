package com.appodeal.ads.adapters.bidmachine.interstitial;

import android.app.Activity;
import com.appodeal.ads.adapters.bidmachine.BidMachineNetwork;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.unified.UnifiedInterstitial;
import com.appodeal.ads.unified.UnifiedInterstitialCallback;
import com.appodeal.ads.unified.UnifiedInterstitialParams;
import io.bidmachine.AdContentType;
import io.bidmachine.interstitial.InterstitialAd;
import io.bidmachine.interstitial.InterstitialListener;
import io.bidmachine.interstitial.InterstitialRequest;
import io.bidmachine.utils.BMError;
/* compiled from: BidMachineInterstitial.java */
/* loaded from: classes2.dex */
public final class a extends UnifiedInterstitial<BidMachineNetwork.RequestParams> {

    /* renamed from: a  reason: collision with root package name */
    public InterstitialRequest f6489a;

    /* renamed from: b  reason: collision with root package name */
    public InterstitialAd f6490b;

    /* compiled from: BidMachineInterstitial.java */
    /* renamed from: com.appodeal.ads.adapters.bidmachine.interstitial.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0110a implements InterstitialListener {

        /* renamed from: a  reason: collision with root package name */
        public final UnifiedInterstitialCallback f6491a;

        public C0110a(UnifiedInterstitialCallback unifiedInterstitialCallback) {
            this.f6491a = unifiedInterstitialCallback;
        }

        @Override // io.bidmachine.AdListener
        public final void onAdClicked(InterstitialAd interstitialAd) {
            this.f6491a.onAdClicked();
        }

        @Override // io.bidmachine.AdFullScreenListener
        public final void onAdClosed(InterstitialAd interstitialAd, boolean z) {
            if (z) {
                this.f6491a.onAdFinished();
            }
            this.f6491a.onAdClosed();
        }

        @Override // io.bidmachine.AdListener
        public final void onAdExpired(InterstitialAd interstitialAd) {
            this.f6491a.onAdExpired();
        }

        @Override // io.bidmachine.AdListener
        public final void onAdImpression(InterstitialAd interstitialAd) {
            this.f6491a.onAdShown();
        }

        @Override // io.bidmachine.AdListener
        public final void onAdLoadFailed(InterstitialAd interstitialAd, BMError bMError) {
            BidMachineNetwork.printError(this.f6491a, bMError);
            this.f6491a.onAdLoadFailed(BidMachineNetwork.mapBidMachineError(bMError));
        }

        @Override // io.bidmachine.AdListener
        public final void onAdLoaded(InterstitialAd interstitialAd) {
            this.f6491a.onAdInfoRequested(BidMachineNetwork.getRequestedAdInfo(interstitialAd.getAuctionResult()));
            this.f6491a.onAdLoaded();
        }

        @Override // io.bidmachine.AdFullScreenListener
        public final void onAdShowFailed(InterstitialAd interstitialAd, BMError bMError) {
            BidMachineNetwork.printError(this.f6491a, bMError);
            this.f6491a.onAdShowFailed();
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void load(ContextProvider contextProvider, UnifiedAdParams unifiedAdParams, Object obj, UnifiedAdCallback unifiedAdCallback) throws Exception {
        UnifiedInterstitialParams unifiedInterstitialParams = (UnifiedInterstitialParams) unifiedAdParams;
        this.f6489a = (InterstitialRequest) ((InterstitialRequest.Builder) ((BidMachineNetwork.RequestParams) obj).prepareRequest(new InterstitialRequest.Builder())).setAdContentType(AdContentType.Static).build();
        this.f6490b = (InterstitialAd) ((InterstitialAd) new InterstitialAd(contextProvider.getApplicationContext()).setListener(new C0110a((UnifiedInterstitialCallback) unifiedAdCallback))).load(this.f6489a);
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void onDestroy() {
        InterstitialRequest interstitialRequest = this.f6489a;
        if (interstitialRequest != null) {
            interstitialRequest.destroy();
            this.f6489a = null;
        }
        InterstitialAd interstitialAd = this.f6490b;
        if (interstitialAd != null) {
            interstitialAd.destroy();
            this.f6490b = null;
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void onMediationLoss(String str, double d2) {
        super.onMediationLoss(str, d2);
        InterstitialRequest interstitialRequest = this.f6489a;
        if (interstitialRequest != null) {
            interstitialRequest.notifyMediationLoss(str, Double.valueOf(d2));
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void onMediationWin() {
        super.onMediationWin();
        InterstitialRequest interstitialRequest = this.f6489a;
        if (interstitialRequest != null) {
            interstitialRequest.notifyMediationWin();
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedFullscreenAd
    public final void show(Activity activity, UnifiedInterstitialCallback unifiedInterstitialCallback) {
        UnifiedInterstitialCallback unifiedInterstitialCallback2 = unifiedInterstitialCallback;
        InterstitialAd interstitialAd = this.f6490b;
        if (interstitialAd != null && interstitialAd.canShow()) {
            this.f6490b.show();
        } else {
            unifiedInterstitialCallback2.onAdShowFailed();
        }
    }
}
