package com.appodeal.ads.adapters.meta.mrec;

import com.appodeal.ads.adapters.meta.MetaNetwork;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.unified.UnifiedMrec;
import com.appodeal.ads.unified.UnifiedMrecCallback;
import com.appodeal.ads.unified.UnifiedMrecParams;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
/* loaded from: classes2.dex */
public final class a extends UnifiedMrec<MetaNetwork.RequestParams> {

    /* renamed from: a  reason: collision with root package name */
    public AdView f6518a;

    /* renamed from: com.appodeal.ads.adapters.meta.mrec.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public final class C0118a implements AdListener {

        /* renamed from: a  reason: collision with root package name */
        public final UnifiedMrecCallback f6519a;

        public C0118a(UnifiedMrecCallback unifiedMrecCallback) {
            this.f6519a = unifiedMrecCallback;
        }

        @Override // com.facebook.ads.AdListener
        public final void onAdClicked(Ad ad) {
            this.f6519a.onAdClicked();
        }

        @Override // com.facebook.ads.AdListener
        public final void onAdLoaded(Ad ad) {
            this.f6519a.onAdLoaded(a.this.f6518a);
        }

        @Override // com.facebook.ads.AdListener
        public final void onError(Ad ad, AdError adError) {
            if (ad != null) {
                ad.destroy();
            }
            if (adError != null) {
                this.f6519a.printError(adError.getErrorMessage(), Integer.valueOf(adError.getErrorCode()));
            }
            this.f6519a.onAdLoadFailed(MetaNetwork.mapError(adError));
        }

        @Override // com.facebook.ads.AdListener
        public final void onLoggingImpression(Ad ad) {
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void load(ContextProvider contextProvider, UnifiedAdParams unifiedAdParams, Object obj, UnifiedAdCallback unifiedAdCallback) {
        UnifiedMrecParams unifiedMrecParams = (UnifiedMrecParams) unifiedAdParams;
        AdView adView = new AdView(contextProvider.getApplicationContext(), ((MetaNetwork.RequestParams) obj).metaKey, AdSize.RECTANGLE_HEIGHT_250);
        this.f6518a = adView;
        adView.loadAd(adView.buildLoadAdConfig().withAdListener(new C0118a((UnifiedMrecCallback) unifiedAdCallback)).build());
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void onDestroy() {
        AdView adView = this.f6518a;
        if (adView != null) {
            adView.destroy();
            this.f6518a = null;
        }
    }
}
