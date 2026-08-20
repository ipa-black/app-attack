package com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.util.TypedValue;
import android.view.ViewGroup;
import com.appsgeyser.sdk.BrowserActivity;
import com.appsgeyser.sdk.GuidGenerator;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackMultiAdsAdapter;
import com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerUnityAdapter;
import com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel;
import com.appsgeyser.sdk.server.StatController;
import com.unity3d.services.banners.BannerErrorCode;
import com.unity3d.services.banners.BannerErrorInfo;
import com.unity3d.services.banners.BannerView;
import com.unity3d.services.banners.UnityBannerSize;
import java.util.HashMap;
/* loaded from: classes2.dex */
public class MultiAdsBannerUnityAdapter extends MultiAdsBannerBaseAdapter {
    private boolean bannerClickReportedRecently;
    private BannerView bannerView;

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerBaseAdapter
    protected void init() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MultiAdsBannerUnityAdapter(Context context, AdNetworkSdkModel adNetworkSdkModel, HashMap<String, String> hashMap) {
        super(context, adNetworkSdkModel, hashMap);
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerInterface
    public void loadBanner(ViewGroup viewGroup) {
        this.bannerViewContainer = viewGroup;
        Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "unity banner initializing: " + this.adNetworkSdkModel.getPlacementId());
        this.bannerView = new BannerView((Activity) viewGroup.getContext(), this.adNetworkSdkModel.getPlacementId(), new UnityBannerSize(320, 50));
        this.bannerView.setLayoutParams(new ViewGroup.LayoutParams(-1, (int) TypedValue.applyDimension(1, 50.0f, this.context.getResources().getDisplayMetrics())));
        this.bannerView.setListener(new AnonymousClass1(viewGroup));
        Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "unity banner attempt to attach bannerView to container");
        this.bannerViewContainer.addView(this.bannerView);
        Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "unity banner attempt to load");
        this.bannerDetails.put("ad_source", StatController.FT_NETWORK_MA_UNITY);
        this.bannerDetails.put("net_name", StatController.FT_NETWORK_MA_UNITY);
        this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + this.adNetworkSdkModel.getPlacementId());
        this.bannerDetails.put(BrowserActivity.KEY_UNIQ_ID, GuidGenerator.generateNewGuid());
        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_REQUEST, this.bannerDetails, this.context, true);
        this.bannerView.load();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerUnityAdapter$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public class AnonymousClass1 implements BannerView.IListener {
        final /* synthetic */ ViewGroup val$bannerViewContainer;

        AnonymousClass1(ViewGroup viewGroup) {
            this.val$bannerViewContainer = viewGroup;
        }

        @Override // com.unity3d.services.banners.BannerView.IListener
        public void onBannerLoaded(BannerView bannerView) {
            MultiAdsBannerUnityAdapter.this.bannerDetails.put("ad_source", StatController.FT_NETWORK_MA_UNITY);
            MultiAdsBannerUnityAdapter.this.bannerDetails.put("net_name", StatController.FT_NETWORK_MA_UNITY);
            MultiAdsBannerUnityAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + MultiAdsBannerUnityAdapter.this.adNetworkSdkModel.getPlacementId());
            StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_IMPRESSION, MultiAdsBannerUnityAdapter.this.bannerDetails, MultiAdsBannerUnityAdapter.this.context, true);
            this.val$bannerViewContainer.setVisibility(0);
            MultiAdsBannerUnityAdapter.this.bannerView.setVisibility(0);
            MultiAdsBannerUnityAdapter.this.listener.onBannerLoaded();
            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "unity banner onBannerLoaded");
        }

        @Override // com.unity3d.services.banners.BannerView.IListener
        public void onBannerClick(BannerView bannerView) {
            if (!MultiAdsBannerUnityAdapter.this.bannerClickReportedRecently) {
                MultiAdsBannerUnityAdapter.this.bannerDetails.put("ad_source", StatController.FT_NETWORK_MA_UNITY);
                MultiAdsBannerUnityAdapter.this.bannerDetails.put("net_name", StatController.FT_NETWORK_MA_UNITY);
                MultiAdsBannerUnityAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + MultiAdsBannerUnityAdapter.this.adNetworkSdkModel.getPlacementId());
                MultiAdsBannerUnityAdapter.this.bannerClickReportedRecently = true;
                MultiAdsBannerUnityAdapter.this.handler.postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerUnityAdapter$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        MultiAdsBannerUnityAdapter.AnonymousClass1.this.m215xb8982fbe();
                    }
                }, 1000L);
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_CLICK, MultiAdsBannerUnityAdapter.this.bannerDetails, MultiAdsBannerUnityAdapter.this.context, true);
                Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "unity banner onBannerClick");
            }
            MultiAdsBannerUnityAdapter.this.listener.onBannerClicked();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onBannerClick$0$com-appsgeyser-sdk-ads-fastTrack-adapters-multiAds-banner-MultiAdsBannerUnityAdapter$1  reason: not valid java name */
        public /* synthetic */ void m215xb8982fbe() {
            MultiAdsBannerUnityAdapter.this.bannerClickReportedRecently = false;
        }

        @Override // com.unity3d.services.banners.BannerView.IListener
        public void onBannerFailedToLoad(BannerView bannerView, BannerErrorInfo bannerErrorInfo) {
            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "unity banner onBannerFailedToLoad: " + bannerErrorInfo.errorCode + " " + bannerErrorInfo.errorMessage);
            if (bannerErrorInfo.errorCode == BannerErrorCode.NO_FILL) {
                MultiAdsBannerUnityAdapter.this.bannerDetails.put("ad_source", StatController.FT_NETWORK_MA_UNITY);
                MultiAdsBannerUnityAdapter.this.bannerDetails.put("net_name", StatController.FT_NETWORK_MA_UNITY);
                MultiAdsBannerUnityAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + MultiAdsBannerUnityAdapter.this.adNetworkSdkModel.getPlacementId());
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_NOFILL, MultiAdsBannerUnityAdapter.this.bannerDetails, MultiAdsBannerUnityAdapter.this.context, true);
            } else {
                MultiAdsBannerUnityAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + MultiAdsBannerUnityAdapter.this.adNetworkSdkModel.getPlacementId() + "; error_desc: error code " + bannerErrorInfo.errorCode + " " + bannerErrorInfo.errorMessage);
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_ERROR, MultiAdsBannerUnityAdapter.this.bannerDetails, MultiAdsBannerUnityAdapter.this.context, true);
            }
            MultiAdsBannerUnityAdapter.this.listener.onBannerError(bannerErrorInfo.errorCode + " " + bannerErrorInfo.errorMessage);
        }

        @Override // com.unity3d.services.banners.BannerView.IListener
        public void onBannerLeftApplication(BannerView bannerView) {
            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "unity banner onBannerLeftApplication");
        }
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerBaseAdapter, com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerInterface
    public void onPause() {
        super.onPause();
        if (this.bannerView != null) {
            if (this.bannerViewContainer != null) {
                Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "unity banner attempt to detach bannerView from container");
                this.bannerViewContainer.removeView(this.bannerView);
            }
            this.bannerView.destroy();
            this.bannerView = null;
        }
    }
}
