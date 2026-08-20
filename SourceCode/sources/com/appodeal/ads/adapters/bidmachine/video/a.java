package com.appodeal.ads.adapters.bidmachine.video;

import android.app.Activity;
import com.appodeal.ads.adapters.bidmachine.BidMachineNetwork;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.unified.UnifiedVideo;
import com.appodeal.ads.unified.UnifiedVideoCallback;
import com.appodeal.ads.unified.UnifiedVideoParams;
import io.bidmachine.AdContentType;
import io.bidmachine.interstitial.InterstitialAd;
import io.bidmachine.interstitial.InterstitialListener;
import io.bidmachine.interstitial.InterstitialRequest;
import io.bidmachine.utils.BMError;
/* compiled from: BidMachineVideo.java */
/* loaded from: classes2.dex */
public final class a extends UnifiedVideo<BidMachineNetwork.RequestParams> {

    /* renamed from: a  reason: collision with root package name */
    public InterstitialRequest f6504a;

    /* renamed from: b  reason: collision with root package name */
    public InterstitialAd f6505b;

    /* compiled from: BidMachineVideo.java */
    /* renamed from: com.appodeal.ads.adapters.bidmachine.video.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0114a implements InterstitialListener {

        /* renamed from: a  reason: collision with root package name */
        public final UnifiedVideoCallback f6506a;

        public C0114a(UnifiedVideoCallback unifiedVideoCallback) {
            this.f6506a = unifiedVideoCallback;
        }

        @Override // io.bidmachine.AdListener
        public final void onAdClicked(InterstitialAd interstitialAd) {
            this.f6506a.onAdClicked();
        }

        @Override // io.bidmachine.AdFullScreenListener
        public final void onAdClosed(InterstitialAd interstitialAd, boolean z) {
            if (z) {
                this.f6506a.onAdFinished();
            }
            this.f6506a.onAdClosed();
        }

        @Override // io.bidmachine.AdListener
        public final void onAdExpired(InterstitialAd interstitialAd) {
            this.f6506a.onAdExpired();
        }

        @Override // io.bidmachine.AdListener
        public final void onAdImpression(InterstitialAd interstitialAd) {
            this.f6506a.onAdShown();
        }

        @Override // io.bidmachine.AdListener
        public final void onAdLoadFailed(InterstitialAd interstitialAd, BMError bMError) {
            BidMachineNetwork.printError(this.f6506a, bMError);
            this.f6506a.onAdLoadFailed(BidMachineNetwork.mapBidMachineError(bMError));
        }

        @Override // io.bidmachine.AdListener
        public final void onAdLoaded(InterstitialAd interstitialAd) {
            this.f6506a.onAdInfoRequested(BidMachineNetwork.getRequestedAdInfo(interstitialAd.getAuctionResult()));
            this.f6506a.onAdLoaded();
        }

        @Override // io.bidmachine.AdFullScreenListener
        public final void onAdShowFailed(InterstitialAd interstitialAd, BMError bMError) {
            BidMachineNetwork.printError(this.f6506a, bMError);
            this.f6506a.onAdShowFailed();
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void load(ContextProvider contextProvider, UnifiedAdParams unifiedAdParams, Object obj, UnifiedAdCallback unifiedAdCallback) throws Exception {
        UnifiedVideoParams unifiedVideoParams = (UnifiedVideoParams) unifiedAdParams;
        this.f6504a = (InterstitialRequest) ((InterstitialRequest.Builder) ((BidMachineNetwork.RequestParams) obj).prepareRequest(new InterstitialRequest.Builder())).setAdContentType(AdContentType.Video).build();
        this.f6505b = (InterstitialAd) ((InterstitialAd) new InterstitialAd(contextProvider.getApplicationContext()).setListener(new C0114a((UnifiedVideoCallback) unifiedAdCallback))).load(this.f6504a);
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void onDestroy() {
        InterstitialRequest interstitialRequest = this.f6504a;
        if (interstitialRequest != null) {
            interstitialRequest.destroy();
            this.f6504a = null;
        }
        InterstitialAd interstitialAd = this.f6505b;
        if (interstitialAd != null) {
            interstitialAd.destroy();
            this.f6505b = null;
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void onMediationLoss(String str, double d2) {
        super.onMediationLoss(str, d2);
        InterstitialRequest interstitialRequest = this.f6504a;
        if (interstitialRequest != null) {
            interstitialRequest.notifyMediationLoss(str, Double.valueOf(d2));
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void onMediationWin() {
        super.onMediationWin();
        InterstitialRequest interstitialRequest = this.f6504a;
        if (interstitialRequest != null) {
            interstitialRequest.notifyMediationWin();
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedFullscreenAd
    public final void show(Activity activity, UnifiedVideoCallback unifiedVideoCallback) {
        UnifiedVideoCallback unifiedVideoCallback2 = unifiedVideoCallback;
        InterstitialAd interstitialAd = this.f6505b;
        if (interstitialAd != null && interstitialAd.canShow()) {
            this.f6505b.show();
        } else {
            unifiedVideoCallback2.onAdShowFailed();
        }
    }
}
