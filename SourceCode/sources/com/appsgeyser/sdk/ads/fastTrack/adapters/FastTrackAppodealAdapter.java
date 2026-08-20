package com.appsgeyser.sdk.ads.fastTrack.adapters;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.appodeal.ads.Appodeal;
import com.appodeal.ads.BannerCallbacks;
import com.appodeal.ads.BannerView;
import com.appodeal.ads.InterstitialCallbacks;
import com.appodeal.ads.NativeAd;
import com.appodeal.ads.NativeCallbacks;
import com.appodeal.ads.native_ad.views.NativeAdViewContentStream;
import com.appodeal.ads.utils.Log;
import com.appsgeyser.sdk.BrowserActivity;
import com.appsgeyser.sdk.GuidGenerator;
import com.appsgeyser.sdk.ads.fastTrack.FastTrackAdsController;
import com.appsgeyser.sdk.ads.fastTrack.FastTrackSdkModel;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAppodealAdapter;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter;
import com.appsgeyser.sdk.configuration.Constants;
import com.appsgeyser.sdk.server.StatController;
import com.appsgeyser.sdk.ui.AppsgeyserProgressDialog;
import com.google.android.exoplayer2.ExoPlayer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Random;
/* loaded from: classes2.dex */
public class FastTrackAppodealAdapter extends FastTrackBaseAdapter implements NativeCallbacks {
    private Activity activity;
    private boolean bannerRequestFailReported;
    private BannerView bannerView;
    private Runnable fullscreenPendingRequestCancelRunnable;

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void loadRewardedVideo() {
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void onDestroy() {
    }

    public FastTrackAppodealAdapter(FastTrackSdkModel fastTrackSdkModel, Context context) {
        super(fastTrackSdkModel, context);
        this.fullscreenPendingRequestCancelRunnable = new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAppodealAdapter$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                FastTrackAppodealAdapter.this.m195x14d8928b();
            }
        };
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    protected void init() {
        this.interstitialDetails.putAll(this.appDetails);
        if (this.fastTrackSdkModel.isCustomFullscreenActivated()) {
            this.interstitialDetails.put("ad_source", StatController.FT_NETWORK_APPODEAL_CUSTOM);
            this.interstitialDetails.put("net_name", StatController.FT_NETWORK_APPODEAL_CUSTOM);
            this.interstitialDetails.put("net_name_FS", StatController.FT_NETWORK_APPODEAL_CUSTOM);
            Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal fullscreen: custom");
        } else {
            this.interstitialDetails.put("ad_source", StatController.FT_NETWORK_APPODEAL);
            this.interstitialDetails.put("net_name", StatController.FT_NETWORK_APPODEAL);
            this.interstitialDetails.put("net_name_FS", StatController.FT_NETWORK_APPODEAL);
            Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal fullscreen: platform");
        }
        this.bannerDetails.putAll(this.appDetails);
        if (this.fastTrackSdkModel.isCustomBannerActivated()) {
            this.bannerDetails.put("ad_source", StatController.FT_NETWORK_APPODEAL_CUSTOM);
            this.bannerDetails.put("net_name", StatController.FT_NETWORK_APPODEAL_CUSTOM);
            this.bannerDetails.put("net_name_FS", StatController.FT_NETWORK_APPODEAL_CUSTOM);
            Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal banner: custom");
        } else {
            this.bannerDetails.put("ad_source", StatController.FT_NETWORK_APPODEAL);
            this.bannerDetails.put("net_name", StatController.FT_NETWORK_APPODEAL);
            this.bannerDetails.put("net_name_FS", StatController.FT_NETWORK_APPODEAL);
            Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal banner: platform");
        }
        this.rewardedDetails.putAll(this.appDetails);
        if (this.fastTrackSdkModel.isCustomRewardedActivated()) {
            this.rewardedDetails.put("ad_source", StatController.FT_NETWORK_APPODEAL_CUSTOM);
            this.rewardedDetails.put("net_name", StatController.FT_NETWORK_APPODEAL_CUSTOM);
            this.rewardedDetails.put("net_name_FS", StatController.FT_NETWORK_APPODEAL_CUSTOM);
            Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal rewarded: custom");
        } else {
            this.rewardedDetails.put("ad_source", StatController.FT_NETWORK_APPODEAL);
            this.rewardedDetails.put("net_name", StatController.FT_NETWORK_APPODEAL);
            this.rewardedDetails.put("net_name_FS", StatController.FT_NETWORK_APPODEAL);
            Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal rewarded: platform");
        }
        this.nativeAdsDetails.putAll(this.appDetails);
        this.nativeAdsDetails.put("ad_source", StatController.FT_NETWORK_APPODEAL);
        this.nativeAdsDetails.put("net_name", StatController.FT_NETWORK_APPODEAL);
        this.nativeAdsDetails.put("net_name_FS", StatController.FT_NETWORK_APPODEAL);
        Appodeal.setAutoCache(128, false);
        Appodeal.setLogLevel(Log.LogLevel.verbose);
        Appodeal.initialize((Activity) this.context, this.fastTrackSdkModel.getAppId(), 519);
        Appodeal.setLogLevel(Log.LogLevel.debug);
        Appodeal.cache((Activity) this.context, 512);
        Appodeal.setNativeCallbacks(this);
        loadFullscreen();
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void initBannerView(final ViewGroup viewGroup, String str, Activity activity) {
        Integer bannerViewRefreshRate = getBannerViewRefreshRate(str);
        this.bannerView = Appodeal.getBannerView(activity);
        if (bannerViewRefreshRate.intValue() != 0) {
            android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal banner initializing");
            Appodeal.setBannerCallbacks(new BannerCallbacks() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAppodealAdapter.1
                @Override // com.appodeal.ads.BannerCallbacks
                public void onBannerLoaded(int i, boolean z) {
                    if (viewGroup != null && FastTrackAppodealAdapter.this.bannerView != null) {
                        viewGroup.setVisibility(0);
                    }
                    android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal banner onBannerLoaded");
                }

                @Override // com.appodeal.ads.BannerCallbacks
                public void onBannerFailedToLoad() {
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_NOFILL, FastTrackAppodealAdapter.this.bannerDetails, FastTrackAppodealAdapter.this.context, true);
                    FastTrackAppodealAdapter.this.bannerRequestFailReported = true;
                    android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal banner onBannerFailedToLoad");
                }

                @Override // com.appodeal.ads.BannerCallbacks
                public void onBannerShown() {
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_IMPRESSION, FastTrackAppodealAdapter.this.bannerDetails, FastTrackAppodealAdapter.this.context, true);
                    android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal banner onBannerShown");
                }

                @Override // com.appodeal.ads.BannerCallbacks
                public void onBannerShowFailed() {
                    android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal banner onBannerShowFailed");
                }

                @Override // com.appodeal.ads.BannerCallbacks
                public void onBannerClicked() {
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_CLICK, FastTrackAppodealAdapter.this.bannerDetails, FastTrackAppodealAdapter.this.context, true);
                    android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal banner onBannerClicked");
                }

                @Override // com.appodeal.ads.BannerCallbacks
                public void onBannerExpired() {
                    android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal banner onBannerExpired");
                }
            });
            this.bannerViewContainer = viewGroup;
            this.bannerViewContainer.addView(this.bannerView);
            Appodeal.show(activity, 64);
            android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal banner attempt to attach bannerView to container");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAppodealAdapter$2  reason: invalid class name */
    /* loaded from: classes2.dex */
    public class AnonymousClass2 implements InterstitialCallbacks {
        AnonymousClass2() {
        }

        @Override // com.appodeal.ads.InterstitialCallbacks
        public void onInterstitialLoaded(boolean z) {
            if (FastTrackAppodealAdapter.this.pendingFullscreenRequest && FastTrackAppodealAdapter.this.isInForeground) {
                FastTrackAppodealAdapter.this.pendingFullscreenRequest = false;
                android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal fullscreen loaded, pending request processing");
                FastTrackAppodealAdapter.this.handler.removeCallbacks(FastTrackAppodealAdapter.this.fullscreenPendingRequestCancelRunnable);
                final AppsgeyserProgressDialog appsgeyserProgressDialog = FastTrackAppodealAdapter.this.progressDialog;
                appsgeyserProgressDialog.show();
                FastTrackAppodealAdapter.this.handler.postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAppodealAdapter$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        FastTrackAppodealAdapter.AnonymousClass2.this.m199x770ea870(appsgeyserProgressDialog);
                    }
                }, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
            }
            android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal fullscreen onInterstitialLoaded");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onInterstitialLoaded$0$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppodealAdapter$2  reason: not valid java name */
        public /* synthetic */ void m199x770ea870(AppsgeyserProgressDialog appsgeyserProgressDialog) {
            try {
                appsgeyserProgressDialog.dismiss();
            } catch (IllegalArgumentException unused) {
                android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "progressDialog dismissal IAE");
            }
            try {
                Appodeal.show(FastTrackAppodealAdapter.this.activity, 3);
            } catch (Exception e2) {
                android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal activity pass fail: " + Arrays.toString(e2.getStackTrace()));
            }
        }

        @Override // com.appodeal.ads.InterstitialCallbacks
        public void onInterstitialFailedToLoad() {
            StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_NOFILL, FastTrackAppodealAdapter.this.interstitialDetails, FastTrackAppodealAdapter.this.context, true);
            FastTrackAppodealAdapter.this.handler.postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAppodealAdapter$2$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    FastTrackAppodealAdapter.AnonymousClass2.this.m198x63907856();
                }
            }, 30000L);
            android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal fullscreen onInterstitialFailedToLoad");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onInterstitialFailedToLoad$1$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppodealAdapter$2  reason: not valid java name */
        public /* synthetic */ void m198x63907856() {
            FastTrackAppodealAdapter.this.loadFullscreen();
        }

        @Override // com.appodeal.ads.InterstitialCallbacks
        public void onInterstitialShown() {
            android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal fullscreen onInterstitialShown");
            StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_IMPRESSION, FastTrackAppodealAdapter.this.interstitialDetails, FastTrackAppodealAdapter.this.context, true);
            if (FastTrackAppodealAdapter.this.fullscreenListener != null) {
                FastTrackAppodealAdapter.this.fullscreenListener.onShow();
            }
        }

        @Override // com.appodeal.ads.InterstitialCallbacks
        public void onInterstitialShowFailed() {
            android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal fullscreen onInterstitialShowFailed");
        }

        @Override // com.appodeal.ads.InterstitialCallbacks
        public void onInterstitialClicked() {
            android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal fullscreen onInterstitialClicked");
            StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_CLICK, FastTrackAppodealAdapter.this.interstitialDetails, FastTrackAppodealAdapter.this.context, true);
        }

        @Override // com.appodeal.ads.InterstitialCallbacks
        public void onInterstitialClosed() {
            FastTrackAppodealAdapter.this.loadFullscreen();
            if (FastTrackAppodealAdapter.this.progressDialog != null && FastTrackAppodealAdapter.this.progressDialog.isShowing()) {
                try {
                    FastTrackAppodealAdapter.this.progressDialog.dismiss();
                } catch (IllegalArgumentException unused) {
                    android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "progressDialog dismissal IAE");
                }
            }
            if (FastTrackAppodealAdapter.this.fullscreenListener != null) {
                FastTrackAppodealAdapter.this.fullscreenListener.onClose();
            }
            android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal fullscreen onInterstitialClosed");
        }

        @Override // com.appodeal.ads.InterstitialCallbacks
        public void onInterstitialExpired() {
            android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal fullscreen onInterstitialExpired");
        }
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void loadFullscreen() {
        android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal fullscreen initializing");
        Appodeal.setInterstitialCallbacks(new AnonymousClass2());
        android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal fullscreen attempt to load");
        this.interstitialDetails.put(BrowserActivity.KEY_UNIQ_ID, GuidGenerator.generateNewGuid());
        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_REQUEST, this.interstitialDetails, this.context, true);
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void showFullscreen(String str, String str2, boolean z, Context context) {
        this.activity = (Activity) context;
        if (z && System.currentTimeMillis() - this.preferencesCoder.getPrefLong(Constants.PREFS_APPSGEYSER_FULLSCREEN_LAST_REQUEST_TIMING, 0L) <= getFullscreenFrequencyTimerValue(str2).intValue()) {
            android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal fullscreen show request was cancelled due to frequency timing settings");
            return;
        }
        this.preferencesCoder.savePrefLong(Constants.PREFS_APPSGEYSER_FULLSCREEN_LAST_REQUEST_TIMING, System.currentTimeMillis());
        android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal fullscreen show request");
        if (this.fullscreenListener != null) {
            this.fullscreenListener.onRequest();
        }
        if (new Random().nextInt(100) + 1 <= getFullscreenIntensityPoints(str2).intValue()) {
            StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_ATTEMPT, this.interstitialDetails, context, true);
            if (Appodeal.isLoaded(3)) {
                android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal fullscreen attempt to show");
                final AppsgeyserProgressDialog appsgeyserProgressDialog = this.progressDialog;
                appsgeyserProgressDialog.show();
                this.handler.postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAppodealAdapter$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        FastTrackAppodealAdapter.this.m197xcbe879a(appsgeyserProgressDialog);
                    }
                }, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                return;
            }
            android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal fullscreen not loaded yet, waiting for load");
            this.pendingFullscreenRequest = true;
            this.handler.postDelayed(this.fullscreenPendingRequestCancelRunnable, getFullscreenPendingDelayTimerValue().intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$showFullscreen$0$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppodealAdapter  reason: not valid java name */
    public /* synthetic */ void m197xcbe879a(AppsgeyserProgressDialog appsgeyserProgressDialog) {
        try {
            appsgeyserProgressDialog.dismiss();
        } catch (IllegalArgumentException unused) {
            android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "progressDialog dismissal IAE");
        }
        Appodeal.show(this.activity, 3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$1$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppodealAdapter  reason: not valid java name */
    public /* synthetic */ void m195x14d8928b() {
        this.pendingFullscreenRequest = false;
        if (this.fullscreenListener != null) {
            this.fullscreenListener.onFailedToShow();
        }
        android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal fullscreen not loaded, cancelling wait");
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
    public void sendNativeViewRequest() {
        android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "sendNativeViewRequest, is native ad loaded = " + Appodeal.isLoaded(512));
        if (this.nativeViewReadyListener != null && Appodeal.isLoaded(512)) {
            this.nativeViewReadyListener.onNativeViewReady(getNativeAdView(Appodeal.getNativeAds(1).get(0)));
            return;
        }
        this.nativeRequestQueueSize++;
        Activity activity = this.activity;
        if (activity != null) {
            Appodeal.cache(activity, 512);
        }
    }

    private View getNativeAdView(NativeAd nativeAd) {
        NativeAdViewContentStream nativeAdViewContentStream = new NativeAdViewContentStream(this.context);
        nativeAdViewContentStream.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        nativeAdViewContentStream.setNativeAd(nativeAd);
        return nativeAdViewContentStream;
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void onPause() {
        super.onPause();
        if (this.bannerView != null) {
            if (this.bannerViewContainer != null) {
                android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal banner attempt to detach bannerView from container");
                this.bannerViewContainer.removeView(this.bannerView);
                this.bannerViewContainer = null;
            }
            Appodeal.destroy(4);
            this.bannerView = null;
        }
    }

    @Override // com.appodeal.ads.NativeCallbacks
    public void onNativeLoaded() {
        android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal native onLoaded, nativeRequestQueueSize = " + this.nativeRequestQueueSize);
        if (this.nativeRequestQueueSize <= 0 || this.nativeViewReadyListener == null) {
            return;
        }
        this.nativeViewReadyListener.onNativeViewReady(getNativeAdView(Appodeal.getNativeAds(1).get(0)));
        this.nativeRequestQueueSize--;
    }

    @Override // com.appodeal.ads.NativeCallbacks
    public void onNativeFailedToLoad() {
        if (this.activity == null) {
            return;
        }
        new Handler().postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAppodealAdapter$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                FastTrackAppodealAdapter.this.m196x88aab79c();
            }
        }, 30000L);
        android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal native onFailedToLoad");
        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_NATIVE_SDK_NOFILL, this.nativeAdsDetails, this.context, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onNativeFailedToLoad$2$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppodealAdapter  reason: not valid java name */
    public /* synthetic */ void m196x88aab79c() {
        Appodeal.cache(this.activity, 512);
    }

    @Override // com.appodeal.ads.NativeCallbacks
    public void onNativeShown(NativeAd nativeAd) {
        android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal native onShown");
        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_NATIVE_SDK_IMPRESSION, this.nativeAdsDetails, this.context, true);
    }

    @Override // com.appodeal.ads.NativeCallbacks
    public void onNativeShowFailed(NativeAd nativeAd) {
        android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal native onShowFailed");
    }

    @Override // com.appodeal.ads.NativeCallbacks
    public void onNativeClicked(NativeAd nativeAd) {
        android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal native onClicked");
        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_NATIVE_SDK_CLICK, this.nativeAdsDetails, this.context, true);
    }

    @Override // com.appodeal.ads.NativeCallbacks
    public void onNativeExpired() {
        android.util.Log.d(FastTrackAdsController.fastTrackLogTag, "appodeal native onExpired");
    }

    private NativeAd getNativeAdItem() {
        List<NativeAd> nativeAds = Appodeal.getNativeAds(1);
        if (nativeAds.isEmpty()) {
            return null;
        }
        return nativeAds.get(0);
    }
}
