package com.appodeal.ads.adapters.meta.native_ad;

import android.content.Context;
import android.view.View;
import android.widget.RelativeLayout;
import com.appodeal.ads.Native;
import com.appodeal.ads.NativeAdView;
import com.appodeal.ads.NativeMediaView;
import com.appodeal.ads.adapters.meta.MetaNetwork;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.unified.UnifiedAdUtils;
import com.appodeal.ads.unified.UnifiedNative;
import com.appodeal.ads.unified.UnifiedNativeAd;
import com.appodeal.ads.unified.UnifiedNativeCallback;
import com.appodeal.ads.unified.UnifiedNativeParams;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdLayout;
import com.facebook.ads.NativeAdListener;
import com.facebook.ads.NativeBannerAd;
/* loaded from: classes2.dex */
public final class a extends UnifiedNative<MetaNetwork.RequestParams> {

    /* renamed from: a  reason: collision with root package name */
    public d f6521a;

    /* renamed from: com.appodeal.ads.adapters.meta.native_ad.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public final class C0119a implements NativeAdListener {

        /* renamed from: a  reason: collision with root package name */
        public final UnifiedNativeCallback f6522a;

        public C0119a(UnifiedNativeCallback unifiedNativeCallback) {
            this.f6522a = unifiedNativeCallback;
        }

        @Override // com.facebook.ads.AdListener
        public final void onAdClicked(Ad ad) {
            this.f6522a.onAdClicked();
        }

        @Override // com.facebook.ads.AdListener
        public final void onAdLoaded(Ad ad) {
            a aVar;
            d bVar;
            try {
                NativeAdBase nativeAdBase = (NativeAdBase) ad;
                String a2 = a.a(a.this, nativeAdBase.getAdIcon());
                String a3 = a.a(a.this, nativeAdBase.getAdCoverImage());
                if (nativeAdBase instanceof NativeBannerAd) {
                    aVar = a.this;
                    bVar = new c((NativeBannerAd) nativeAdBase, a3, a2);
                } else if (!(nativeAdBase instanceof NativeAd)) {
                    this.f6522a.onAdLoadFailed(LoadingError.NoFill);
                    return;
                } else {
                    aVar = a.this;
                    bVar = new b((NativeAd) nativeAdBase, a3, a2);
                }
                aVar.f6521a = bVar;
                this.f6522a.onAdLoaded(a.this.f6521a);
            } catch (Exception unused) {
                this.f6522a.onAdLoadFailed(LoadingError.InternalError);
            }
        }

        @Override // com.facebook.ads.AdListener
        public final void onError(Ad ad, AdError adError) {
            if (ad != null) {
                ad.destroy();
            }
            if (adError != null) {
                this.f6522a.printError(adError.getErrorMessage(), Integer.valueOf(adError.getErrorCode()));
            }
            this.f6522a.onAdLoadFailed(MetaNetwork.mapError(adError));
        }

        @Override // com.facebook.ads.AdListener
        public final void onLoggingImpression(Ad ad) {
        }

