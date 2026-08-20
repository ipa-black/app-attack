package com.appodeal.ads.adapters.bidmachine.native_ad;

import android.widget.RelativeLayout;
import com.appodeal.ads.Native;
import com.appodeal.ads.NativeAdView;
import com.appodeal.ads.adapters.bidmachine.BidMachineNetwork;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.unified.UnifiedNative;
import com.appodeal.ads.unified.UnifiedNativeAd;
import com.appodeal.ads.unified.UnifiedNativeCallback;
import com.appodeal.ads.unified.UnifiedNativeParams;
import io.bidmachine.MediaAssetType;
import io.bidmachine.nativead.NativeAd;
import io.bidmachine.nativead.NativeListener;
import io.bidmachine.nativead.NativeRequest;
import io.bidmachine.nativead.view.NativeAdContentLayout;
import io.bidmachine.nativead.view.NativeMediaView;
import io.bidmachine.utils.BMError;
import java.util.ArrayList;
/* compiled from: BidMachineNative.java */
/* loaded from: classes2.dex */
public final class a extends UnifiedNative<BidMachineNetwork.RequestParams> {

    /* renamed from: a  reason: collision with root package name */
    public NativeRequest f6495a;

    /* renamed from: b  reason: collision with root package name */
    public NativeAd f6496b;

    /* compiled from: BidMachineNative.java */
    /* renamed from: com.appodeal.ads.adapters.bidmachine.native_ad.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0112a extends UnifiedNativeAd {

        /* renamed from: a  reason: collision with root package name */
        public final NativeAd f6497a;

        /* renamed from: b  reason: collision with root package name */
        public NativeAdContentLayout f6498b;

        /* renamed from: c  reason: collision with root package name */
        public NativeMediaView f6499c;

        public C0112a(NativeAd nativeAd) {
            super(nativeAd.getTitle(), nativeAd.getDescription(), nativeAd.getCallToAction(), nativeAd.getMainImage() != null ? nativeAd.getMainImage().getRemoteUrl() : null, nativeAd.getIcon() != null ? nativeAd.getIcon().getRemoteUrl() : null, nativeAd.getRating() != 0.0f ? Float.valueOf(nativeAd.getRating()) : null);
            this.f6497a = nativeAd;
        }

        @Override // com.appodeal.ads.unified.UnifiedNativeAd
        public final boolean containsVideo() {
            return this.f6497a.hasVideo();
        }

        @Override // com.appodeal.ads.unified.UnifiedNativeAd
        public final boolean hasVideo() {
            return this.f6497a.hasVideo();
        }

        @Override // com.appodeal.ads.unified.UnifiedNativeAd
        public final void onConfigure(NativeAdView nativeAdView) {
            super.onConfigure(nativeAdView);
            NativeAdContentLayout nativeAdContentLayout = new NativeAdContentLayout(nativeAdView.getContext());
            this.f6498b = nativeAdContentLayout;
            nativeAdContentLayout.setTitleView(nativeAdView.getTitleView());
            this.f6498b.setDescriptionView(nativeAdView.getDescriptionView());
            this.f6498b.setIconView(nativeAdView.getNativeIconView());
            this.f6498b.setCallToActionView(nativeAdView.getCallToActionView());
            this.f6498b.setRatingView(nativeAdView.getRatingView());
            this.f6498b.setProviderView(nativeAdView.getProviderView());
            this.f6498b.setMediaView(this.f6499c);
            nativeAdView.configureContainer(this.f6498b);
        }

        @Override // com.appodeal.ads.unified.UnifiedNativeAd
        public final boolean onConfigureMediaView(com.appodeal.ads.NativeMediaView nativeMediaView) {
            this.f6499c = new NativeMediaView(nativeMediaView.getContext());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(13, -1);
            nativeMediaView.removeAllViews();
            nativeMediaView.addView(this.f6499c, layoutParams);
            return true;
        }

        @Override // com.appodeal.ads.unified.UnifiedNativeAd
        public final void onDestroy() {
            super.onDestroy();
            this.f6497a.destroy();
            NativeAdContentLayout nativeAdContentLayout = this.f6498b;
            if (nativeAdContentLayout != null) {
                nativeAdContentLayout.destroy();
            }
        }

