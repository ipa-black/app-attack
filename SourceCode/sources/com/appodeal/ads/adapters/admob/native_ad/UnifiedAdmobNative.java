package com.appodeal.ads.adapters.admob.native_ad;

import android.widget.RelativeLayout;
import com.appodeal.ads.Native;
import com.appodeal.ads.NativeMediaView;
import com.appodeal.ads.adapters.admob.unified.UnifiedAdmobNetwork;
import com.appodeal.ads.adapters.admob.unified.UnifiedAdmobRequestParams;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.unified.UnifiedNative;
import com.appodeal.ads.unified.UnifiedNativeAd;
import com.appodeal.ads.unified.UnifiedNativeCallback;
import com.appodeal.ads.unified.UnifiedNativeParams;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.nativead.MediaView;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.google.android.gms.ads.nativead.NativeAdView;
/* loaded from: classes2.dex */
public class UnifiedAdmobNative<AdRequestType extends AdRequest> extends UnifiedNative<UnifiedAdmobRequestParams<AdRequestType>> {

    /* loaded from: classes2.dex */
    public class a extends AdListener {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ UnifiedNativeCallback f6450a;

        public a(UnifiedNativeCallback unifiedNativeCallback) {
            this.f6450a = unifiedNativeCallback;
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClicked() {
            super.onAdClicked();
            this.f6450a.onAdClicked();
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdFailedToLoad(LoadAdError loadAdError) {
            super.onAdFailedToLoad(loadAdError);
            if (loadAdError != null) {
                this.f6450a.printError(loadAdError.getMessage(), Integer.valueOf(loadAdError.getCode()));
            }
            this.f6450a.onAdLoadFailed(UnifiedAdmobNetwork.mapError(loadAdError));
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdOpened() {
            super.onAdOpened();
            this.f6450a.onAdClicked();
        }
    }

    /* loaded from: classes2.dex */
    public static class b extends UnifiedNativeAd {

        /* renamed from: a  reason: collision with root package name */
        public final NativeAd f6451a;

        /* renamed from: b  reason: collision with root package name */
        public NativeAdView f6452b;

        /* renamed from: c  reason: collision with root package name */
        public MediaView f6453c;

        public b(NativeAd nativeAd, String str, String str2) {
            super(nativeAd.getHeadline(), nativeAd.getBody(), nativeAd.getCallToAction(), str2, str, (nativeAd.getStarRating() == null || nativeAd.getStarRating().doubleValue() == 0.0d) ? null : Float.valueOf(nativeAd.getStarRating().floatValue()));
            this.f6451a = nativeAd;
        }

        @Override // com.appodeal.ads.unified.UnifiedNativeAd
        public final boolean containsVideo() {
            return hasVideo();
        }

        @Override // com.appodeal.ads.unified.UnifiedNativeAd
        public final boolean hasVideo() {
            if (this.f6451a.getMediaContent() != null) {
                return this.f6451a.getMediaContent().hasVideoContent();
            }
            return false;
        }

        @Override // com.appodeal.ads.unified.UnifiedNativeAd
        public final void onConfigure(com.appodeal.ads.NativeAdView nativeAdView) {
            super.onConfigure(nativeAdView);
            NativeAdView nativeAdView2 = new NativeAdView(nativeAdView.getContext());
            this.f6452b = nativeAdView2;
            nativeAdView2.setHeadlineView(nativeAdView.getTitleView());
            this.f6452b.setBodyView(nativeAdView.getDescriptionView());
            this.f6452b.setIconView(nativeAdView.getNativeIconView());
            this.f6452b.setCallToActionView(nativeAdView.getCallToActionView());
            this.f6452b.setStarRatingView(nativeAdView.getRatingView());
            this.f6452b.setMediaView(this.f6453c);
            nativeAdView.configureContainer(this.f6452b);
        }

        @Override // com.appodeal.ads.unified.UnifiedNativeAd
        public final boolean onConfigureMediaView(NativeMediaView nativeMediaView) {
            this.f6453c = new MediaView(nativeMediaView.getContext());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(13, -1);
            nativeMediaView.removeAllViews();
            nativeMediaView.addView(this.f6453c, layoutParams);
            return true;
        }

        @Override // com.appodeal.ads.unified.UnifiedNativeAd
        public final void onDestroy() {
            super.onDestroy();
            this.f6451a.destroy();
            NativeAdView nativeAdView = this.f6452b;
            if (nativeAdView != null) {
                nativeAdView.destroy();
            }
        }

        @Override // com.appodeal.ads.unified.UnifiedNativeAd
        public final void onRegisterForInteraction(com.appodeal.ads.NativeAdView nativeAdView) {
            super.onRegisterForInteraction(nativeAdView);
            NativeAdView nativeAdView2 = this.f6452b;
            if (nativeAdView2 != null) {
                nativeAdView2.setNativeAd(this.f6451a);
            }
        }
    }

    private boolean isNativeValid(NativeAd nativeAd) {
        return (nativeAd.getHeadline() == null || nativeAd.getBody() == null || nativeAd.getImages().size() <= 0 || nativeAd.getImages().get(0) == null || nativeAd.getIcon() == null || nativeAd.getCallToAction() == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$load$0$com-appodeal-ads-adapters-admob-native_ad-UnifiedAdmobNative  reason: not valid java name */
    public /* synthetic */ void m138x6e7a72ee(UnifiedNativeCallback unifiedNativeCallback, NativeAd nativeAd) {
        if (!isNativeValid(nativeAd)) {
            unifiedNativeCallback.onAdLoadFailed(LoadingError.IncorrectCreative);
            return;
        }
        unifiedNativeCallback.onAdLoaded(new b(nativeAd, nativeAd.getIcon().getUri().toString(), nativeAd.getImages().get(0).getUri().toString()));
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public /* bridge */ /* synthetic */ void load(ContextProvider contextProvider, UnifiedNativeParams unifiedNativeParams, Object obj, UnifiedNativeCallback unifiedNativeCallback) {
        load(contextProvider, unifiedNativeParams, (UnifiedAdmobRequestParams) ((UnifiedAdmobRequestParams) obj), unifiedNativeCallback);
    }

    public void load(ContextProvider contextProvider, UnifiedNativeParams unifiedNativeParams, UnifiedAdmobRequestParams<AdRequestType> unifiedAdmobRequestParams, final UnifiedNativeCallback unifiedNativeCallback) {
        boolean z = false;
        NativeAdOptions.Builder mediaAspectRatio = new NativeAdOptions.Builder().setReturnUrlsForImageAssets(false).setRequestMultipleImages(false).setMediaAspectRatio(2);
        if (unifiedNativeParams.getNativeAdType() != Native.NativeAdType.NoVideo) {
            VideoOptions.Builder builder = new VideoOptions.Builder();
            Boolean bool = unifiedAdmobRequestParams.isMuted;
            if (bool != null && bool.booleanValue()) {
                z = true;
            }
            mediaAspectRatio.setVideoOptions(builder.setStartMuted(z).build());
        }
        new AdLoader.Builder(contextProvider.getApplicationContext(), unifiedAdmobRequestParams.key).forNativeAd(new NativeAd.OnNativeAdLoadedListener() { // from class: com.appodeal.ads.adapters.admob.native_ad.UnifiedAdmobNative$$ExternalSyntheticLambda0
            @Override // com.google.android.gms.ads.nativead.NativeAd.OnNativeAdLoadedListener
            public final void onNativeAdLoaded(NativeAd nativeAd) {
                UnifiedAdmobNative.this.m138x6e7a72ee(unifiedNativeCallback, nativeAd);
            }
        }).withAdListener(new a(unifiedNativeCallback)).withNativeAdOptions(mediaAspectRatio.build()).build().loadAd(unifiedAdmobRequestParams.request);
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public void onDestroy() {
    }
}
