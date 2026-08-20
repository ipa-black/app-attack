package com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner;

import android.content.Context;
import android.util.Log;
import android.view.ViewGroup;
import com.appsgeyser.sdk.BrowserActivity;
import com.appsgeyser.sdk.GuidGenerator;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackMultiAdsAdapter;
import com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel;
import com.appsgeyser.sdk.server.StatController;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.LoadAdError;
import java.util.HashMap;
/* loaded from: classes2.dex */
public class MultiAdsBannerAdmobAdapter extends MultiAdsBannerBaseAdapter {
    private AdView bannerView;

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerBaseAdapter
    protected void init() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MultiAdsBannerAdmobAdapter(Context context, AdNetworkSdkModel adNetworkSdkModel, HashMap<String, String> hashMap) {
        super(context, adNetworkSdkModel, hashMap);
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerInterface
    public void loadBanner(final ViewGroup viewGroup) {
        this.bannerViewContainer = viewGroup;
        final String placementId = this.adNetworkSdkModel.getPlacementId();
        Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "admob banner initializing: " + placementId);
        AdView adView = new AdView(viewGroup.getContext());
        this.bannerView = adView;
        adView.setAdSize(AdSize.SMART_BANNER);
        this.bannerView.setAdUnitId(placementId);
        this.bannerView.setAdListener(new AdListener() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerAdmobAdapter.1
            @Override // com.google.android.gms.ads.AdListener
            public void onAdClosed() {
                super.onAdClosed();
                Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "admob banner onAdClosed");
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdFailedToLoad(LoadAdError loadAdError) {
                super.onAdFailedToLoad(loadAdError);
                MultiAdsBannerAdmobAdapter.this.bannerDetails.put("ad_source", StatController.FT_NETWORK_MA_ADMOB);
                MultiAdsBannerAdmobAdapter.this.bannerDetails.put("net_name", StatController.FT_NETWORK_MA_ADMOB);
                if (loadAdError.getCode() == 3) {
                    MultiAdsBannerAdmobAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + placementId);
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_NOFILL, MultiAdsBannerAdmobAdapter.this.bannerDetails, MultiAdsBannerAdmobAdapter.this.context, true);
                } else {
                    MultiAdsBannerAdmobAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + placementId + "; error_desc: error code " + loadAdError.getCode());
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_ERROR, MultiAdsBannerAdmobAdapter.this.bannerDetails, MultiAdsBannerAdmobAdapter.this.context, true);
                }
                MultiAdsBannerAdmobAdapter.this.listener.onBannerError(loadAdError.getMessage());
                Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "admob banner onAdFailedToLoad: " + loadAdError.getCode());
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdClicked() {
                super.onAdClicked();
                MultiAdsBannerAdmobAdapter.this.bannerDetails.put("ad_source", StatController.FT_NETWORK_MA_ADMOB);
                MultiAdsBannerAdmobAdapter.this.bannerDetails.put("net_name", StatController.FT_NETWORK_MA_ADMOB);
                MultiAdsBannerAdmobAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + placementId);
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_CLICK, MultiAdsBannerAdmobAdapter.this.bannerDetails, MultiAdsBannerAdmobAdapter.this.context, true);
                MultiAdsBannerAdmobAdapter.this.listener.onBannerClicked();
                Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "admob banner onAdClicked");
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdOpened() {
                super.onAdOpened();
                Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "admob banner onAdOpened");
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdLoaded() {
                super.onAdLoaded();
                MultiAdsBannerAdmobAdapter.this.bannerDetails.put("ad_source", StatController.FT_NETWORK_MA_ADMOB);
                MultiAdsBannerAdmobAdapter.this.bannerDetails.put("net_name", StatController.FT_NETWORK_MA_ADMOB);
                MultiAdsBannerAdmobAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + placementId);
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_IMPRESSION, MultiAdsBannerAdmobAdapter.this.bannerDetails, MultiAdsBannerAdmobAdapter.this.context, true);
                viewGroup.setVisibility(0);
                MultiAdsBannerAdmobAdapter.this.bannerView.setVisibility(0);
                MultiAdsBannerAdmobAdapter.this.listener.onBannerLoaded();
                Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "admob banner onAdLoaded");
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdImpression() {
                super.onAdImpression();
                Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "admob banner onAdImpression");
            }
        });
        Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "admob banner attempt to attach bannerView to container");
        this.bannerViewContainer.addView(this.bannerView);
        Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "admob banner attempt to load");
        this.bannerDetails.put("ad_source", StatController.FT_NETWORK_MA_ADMOB);
        this.bannerDetails.put("net_name", StatController.FT_NETWORK_MA_ADMOB);
        this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + placementId);
        this.bannerDetails.put(BrowserActivity.KEY_UNIQ_ID, GuidGenerator.generateNewGuid());
        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_REQUEST, this.bannerDetails, this.context, true);
        this.bannerView.loadAd(new AdRequest.Builder().build());
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerBaseAdapter, com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerInterface
    public void onPause() {
        super.onPause();
        if (this.bannerView != null) {
            if (this.bannerViewContainer != null) {
                Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "admob banner attempt to detach bannerView from container");
                this.bannerViewContainer.removeView(this.bannerView);
            }
            this.bannerView.destroy();
            this.bannerView = null;
        }
    }
}
