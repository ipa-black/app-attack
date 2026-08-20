package com.appodeal.ads.adapters.admob.mrec;

import android.content.Context;
import com.appodeal.ads.adapters.admob.unified.UnifiedAdmobNetwork;
import com.appodeal.ads.adapters.admob.unified.UnifiedAdmobRequestParams;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.unified.UnifiedMrec;
import com.appodeal.ads.unified.UnifiedMrecCallback;
import com.appodeal.ads.unified.UnifiedMrecParams;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.BaseAdView;
import com.google.android.gms.ads.LoadAdError;
/* loaded from: classes2.dex */
public abstract class UnifiedAdmobMrec<AdViewType extends BaseAdView, AdRequestType extends AdRequest> extends UnifiedMrec<UnifiedAdmobRequestParams<AdRequestType>> {
    private AdViewType adView;

    /* loaded from: classes2.dex */
    public static final class a<AdViewType extends BaseAdView> extends AdListener {

        /* renamed from: a  reason: collision with root package name */
        public final AdViewType f6448a;

        /* renamed from: b  reason: collision with root package name */
        public final UnifiedMrecCallback f6449b;

        public a(AdViewType adviewtype, UnifiedMrecCallback unifiedMrecCallback) {
            this.f6449b = unifiedMrecCallback;
            this.f6448a = adviewtype;
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClicked() {
            super.onAdClicked();
            this.f6449b.onAdClicked();
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdFailedToLoad(LoadAdError loadAdError) {
            super.onAdFailedToLoad(loadAdError);
            if (loadAdError != null) {
                this.f6449b.printError(loadAdError.getMessage(), Integer.valueOf(loadAdError.getCode()));
            }
            this.f6449b.onAdLoadFailed(UnifiedAdmobNetwork.mapError(loadAdError));
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLoaded() {
            super.onAdLoaded();
            this.f6449b.onAdLoaded(this.f6448a);
        }
    }

    public abstract AdViewType createAdView(Context context);

    @Override // com.appodeal.ads.unified.UnifiedAd
    public /* bridge */ /* synthetic */ void load(ContextProvider contextProvider, UnifiedAdParams unifiedAdParams, Object obj, UnifiedAdCallback unifiedAdCallback) {
        load(contextProvider, (UnifiedMrecParams) unifiedAdParams, (UnifiedAdmobRequestParams) ((UnifiedAdmobRequestParams) obj), (UnifiedMrecCallback) unifiedAdCallback);
    }

    public void load(ContextProvider contextProvider, UnifiedMrecParams unifiedMrecParams, UnifiedAdmobRequestParams<AdRequestType> unifiedAdmobRequestParams, UnifiedMrecCallback unifiedMrecCallback) {
        AdViewType createAdView = createAdView(contextProvider.getApplicationContext());
        this.adView = createAdView;
        createAdView.setAdUnitId(unifiedAdmobRequestParams.key);
        this.adView.setAdSize(AdSize.MEDIUM_RECTANGLE);
        this.adView.setAdListener(new a(this.adView, unifiedMrecCallback));
        this.adView.loadAd(unifiedAdmobRequestParams.request);
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public void onDestroy() {
        AdViewType adviewtype = this.adView;
        if (adviewtype != null) {
            adviewtype.setAdListener(null);
            this.adView.destroy();
            this.adView = null;
        }
    }
}
