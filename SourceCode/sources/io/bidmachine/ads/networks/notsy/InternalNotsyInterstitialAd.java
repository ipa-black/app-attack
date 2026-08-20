package io.bidmachine.ads.networks.notsy;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.admanager.AdManagerInterstitialAd;
import com.google.android.gms.ads.admanager.AdManagerInterstitialAdLoadCallback;
import io.bidmachine.ads.networks.notsy.InternalNotsyAd;
import io.bidmachine.ads.networks.notsy.InternalNotsyFullscreenAd;
import io.bidmachine.utils.BMError;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class InternalNotsyInterstitialAd extends InternalNotsyFullscreenAd {
    private AdManagerInterstitialAd interstitialAd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public InternalNotsyInterstitialAd(InternalNotsyAdUnit internalNotsyAdUnit) {
        super(internalNotsyAdUnit);
    }

    @Override // io.bidmachine.ads.networks.notsy.InternalNotsyAd
    protected void loadAd(Context context, InternalLoadListener internalLoadListener) throws Throwable {
        AdManagerInterstitialAd.load(context, getAdUnitId(), createAdManagerAdRequest(), new LoadListener(this, internalLoadListener));
    }

    @Override // io.bidmachine.ads.networks.notsy.InternalNotsyFullscreenAd
    protected void showAd(Activity activity, InternalNotsyFullscreenAdPresentListener internalNotsyFullscreenAdPresentListener) throws Throwable {
        AdManagerInterstitialAd adManagerInterstitialAd = this.interstitialAd;
        if (adManagerInterstitialAd != null) {
            adManagerInterstitialAd.setFullScreenContentCallback(new InternalNotsyFullscreenAd.InternalFullscreenShowListener(this, internalNotsyFullscreenAdPresentListener));
            this.interstitialAd.show(activity);
            return;
        }
        internalNotsyFullscreenAdPresentListener.onAdShowFailed(BMError.internal("Interstitial object is null or not loaded"));
    }

    @Override // io.bidmachine.ads.networks.notsy.InternalNotsyAd
    protected void destroyAd() throws Throwable {
        AdManagerInterstitialAd adManagerInterstitialAd = this.interstitialAd;
        if (adManagerInterstitialAd != null) {
            adManagerInterstitialAd.setFullScreenContentCallback(null);
            this.interstitialAd = null;
        }
    }

    /* loaded from: classes5.dex */
    private static final class LoadListener extends AdManagerInterstitialAdLoadCallback {
        private final InternalLoadListener loadListener;
        private final InternalNotsyInterstitialAd notsyInterstitialAd;

        public LoadListener(InternalNotsyInterstitialAd internalNotsyInterstitialAd, InternalLoadListener internalLoadListener) {
            this.notsyInterstitialAd = internalNotsyInterstitialAd;
            this.loadListener = internalLoadListener;
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdLoaded(AdManagerInterstitialAd adManagerInterstitialAd) {
            this.notsyInterstitialAd.interstitialAd = adManagerInterstitialAd;
            this.notsyInterstitialAd.setStatus(InternalNotsyAd.Status.Loaded);
            this.loadListener.onAdLoaded(this.notsyInterstitialAd);
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdFailedToLoad(LoadAdError loadAdError) {
            this.loadListener.onAdLoadFailed(this.notsyInterstitialAd, BMError.noFill());
        }
    }
}
