package com.appodeal.ads.adapters.bidmachine.rewarded_video;

import android.app.Activity;
import com.appodeal.ads.adapters.bidmachine.BidMachineNetwork;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.unified.UnifiedRewarded;
import com.appodeal.ads.unified.UnifiedRewardedCallback;
import com.appodeal.ads.unified.UnifiedRewardedParams;
import io.bidmachine.rewarded.RewardedAd;
import io.bidmachine.rewarded.RewardedListener;
import io.bidmachine.rewarded.RewardedRequest;
import io.bidmachine.utils.BMError;
/* compiled from: BidMachineRewarded.java */
/* loaded from: classes2.dex */
public final class a extends UnifiedRewarded<BidMachineNetwork.RequestParams> {

    /* renamed from: a  reason: collision with root package name */
    public RewardedRequest f6501a;

    /* renamed from: b  reason: collision with root package name */
    public RewardedAd f6502b;

    /* compiled from: BidMachineRewarded.java */
    /* renamed from: com.appodeal.ads.adapters.bidmachine.rewarded_video.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0113a implements RewardedListener {

        /* renamed from: a  reason: collision with root package name */
        public final UnifiedRewardedCallback f6503a;

        public C0113a(UnifiedRewardedCallback unifiedRewardedCallback) {
            this.f6503a = unifiedRewardedCallback;
        }

        @Override // io.bidmachine.AdListener
        public final void onAdClicked(RewardedAd rewardedAd) {
            this.f6503a.onAdClicked();
        }

        @Override // io.bidmachine.AdFullScreenListener
        public final void onAdClosed(RewardedAd rewardedAd, boolean z) {
            this.f6503a.onAdClosed();
        }

        @Override // io.bidmachine.AdListener
        public final void onAdExpired(RewardedAd rewardedAd) {
            this.f6503a.onAdExpired();
        }

        @Override // io.bidmachine.AdListener
        public final void onAdImpression(RewardedAd rewardedAd) {
            this.f6503a.onAdShown();
        }

        @Override // io.bidmachine.AdListener
        public final void onAdLoadFailed(RewardedAd rewardedAd, BMError bMError) {
            BidMachineNetwork.printError(this.f6503a, bMError);
            this.f6503a.onAdLoadFailed(BidMachineNetwork.mapBidMachineError(bMError));
        }

        @Override // io.bidmachine.AdListener
        public final void onAdLoaded(RewardedAd rewardedAd) {
            this.f6503a.onAdInfoRequested(BidMachineNetwork.getRequestedAdInfo(rewardedAd.getAuctionResult()));
            this.f6503a.onAdLoaded();
        }

        @Override // io.bidmachine.AdRewardedListener
        public final void onAdRewarded(RewardedAd rewardedAd) {
            this.f6503a.onAdFinished();
        }

        @Override // io.bidmachine.AdFullScreenListener
        public final void onAdShowFailed(RewardedAd rewardedAd, BMError bMError) {
            BidMachineNetwork.printError(this.f6503a, bMError);
            this.f6503a.onAdShowFailed();
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void load(ContextProvider contextProvider, UnifiedAdParams unifiedAdParams, Object obj, UnifiedAdCallback unifiedAdCallback) throws Exception {
        UnifiedRewardedParams unifiedRewardedParams = (UnifiedRewardedParams) unifiedAdParams;
        this.f6501a = (RewardedRequest) ((RewardedRequest.Builder) ((BidMachineNetwork.RequestParams) obj).prepareRequest(new RewardedRequest.Builder())).build();
        this.f6502b = (RewardedAd) ((RewardedAd) new RewardedAd(contextProvider.getApplicationContext()).setListener(new C0113a((UnifiedRewardedCallback) unifiedAdCallback))).load(this.f6501a);
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void onDestroy() {
        RewardedRequest rewardedRequest = this.f6501a;
        if (rewardedRequest != null) {
            rewardedRequest.destroy();
            this.f6501a = null;
        }
        RewardedAd rewardedAd = this.f6502b;
        if (rewardedAd != null) {
            rewardedAd.destroy();
            this.f6502b = null;
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void onMediationLoss(String str, double d2) {
        super.onMediationLoss(str, d2);
        RewardedRequest rewardedRequest = this.f6501a;
        if (rewardedRequest != null) {
            rewardedRequest.notifyMediationLoss(str, Double.valueOf(d2));
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void onMediationWin() {
        super.onMediationWin();
        RewardedRequest rewardedRequest = this.f6501a;
        if (rewardedRequest != null) {
            rewardedRequest.notifyMediationWin();
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedFullscreenAd
    public final void show(Activity activity, UnifiedRewardedCallback unifiedRewardedCallback) {
        UnifiedRewardedCallback unifiedRewardedCallback2 = unifiedRewardedCallback;
        RewardedAd rewardedAd = this.f6502b;
        if (rewardedAd != null && rewardedAd.canShow()) {
            this.f6502b.show();
        } else {
            unifiedRewardedCallback2.onAdShowFailed();
        }
    }
}
