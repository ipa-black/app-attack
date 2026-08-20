package io.bidmachine.ads.networks.criteo;

import com.criteo.publisher.Bid;
import com.criteo.publisher.CriteoBannerAdListener;
import com.criteo.publisher.CriteoBannerView;
import com.criteo.publisher.CriteoErrorCode;
import com.criteo.publisher.model.BannerAdUnit;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.core.AdapterLogger;
import io.bidmachine.core.Utils;
import io.bidmachine.unified.UnifiedBannerAd;
import io.bidmachine.unified.UnifiedBannerAdCallback;
import io.bidmachine.unified.UnifiedBannerAdRequestParams;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.utils.BMError;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class CriteoBanner extends UnifiedBannerAd {
    private CriteoBannerView criteoBannerView;

    @Override // io.bidmachine.unified.UnifiedAd
    public void load(final ContextProvider contextProvider, final UnifiedBannerAdCallback unifiedBannerAdCallback, UnifiedBannerAdRequestParams unifiedBannerAdRequestParams, UnifiedMediationParams unifiedMediationParams, NetworkAdUnit networkAdUnit) throws Throwable {
        final BannerAdUnit bannerAdUnit = (BannerAdUnit) CriteoAdUnitStorage.getAdUnit(unifiedMediationParams.getString("ad_unit_id"));
        if (bannerAdUnit == null) {
            unifiedBannerAdCallback.onAdLoadFailed(BMError.notFound("AdUnit"));
            return;
        }
        final Bid takeBid = CriteoBidTokenStorage.takeBid(networkAdUnit);
        if (takeBid == null) {
            unifiedBannerAdCallback.onAdLoadFailed(BMError.notFound("Bid"));
        } else {
            Utils.onUiThread(new Runnable() { // from class: io.bidmachine.ads.networks.criteo.CriteoBanner$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    CriteoBanner.this.m493lambda$load$0$iobidmachineadsnetworkscriteoCriteoBanner(contextProvider, bannerAdUnit, unifiedBannerAdCallback, takeBid);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$load$0$io-bidmachine-ads-networks-criteo-CriteoBanner  reason: not valid java name */
    public /* synthetic */ void m493lambda$load$0$iobidmachineadsnetworkscriteoCriteoBanner(ContextProvider contextProvider, BannerAdUnit bannerAdUnit, UnifiedBannerAdCallback unifiedBannerAdCallback, Bid bid) {
        try {
            CriteoBannerView criteoBannerView = new CriteoBannerView(contextProvider.getContext(), bannerAdUnit);
            this.criteoBannerView = criteoBannerView;
            criteoBannerView.setCriteoBannerAdListener(new Listener(unifiedBannerAdCallback));
            this.criteoBannerView.loadAd(bid);
        } catch (Throwable th) {
            AdapterLogger.logThrowable(th);
            unifiedBannerAdCallback.onAdLoadFailed(BMError.internal("Exception when loading banner object"));
        }
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void onDestroy() {
        CriteoBannerView criteoBannerView = this.criteoBannerView;
        if (criteoBannerView != null) {
            criteoBannerView.setCriteoBannerAdListener(null);
            this.criteoBannerView = null;
        }
    }

    /* loaded from: classes5.dex */
    private static final class Listener implements CriteoBannerAdListener {
        private final UnifiedBannerAdCallback callback;

        @Override // com.criteo.publisher.CriteoBannerAdListener, com.criteo.publisher.k
        public void onAdLeftApplication() {
        }

        Listener(UnifiedBannerAdCallback unifiedBannerAdCallback) {
            this.callback = unifiedBannerAdCallback;
        }

        @Override // com.criteo.publisher.CriteoBannerAdListener
        public void onAdReceived(CriteoBannerView criteoBannerView) {
            this.callback.onAdLoaded(criteoBannerView);
        }

        @Override // com.criteo.publisher.CriteoBannerAdListener, com.criteo.publisher.k
        public void onAdFailedToReceive(CriteoErrorCode criteoErrorCode) {
            this.callback.onAdLoadFailed(CriteoAdapter.mapError(criteoErrorCode));
        }

        @Override // com.criteo.publisher.CriteoBannerAdListener, com.criteo.publisher.k
        public void onAdClicked() {
            this.callback.onAdClicked();
        }
    }
}
