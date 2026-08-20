package com.appodeal.ads.adapters.bidmachine.mrec;

import com.appodeal.ads.adapters.bidmachine.BidMachineNetwork;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.unified.UnifiedMrec;
import com.appodeal.ads.unified.UnifiedMrecCallback;
import com.appodeal.ads.unified.UnifiedMrecParams;
import io.bidmachine.banner.BannerListener;
import io.bidmachine.banner.BannerRequest;
import io.bidmachine.banner.BannerSize;
import io.bidmachine.banner.BannerView;
import io.bidmachine.utils.BMError;
/* compiled from: BidMachineMrec.java */
/* loaded from: classes2.dex */
public final class a extends UnifiedMrec<BidMachineNetwork.RequestParams> {

    /* renamed from: a  reason: collision with root package name */
    public BannerView f6492a;

    /* renamed from: b  reason: collision with root package name */
    public BannerRequest f6493b;

    /* compiled from: BidMachineMrec.java */
    /* renamed from: com.appodeal.ads.adapters.bidmachine.mrec.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0111a implements BannerListener {

        /* renamed from: a  reason: collision with root package name */
        public final UnifiedMrecCallback f6494a;

        public C0111a(UnifiedMrecCallback unifiedMrecCallback) {
            this.f6494a = unifiedMrecCallback;
        }

        @Override // io.bidmachine.AdListener
        public final void onAdClicked(BannerView bannerView) {
            this.f6494a.onAdClicked();
        }

        @Override // io.bidmachine.AdListener
        public final void onAdExpired(BannerView bannerView) {
            this.f6494a.onAdExpired();
        }

        @Override // io.bidmachine.AdListener
        public final /* bridge */ /* synthetic */ void onAdImpression(BannerView bannerView) {
        }

        @Override // io.bidmachine.AdListener
        public final void onAdLoadFailed(BannerView bannerView, BMError bMError) {
            BidMachineNetwork.printError(this.f6494a, bMError);
            this.f6494a.onAdLoadFailed(BidMachineNetwork.mapBidMachineError(bMError));
        }

        @Override // io.bidmachine.AdListener
        public final void onAdLoaded(BannerView bannerView) {
            BannerView bannerView2 = bannerView;
            this.f6494a.onAdInfoRequested(BidMachineNetwork.getRequestedAdInfo(bannerView2.getAuctionResult()));
            this.f6494a.onAdLoaded(bannerView2);
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void load(ContextProvider contextProvider, UnifiedAdParams unifiedAdParams, Object obj, UnifiedAdCallback unifiedAdCallback) throws Exception {
        UnifiedMrecParams unifiedMrecParams = (UnifiedMrecParams) unifiedAdParams;
        this.f6493b = (BannerRequest) ((BannerRequest.Builder) ((BidMachineNetwork.RequestParams) obj).prepareRequest(new BannerRequest.Builder())).setSize(BannerSize.Size_300x250).build();
        BannerView bannerView = new BannerView(contextProvider.getApplicationContext());
        this.f6492a = bannerView;
        bannerView.setListener(new C0111a((UnifiedMrecCallback) unifiedAdCallback));
        this.f6492a.load((BannerView) this.f6493b);
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void onDestroy() {
        BannerRequest bannerRequest = this.f6493b;
        if (bannerRequest != null) {
            bannerRequest.destroy();
            this.f6493b = null;
        }
        BannerView bannerView = this.f6492a;
        if (bannerView != null) {
            bannerView.destroy();
            this.f6492a = null;
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void onMediationLoss(String str, double d2) {
        super.onMediationLoss(str, d2);
        BannerRequest bannerRequest = this.f6493b;
        if (bannerRequest != null) {
            bannerRequest.notifyMediationLoss(str, Double.valueOf(d2));
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void onMediationWin() {
        super.onMediationWin();
        BannerRequest bannerRequest = this.f6493b;
        if (bannerRequest != null) {
            bannerRequest.notifyMediationWin();
        }
    }
}
