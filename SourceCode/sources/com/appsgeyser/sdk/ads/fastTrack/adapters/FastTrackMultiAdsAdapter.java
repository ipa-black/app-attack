package com.appsgeyser.sdk.ads.fastTrack.adapters;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.ViewGroup;
import com.appnext.base.Appnext;
import com.appodeal.ads.Appodeal;
import com.appodeal.ads.initializing.ApdInitializationCallback;
import com.appodeal.ads.initializing.ApdInitializationError;
import com.appodeal.ads.utils.Log;
import com.appsgeyser.sdk.AppsgeyserSDK;
import com.appsgeyser.sdk.ads.AdView;
import com.appsgeyser.sdk.ads.fastTrack.FastTrackAdsController;
import com.appsgeyser.sdk.ads.fastTrack.FastTrackSdkModel;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter;
import com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerManager;
import com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface;
import com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenManager;
import com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade;
import com.appsgeyser.sdk.configuration.Constants;
import com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel;
import com.appsgeyser.sdk.server.StatController;
import com.facebook.ads.AudienceNetworkAds;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.unity3d.ads.IUnityAdsInitializationListener;
import com.unity3d.ads.UnityAds;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;
/* loaded from: classes2.dex */
public class FastTrackMultiAdsAdapter extends FastTrackBaseAdapter {
    public static final String multiAdsLogTag = "multiAdsTag";
    private AdView adView;
    private MultiAdsBannerManager bannerManager;
    private MultiAdsFullscreenManager fullscreenManager;

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void loadFullscreen() {
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void loadRewardedVideo() {
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void onDestroy() {
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void sendNativeViewRequest() {
    }

    public FastTrackMultiAdsAdapter(FastTrackSdkModel fastTrackSdkModel, Context context) {
        super(fastTrackSdkModel, context);
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    protected void init() {
        ArrayList arrayList = new ArrayList();
        if (this.fastTrackSdkModel.getFullscreenPlacementIdMap() != null && !this.fastTrackSdkModel.getFullscreenPlacementIdMap().isEmpty()) {
            for (Map.Entry<String, AdNetworkSdkModel> entry : this.fastTrackSdkModel.getFullscreenPlacementIdMap().entrySet()) {
                if (!arrayList.contains(entry.getKey())) {
                    arrayList.add(entry.getKey());
                }
            }
        }
        if (this.fastTrackSdkModel.getBannerPlacementIdMap() != null && !this.fastTrackSdkModel.getBannerPlacementIdMap().isEmpty()) {
            for (Map.Entry<String, AdNetworkSdkModel> entry2 : this.fastTrackSdkModel.getBannerPlacementIdMap().entrySet()) {
                if (!arrayList.contains(entry2.getKey())) {
                    arrayList.add(entry2.getKey());
                }
            }
        }
        if (this.fastTrackSdkModel.getRewardedVideoPlacementIdMap() != null && !this.fastTrackSdkModel.getRewardedVideoPlacementIdMap().isEmpty()) {
            for (Map.Entry<String, AdNetworkSdkModel> entry3 : this.fastTrackSdkModel.getRewardedVideoPlacementIdMap().entrySet()) {
                if (!arrayList.contains(entry3.getKey())) {
                    arrayList.add(entry3.getKey());
                }
            }
        }
        Log.d(multiAdsLogTag, "Activating SDKs:" + arrayList);
        if (arrayList.contains(StatController.KEY_ADMOB)) {
            MobileAds.initialize(this.context.getApplicationContext(), new OnInitializationCompleteListener() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackMultiAdsAdapter.1
                @Override // com.google.android.gms.ads.initialization.OnInitializationCompleteListener
                public void onInitializationComplete(InitializationStatus initializationStatus) {
                    Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Admob SDK onInitializationComplete");
                }
            });
        }
        String str = null;
        if (arrayList.contains(StatController.KEY_APPODEAL)) {
            Appodeal.setAutoCache(TsExtractor.TS_STREAM_TYPE_E_AC3, false);
            Appodeal.setLogLevel(Log.LogLevel.verbose);
            String appId = (this.fastTrackSdkModel.getFullscreenPlacementIdMap() == null || this.fastTrackSdkModel.getFullscreenPlacementIdMap().get(StatController.KEY_APPODEAL) == null) ? null : this.fastTrackSdkModel.getFullscreenPlacementIdMap().get(StatController.KEY_APPODEAL).getAppId();
            if (appId == null || appId.isEmpty()) {
                appId = this.fastTrackSdkModel.getBannerPlacementIdMap().get(StatController.KEY_APPODEAL).getAppId();
            }
            Appodeal.initialize((Activity) this.context, appId, 7, new ApdInitializationCallback() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackMultiAdsAdapter.2
                @Override // com.appodeal.ads.initializing.ApdInitializationCallback
                public void onInitializationFinished(List<ApdInitializationError> list) {
                    if (FastTrackMultiAdsAdapter.this.fullscreenManager != null) {
                        FastTrackMultiAdsAdapter.this.fullscreenManager.appodealInitCompleted();
                    }
                }
            });
            Appodeal.setLogLevel(Log.LogLevel.debug);
        }
        if (arrayList.contains(StatController.KEY_UNITY)) {
            if (this.fastTrackSdkModel.getFullscreenPlacementIdMap() != null && this.fastTrackSdkModel.getFullscreenPlacementIdMap().get(StatController.KEY_UNITY) != null) {
                str = this.fastTrackSdkModel.getFullscreenPlacementIdMap().get(StatController.KEY_UNITY).getAppId();
            }
            if (str == null || str.isEmpty()) {
                str = this.fastTrackSdkModel.getBannerPlacementIdMap().get(StatController.KEY_UNITY).getAppId();
            }
            UnityAds.initialize(this.context, str, true, new IUnityAdsInitializationListener() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackMultiAdsAdapter.3
                @Override // com.unity3d.ads.IUnityAdsInitializationListener
                public void onInitializationFailed(UnityAds.UnityAdsInitializationError unityAdsInitializationError, String str2) {
                }

                @Override // com.unity3d.ads.IUnityAdsInitializationListener
                public void onInitializationComplete() {
                    if (FastTrackMultiAdsAdapter.this.fullscreenManager != null) {
                        FastTrackMultiAdsAdapter.this.fullscreenManager.unityInitCompleted();
                    }
                }
            });
        }
        if (arrayList.contains(StatController.KEY_FACEBOOK)) {
            AudienceNetworkAds.buildInitSettings(this.context).withInitListener(new AudienceNetworkAds.InitListener() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackMultiAdsAdapter.4
                @Override // com.facebook.ads.AudienceNetworkAds.InitListener
                public void onInitialized(AudienceNetworkAds.InitResult initResult) {
                    if (FastTrackMultiAdsAdapter.this.fullscreenManager != null) {
                        FastTrackMultiAdsAdapter.this.fullscreenManager.facebookInitCompleted();
                    }
                }
            }).initialize();
        }
        if (arrayList.contains(StatController.KEY_APPNEXT)) {
            Appnext.init(this.context);
        }
        this.fullscreenManager = new MultiAdsFullscreenManager(this.fastTrackSdkModel.getFullscreenPlacementIdMap(), this.context, this.appDetails);
        this.bannerManager = new MultiAdsBannerManager(this.fastTrackSdkModel.getBannerPlacementIdMap(), this.context, this.appDetails);
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void initBannerView(ViewGroup viewGroup, String str, Activity activity) {
        if (viewGroup == null || getBannerViewRefreshRate(str).intValue() == 0) {
            return;
        }
        this.bannerManager.initBannerView(viewGroup, getBannerViewRefreshRate(str));
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void showFullscreen(String str, String str2, boolean z, final Context context) {
        if (z && System.currentTimeMillis() - this.preferencesCoder.getPrefLong(Constants.PREFS_APPSGEYSER_FULLSCREEN_LAST_REQUEST_TIMING, 0L) <= getFullscreenFrequencyTimerValue(str2).intValue()) {
            android.util.Log.d(multiAdsLogTag, "smartAds fullscreen show request was cancelled due to frequency timing settings");
            return;
        }
        this.preferencesCoder.savePrefLong(Constants.PREFS_APPSGEYSER_FULLSCREEN_LAST_REQUEST_TIMING, System.currentTimeMillis());
        android.util.Log.d(multiAdsLogTag, "smartAds fullscreen show request");
        if (this.fullscreenListener != null) {
            this.fullscreenListener.onRequest();
        }
        if (new Random().nextInt(100) + 1 <= getFullscreenIntensityPoints(str2).intValue()) {
            this.interstitialDetails.put("ad_source", StatController.FT_NETWORK_MA);
            this.interstitialDetails.put("net_name", StatController.FT_NETWORK_MA);
            this.interstitialDetails.put("net_name_FS", StatController.FT_NETWORK_MA);
            StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_ATTEMPT, this.interstitialDetails, context, true);
            this.fullscreenManager.loadFullscreen(new MultiAdsFullscreenInterface.FullscreenListener() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackMultiAdsAdapter.5
                @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface.FullscreenListener
                public void onFullscreenClicked() {
                }

                @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface.FullscreenListener
                public void onFullscreenLoaded() {
                    FastTrackMultiAdsAdapter.this.fullscreenManager.showFullscreen(context);
                }

                @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface.FullscreenListener
                public void onFullscreenOpened() {
                    if (FastTrackMultiAdsAdapter.this.fullscreenListener != null) {
                        FastTrackMultiAdsAdapter.this.fullscreenListener.onShow();
                    }
                }

                @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface.FullscreenListener
                public void onFullscreenClosed() {
                    if (FastTrackMultiAdsAdapter.this.fullscreenListener != null) {
                        FastTrackMultiAdsAdapter.this.fullscreenListener.onClose();
                    }
                }

                @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface.FullscreenListener
                public void onFullscreenError(String str3) {
                    if (FastTrackMultiAdsAdapter.this.fullscreenListener != null) {
                        FastTrackMultiAdsAdapter.this.fullscreenListener.onFailedToShow();
                    }
                }
            }, str);
            return;
        }
        android.util.Log.d(multiAdsLogTag, "multiAds fullscreen attempt to show canceled due to intensity settings");
        if (this.fullscreenListener != null) {
            this.fullscreenListener.onFailedToShow();
        }
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void showRewardedVideo(final FastTrackBaseAdapter.RewardedVideoListener rewardedVideoListener, String str) {
        if (getRewardedVideoActivationStatus(str).booleanValue()) {
            AppsgeyserSDK.loadRewardedVideo(new RewardedVideoFacade.RewardedVideoListener() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackMultiAdsAdapter.6
                @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade.RewardedVideoListener
                public void onVideoLoaded() {
                    AppsgeyserSDK.showRewardedVideo();
                }

                @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade.RewardedVideoListener
                public void onVideoOpened() {
                    rewardedVideoListener.onVideoOpened();
                }

                @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade.RewardedVideoListener
                public void onVideoClicked() {
                    rewardedVideoListener.onVideoClicked();
                }

                @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade.RewardedVideoListener
                public void onVideoClosed() {
                    rewardedVideoListener.onVideoClosed();
                }

                @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade.RewardedVideoListener
                public void onVideoError(String str2) {
                    rewardedVideoListener.onVideoError(str2);
                }

                @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade.RewardedVideoListener
                public void onVideoFinished() {
                    rewardedVideoListener.onVideoFinished();
                }
            });
            return;
        }
        android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "Rewarded video placement disabled");
        this.rewardedVideoListener.onVideoDeactivated();
        this.rewardedVideoListener = null;
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public List<Object> getNativeAds(int i) {
        return new ArrayList();
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void onResume(Context context) {
        super.onResume(context);
        this.bannerManager.onResume();
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void onPause() {
        super.onPause();
        this.bannerManager.onPause();
    }
}
