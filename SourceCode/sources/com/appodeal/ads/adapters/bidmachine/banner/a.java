package com.appodeal.ads.adapters.bidmachine.banner;

import android.content.Context;
import com.appodeal.ads.adapters.bidmachine.BidMachineNetwork;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.unified.UnifiedBanner;
import com.appodeal.ads.unified.UnifiedBannerCallback;
import com.appodeal.ads.unified.UnifiedBannerParams;
import io.bidmachine.banner.BannerListener;
import io.bidmachine.banner.BannerRequest;
import io.bidmachine.banner.BannerSize;
import io.bidmachine.banner.BannerView;
import io.bidmachine.utils.BMError;
/* compiled from: BidMachineBanner.java */
/* loaded from: classes2.dex */
public final class a extends UnifiedBanner<BidMachineNetwork.RequestParams> {

    /* renamed from: a  reason: collision with root package name */
    public BannerView f6484a;

    /* renamed from: b  reason: collision with root package name */
    public BannerRequest f6485b;

    /* compiled from: BidMachineBanner.java */
    /* renamed from: com.appodeal.ads.adapters.bidmachine.banner.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0109a implements BannerListener {

        /* renamed from: a  reason: collision with root package name */
        public final UnifiedBannerCallback f6486a;

        /* renamed from: b  reason: collision with root package name */
        public final BannerSize f6487b;

        public C0109a(UnifiedBannerCallback unifiedBannerCallback, BannerSize bannerSize) {
            this.f6486a = unifiedBannerCallback;
            this.f6487b = bannerSize;
        }

        @Override // io.bidmachine.AdListener
        public final void onAdClicked(BannerView bannerView) {
            this.f6486a.onAdClicked();
        }

        @Override // io.bidmachine.AdListener
        public final void onAdExpired(BannerView bannerView) {
            this.f6486a.onAdExpired();
        }

        @Override // io.bidmachine.AdListener
        public final /* bridge */ /* synthetic */ void onAdImpression(BannerView bannerView) {
        }

        @Override // io.bidmachine.AdListener
        public final void onAdLoadFailed(BannerView bannerView, BMError bMError) {
            BidMachineNetwork.printError(this.f6486a, bMError);
            this.f6486a.onAdLoadFailed(BidMachineNetwork.mapBidMachineError(bMError));
        }

        @Override // io.bidmachine.AdListener
        public final void onAdLoaded(BannerView bannerView) {
            BannerView bannerView2 = bannerView;
            this.f6486a.onAdInfoRequested(BidMachineNetwork.getRequestedAdInfo(bannerView2.getAuctionResult()));
            UnifiedBannerCallback unifiedBannerCallback = this.f6486a;
            BannerSize bannerSize = this.f6487b;
            unifiedBannerCallback.onAdLoaded(bannerView2, bannerSize.width, bannerSize.height);
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void load(ContextProvider contextProvider, UnifiedAdParams unifiedAdParams, Object obj, UnifiedAdCallback unifiedAdCallback) throws Exception {
        BannerSize bannerSize;
        BidMachineNetwork.RequestParams requestParams = (BidMachineNetwork.RequestParams) obj;
        UnifiedBannerCallback unifiedBannerCallback = (UnifiedBannerCallback) unifiedAdCallback;
        Context applicationContext = contextProvider.getApplicationContext();
        if (((UnifiedBannerParams) unifiedAdParams).needLeaderBoard(applicationContext)) {
            bannerSize = BannerSize.Size_728x90;
        } else {
            bannerSize = BannerSize.Size_320x50;
        }
        this.f6485b = (BannerRequest) ((BannerRequest.Builder) requestParams.prepareRequest(new BannerRequest.Builder())).setSize(bannerSize).build();
        BannerView bannerView = new BannerView(applicationContext);
        this.f6484a = bannerView;
        bannerView.setListener(new C0109a(unifiedBannerCallback, bannerSize));
        this.f6484a.load((BannerView) this.f6485b);
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void onDestroy() {
        BannerRequest bannerRequest = this.f6485b;
        if (bannerRequest != null) {
            bannerRequest.destroy();
            this.f6485b = null;
        }
        BannerView bannerView = this.f6484a;
        if (bannerView != null) {
            bannerView.destroy();
            this.f6484a = null;
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void onMediationLoss(String str, double d2) {
        super.onMediationLoss(str, d2);
        BannerRequest bannerRequest = this.f6485b;
        if (bannerRequest != null) {
            bannerRequest.notifyMediationLoss(str, Double.valueOf(d2));
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void onMediationWin() {
        super.onMediationWin();
        BannerRequest bannerRequest = this.f6485b;
        if (bannerRequest != null) {
            bannerRequest.notifyMediationWin();
        }
    }
}
