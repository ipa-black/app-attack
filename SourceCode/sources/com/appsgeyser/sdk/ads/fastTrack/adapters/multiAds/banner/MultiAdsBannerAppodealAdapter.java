package com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.ViewGroup;
import com.appodeal.ads.Appodeal;
import com.appodeal.ads.BannerCallbacks;
import com.appodeal.ads.BannerView;
import com.appsgeyser.sdk.BrowserActivity;
import com.appsgeyser.sdk.GuidGenerator;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackMultiAdsAdapter;
import com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel;
import com.appsgeyser.sdk.server.StatController;
import java.util.HashMap;
/* loaded from: classes2.dex */
public class MultiAdsBannerAppodealAdapter extends MultiAdsBannerBaseAdapter {
    private BannerView bannerView;

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerBaseAdapter
    protected void init() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MultiAdsBannerAppodealAdapter(Context context, AdNetworkSdkModel adNetworkSdkModel, HashMap<String, String> hashMap) {
        super(context, adNetworkSdkModel, hashMap);
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerInterface
    public void loadBanner(final ViewGroup viewGroup) {
        if (this.adNetworkSdkModel.getAppId() == null || this.adNetworkSdkModel.getAppId().isEmpty()) {
            return;
        }
        this.bannerViewContainer = viewGroup;
        Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "appodeal banner initializing: " + this.adNetworkSdkModel.getAppId());
        this.bannerView = Appodeal.getBannerView((Activity) viewGroup.getContext());
        Appodeal.setBannerCallbacks(new BannerCallbacks() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerAppodealAdapter.1
            @Override // com.appodeal.ads.BannerCallbacks
            public void onBannerLoaded(int i, boolean z) {
                viewGroup.setVisibility(0);
                Appodeal.show((Activity) viewGroup.getContext(), 64);
                MultiAdsBannerAppodealAdapter.this.listener.onBannerLoaded();
                Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "appodeal banner onBannerLoaded");
            }

            @Override // com.appodeal.ads.BannerCallbacks
            public void onBannerFailedToLoad() {
                MultiAdsBannerAppodealAdapter.this.bannerDetails.put("ad_source", StatController.FT_NETWORK_MA_APPODEAL);
                MultiAdsBannerAppodealAdapter.this.bannerDetails.put("net_name", StatController.FT_NETWORK_MA_APPODEAL);
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_NOFILL, MultiAdsBannerAppodealAdapter.this.bannerDetails, MultiAdsBannerAppodealAdapter.this.context, true);
                MultiAdsBannerAppodealAdapter.this.listener.onBannerError("appodeal banner onBannerFailedToLoad");
                Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "appodeal banner onBannerFailedToLoad");
            }

            @Override // com.appodeal.ads.BannerCallbacks
            public void onBannerShown() {
                MultiAdsBannerAppodealAdapter.this.bannerDetails.put("ad_source", StatController.FT_NETWORK_MA_APPODEAL);
                MultiAdsBannerAppodealAdapter.this.bannerDetails.put("net_name", StatController.FT_NETWORK_MA_APPODEAL);
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_IMPRESSION, MultiAdsBannerAppodealAdapter.this.bannerDetails, MultiAdsBannerAppodealAdapter.this.context, true);
                Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "appodeal banner onBannerShown");
            }

            @Override // com.appodeal.ads.BannerCallbacks
            public void onBannerShowFailed() {
                Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "appodeal banner onBannerShowFailed");
            }

            @Override // com.appodeal.ads.BannerCallbacks
            public void onBannerClicked() {
                MultiAdsBannerAppodealAdapter.this.bannerDetails.put("ad_source", StatController.FT_NETWORK_MA_APPODEAL);
                MultiAdsBannerAppodealAdapter.this.bannerDetails.put("net_name", StatController.FT_NETWORK_MA_APPODEAL);
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_CLICK, MultiAdsBannerAppodealAdapter.this.bannerDetails, MultiAdsBannerAppodealAdapter.this.context, true);
                MultiAdsBannerAppodealAdapter.this.listener.onBannerClicked();
                Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "appodeal banner onBannerClicked");
            }

            @Override // com.appodeal.ads.BannerCallbacks
            public void onBannerExpired() {
                Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "appodeal banner onBannerExpired");
            }
        });
        this.bannerViewContainer = viewGroup;
        Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "appodeal banner attempt to attach bannerView to container");
        this.bannerViewContainer.addView(this.bannerView);
        Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "appodeal banner attempt to load");
        this.bannerDetails.put("ad_source", StatController.FT_NETWORK_MA_APPODEAL);
        this.bannerDetails.put("net_name", StatController.FT_NETWORK_MA_APPODEAL);
        this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + this.adNetworkSdkModel.getAppId());
        this.bannerDetails.put(BrowserActivity.KEY_UNIQ_ID, GuidGenerator.generateNewGuid());
        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_REQUEST, this.bannerDetails, this.context, true);
        this.handler.postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerAppodealAdapter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Appodeal.cache((Activity) viewGroup.getContext(), 4);
            }
        }, 1000L);
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerBaseAdapter, com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerInterface
    public void onPause() {
        super.onPause();
        if (this.bannerView != null) {
            if (this.bannerViewContainer != null) {
                Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "appodeal banner attempt to detach bannerView from container");
                this.bannerViewContainer.removeView(this.bannerView);
            }
            Appodeal.destroy(4);
            this.bannerView = null;
        }
    }
}
