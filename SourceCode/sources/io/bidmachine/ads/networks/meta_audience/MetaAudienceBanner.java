package io.bidmachine.ads.networks.meta_audience;

import android.view.View;
import com.facebook.ads.Ad;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.banner.BannerSize;
import io.bidmachine.unified.UnifiedBannerAd;
import io.bidmachine.unified.UnifiedBannerAdCallback;
import io.bidmachine.unified.UnifiedBannerAdRequestParams;
import io.bidmachine.unified.UnifiedMediationParams;
/* loaded from: classes5.dex */
class MetaAudienceBanner extends UnifiedBannerAd {
    private AdView adView;
    private Listener listener;

    @Override // io.bidmachine.unified.UnifiedAd
    public void load(ContextProvider contextProvider, UnifiedBannerAdCallback unifiedBannerAdCallback, UnifiedBannerAdRequestParams unifiedBannerAdRequestParams, UnifiedMediationParams unifiedMediationParams, NetworkAdUnit networkAdUnit) throws Throwable {
        AdSize adSize;
        MetaAudienceParams metaAudienceParams = new MetaAudienceParams(unifiedMediationParams);
        if (metaAudienceParams.isValid(unifiedBannerAdCallback)) {
            int i = AnonymousClass1.$SwitchMap$io$bidmachine$banner$BannerSize[unifiedBannerAdRequestParams.getAdRequestParameters().getBannerSize().ordinal()];
            if (i == 1) {
                adSize = AdSize.BANNER_HEIGHT_90;
            } else if (i == 2) {
                adSize = AdSize.RECTANGLE_HEIGHT_250;
            } else {
                adSize = AdSize.BANNER_HEIGHT_50;
            }
            this.listener = new Listener(unifiedBannerAdCallback);
            AdView adView = new AdView(contextProvider.getContext(), metaAudienceParams.placementId, adSize);
            this.adView = adView;
            adView.loadAd(adView.buildLoadAdConfig().withAdListener(this.listener).withBid(metaAudienceParams.bidPayload).build());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.bidmachine.ads.networks.meta_audience.MetaAudienceBanner$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$bidmachine$banner$BannerSize;

        static {
            int[] iArr = new int[BannerSize.values().length];
            $SwitchMap$io$bidmachine$banner$BannerSize = iArr;
            try {
                iArr[BannerSize.Size_728x90.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$bidmachine$banner$BannerSize[BannerSize.Size_300x250.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void onDestroy() {
        this.listener = null;
        AdView adView = this.adView;
        if (adView != null) {
            adView.destroy();
            this.adView = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class Listener extends BaseMetaAudienceListener<UnifiedBannerAdCallback> {
        @Override // com.facebook.ads.AdListener
        public void onLoggingImpression(Ad ad) {
        }

        Listener(UnifiedBannerAdCallback unifiedBannerAdCallback) {
            super(unifiedBannerAdCallback);
        }

        @Override // com.facebook.ads.AdListener
        public void onAdLoaded(Ad ad) {
            getCallback().onAdLoaded((View) ad);
        }
    }
}
