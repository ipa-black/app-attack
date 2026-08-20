package io.bidmachine.ads.networks.meta_audience;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdListener;
import com.facebook.ads.NativeBannerAd;
import io.bidmachine.ContextProvider;
import io.bidmachine.ImageDataImpl;
import io.bidmachine.MediaAssetType;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.nativead.NativeAdRequestParameters;
import io.bidmachine.nativead.NativeNetworkAdapter;
import io.bidmachine.nativead.view.NativeMediaView;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.unified.UnifiedNativeAd;
import io.bidmachine.unified.UnifiedNativeAdCallback;
import io.bidmachine.unified.UnifiedNativeAdRequestParams;
import io.bidmachine.utils.ViewHelper;
import java.util.ArrayList;
import java.util.Set;
/* loaded from: classes5.dex */
class MetaAudienceNative extends UnifiedNativeAd {
    private Listener listener;
    private NativeAdBase nativeAdBase;

    @Override // io.bidmachine.unified.UnifiedAd
    public void load(ContextProvider contextProvider, UnifiedNativeAdCallback unifiedNativeAdCallback, UnifiedNativeAdRequestParams unifiedNativeAdRequestParams, UnifiedMediationParams unifiedMediationParams, NetworkAdUnit networkAdUnit) throws Throwable {
        MetaAudienceParams metaAudienceParams = new MetaAudienceParams(unifiedMediationParams);
        if (metaAudienceParams.isValid(unifiedNativeAdCallback)) {
            NativeAdRequestParameters adRequestParameters = unifiedNativeAdRequestParams.getAdRequestParameters();
            boolean containsAssetType = adRequestParameters.containsAssetType(MediaAssetType.Video);
            Context applicationContext = contextProvider.getApplicationContext();
            if (adRequestParameters.containsAssetType(MediaAssetType.All) || adRequestParameters.containsAssetType(MediaAssetType.Image) || containsAssetType) {
                this.nativeAdBase = new NativeAd(applicationContext, metaAudienceParams.placementId);
            } else {
                this.nativeAdBase = new NativeBannerAd(applicationContext, metaAudienceParams.placementId);
            }
            this.listener = new Listener(unifiedNativeAdCallback, this.nativeAdBase);
            NativeAdBase nativeAdBase = this.nativeAdBase;
            nativeAdBase.loadAd(nativeAdBase.buildLoadAdConfig().withAdListener(this.listener).withMediaCacheFlag(NativeAdBase.MediaCacheFlag.ALL).withBid(metaAudienceParams.bidPayload).build());
        }
    }

