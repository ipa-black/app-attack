package io.bidmachine.ads.networks.notsy;

import android.app.Activity;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.FullScreenContentCallback;
import io.bidmachine.ads.networks.notsy.InternalNotsyAd;
import io.bidmachine.core.AdapterLogger;
import io.bidmachine.core.Utils;
import io.bidmachine.utils.BMError;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class InternalNotsyFullscreenAd extends InternalNotsyAd {
    protected abstract void showAd(Activity activity, InternalNotsyFullscreenAdPresentListener internalNotsyFullscreenAdPresentListener) throws Throwable;

    /* JADX INFO: Access modifiers changed from: package-private */
    public InternalNotsyFullscreenAd(InternalNotsyAdUnit internalNotsyAdUnit) {
        super(internalNotsyAdUnit);
    }

    public final void show(final Activity activity, final InternalNotsyFullscreenAdPresentListener internalNotsyFullscreenAdPresentListener) {
        Utils.onUiThread(new Runnable() { // from class: io.bidmachine.ads.networks.notsy.InternalNotsyFullscreenAd$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                InternalNotsyFullscreenAd.this.m496x369fb995(activity, internalNotsyFullscreenAdPresentListener);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$show$0$io-bidmachine-ads-networks-notsy-InternalNotsyFullscreenAd  reason: not valid java name */
    public /* synthetic */ void m496x369fb995(Activity activity, InternalNotsyFullscreenAdPresentListener internalNotsyFullscreenAdPresentListener) {
        try {
            setStatus(InternalNotsyAd.Status.Showing);
            showAd(activity, internalNotsyFullscreenAdPresentListener);
        } catch (Throwable th) {
            AdapterLogger.logThrowable(th);
            internalNotsyFullscreenAdPresentListener.onAdShowFailed(BMError.internal("Exception when showing ad object"));
        }
    }

    /* loaded from: classes5.dex */
    static class InternalFullscreenShowListener extends FullScreenContentCallback {
        private final InternalNotsyFullscreenAdPresentListener adListener;
        private final InternalNotsyAd internalNotsyAd;

        /* JADX INFO: Access modifiers changed from: package-private */
        public InternalFullscreenShowListener(InternalNotsyAd internalNotsyAd, InternalNotsyFullscreenAdPresentListener internalNotsyFullscreenAdPresentListener) {
            this.internalNotsyAd = internalNotsyAd;
            this.adListener = internalNotsyFullscreenAdPresentListener;
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdShowedFullScreenContent() {
            NotsyLoader.onNotsyAdShown(this.internalNotsyAd);
            this.internalNotsyAd.setStatus(InternalNotsyAd.Status.Shown);
            this.adListener.onAdShown();
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdFailedToShowFullScreenContent(AdError adError) {
            this.adListener.onAdShowFailed(BMError.internal(adError.getMessage()));
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdClicked() {
            this.adListener.onAdClicked();
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdDismissedFullScreenContent() {
            this.adListener.onAdComplete();
            this.adListener.onAdClosed();
        }
    }
}