        @Override // com.facebook.ads.NativeAdListener
        public final void onMediaDownloaded(Ad ad) {
        }
    }

    /* loaded from: classes2.dex */
    public static class b extends d<NativeAd> {

        /* renamed from: d  reason: collision with root package name */
        public MediaView f6524d;

        public b(NativeAd nativeAd, String str, String str2) {
            super(nativeAd, str, str2);
        }

        @Override // com.appodeal.ads.unified.UnifiedNativeAd
        public final boolean containsVideo() {
            return hasVideo();
        }

        @Override // com.appodeal.ads.unified.UnifiedNativeAd
        public final boolean hasVideo() {
            return ((NativeAd) this.f6525a).getAdCreativeType() == NativeAd.AdCreativeType.VIDEO;
        }

        @Override // com.appodeal.ads.unified.UnifiedNativeAd
        public final boolean onConfigureMediaView(NativeMediaView nativeMediaView) {
            this.f6524d = new MediaView(nativeMediaView.getContext());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(13, -1);
            nativeMediaView.removeAllViews();
            nativeMediaView.addView(this.f6524d, layoutParams);
            return true;
        }

        @Override // com.appodeal.ads.adapters.meta.native_ad.a.d, com.appodeal.ads.unified.UnifiedNativeAd
        public final void onDestroy() {
            super.onDestroy();
            MediaView mediaView = this.f6524d;
            if (mediaView != null) {
                mediaView.destroy();
                this.f6524d = null;
            }
        }

        @Override // com.appodeal.ads.adapters.meta.native_ad.a.d, com.appodeal.ads.unified.UnifiedNativeAd
        public final void onRegisterForInteraction(NativeAdView nativeAdView) {
            super.onRegisterForInteraction(nativeAdView);
            ((NativeAd) this.f6525a).registerViewForInteraction(nativeAdView, this.f6524d, this.f6526b, nativeAdView.getClickableViews());
        }
    }

    /* loaded from: classes2.dex */
    public static class c extends d<NativeBannerAd> {
        public c(NativeBannerAd nativeBannerAd, String str, String str2) {
            super(nativeBannerAd, str, str2);
        }

        @Override // com.appodeal.ads.adapters.meta.native_ad.a.d, com.appodeal.ads.unified.UnifiedNativeAd
        public final void onRegisterForInteraction(NativeAdView nativeAdView) {
            super.onRegisterForInteraction(nativeAdView);
            ((NativeBannerAd) this.f6525a).registerViewForInteraction(nativeAdView, this.f6526b, nativeAdView.getClickableViews());
        }
    }

    /* loaded from: classes2.dex */
    public static class d<T extends NativeAdBase> extends UnifiedNativeAd {

        /* renamed from: a  reason: collision with root package name */
        public final T f6525a;

        /* renamed from: b  reason: collision with root package name */
        public MediaView f6526b;

        /* renamed from: c  reason: collision with root package name */
        public NativeAdLayout f6527c;

        public d(T t, String str, String str2) {
            super(t.getAdvertiserName(), t.getAdBodyText(), t.getAdCallToAction(), str, str2);
            this.f6525a = t;
        }

        @Override // com.appodeal.ads.unified.UnifiedNativeAd
        public final Float getRating() {
            NativeAdBase.Rating adStarRating = this.f6525a.getAdStarRating();
            return (adStarRating == null || adStarRating.getValue() == 0.0d) ? super.getRating() : Float.valueOf((float) adStarRating.getValue());
        }

        @Override // com.appodeal.ads.unified.UnifiedNativeAd
        public final View obtainIconView(Context context) {
            if (this.f6526b == null) {
                this.f6526b = new MediaView(context);
            }
            return this.f6526b;
        }

        @Override // com.appodeal.ads.unified.UnifiedNativeAd
        public final View obtainProviderView(Context context) {
            AdOptionsView adOptionsView = new AdOptionsView(context, this.f6525a, null);
            RelativeLayout relativeLayout = new RelativeLayout(context);
            relativeLayout.addView(adOptionsView, new RelativeLayout.LayoutParams(Math.round(UnifiedAdUtils.getScreenDensity(context) * 20.0f), Math.round(UnifiedAdUtils.getScreenDensity(context) * 20.0f)));
            return relativeLayout;
        }

        @Override // com.appodeal.ads.unified.UnifiedNativeAd
        public final void onConfigure(NativeAdView nativeAdView) {
            super.onConfigure(nativeAdView);
            NativeAdLayout nativeAdLayout = new NativeAdLayout(nativeAdView.getContext());
            this.f6527c = nativeAdLayout;
            nativeAdView.configureContainer(nativeAdLayout);
        }

        @Override // com.appodeal.ads.unified.UnifiedNativeAd
        public void onDestroy() {
            super.onDestroy();
            T t = this.f6525a;
            if (t != null) {
                t.destroy();
            }
            MediaView mediaView = this.f6526b;
            if (mediaView != null) {
                mediaView.destroy();
                this.f6526b = null;
            }
            if (this.f6527c != null) {
                this.f6527c = null;
            }
        }

        @Override // com.appodeal.ads.unified.UnifiedNativeAd
        public void onRegisterForInteraction(NativeAdView nativeAdView) {
            super.onRegisterForInteraction(nativeAdView);
        }

        @Override // com.appodeal.ads.unified.UnifiedNativeAd
        public final void onUnregisterForInteraction() {
            super.onUnregisterForInteraction();
            this.f6525a.unregisterView();
        }
    }

    public static String a(a aVar, NativeAdBase.Image image) {
        aVar.getClass();
        if (image == null) {
            return null;
        }
        return image.getUrl();
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void load(ContextProvider contextProvider, UnifiedNativeParams unifiedNativeParams, Object obj, UnifiedNativeCallback unifiedNativeCallback) {
        NativeAdBase nativeAd;
        MetaNetwork.RequestParams requestParams = (MetaNetwork.RequestParams) obj;
        UnifiedNativeCallback unifiedNativeCallback2 = unifiedNativeCallback;
        Context applicationContext = contextProvider.getApplicationContext();
        if (unifiedNativeParams.getMediaAssetType() == Native.MediaAssetType.ICON) {
            nativeAd = new NativeBannerAd(applicationContext, requestParams.metaKey);
        } else {
            nativeAd = new NativeAd(applicationContext, requestParams.metaKey);
        }
        nativeAd.loadAd(nativeAd.buildLoadAdConfig().withAdListener(new C0119a(unifiedNativeCallback2)).withMediaCacheFlag(NativeAdBase.MediaCacheFlag.ALL).build());
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void onDestroy() {
        d dVar = this.f6521a;
        if (dVar != null) {
            dVar.onDestroy();
            this.f6521a = null;
        }
    }
}