        @Override // com.appodeal.ads.unified.UnifiedNativeAd
        public final void onRegisterForInteraction(NativeAdView nativeAdView) {
            super.onRegisterForInteraction(nativeAdView);
            NativeAdContentLayout nativeAdContentLayout = this.f6498b;
            if (nativeAdContentLayout != null) {
                nativeAdContentLayout.bind(this.f6497a);
                this.f6498b.registerViewForInteraction(this.f6497a);
            }
        }
    }

    /* compiled from: BidMachineNative.java */
    /* loaded from: classes2.dex */
    public static class b implements NativeListener {

        /* renamed from: a  reason: collision with root package name */
        public final UnifiedNativeCallback f6500a;

        public b(UnifiedNativeCallback unifiedNativeCallback) {
            this.f6500a = unifiedNativeCallback;
        }

        @Override // io.bidmachine.AdListener
        public final void onAdClicked(NativeAd nativeAd) {
            this.f6500a.onAdClicked();
        }

        @Override // io.bidmachine.AdListener
        public final void onAdExpired(NativeAd nativeAd) {
            this.f6500a.onAdExpired();
        }

        @Override // io.bidmachine.AdListener
        public final /* bridge */ /* synthetic */ void onAdImpression(NativeAd nativeAd) {
        }

        @Override // io.bidmachine.AdListener
        public final void onAdLoadFailed(NativeAd nativeAd, BMError bMError) {
            this.f6500a.onAdLoadFailed(BidMachineNetwork.mapBidMachineError(bMError));
        }

        @Override // io.bidmachine.AdListener
        public final void onAdLoaded(NativeAd nativeAd) {
            NativeAd nativeAd2 = nativeAd;
            this.f6500a.onAdInfoRequested(BidMachineNetwork.getRequestedAdInfo(nativeAd2.getAuctionResult()));
            this.f6500a.onAdLoaded(new C0112a(nativeAd2));
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void load(ContextProvider contextProvider, UnifiedNativeParams unifiedNativeParams, Object obj, UnifiedNativeCallback unifiedNativeCallback) throws Exception {
        UnifiedNativeParams unifiedNativeParams2 = unifiedNativeParams;
        BidMachineNetwork.RequestParams requestParams = (BidMachineNetwork.RequestParams) obj;
        UnifiedNativeCallback unifiedNativeCallback2 = unifiedNativeCallback;
        ArrayList arrayList = new ArrayList();
        if (Native.NativeAdType.Video == unifiedNativeParams2.getNativeAdType()) {
            arrayList.add(MediaAssetType.Video);
        }
        if (unifiedNativeParams2.getMediaAssetType() == Native.MediaAssetType.ICON) {
            arrayList.add(MediaAssetType.Icon);
        } else if (unifiedNativeParams2.getMediaAssetType() == Native.MediaAssetType.IMAGE) {
            arrayList.add(MediaAssetType.Image);
        } else {
            arrayList.add(MediaAssetType.Icon);
            arrayList.add(MediaAssetType.Image);
        }
        this.f6495a = (NativeRequest) ((NativeRequest.Builder) requestParams.prepareRequest(new NativeRequest.Builder())).setMediaAssetTypes((MediaAssetType[]) arrayList.toArray(new MediaAssetType[0])).build();
        this.f6496b = new NativeAd(contextProvider.getApplicationContext()).setListener(new b(unifiedNativeCallback2)).load(this.f6495a);
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void onDestroy() {
        NativeRequest nativeRequest = this.f6495a;
        if (nativeRequest != null) {
            nativeRequest.destroy();
            this.f6495a = null;
        }
        NativeAd nativeAd = this.f6496b;
        if (nativeAd != null) {
            nativeAd.destroy();
            this.f6496b = null;
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void onMediationLoss(String str, double d2) {
        super.onMediationLoss(str, d2);
        NativeRequest nativeRequest = this.f6495a;
        if (nativeRequest != null) {
            nativeRequest.notifyMediationLoss(str, Double.valueOf(d2));
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void onMediationWin() {
        super.onMediationWin();
        NativeRequest nativeRequest = this.f6495a;
        if (nativeRequest != null) {
            nativeRequest.notifyMediationWin();
        }
    }
}