    @Override // io.bidmachine.unified.UnifiedAd
    public void onDestroy() {
        Listener listener = this.listener;
        if (listener != null) {
            listener.destroy();
            this.listener = null;
        }
        NativeAdBase nativeAdBase = this.nativeAdBase;
        if (nativeAdBase != null) {
            nativeAdBase.destroy();
            this.nativeAdBase = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class Listener extends BaseMetaAudienceListener<UnifiedNativeAdCallback> implements NativeAdListener {
        private NativeAdBase nativeAdBase;

        @Override // com.facebook.ads.AdListener
        public void onLoggingImpression(Ad ad) {
        }

        @Override // com.facebook.ads.NativeAdListener
        public void onMediaDownloaded(Ad ad) {
        }

        Listener(UnifiedNativeAdCallback unifiedNativeAdCallback, NativeAdBase nativeAdBase) {
            super(unifiedNativeAdCallback);
            this.nativeAdBase = nativeAdBase;
        }

        @Override // com.facebook.ads.AdListener
        public void onAdLoaded(Ad ad) {
            NativeNetworkAdapter mediaViewAdapter;
            NativeAdBase nativeAdBase = this.nativeAdBase;
            if (nativeAdBase == null || nativeAdBase != ad) {
                return;
            }
            if (nativeAdBase instanceof NativeBannerAd) {
                mediaViewAdapter = new BannerAdapter((NativeBannerAd) this.nativeAdBase);
            } else {
                mediaViewAdapter = nativeAdBase instanceof NativeAd ? new MediaViewAdapter((NativeAd) this.nativeAdBase) : null;
            }
            if (mediaViewAdapter != null && mediaViewAdapter.isValid()) {
                getCallback().onAdLoaded(mediaViewAdapter);
            } else {
                super.onError(ad, AdError.NO_FILL);
            }
        }

        @Override // io.bidmachine.ads.networks.meta_audience.BaseMetaAudienceListener, com.facebook.ads.AdListener
        public void onError(Ad ad, AdError adError) {
            NativeAdBase nativeAdBase = this.nativeAdBase;
            if (nativeAdBase == null || nativeAdBase != ad) {
                return;
            }
            super.onError(ad, adError);
        }

        public void destroy() {
            this.nativeAdBase = null;
        }
    }

    /* loaded from: classes5.dex */
    private static abstract class BaseAdapter<T extends NativeAdBase> extends NativeNetworkAdapter {
        T nativeAdBase;

        public BaseAdapter(T t) {
            this.nativeAdBase = t;
            setTitle(t.getAdvertiserName());
            setDescription(t.getAdBodyText());
            setCallToAction(t.getAdCallToAction());
            ImageDataImpl imageDataImpl = new ImageDataImpl(t.getPreloadedIconViewDrawable());
            NativeAdBase.Image adIcon = t.getAdIcon();
            if (adIcon != null) {
                imageDataImpl.setRemoteUrl(adIcon.getUrl());
            }
            setIcon(imageDataImpl);
            ImageDataImpl imageDataImpl2 = new ImageDataImpl();
            NativeAdBase.Image adCoverImage = t.getAdCoverImage();
            if (adCoverImage != null) {
                imageDataImpl2.setRemoteUrl(adCoverImage.getUrl());
            }
            setMainImage(imageDataImpl2);
        }

        @Override // io.bidmachine.nativead.NativeNetworkAdapter
        public View createProviderView(Context context) {
            if (this.nativeAdBase == null) {
                return null;
            }
            AdOptionsView adOptionsView = new AdOptionsView(context, this.nativeAdBase, null);
            adOptionsView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            return adOptionsView;
        }

        @Override // io.bidmachine.nativead.NativeNetworkAdapter
        public void unregisterNative() {
            T t = this.nativeAdBase;
            if (t == null) {
                return;
            }
            t.unregisterView();
        }

        @Override // io.bidmachine.nativead.NativeNetworkAdapter
        public void destroy() {
            T t = this.nativeAdBase;
            if (t != null) {
                t.destroy();
                this.nativeAdBase = null;
            }
        }
    }

    /* loaded from: classes5.dex */
    private static final class BannerAdapter extends BaseAdapter<NativeBannerAd> {
        public BannerAdapter(NativeBannerAd nativeBannerAd) {
            super(nativeBannerAd);
        }

        @Override // io.bidmachine.nativead.NativeNetworkAdapter
        public void registerNative(ViewGroup viewGroup, ImageView imageView, NativeMediaView nativeMediaView, Set<View> set) {
            super.registerNative(viewGroup, imageView, nativeMediaView, set);
            if (this.nativeAdBase == 0) {
                return;
            }
            ((NativeBannerAd) this.nativeAdBase).registerViewForInteraction(viewGroup, imageView, set != null ? new ArrayList(set) : null);
        }
    }

    /* loaded from: classes5.dex */
    private static final class MediaViewAdapter extends BaseAdapter<NativeAd> {
        private MediaView mediaView;

        public MediaViewAdapter(NativeAd nativeAd) {
            super(nativeAd);
        }

        @Override // io.bidmachine.nativead.NativeNetworkAdapter
        public boolean configureMediaView(NativeMediaView nativeMediaView) {
            if (this.mediaView == null) {
                MediaView mediaView = new MediaView(nativeMediaView.getContext());
                this.mediaView = mediaView;
                mediaView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            }
            ViewHelper.removeViewFromParent(this.mediaView);
            nativeMediaView.addView(this.mediaView);
            return true;
        }

        @Override // io.bidmachine.nativead.NativeNetworkAdapter
        public void registerNative(ViewGroup viewGroup, ImageView imageView, NativeMediaView nativeMediaView, Set<View> set) {
            super.registerNative(viewGroup, imageView, nativeMediaView, set);
            if (this.nativeAdBase == 0) {
                return;
            }
            ((NativeAd) this.nativeAdBase).registerViewForInteraction(viewGroup, this.mediaView, imageView, set != null ? new ArrayList(set) : null);
        }

        @Override // io.bidmachine.nativead.NativeNetworkAdapter, io.bidmachine.nativead.NativePublicData
        public boolean hasVideo() {
            return this.nativeAdBase != 0 && ((NativeAd) this.nativeAdBase).getAdCreativeType() == NativeAd.AdCreativeType.VIDEO;
        }

        @Override // io.bidmachine.ads.networks.meta_audience.MetaAudienceNative.BaseAdapter, io.bidmachine.nativead.NativeNetworkAdapter
        public void destroy() {
            super.destroy();
            MediaView mediaView = this.mediaView;
            if (mediaView != null) {
                mediaView.destroy();
                this.mediaView = null;
            }
        }
    }
}
