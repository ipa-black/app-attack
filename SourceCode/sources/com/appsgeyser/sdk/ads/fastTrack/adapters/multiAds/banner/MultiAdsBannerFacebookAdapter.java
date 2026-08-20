package com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner;

import android.content.Context;
import android.util.Log;
import android.util.TypedValue;
import android.view.ViewGroup;
import com.appsgeyser.sdk.BrowserActivity;
import com.appsgeyser.sdk.GuidGenerator;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackMultiAdsAdapter;
import com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerFacebookAdapter;
import com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel;
import com.appsgeyser.sdk.server.StatController;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
import java.util.HashMap;
/* loaded from: classes2.dex */
public class MultiAdsBannerFacebookAdapter extends MultiAdsBannerBaseAdapter {
    private boolean bannerClickReportedRecently;
    private AdView bannerView;

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerBaseAdapter
    protected void init() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MultiAdsBannerFacebookAdapter(Context context, AdNetworkSdkModel adNetworkSdkModel, HashMap<String, String> hashMap) {
        super(context, adNetworkSdkModel, hashMap);
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerInterface
    public void loadBanner(ViewGroup viewGroup) {
        this.bannerViewContainer = viewGroup;
        Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "facebook banner initializing: " + this.adNetworkSdkModel.getPlacementId());
        this.bannerView = new AdView(this.context, this.adNetworkSdkModel.getPlacementId(), AdSize.BANNER_HEIGHT_50);
        this.bannerView.setLayoutParams(new ViewGroup.LayoutParams(-1, (int) TypedValue.applyDimension(1, 50.0f, this.context.getResources().getDisplayMetrics())));
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(viewGroup);
        Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "facebook banner attempt to attach bannerView to container");
        this.bannerViewContainer.addView(this.bannerView);
        Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "facebook banner attempt to load");
        this.bannerDetails.put("ad_source", StatController.FT_NETWORK_MA_FACEBOOK);
        this.bannerDetails.put("net_name", StatController.FT_NETWORK_MA_FACEBOOK);
        this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + this.adNetworkSdkModel.getPlacementId());
        this.bannerDetails.put(BrowserActivity.KEY_UNIQ_ID, GuidGenerator.generateNewGuid());
        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_REQUEST, this.bannerDetails, this.context, true);
        AdView adView = this.bannerView;
        adView.loadAd(adView.buildLoadAdConfig().withAdListener(anonymousClass1).build());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerFacebookAdapter$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public class AnonymousClass1 implements AdListener {
        final /* synthetic */ ViewGroup val$bannerViewContainer;

        AnonymousClass1(ViewGroup viewGroup) {
            this.val$bannerViewContainer = viewGroup;
        }

        @Override // com.facebook.ads.AdListener
        public void onError(Ad ad, AdError adError) {
            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "facebook banner onError: " + adError.getErrorMessage());
            if (adError.getErrorCode() == 1001) {
                MultiAdsBannerFacebookAdapter.this.bannerDetails.put("ad_source", StatController.FT_NETWORK_MA_FACEBOOK);
                MultiAdsBannerFacebookAdapter.this.bannerDetails.put("net_name", StatController.FT_NETWORK_MA_FACEBOOK);
                MultiAdsBannerFacebookAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + MultiAdsBannerFacebookAdapter.this.adNetworkSdkModel.getPlacementId());
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_NOFILL, MultiAdsBannerFacebookAdapter.this.bannerDetails, MultiAdsBannerFacebookAdapter.this.context, true);
            } else {
                MultiAdsBannerFacebookAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + MultiAdsBannerFacebookAdapter.this.adNetworkSdkModel.getPlacementId() + "; error_desc: error code " + adError.getErrorCode() + " " + adError.getErrorMessage());
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_ERROR, MultiAdsBannerFacebookAdapter.this.bannerDetails, MultiAdsBannerFacebookAdapter.this.context, true);
            }
            MultiAdsBannerFacebookAdapter.this.listener.onBannerError(adError.getErrorMessage());
        }

        @Override // com.facebook.ads.AdListener
        public void onAdClicked(Ad ad) {
            if (!MultiAdsBannerFacebookAdapter.this.bannerClickReportedRecently) {
                MultiAdsBannerFacebookAdapter.this.bannerDetails.put("ad_source", StatController.FT_NETWORK_MA_FACEBOOK);
                MultiAdsBannerFacebookAdapter.this.bannerDetails.put("net_name", StatController.FT_NETWORK_MA_FACEBOOK);
                MultiAdsBannerFacebookAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + MultiAdsBannerFacebookAdapter.this.adNetworkSdkModel.getPlacementId());
                MultiAdsBannerFacebookAdapter.this.bannerClickReportedRecently = true;
                MultiAdsBannerFacebookAdapter.this.handler.postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerFacebookAdapter$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        MultiAdsBannerFacebookAdapter.AnonymousClass1.this.m211x7b20b6c7();
                    }
                }, 1000L);
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_CLICK, MultiAdsBannerFacebookAdapter.this.bannerDetails, MultiAdsBannerFacebookAdapter.this.context, true);
                Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "facebook banner onAdClicked");
            }
            MultiAdsBannerFacebookAdapter.this.listener.onBannerClicked();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onAdClicked$0$com-appsgeyser-sdk-ads-fastTrack-adapters-multiAds-banner-MultiAdsBannerFacebookAdapter$1  reason: not valid java name */
        public /* synthetic */ void m211x7b20b6c7() {
            MultiAdsBannerFacebookAdapter.this.bannerClickReportedRecently = false;
        }

        @Override // com.facebook.ads.AdListener
        public void onAdLoaded(Ad ad) {
            MultiAdsBannerFacebookAdapter.this.bannerDetails.put("ad_source", StatController.FT_NETWORK_MA_FACEBOOK);
            MultiAdsBannerFacebookAdapter.this.bannerDetails.put("net_name", StatController.FT_NETWORK_MA_FACEBOOK);
            MultiAdsBannerFacebookAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + MultiAdsBannerFacebookAdapter.this.adNetworkSdkModel.getPlacementId());
            StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_IMPRESSION, MultiAdsBannerFacebookAdapter.this.bannerDetails, MultiAdsBannerFacebookAdapter.this.context, true);
            this.val$bannerViewContainer.setVisibility(0);
            MultiAdsBannerFacebookAdapter.this.bannerView.setVisibility(0);
            MultiAdsBannerFacebookAdapter.this.listener.onBannerLoaded();
            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "facebook banner onAdLoaded");
        }

        @Override // com.facebook.ads.AdListener
        public void onLoggingImpression(Ad ad) {
            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "facebook banner onLoggingImpression");
        }
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerBaseAdapter, com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerInterface
    public void onPause() {
        super.onPause();
        if (this.bannerView != null) {
            if (this.bannerViewContainer != null) {
                Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "facebook banner attempt to detach bannerView from container");
                this.bannerViewContainer.removeView(this.bannerView);
            }
            this.bannerView.destroy();
            this.bannerView = null;
        }
    }
}
