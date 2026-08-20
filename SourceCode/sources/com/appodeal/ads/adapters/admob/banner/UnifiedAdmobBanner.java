package com.appodeal.ads.adapters.admob.banner;

import android.content.Context;
import com.appodeal.ads.adapters.admob.unified.UnifiedAdmobNetwork;
import com.appodeal.ads.adapters.admob.unified.UnifiedAdmobRequestParams;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.unified.UnifiedBanner;
import com.appodeal.ads.unified.UnifiedBannerCallback;
import com.appodeal.ads.unified.UnifiedBannerParams;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.BaseAdView;
import com.google.android.gms.ads.LoadAdError;
/* loaded from: classes2.dex */
public abstract class UnifiedAdmobBanner<AdViewType extends BaseAdView, AdRequestType extends AdRequest> extends UnifiedBanner<UnifiedAdmobRequestParams<AdRequestType>> {
    private AdViewType adView;

    /* loaded from: classes2.dex */
    public static final class a<AdViewType extends BaseAdView, AdRequestType extends AdRequest> extends AdListener {

        /* renamed from: a  reason: collision with root package name */
        public final UnifiedAdmobBanner<AdViewType, AdRequestType> f6442a;

        /* renamed from: b  reason: collision with root package name */
        public final UnifiedBannerCallback f6443b;

        /* renamed from: c  reason: collision with root package name */
        public final AdViewType f6444c;

        /* renamed from: d  reason: collision with root package name */
        public final int f6445d;

        public a(UnifiedAdmobBanner<AdViewType, AdRequestType> unifiedAdmobBanner, UnifiedBannerCallback unifiedBannerCallback, AdViewType adviewtype, int i) {
            this.f6442a = unifiedAdmobBanner;
            this.f6443b = unifiedBannerCallback;
            this.f6444c = adviewtype;
            this.f6445d = i;
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClicked() {
            super.onAdClicked();
            this.f6443b.onAdClicked();
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdFailedToLoad(LoadAdError loadAdError) {
            super.onAdFailedToLoad(loadAdError);
            if (loadAdError != null) {
                this.f6443b.printError(loadAdError.getMessage(), Integer.valueOf(loadAdError.getCode()));
            }
            this.f6443b.onAdLoadFailed(UnifiedAdmobNetwork.mapError(loadAdError));
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLoaded() {
            super.onAdLoaded();
            AdSize adSize = this.f6444c.getAdSize();
            if (adSize != AdSize.LEADERBOARD && adSize != AdSize.BANNER) {
                this.f6442a.setRefreshOnRotate(true);
            }
            this.f6443b.onAdLoaded(this.f6444c, -1, this.f6445d);
        }
    }

    public abstract AdViewType createAdView(Context context);

    @Override // com.appodeal.ads.unified.UnifiedAd
    public /* bridge */ /* synthetic */ void load(ContextProvider contextProvider, UnifiedAdParams unifiedAdParams, Object obj, UnifiedAdCallback unifiedAdCallback) {
        load(contextProvider, (UnifiedBannerParams) unifiedAdParams, (UnifiedAdmobRequestParams) ((UnifiedAdmobRequestParams) obj), (UnifiedBannerCallback) unifiedAdCallback);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0051, code lost:
        if (r0 > 720.0f) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void load(com.appodeal.ads.modules.common.internal.context.ContextProvider r5, com.appodeal.ads.unified.UnifiedBannerParams r6, com.appodeal.ads.adapters.admob.unified.UnifiedAdmobRequestParams<AdRequestType> r7, com.appodeal.ads.unified.UnifiedBannerCallback r8) {
        /*
            r4 = this;
            android.content.Context r5 = r5.getApplicationContext()
            com.google.android.gms.ads.BaseAdView r0 = r4.createAdView(r5)
            r4.adView = r0
            java.lang.String r1 = r7.key
            r0.setAdUnitId(r1)
            float r0 = com.appodeal.ads.unified.UnifiedAdUtils.getScreenHeightInDp(r5)
            boolean r1 = r7.useAdaptiveBanner
            if (r1 == 0) goto L2f
            boolean r1 = r6.useSmartBanners(r5)
            if (r1 == 0) goto L2f
            int r6 = r6.getMaxWidth(r5)
            com.google.android.gms.ads.AdSize r5 = com.google.android.gms.ads.AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(r5, r6)
            AdViewType extends com.google.android.gms.ads.BaseAdView r6 = r4.adView
            r6.setAdSize(r5)
            int r5 = r5.getHeight()
            goto L6b
        L2f:
            boolean r1 = r7.useSmartBanner
            r2 = 90
            r3 = 50
            if (r1 == 0) goto L54
            boolean r1 = r6.useSmartBanners(r5)
            if (r1 == 0) goto L54
            AdViewType extends com.google.android.gms.ads.BaseAdView r5 = r4.adView
            com.google.android.gms.ads.AdSize r6 = com.google.android.gms.ads.AdSize.SMART_BANNER
            r5.setAdSize(r6)
            r5 = 1137180672(0x43c80000, float:400.0)
            int r5 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r5 > 0) goto L4d
            r5 = 32
            goto L6b
        L4d:
            r5 = 1144258560(0x44340000, float:720.0)
            int r5 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r5 <= 0) goto L6a
            goto L61
        L54:
            boolean r5 = r6.needLeaderBoard(r5)
            if (r5 == 0) goto L63
            AdViewType extends com.google.android.gms.ads.BaseAdView r5 = r4.adView
            com.google.android.gms.ads.AdSize r6 = com.google.android.gms.ads.AdSize.LEADERBOARD
            r5.setAdSize(r6)
        L61:
            r5 = r2
            goto L6b
        L63:
            AdViewType extends com.google.android.gms.ads.BaseAdView r5 = r4.adView
            com.google.android.gms.ads.AdSize r6 = com.google.android.gms.ads.AdSize.BANNER
            r5.setAdSize(r6)
        L6a:
            r5 = r3
        L6b:
            AdViewType extends com.google.android.gms.ads.BaseAdView r6 = r4.adView
            com.appodeal.ads.adapters.admob.banner.UnifiedAdmobBanner$a r0 = new com.appodeal.ads.adapters.admob.banner.UnifiedAdmobBanner$a
            AdViewType extends com.google.android.gms.ads.BaseAdView r1 = r4.adView
            r0.<init>(r4, r8, r1, r5)
            r6.setAdListener(r0)
            AdViewType extends com.google.android.gms.ads.BaseAdView r5 = r4.adView
            AdRequestType extends com.google.android.gms.ads.AdRequest r6 = r7.request
            r5.loadAd(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.adapters.admob.banner.UnifiedAdmobBanner.load(com.appodeal.ads.modules.common.internal.context.ContextProvider, com.appodeal.ads.unified.UnifiedBannerParams, com.appodeal.ads.adapters.admob.unified.UnifiedAdmobRequestParams, com.appodeal.ads.unified.UnifiedBannerCallback):void");
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
