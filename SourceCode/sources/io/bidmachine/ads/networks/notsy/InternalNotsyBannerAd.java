package io.bidmachine.ads.networks.notsy;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.admanager.AdManagerAdView;
import io.bidmachine.AdsFormat;
import io.bidmachine.ads.networks.notsy.InternalNotsyAd;
import io.bidmachine.utils.BMError;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class InternalNotsyBannerAd extends InternalNotsyAd {
    private AdManagerAdView adView;

    /* JADX INFO: Access modifiers changed from: package-private */
    public InternalNotsyBannerAd(InternalNotsyAdUnit internalNotsyAdUnit) {
        super(internalNotsyAdUnit);
    }

    @Override // io.bidmachine.ads.networks.notsy.InternalNotsyAd
    public void loadAd(Context context, InternalLoadListener internalLoadListener) throws Throwable {
        AdManagerAdView adManagerAdView = new AdManagerAdView(context);
        this.adView = adManagerAdView;
        adManagerAdView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.adView.setAdUnitId(getAdUnitId());
        this.adView.setAdListener(new Listener(this, internalLoadListener, null));
        int i = AnonymousClass1.$SwitchMap$io$bidmachine$AdsFormat[getAdsFormat().ordinal()];
        if (i == 1) {
            this.adView.setAdSize(AdSize.MEDIUM_RECTANGLE);
        } else if (i == 2) {
            this.adView.setAdSize(AdSize.LEADERBOARD);
        } else {
            this.adView.setAdSize(AdSize.BANNER);
        }
        this.adView.loadAd(createAdManagerAdRequest());
    }

    /* renamed from: io.bidmachine.ads.networks.notsy.InternalNotsyBannerAd$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$bidmachine$AdsFormat;

        static {
            int[] iArr = new int[AdsFormat.values().length];
            $SwitchMap$io$bidmachine$AdsFormat = iArr;
            try {
                iArr[AdsFormat.Banner_300x250.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$bidmachine$AdsFormat[AdsFormat.Banner_728x90.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public View getAdView() {
        return this.adView;
    }

    @Override // io.bidmachine.ads.networks.notsy.InternalNotsyAd
    protected void destroyAd() throws Throwable {
        AdManagerAdView adManagerAdView = this.adView;
        if (adManagerAdView != null) {
            adManagerAdView.destroy();
            this.adView = null;
        }
    }

    /* loaded from: classes5.dex */
    private static final class Listener extends AdListener {
        private final InternalNotsyAd internalNotsyAd;
        private final InternalLoadListener loadListener;

        @Override // com.google.android.gms.ads.AdListener
        public void onAdClosed() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdOpened() {
        }

        /* synthetic */ Listener(InternalNotsyAd internalNotsyAd, InternalLoadListener internalLoadListener, AnonymousClass1 anonymousClass1) {
            this(internalNotsyAd, internalLoadListener);
        }

        private Listener(InternalNotsyAd internalNotsyAd, InternalLoadListener internalLoadListener) {
            this.internalNotsyAd = internalNotsyAd;
            this.loadListener = internalLoadListener;
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLoaded() {
            this.internalNotsyAd.setStatus(InternalNotsyAd.Status.Loaded);
            this.loadListener.onAdLoaded(this.internalNotsyAd);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdFailedToLoad(LoadAdError loadAdError) {
            this.loadListener.onAdLoadFailed(this.internalNotsyAd, BMError.noFill());
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdImpression() {
            NotsyLoader.onNotsyAdShown(this.internalNotsyAd);
            this.internalNotsyAd.setStatus(InternalNotsyAd.Status.Shown);
            if (this.internalNotsyAd.getAdPresentListener() != null) {
                this.internalNotsyAd.getAdPresentListener().onAdShown();
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdClicked() {
            if (this.internalNotsyAd.getAdPresentListener() != null) {
                this.internalNotsyAd.getAdPresentListener().onAdClicked();
            }
        }
    }
}
