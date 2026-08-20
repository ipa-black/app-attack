package com.appsgeyser.sdk.ads.fastTrack.adapters;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.ViewGroup;
import com.appsgeyser.sdk.BrowserActivity;
import com.appsgeyser.sdk.GuidGenerator;
import com.appsgeyser.sdk.ads.fastTrack.FastTrackAdsController;
import com.appsgeyser.sdk.ads.fastTrack.FastTrackSdkModel;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackUnityAdapter;
import com.appsgeyser.sdk.configuration.Constants;
import com.appsgeyser.sdk.server.StatController;
import com.appsgeyser.sdk.ui.AppsgeyserProgressDialog;
import com.google.android.exoplayer2.ExoPlayer;
import com.unity3d.ads.IUnityAdsInitializationListener;
import com.unity3d.ads.IUnityAdsLoadListener;
import com.unity3d.ads.IUnityAdsShowListener;
import com.unity3d.ads.UnityAds;
import com.unity3d.ads.UnityAdsShowOptions;
import com.unity3d.services.banners.BannerErrorCode;
import com.unity3d.services.banners.BannerErrorInfo;
import com.unity3d.services.banners.BannerView;
import com.unity3d.services.banners.UnityBannerSize;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
/* loaded from: classes2.dex */
public class FastTrackUnityAdapter extends FastTrackBaseAdapter {
    private Activity activity;
    private BannerView adView;
    private String bannerPlacementId;
    private boolean bannerRequestFailReported;
    private Runnable bannerViewRefreshRunnable;
    private Runnable bannerViewRepeatRequestRunnable;
    private boolean fullscreenAdsLoaded;
    private Runnable fullscreenPendingRequestCancelRunnable;
    private String fullscreenPlacementId;
    private IUnityAdsShowListener showListener;

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void loadRewardedVideo() {
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void onDestroy() {
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void sendNativeViewRequest() {
    }

    public FastTrackUnityAdapter(FastTrackSdkModel fastTrackSdkModel, Context context) {
        super(fastTrackSdkModel, context);
        this.bannerViewRefreshRunnable = new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackUnityAdapter.3
            @Override // java.lang.Runnable
            public void run() {
                if (FastTrackUnityAdapter.this.adView != null) {
                    Log.d(FastTrackAdsController.fastTrackLogTag, "unity banner attempt to load");
                    FastTrackUnityAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + FastTrackUnityAdapter.this.bannerPlacementId);
                    FastTrackUnityAdapter.this.bannerDetails.put(BrowserActivity.KEY_UNIQ_ID, GuidGenerator.generateNewGuid());
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_REQUEST, FastTrackUnityAdapter.this.bannerDetails, FastTrackUnityAdapter.this.context, true);
                    FastTrackUnityAdapter.this.adView.load();
                    FastTrackUnityAdapter.this.bannerRequestFailReported = false;
                    FastTrackUnityAdapter.this.handler.postDelayed(FastTrackUnityAdapter.this.bannerViewRepeatRequestRunnable, 60000L);
                    return;
                }
                Log.d(FastTrackAdsController.fastTrackLogTag, "unity banner attempt to load failed: bannerView null");
            }
        };
        this.bannerViewRepeatRequestRunnable = new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackUnityAdapter.4
            @Override // java.lang.Runnable
            public void run() {
                if (FastTrackUnityAdapter.this.adView != null) {
                    Log.d(FastTrackAdsController.fastTrackLogTag, "unity banner repeat attempt to load");
                    FastTrackUnityAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + FastTrackUnityAdapter.this.bannerPlacementId);
                    if (!FastTrackUnityAdapter.this.bannerRequestFailReported) {
                        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_NOFILL, FastTrackUnityAdapter.this.bannerDetails, FastTrackUnityAdapter.this.context, true);
                    }
                    FastTrackUnityAdapter.this.bannerDetails.put(BrowserActivity.KEY_UNIQ_ID, GuidGenerator.generateNewGuid());
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_REQUEST, FastTrackUnityAdapter.this.bannerDetails, FastTrackUnityAdapter.this.context, true);
                    FastTrackUnityAdapter.this.adView.load();
                    FastTrackUnityAdapter.this.bannerRequestFailReported = false;
                    FastTrackUnityAdapter.this.handler.postDelayed(FastTrackUnityAdapter.this.bannerViewRepeatRequestRunnable, 60000L);
                }
            }
        };
        this.fullscreenPendingRequestCancelRunnable = new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackUnityAdapter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                FastTrackUnityAdapter.this.m206xf48b6964();
            }
        };
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    protected void init() {
        this.fullscreenPlacementId = this.fastTrackSdkModel.getFullscreenPlacementId();
        this.bannerPlacementId = this.fastTrackSdkModel.getBannerPlacementId();
        String str = this.fullscreenPlacementId;
        if (str != null && !str.isEmpty()) {
            this.interstitialDetails.putAll(this.appDetails);
            if (this.fastTrackSdkModel.isCustomFullscreenActivated()) {
                this.interstitialDetails.put("ad_source", StatController.FT_NETWORK_UNITY_CUSTOM);
                this.interstitialDetails.put("net_name", StatController.FT_NETWORK_UNITY_CUSTOM);
                this.interstitialDetails.put("net_name_FS", StatController.FT_NETWORK_UNITY_CUSTOM);
                Log.d(FastTrackAdsController.fastTrackLogTag, "unity fullscreen: custom");
            } else {
                this.interstitialDetails.put("ad_source", StatController.FT_NETWORK_UNITY);
                this.interstitialDetails.put("net_name", StatController.FT_NETWORK_UNITY);
                this.interstitialDetails.put("net_name_FS", StatController.FT_NETWORK_UNITY);
                Log.d(FastTrackAdsController.fastTrackLogTag, "unity fullscreen: platform");
            }
        }
        String str2 = this.bannerPlacementId;
        if (str2 != null && !str2.isEmpty()) {
            this.bannerDetails.putAll(this.appDetails);
            if (this.fastTrackSdkModel.isCustomBannerActivated()) {
                this.bannerDetails.put("ad_source", StatController.FT_NETWORK_UNITY_CUSTOM);
                this.bannerDetails.put("net_name", StatController.FT_NETWORK_UNITY_CUSTOM);
                this.bannerDetails.put("net_name_FS", StatController.FT_NETWORK_UNITY_CUSTOM);
                Log.d(FastTrackAdsController.fastTrackLogTag, "unity banner: custom");
            } else {
                this.bannerDetails.put("ad_source", StatController.FT_NETWORK_UNITY);
                this.bannerDetails.put("net_name", StatController.FT_NETWORK_UNITY);
                this.bannerDetails.put("net_name_FS", StatController.FT_NETWORK_UNITY);
                Log.d(FastTrackAdsController.fastTrackLogTag, "unity banner: platform");
            }
        }
        UnityAds.initialize(this.context, this.fastTrackSdkModel.getAppId(), true, new IUnityAdsInitializationListener() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackUnityAdapter.1
            @Override // com.unity3d.ads.IUnityAdsInitializationListener
            public void onInitializationComplete() {
                Log.d(FastTrackAdsController.fastTrackLogTag, "unity init complete");
                FastTrackUnityAdapter.this.loadFullscreen();
                FastTrackUnityAdapter.this.loadRewardedVideo();
            }

            @Override // com.unity3d.ads.IUnityAdsInitializationListener
            public void onInitializationFailed(UnityAds.UnityAdsInitializationError unityAdsInitializationError, String str3) {
                Log.d(FastTrackAdsController.fastTrackLogTag, "unity init failed: " + str3);
            }
        });
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void initBannerView(final ViewGroup viewGroup, String str, Activity activity) {
        final Integer bannerViewRefreshRate = getBannerViewRefreshRate(str);
        String str2 = this.bannerPlacementId;
        if (str2 == null || str2.isEmpty() || bannerViewRefreshRate.intValue() == 0) {
            return;
        }
        Log.d(FastTrackAdsController.fastTrackLogTag, "unity banner initializing: " + this.bannerPlacementId);
        BannerView bannerView = new BannerView((Activity) viewGroup.getContext(), this.bannerPlacementId, new UnityBannerSize(320, 50));
        this.adView = bannerView;
        bannerView.setListener(new BannerView.IListener() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackUnityAdapter.2
            @Override // com.unity3d.services.banners.BannerView.IListener
            public void onBannerLoaded(BannerView bannerView2) {
                if (viewGroup != null && FastTrackUnityAdapter.this.adView != null) {
                    FastTrackUnityAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + FastTrackUnityAdapter.this.bannerPlacementId);
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_IMPRESSION, FastTrackUnityAdapter.this.bannerDetails, FastTrackUnityAdapter.this.context, true);
                    viewGroup.setVisibility(0);
                    FastTrackUnityAdapter.this.handler.removeCallbacks(FastTrackUnityAdapter.this.bannerViewRepeatRequestRunnable);
                    FastTrackUnityAdapter.this.handler.removeCallbacks(FastTrackUnityAdapter.this.bannerViewRefreshRunnable);
                    FastTrackUnityAdapter.this.handler.postDelayed(FastTrackUnityAdapter.this.bannerViewRefreshRunnable, bannerViewRefreshRate.intValue());
                } else {
                    Log.d(FastTrackAdsController.fastTrackLogTag, "unity banner loaded, but bannerViewContainer is null");
                }
                Log.d(FastTrackAdsController.fastTrackLogTag, "unity banner onAdLoaded");
            }

            @Override // com.unity3d.services.banners.BannerView.IListener
            public void onBannerClick(BannerView bannerView2) {
                FastTrackUnityAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + FastTrackUnityAdapter.this.bannerPlacementId);
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_CLICK, FastTrackUnityAdapter.this.bannerDetails, FastTrackUnityAdapter.this.context, true);
                Log.d(FastTrackAdsController.fastTrackLogTag, "unity banner onBannerClick");
            }

            @Override // com.unity3d.services.banners.BannerView.IListener
            public void onBannerFailedToLoad(BannerView bannerView2, BannerErrorInfo bannerErrorInfo) {
                if (bannerErrorInfo.errorCode == BannerErrorCode.NO_FILL) {
                    FastTrackUnityAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + FastTrackUnityAdapter.this.bannerPlacementId);
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_NOFILL, FastTrackUnityAdapter.this.bannerDetails, FastTrackUnityAdapter.this.context, true);
                } else {
                    FastTrackUnityAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + FastTrackUnityAdapter.this.bannerPlacementId + "; error_desc: error code " + bannerErrorInfo.errorCode + " " + bannerErrorInfo.errorMessage);
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_ERROR, FastTrackUnityAdapter.this.bannerDetails, FastTrackUnityAdapter.this.context, true);
                }
                FastTrackUnityAdapter.this.bannerRequestFailReported = true;
                Log.d(FastTrackAdsController.fastTrackLogTag, "unity banner onBannerFailedToLoad: " + bannerErrorInfo.errorCode + " " + bannerErrorInfo.errorMessage);
            }

            @Override // com.unity3d.services.banners.BannerView.IListener
            public void onBannerLeftApplication(BannerView bannerView2) {
                Log.d(FastTrackAdsController.fastTrackLogTag, "unity banner onBannerLeftApplication");
            }
        });
        Log.d(FastTrackAdsController.fastTrackLogTag, "unity banner attempt to attach bannerView to container");
        this.bannerViewContainer = viewGroup;
        this.bannerViewContainer.addView(this.adView);
        this.handler.post(this.bannerViewRefreshRunnable);
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void loadFullscreen() {
        this.fullscreenAdsLoaded = false;
        String str = this.fullscreenPlacementId;
        if (str == null || str.isEmpty()) {
            return;
        }
        Log.d(FastTrackAdsController.fastTrackLogTag, "unity fullscreen initializing: " + this.fullscreenPlacementId);
        this.showListener = new IUnityAdsShowListener() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackUnityAdapter.5
            @Override // com.unity3d.ads.IUnityAdsShowListener
            public void onUnityAdsShowFailure(String str2, UnityAds.UnityAdsShowError unityAdsShowError, String str3) {
                Log.d(FastTrackAdsController.fastTrackLogTag, "unity fs onUnityAdsShowFailure");
            }

            @Override // com.unity3d.ads.IUnityAdsShowListener
            public void onUnityAdsShowStart(String str2) {
                FastTrackUnityAdapter.this.interstitialDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + FastTrackUnityAdapter.this.fullscreenPlacementId);
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_IMPRESSION, FastTrackUnityAdapter.this.interstitialDetails, FastTrackUnityAdapter.this.context, true);
                if (FastTrackUnityAdapter.this.fullscreenListener != null) {
                    FastTrackUnityAdapter.this.fullscreenListener.onShow();
                }
                Log.d(FastTrackAdsController.fastTrackLogTag, "unity fs onUnityAdsShowStart");
            }

            @Override // com.unity3d.ads.IUnityAdsShowListener
            public void onUnityAdsShowClick(String str2) {
                FastTrackUnityAdapter.this.interstitialDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + FastTrackUnityAdapter.this.fullscreenPlacementId);
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_CLICK, FastTrackUnityAdapter.this.interstitialDetails, FastTrackUnityAdapter.this.context, true);
                Log.d(FastTrackAdsController.fastTrackLogTag, "unity fs onUnityAdsShowClick");
            }

            @Override // com.unity3d.ads.IUnityAdsShowListener
            public void onUnityAdsShowComplete(String str2, UnityAds.UnityAdsShowCompletionState unityAdsShowCompletionState) {
                if (FastTrackUnityAdapter.this.progressDialog != null && FastTrackUnityAdapter.this.progressDialog.isShowing()) {
                    try {
                        FastTrackUnityAdapter.this.progressDialog.dismiss();
                    } catch (IllegalArgumentException unused) {
                        Log.d(FastTrackAdsController.fastTrackLogTag, "progressDialog dismissal IAE");
                    }
                }
                FastTrackUnityAdapter.this.loadFullscreen();
                if (FastTrackUnityAdapter.this.fullscreenListener != null) {
                    FastTrackUnityAdapter.this.fullscreenListener.onClose();
                }
                Log.d(FastTrackAdsController.fastTrackLogTag, "unity fs onUnityAdsShowComplete");
                FastTrackUnityAdapter.this.fullscreenAdsLoaded = false;
            }
        };
        AnonymousClass6 anonymousClass6 = new AnonymousClass6();
        Log.d(FastTrackAdsController.fastTrackLogTag, "unity fullscreen attempt to load");
        this.interstitialDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + this.fullscreenPlacementId);
        this.interstitialDetails.put(BrowserActivity.KEY_UNIQ_ID, GuidGenerator.generateNewGuid());
        UnityAds.load(this.fullscreenPlacementId, anonymousClass6);
        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_REQUEST, this.interstitialDetails, this.context, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackUnityAdapter$6  reason: invalid class name */
    /* loaded from: classes2.dex */
    public class AnonymousClass6 implements IUnityAdsLoadListener {
        AnonymousClass6() {
        }

        @Override // com.unity3d.ads.IUnityAdsLoadListener
        public void onUnityAdsAdLoaded(String str) {
            FastTrackUnityAdapter.this.fullscreenAdsLoaded = true;
            if (FastTrackUnityAdapter.this.pendingFullscreenRequest && FastTrackUnityAdapter.this.isInForeground) {
                FastTrackUnityAdapter.this.pendingFullscreenRequest = false;
                Log.d(FastTrackAdsController.fastTrackLogTag, "unity fullscreen loaded, pending request processing");
                FastTrackUnityAdapter.this.handler.removeCallbacks(FastTrackUnityAdapter.this.fullscreenPendingRequestCancelRunnable);
                final AppsgeyserProgressDialog appsgeyserProgressDialog = FastTrackUnityAdapter.this.progressDialog;
                appsgeyserProgressDialog.show();
                FastTrackUnityAdapter.this.handler.postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackUnityAdapter$6$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        FastTrackUnityAdapter.AnonymousClass6.this.m208x1fd3411(appsgeyserProgressDialog);
                    }
                }, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
            }
            Log.d(FastTrackAdsController.fastTrackLogTag, "unity fs onUnityAdsAdLoaded");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onUnityAdsAdLoaded$0$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackUnityAdapter$6  reason: not valid java name */
        public /* synthetic */ void m208x1fd3411(AppsgeyserProgressDialog appsgeyserProgressDialog) {
            try {
                appsgeyserProgressDialog.dismiss();
            } catch (IllegalArgumentException unused) {
                Log.d(FastTrackAdsController.fastTrackLogTag, "progressDialog dismissal IAE");
            }
            UnityAds.show(FastTrackUnityAdapter.this.activity, FastTrackUnityAdapter.this.fullscreenPlacementId, new UnityAdsShowOptions(), FastTrackUnityAdapter.this.showListener);
        }

        @Override // com.unity3d.ads.IUnityAdsLoadListener
        public void onUnityAdsFailedToLoad(String str, UnityAds.UnityAdsLoadError unityAdsLoadError, String str2) {
            if (unityAdsLoadError == UnityAds.UnityAdsLoadError.NO_FILL) {
                FastTrackUnityAdapter.this.interstitialDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + FastTrackUnityAdapter.this.fullscreenPlacementId);
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_NOFILL, FastTrackUnityAdapter.this.interstitialDetails, FastTrackUnityAdapter.this.context, true);
            } else {
                FastTrackUnityAdapter.this.interstitialDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + FastTrackUnityAdapter.this.fullscreenPlacementId + "; error_desc: error message " + str2);
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_ERROR, FastTrackUnityAdapter.this.interstitialDetails, FastTrackUnityAdapter.this.context, true);
            }
            FastTrackUnityAdapter.this.handler.postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackUnityAdapter$6$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    FastTrackUnityAdapter.AnonymousClass6.this.m209x5c848fe8();
                }
            }, 60000L);
            Log.d(FastTrackAdsController.fastTrackLogTag, "unity fs onUnityAdsFailedToLoad " + unityAdsLoadError.toString() + " ; " + str2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onUnityAdsFailedToLoad$1$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackUnityAdapter$6  reason: not valid java name */
        public /* synthetic */ void m209x5c848fe8() {
            FastTrackUnityAdapter.this.loadFullscreen();
        }
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void showFullscreen(String str, String str2, boolean z, Context context) {
        this.activity = (Activity) context;
        if (z && System.currentTimeMillis() - this.preferencesCoder.getPrefLong(Constants.PREFS_APPSGEYSER_FULLSCREEN_LAST_REQUEST_TIMING, 0L) <= getFullscreenFrequencyTimerValue(str2).intValue()) {
            Log.d(FastTrackAdsController.fastTrackLogTag, "unity fullscreen show request was cancelled due to frequency timing settings");
            return;
        }
        this.preferencesCoder.savePrefLong(Constants.PREFS_APPSGEYSER_FULLSCREEN_LAST_REQUEST_TIMING, System.currentTimeMillis());
        Log.d(FastTrackAdsController.fastTrackLogTag, "unity fullscreen show request");
        if (this.fullscreenListener != null) {
            this.fullscreenListener.onRequest();
        }
        if (new Random().nextInt(100) + 1 <= getFullscreenIntensityPoints(str2).intValue()) {
            String str3 = this.fullscreenPlacementId;
            if (str3 != null && !str3.isEmpty()) {
                this.interstitialDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + this.fullscreenPlacementId);
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_ATTEMPT, this.interstitialDetails, context, true);
                if (this.fullscreenAdsLoaded) {
                    Log.d(FastTrackAdsController.fastTrackLogTag, "unity fullscreen attempt to show");
                    final AppsgeyserProgressDialog appsgeyserProgressDialog = this.progressDialog;
                    appsgeyserProgressDialog.show();
                    this.handler.postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackUnityAdapter$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            FastTrackUnityAdapter.this.m207x7a1526b5(appsgeyserProgressDialog);
                        }
                    }, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                    return;
                }
                Log.d(FastTrackAdsController.fastTrackLogTag, "unity fullscreen not loaded yet, waiting for load");
                this.pendingFullscreenRequest = true;
                this.handler.postDelayed(this.fullscreenPendingRequestCancelRunnable, getFullscreenPendingDelayTimerValue().intValue());
                return;
            }
            Log.d(FastTrackAdsController.fastTrackLogTag, "unity fullscreen disabled");
            if (this.fullscreenListener != null) {
                this.fullscreenListener.onFailedToShow();
                return;
            }
            return;
        }
        Log.d(FastTrackAdsController.fastTrackLogTag, "unity fullscreen attempt to show canceled due to intensity settings");
        if (this.fullscreenListener != null) {
            this.fullscreenListener.onFailedToShow();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$showFullscreen$0$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackUnityAdapter  reason: not valid java name */
    public /* synthetic */ void m207x7a1526b5(AppsgeyserProgressDialog appsgeyserProgressDialog) {
        try {
            appsgeyserProgressDialog.dismiss();
        } catch (IllegalArgumentException unused) {
            Log.d(FastTrackAdsController.fastTrackLogTag, "progressDialog dismissal IAE");
        }
        UnityAds.show(this.activity, this.fullscreenPlacementId, new UnityAdsShowOptions(), this.showListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$1$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackUnityAdapter  reason: not valid java name */
    public /* synthetic */ void m206xf48b6964() {
        this.pendingFullscreenRequest = false;
        if (this.fullscreenListener != null) {
            this.fullscreenListener.onFailedToShow();
        }
        Log.d(FastTrackAdsController.fastTrackLogTag, "unity fullscreen not loaded, cancelling wait");
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void showRewardedVideo(FastTrackBaseAdapter.RewardedVideoListener rewardedVideoListener, String str) {
        rewardedVideoListener.onVideoDeactivated();
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public List<Object> getNativeAds(int i) {
        return new ArrayList();
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void onPause() {
        super.onPause();
        if (this.adView != null) {
            if (this.bannerViewContainer != null) {
                Log.d(FastTrackAdsController.fastTrackLogTag, "unity banner attempt to detach bannerView from container");
                this.bannerViewContainer.removeView(this.adView);
                this.bannerViewContainer = null;
            }
            this.adView.destroy();
            this.adView = null;
        }
        this.handler.removeCallbacks(this.bannerViewRefreshRunnable);
        this.handler.removeCallbacks(this.bannerViewRepeatRequestRunnable);
    }
}
