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
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackFacebookAdapter;
import com.appsgeyser.sdk.configuration.Constants;
import com.appsgeyser.sdk.server.StatController;
import com.appsgeyser.sdk.ui.AppsgeyserProgressDialog;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
import com.facebook.ads.AudienceNetworkAds;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdListener;
import com.google.android.exoplayer2.ExoPlayer;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
/* loaded from: classes2.dex */
public class FastTrackFacebookAdapter extends FastTrackBaseAdapter {
    private AdListener adListener;
    private AdView adView;
    private String bannerPlacementId;
    private boolean bannerRequestFailReported;
    private Runnable bannerViewRefreshRunnable;
    private Runnable bannerViewRepeatRequestRunnable;
    private Runnable fullscreenPendingRequestCancelRunnable;
    private String fullscreenPlacementId;
    private InterstitialAd interstitialAd;

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void loadRewardedVideo() {
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void sendNativeViewRequest() {
    }

    public FastTrackFacebookAdapter(FastTrackSdkModel fastTrackSdkModel, Context context) {
        super(fastTrackSdkModel, context);
        this.bannerViewRefreshRunnable = new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackFacebookAdapter.3
            @Override // java.lang.Runnable
            public void run() {
                if (FastTrackFacebookAdapter.this.adView != null) {
                    Log.d(FastTrackAdsController.fastTrackLogTag, "facebook banner attempt to load");
                    FastTrackFacebookAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + FastTrackFacebookAdapter.this.bannerPlacementId);
                    FastTrackFacebookAdapter.this.bannerDetails.put(BrowserActivity.KEY_UNIQ_ID, GuidGenerator.generateNewGuid());
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_REQUEST, FastTrackFacebookAdapter.this.bannerDetails, FastTrackFacebookAdapter.this.context, true);
                    FastTrackFacebookAdapter.this.adView.loadAd(FastTrackFacebookAdapter.this.adView.buildLoadAdConfig().withAdListener(FastTrackFacebookAdapter.this.adListener).build());
                    FastTrackFacebookAdapter.this.bannerRequestFailReported = false;
                    FastTrackFacebookAdapter.this.handler.postDelayed(FastTrackFacebookAdapter.this.bannerViewRepeatRequestRunnable, 60000L);
                    return;
                }
                Log.d(FastTrackAdsController.fastTrackLogTag, "facebook banner attempt to load failed: bannerView null");
            }
        };
        this.bannerViewRepeatRequestRunnable = new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackFacebookAdapter.4
            @Override // java.lang.Runnable
            public void run() {
                if (FastTrackFacebookAdapter.this.adView != null) {
                    Log.d(FastTrackAdsController.fastTrackLogTag, "facebook banner repeat attempt to load");
                    FastTrackFacebookAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + FastTrackFacebookAdapter.this.bannerPlacementId);
                    if (!FastTrackFacebookAdapter.this.bannerRequestFailReported) {
                        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_NOFILL, FastTrackFacebookAdapter.this.bannerDetails, FastTrackFacebookAdapter.this.context, true);
                    }
                    FastTrackFacebookAdapter.this.bannerDetails.put(BrowserActivity.KEY_UNIQ_ID, GuidGenerator.generateNewGuid());
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_REQUEST, FastTrackFacebookAdapter.this.bannerDetails, FastTrackFacebookAdapter.this.context, true);
                    FastTrackFacebookAdapter.this.adView.loadAd(FastTrackFacebookAdapter.this.adView.buildLoadAdConfig().withAdListener(FastTrackFacebookAdapter.this.adListener).build());
                    FastTrackFacebookAdapter.this.bannerRequestFailReported = false;
                    FastTrackFacebookAdapter.this.handler.postDelayed(FastTrackFacebookAdapter.this.bannerViewRepeatRequestRunnable, 60000L);
                }
            }
        };
        this.fullscreenPendingRequestCancelRunnable = new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackFacebookAdapter$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                FastTrackFacebookAdapter.this.m202x457cf61f();
            }
        };
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    protected void init() {
        this.fullscreenPlacementId = this.fastTrackSdkModel.getFullscreenPlacementId();
        this.bannerPlacementId = this.fastTrackSdkModel.getBannerPlacementId();
        AudienceNetworkAds.buildInitSettings(this.context).withInitListener(new AudienceNetworkAds.InitListener() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackFacebookAdapter.1
            @Override // com.facebook.ads.AudienceNetworkAds.InitListener
            public void onInitialized(AudienceNetworkAds.InitResult initResult) {
                Log.d(FastTrackAdsController.fastTrackLogTag, "facebook init complete: " + initResult.getMessage());
                if (initResult.isSuccess()) {
                    FastTrackFacebookAdapter.this.loadFullscreen();
                    FastTrackFacebookAdapter.this.loadRewardedVideo();
                }
            }
        }).initialize();
        String str = this.fullscreenPlacementId;
        if (str != null && !str.isEmpty()) {
            this.interstitialDetails.putAll(this.appDetails);
            if (this.fastTrackSdkModel.isCustomFullscreenActivated()) {
                this.interstitialDetails.put("ad_source", StatController.FT_NETWORK_FACEBOOK_CUSTOM);
                this.interstitialDetails.put("net_name", StatController.FT_NETWORK_FACEBOOK_CUSTOM);
                this.interstitialDetails.put("net_name_FS", StatController.FT_NETWORK_FACEBOOK_CUSTOM);
                Log.d(FastTrackAdsController.fastTrackLogTag, "facebook fullscreen: custom");
            } else {
                this.interstitialDetails.put("ad_source", StatController.FT_NETWORK_FACEBOOK);
                this.interstitialDetails.put("net_name", StatController.FT_NETWORK_FACEBOOK);
                this.interstitialDetails.put("net_name_FS", StatController.FT_NETWORK_FACEBOOK);
                Log.d(FastTrackAdsController.fastTrackLogTag, "facebook fullscreen: platform");
            }
        } else {
            Log.d(FastTrackAdsController.fastTrackLogTag, "facebook fullscreen disabled");
        }
        String str2 = this.bannerPlacementId;
        if (str2 != null && !str2.isEmpty()) {
            this.bannerDetails.putAll(this.appDetails);
            if (this.fastTrackSdkModel.isCustomBannerActivated()) {
                this.bannerDetails.put("ad_source", StatController.FT_NETWORK_FACEBOOK_CUSTOM);
                this.bannerDetails.put("net_name", StatController.FT_NETWORK_FACEBOOK_CUSTOM);
                this.bannerDetails.put("net_name_FS", StatController.FT_NETWORK_FACEBOOK_CUSTOM);
                Log.d(FastTrackAdsController.fastTrackLogTag, "facebook banner: custom");
                return;
            }
            this.bannerDetails.put("ad_source", StatController.FT_NETWORK_FACEBOOK);
            this.bannerDetails.put("net_name", StatController.FT_NETWORK_FACEBOOK);
            this.bannerDetails.put("net_name_FS", StatController.FT_NETWORK_FACEBOOK);
            Log.d(FastTrackAdsController.fastTrackLogTag, "facebook banner: platform");
            return;
        }
        Log.d(FastTrackAdsController.fastTrackLogTag, "facebook banner disabled");
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void initBannerView(final ViewGroup viewGroup, String str, Activity activity) {
        final Integer bannerViewRefreshRate = getBannerViewRefreshRate(str);
        String str2 = this.bannerPlacementId;
        if (str2 == null || str2.isEmpty() || bannerViewRefreshRate.intValue() == 0) {
            return;
        }
        Log.d(FastTrackAdsController.fastTrackLogTag, "facebook banner initializing: " + this.bannerPlacementId);
        this.adView = new AdView(this.context, this.bannerPlacementId, AdSize.BANNER_HEIGHT_50);
        this.adListener = new AdListener() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackFacebookAdapter.2
            @Override // com.facebook.ads.AdListener
            public void onError(Ad ad, AdError adError) {
                if (adError.getErrorCode() == 1001) {
                    FastTrackFacebookAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + FastTrackFacebookAdapter.this.bannerPlacementId);
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_NOFILL, FastTrackFacebookAdapter.this.bannerDetails, FastTrackFacebookAdapter.this.context, true);
                } else {
                    FastTrackFacebookAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + FastTrackFacebookAdapter.this.bannerPlacementId + "; error_desc: error code " + adError.getErrorCode() + " " + adError.getErrorMessage());
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_ERROR, FastTrackFacebookAdapter.this.bannerDetails, FastTrackFacebookAdapter.this.context, true);
                }
                FastTrackFacebookAdapter.this.bannerRequestFailReported = true;
                Log.d(FastTrackAdsController.fastTrackLogTag, "facebook banner onError: " + adError.getErrorCode() + " " + adError.getErrorMessage());
            }

            @Override // com.facebook.ads.AdListener
            public void onAdClicked(Ad ad) {
                FastTrackFacebookAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + FastTrackFacebookAdapter.this.bannerPlacementId);
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_CLICK, FastTrackFacebookAdapter.this.bannerDetails, FastTrackFacebookAdapter.this.context, true);
                Log.d(FastTrackAdsController.fastTrackLogTag, "facebook banner onAdClicked");
            }

            @Override // com.facebook.ads.AdListener
            public void onAdLoaded(Ad ad) {
                if (viewGroup != null && FastTrackFacebookAdapter.this.adView != null) {
                    FastTrackFacebookAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + FastTrackFacebookAdapter.this.bannerPlacementId);
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_IMPRESSION, FastTrackFacebookAdapter.this.bannerDetails, FastTrackFacebookAdapter.this.context, true);
                    viewGroup.setVisibility(0);
                    FastTrackFacebookAdapter.this.handler.removeCallbacks(FastTrackFacebookAdapter.this.bannerViewRepeatRequestRunnable);
                    FastTrackFacebookAdapter.this.handler.removeCallbacks(FastTrackFacebookAdapter.this.bannerViewRefreshRunnable);
                    FastTrackFacebookAdapter.this.handler.postDelayed(FastTrackFacebookAdapter.this.bannerViewRefreshRunnable, bannerViewRefreshRate.intValue());
                } else {
                    Log.d(FastTrackAdsController.fastTrackLogTag, "facebook banner loaded, but bannerViewContainer is null");
                }
                Log.d(FastTrackAdsController.fastTrackLogTag, "facebook banner onAdLoaded");
            }

            @Override // com.facebook.ads.AdListener
            public void onLoggingImpression(Ad ad) {
                Log.d(FastTrackAdsController.fastTrackLogTag, "facebook banner onLoggingImpression");
            }
        };
        Log.d(FastTrackAdsController.fastTrackLogTag, "facebook banner attempt to attach bannerView to container");
        this.bannerViewContainer = viewGroup;
        this.bannerViewContainer.addView(this.adView);
        this.handler.post(this.bannerViewRefreshRunnable);
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void loadFullscreen() {
        String str = this.fullscreenPlacementId;
        if (str == null || str.isEmpty()) {
            return;
        }
        this.interstitialAd = new InterstitialAd(this.context, this.fullscreenPlacementId);
        Log.d(FastTrackAdsController.fastTrackLogTag, "facebook fullscreen initializing: " + this.fullscreenPlacementId);
        AnonymousClass5 anonymousClass5 = new AnonymousClass5();
        Log.d(FastTrackAdsController.fastTrackLogTag, "facebook fullscreen attempt to load");
        this.interstitialDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + this.fullscreenPlacementId);
        this.interstitialDetails.put(BrowserActivity.KEY_UNIQ_ID, GuidGenerator.generateNewGuid());
        InterstitialAd interstitialAd = this.interstitialAd;
        interstitialAd.loadAd(interstitialAd.buildLoadAdConfig().withAdListener(anonymousClass5).build());
        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_REQUEST, this.interstitialDetails, this.context, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackFacebookAdapter$5  reason: invalid class name */
    /* loaded from: classes2.dex */
    public class AnonymousClass5 implements InterstitialAdListener {
        AnonymousClass5() {
        }

        @Override // com.facebook.ads.InterstitialAdListener
        public void onInterstitialDismissed(Ad ad) {
            if (FastTrackFacebookAdapter.this.progressDialog != null && FastTrackFacebookAdapter.this.progressDialog.isShowing()) {
                try {
                    FastTrackFacebookAdapter.this.progressDialog.dismiss();
                } catch (IllegalArgumentException unused) {
                    Log.d(FastTrackAdsController.fastTrackLogTag, "progressDialog dismissal IAE");
                }
            }
            FastTrackFacebookAdapter.this.loadFullscreen();
            if (FastTrackFacebookAdapter.this.fullscreenListener != null) {
                FastTrackFacebookAdapter.this.fullscreenListener.onClose();
            }
            Log.d(FastTrackAdsController.fastTrackLogTag, "facebook fs onInterstitialDismissed");
        }

        @Override // com.facebook.ads.AdListener
        public void onError(Ad ad, AdError adError) {
            if (adError.getErrorCode() == 1001) {
                FastTrackFacebookAdapter.this.interstitialDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + FastTrackFacebookAdapter.this.fullscreenPlacementId);
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_NOFILL, FastTrackFacebookAdapter.this.interstitialDetails, FastTrackFacebookAdapter.this.context, true);
            } else {
                FastTrackFacebookAdapter.this.interstitialDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + FastTrackFacebookAdapter.this.fullscreenPlacementId + "; error_desc: error code " + adError.getErrorCode() + " " + adError.getErrorMessage());
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_ERROR, FastTrackFacebookAdapter.this.interstitialDetails, FastTrackFacebookAdapter.this.context, true);
            }
            FastTrackFacebookAdapter.this.handler.postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackFacebookAdapter$5$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    FastTrackFacebookAdapter.AnonymousClass5.this.m205x185b2de8();
                }
            }, 60000L);
            Log.d(FastTrackAdsController.fastTrackLogTag, "facebook fs onError " + adError.getErrorCode() + " " + adError.getErrorMessage());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onError$0$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackFacebookAdapter$5  reason: not valid java name */
        public /* synthetic */ void m205x185b2de8() {
            FastTrackFacebookAdapter.this.loadFullscreen();
        }

        @Override // com.facebook.ads.AdListener
        public void onAdClicked(Ad ad) {
            FastTrackFacebookAdapter.this.interstitialDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + FastTrackFacebookAdapter.this.fullscreenPlacementId);
            StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_CLICK, FastTrackFacebookAdapter.this.interstitialDetails, FastTrackFacebookAdapter.this.context, true);
            Log.d(FastTrackAdsController.fastTrackLogTag, "facebook fs onAdClicked");
        }

        @Override // com.facebook.ads.InterstitialAdListener
        public void onInterstitialDisplayed(Ad ad) {
            FastTrackFacebookAdapter.this.interstitialDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + FastTrackFacebookAdapter.this.fullscreenPlacementId);
            StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_IMPRESSION, FastTrackFacebookAdapter.this.interstitialDetails, FastTrackFacebookAdapter.this.context, true);
            if (FastTrackFacebookAdapter.this.fullscreenListener != null) {
                FastTrackFacebookAdapter.this.fullscreenListener.onShow();
            }
            Log.d(FastTrackAdsController.fastTrackLogTag, "facebook fs onAdOpened");
        }

        @Override // com.facebook.ads.AdListener
        public void onAdLoaded(Ad ad) {
            if (FastTrackFacebookAdapter.this.pendingFullscreenRequest && FastTrackFacebookAdapter.this.isInForeground) {
                FastTrackFacebookAdapter.this.pendingFullscreenRequest = false;
                Log.d(FastTrackAdsController.fastTrackLogTag, "facebook fullscreen loaded, pending request processing");
                FastTrackFacebookAdapter.this.handler.removeCallbacks(FastTrackFacebookAdapter.this.fullscreenPendingRequestCancelRunnable);
                final AppsgeyserProgressDialog appsgeyserProgressDialog = FastTrackFacebookAdapter.this.progressDialog;
                appsgeyserProgressDialog.show();
                FastTrackFacebookAdapter.this.handler.postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackFacebookAdapter$5$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        FastTrackFacebookAdapter.AnonymousClass5.this.m204x72b7490f(appsgeyserProgressDialog);
                    }
                }, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
            }
            Log.d(FastTrackAdsController.fastTrackLogTag, "facebook fs onAdLoaded");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onAdLoaded$1$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackFacebookAdapter$5  reason: not valid java name */
        public /* synthetic */ void m204x72b7490f(AppsgeyserProgressDialog appsgeyserProgressDialog) {
            try {
                appsgeyserProgressDialog.dismiss();
            } catch (IllegalArgumentException unused) {
                Log.d(FastTrackAdsController.fastTrackLogTag, "progressDialog dismissal IAE");
            }
            FastTrackFacebookAdapter.this.interstitialAd.show();
        }

        @Override // com.facebook.ads.AdListener
        public void onLoggingImpression(Ad ad) {
            Log.d(FastTrackAdsController.fastTrackLogTag, "facebook fs onLoggingImpression");
        }
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void showFullscreen(String str, String str2, boolean z, Context context) {
        if (z && System.currentTimeMillis() - this.preferencesCoder.getPrefLong(Constants.PREFS_APPSGEYSER_FULLSCREEN_LAST_REQUEST_TIMING, 0L) <= getFullscreenFrequencyTimerValue(str2).intValue()) {
            Log.d(FastTrackAdsController.fastTrackLogTag, "facebook fullscreen show request was cancelled due to frequency timing settings");
            return;
        }
        this.preferencesCoder.savePrefLong(Constants.PREFS_APPSGEYSER_FULLSCREEN_LAST_REQUEST_TIMING, System.currentTimeMillis());
        Log.d(FastTrackAdsController.fastTrackLogTag, "facebook fullscreen show request");
        if (this.fullscreenListener != null) {
            this.fullscreenListener.onRequest();
        }
        if (new Random().nextInt(100) + 1 <= getFullscreenIntensityPoints(str2).intValue()) {
            if (this.interstitialAd != null) {
                this.interstitialDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + this.fullscreenPlacementId);
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_ATTEMPT, this.interstitialDetails, context, true);
                if (this.interstitialAd.isAdLoaded()) {
                    Log.d(FastTrackAdsController.fastTrackLogTag, "facebook fullscreen attempt to show");
                    final AppsgeyserProgressDialog appsgeyserProgressDialog = this.progressDialog;
                    appsgeyserProgressDialog.show();
                    this.handler.postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackFacebookAdapter$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            FastTrackFacebookAdapter.this.m203x3d62eb2e(appsgeyserProgressDialog);
                        }
                    }, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                    return;
                }
                Log.d(FastTrackAdsController.fastTrackLogTag, "facebook fullscreen not loaded yet, waiting for load");
                this.pendingFullscreenRequest = true;
                this.handler.postDelayed(this.fullscreenPendingRequestCancelRunnable, getFullscreenPendingDelayTimerValue().intValue());
                return;
            }
            Log.d(FastTrackAdsController.fastTrackLogTag, "facebook fullscreen disabled");
            if (this.fullscreenListener != null) {
                this.fullscreenListener.onFailedToShow();
                return;
            }
            return;
        }
        Log.d(FastTrackAdsController.fastTrackLogTag, "facebook fullscreen attempt to show canceled due to intensity settings");
        if (this.fullscreenListener != null) {
            this.fullscreenListener.onFailedToShow();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$showFullscreen$0$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackFacebookAdapter  reason: not valid java name */
    public /* synthetic */ void m203x3d62eb2e(AppsgeyserProgressDialog appsgeyserProgressDialog) {
        try {
            appsgeyserProgressDialog.dismiss();
        } catch (IllegalArgumentException unused) {
            Log.d(FastTrackAdsController.fastTrackLogTag, "progressDialog dismissal IAE");
        }
        this.interstitialAd.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$1$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackFacebookAdapter  reason: not valid java name */
    public /* synthetic */ void m202x457cf61f() {
        this.pendingFullscreenRequest = false;
        if (this.fullscreenListener != null) {
            this.fullscreenListener.onFailedToShow();
        }
        Log.d(FastTrackAdsController.fastTrackLogTag, "facebook fullscreen not loaded, cancelling wait");
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
                Log.d(FastTrackAdsController.fastTrackLogTag, "facebook banner attempt to detach bannerView from container");
                this.bannerViewContainer.removeView(this.adView);
                this.bannerViewContainer = null;
            }
            this.adView.destroy();
            this.adView = null;
        }
        this.handler.removeCallbacks(this.bannerViewRefreshRunnable);
        this.handler.removeCallbacks(this.bannerViewRepeatRequestRunnable);
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void onDestroy() {
        InterstitialAd interstitialAd = this.interstitialAd;
        if (interstitialAd != null) {
            interstitialAd.destroy();
        }
    }
}
