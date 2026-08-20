package com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner;

import android.content.Context;
import android.util.Log;
import android.util.TypedValue;
import android.view.ViewGroup;
import com.appnext.banners.BannerAdRequest;
import com.appnext.banners.BannerListener;
import com.appnext.banners.BannerSize;
import com.appnext.banners.BannerView;
import com.appnext.core.AppnextAdCreativeType;
import com.appnext.core.AppnextError;
import com.appsgeyser.sdk.BrowserActivity;
import com.appsgeyser.sdk.GuidGenerator;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackMultiAdsAdapter;
import com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerAppnextAdapter;
import com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel;
import com.appsgeyser.sdk.server.StatController;
import java.util.HashMap;
import java.util.Objects;
/* loaded from: classes2.dex */
public class MultiAdsBannerAppnextAdapter extends MultiAdsBannerBaseAdapter {
    private boolean bannerClickReportedRecently;
    private BannerView bannerView;

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerBaseAdapter
    protected void init() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MultiAdsBannerAppnextAdapter(Context context, AdNetworkSdkModel adNetworkSdkModel, HashMap<String, String> hashMap) {
        super(context, adNetworkSdkModel, hashMap);
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerInterface
    public void loadBanner(ViewGroup viewGroup) {
        this.bannerViewContainer = viewGroup;
        String placementId = this.adNetworkSdkModel.getPlacementId();
        Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "appnext banner initializing: " + placementId);
        this.bannerView = new BannerView(viewGroup.getContext());
        this.bannerView.setLayoutParams(new ViewGroup.LayoutParams(-1, (int) TypedValue.applyDimension(1, 50.0f, this.context.getResources().getDisplayMetrics())));
        this.bannerView.setPlacementId(placementId);
        this.bannerView.setBannerSize(BannerSize.BANNER);
        this.bannerView.setBannerListener(new AnonymousClass1(placementId, viewGroup));
        Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "appnext banner attempt to attach bannerView to container");
        this.bannerViewContainer.addView(this.bannerView);
        Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "appnext banner attempt to load");
        this.bannerDetails.put("ad_source", StatController.FT_NETWORK_MA_APPNEXT);
        this.bannerDetails.put("net_name", StatController.FT_NETWORK_MA_APPNEXT);
        this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + placementId);
        this.bannerDetails.put(BrowserActivity.KEY_UNIQ_ID, GuidGenerator.generateNewGuid());
        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_REQUEST, this.bannerDetails, this.context, true);
        this.bannerView.loadAd(new BannerAdRequest());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerAppnextAdapter$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public class AnonymousClass1 extends BannerListener {
        final /* synthetic */ String val$bannerPlacementId;
        final /* synthetic */ ViewGroup val$bannerViewContainer;

        AnonymousClass1(String str, ViewGroup viewGroup) {
            this.val$bannerPlacementId = str;
            this.val$bannerViewContainer = viewGroup;
        }

        @Override // com.appnext.banners.BannerListener
        public void onError(AppnextError appnextError) {
            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "appnext banner onError: " + appnextError.getErrorMessage());
            if (Objects.equals(appnextError.getErrorMessage(), AppnextError.NO_ADS)) {
                MultiAdsBannerAppnextAdapter.this.bannerDetails.put("ad_source", StatController.FT_NETWORK_MA_APPNEXT);
                MultiAdsBannerAppnextAdapter.this.bannerDetails.put("net_name", StatController.FT_NETWORK_MA_APPNEXT);
                MultiAdsBannerAppnextAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + this.val$bannerPlacementId);
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_NOFILL, MultiAdsBannerAppnextAdapter.this.bannerDetails, MultiAdsBannerAppnextAdapter.this.context, true);
            } else {
                MultiAdsBannerAppnextAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + this.val$bannerPlacementId + "; error_desc: error code " + appnextError.getErrorMessage());
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_ERROR, MultiAdsBannerAppnextAdapter.this.bannerDetails, MultiAdsBannerAppnextAdapter.this.context, true);
            }
            MultiAdsBannerAppnextAdapter.this.listener.onBannerError(appnextError.getErrorMessage());
            super.onError(appnextError);
        }

        @Override // com.appnext.banners.BannerListener
        public void onAdLoaded(String str, AppnextAdCreativeType appnextAdCreativeType) {
            MultiAdsBannerAppnextAdapter.this.bannerDetails.put("ad_source", StatController.FT_NETWORK_MA_APPNEXT);
            MultiAdsBannerAppnextAdapter.this.bannerDetails.put("net_name", StatController.FT_NETWORK_MA_APPNEXT);
            MultiAdsBannerAppnextAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + this.val$bannerPlacementId);
            StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_IMPRESSION, MultiAdsBannerAppnextAdapter.this.bannerDetails, MultiAdsBannerAppnextAdapter.this.context, true);
            this.val$bannerViewContainer.setVisibility(0);
            MultiAdsBannerAppnextAdapter.this.bannerView.setVisibility(0);
            MultiAdsBannerAppnextAdapter.this.listener.onBannerLoaded();
            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "appnext banner onAdLoaded");
            super.onAdLoaded(str, appnextAdCreativeType);
        }

        @Override // com.appnext.banners.BannerListener
        public void adImpression() {
            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "appnext banner adImpression");
            super.adImpression();
        }

        @Override // com.appnext.banners.BannerListener
        public void onAdClicked() {
            if (!MultiAdsBannerAppnextAdapter.this.bannerClickReportedRecently) {
                MultiAdsBannerAppnextAdapter.this.bannerDetails.put("ad_source", StatController.FT_NETWORK_MA_APPNEXT);
                MultiAdsBannerAppnextAdapter.this.bannerDetails.put("net_name", StatController.FT_NETWORK_MA_APPNEXT);
                MultiAdsBannerAppnextAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + this.val$bannerPlacementId);
                MultiAdsBannerAppnextAdapter.this.bannerClickReportedRecently = true;
                MultiAdsBannerAppnextAdapter.this.handler.postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerAppnextAdapter$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        MultiAdsBannerAppnextAdapter.AnonymousClass1.this.m210x585888f7();
                    }
                }, 1000L);
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_CLICK, MultiAdsBannerAppnextAdapter.this.bannerDetails, MultiAdsBannerAppnextAdapter.this.context, true);
                Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "appnext banner onAdClicked");
            }
            MultiAdsBannerAppnextAdapter.this.listener.onBannerClicked();
            super.onAdClicked();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onAdClicked$0$com-appsgeyser-sdk-ads-fastTrack-adapters-multiAds-banner-MultiAdsBannerAppnextAdapter$1  reason: not valid java name */
        public /* synthetic */ void m210x585888f7() {
            MultiAdsBannerAppnextAdapter.this.bannerClickReportedRecently = false;
        }
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerBaseAdapter, com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerInterface
    public void onPause() {
        super.onPause();
        if (this.bannerView != null) {
            if (this.bannerViewContainer != null) {
                Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "appnext banner attempt to detach bannerView from container");
                this.bannerViewContainer.removeView(this.bannerView);
            }
            this.bannerView.setBannerListener(null);
            this.bannerView.destroy();
            this.bannerView = null;
        }
    }
}
