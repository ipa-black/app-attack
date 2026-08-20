package com.appsgeyser.sdk.ads.fastTrack.adapters;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.util.TypedValue;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import com.appnext.ads.fullscreen.RewardedVideo;
import com.appnext.ads.interstitial.Interstitial;
import com.appnext.banners.BannerAdRequest;
import com.appnext.banners.BannerListener;
import com.appnext.banners.BannerSize;
import com.appnext.banners.BannerView;
import com.appnext.base.Appnext;
import com.appnext.core.AppnextAdCreativeType;
import com.appnext.core.AppnextError;
import com.appnext.core.callbacks.OnAdClicked;
import com.appnext.core.callbacks.OnAdClosed;
import com.appnext.core.callbacks.OnAdError;
import com.appnext.core.callbacks.OnAdLoaded;
import com.appnext.core.callbacks.OnAdOpened;
import com.appnext.core.callbacks.OnVideoEnded;
import com.appsgeyser.sdk.BrowserActivity;
import com.appsgeyser.sdk.GuidGenerator;
import com.appsgeyser.sdk.R;
import com.appsgeyser.sdk.ads.fastTrack.FastTrackAdsController;
import com.appsgeyser.sdk.ads.fastTrack.FastTrackSdkModel;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAppnextAdapter;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter;
import com.appsgeyser.sdk.configuration.Constants;
import com.appsgeyser.sdk.server.StatController;
import com.appsgeyser.sdk.ui.AppsgeyserProgressDialog;
import com.google.android.exoplayer2.ExoPlayer;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Random;
/* loaded from: classes2.dex */
public class FastTrackAppnextAdapter extends FastTrackBaseAdapter {
    private boolean bannerClickReportedRecently;
    private String bannerPlacementId;
    private boolean bannerRequestFailReported;
    private BannerView bannerView;
    private Runnable bannerViewRefreshRunnable;
    private Runnable bannerViewRepeatRequestRunnable;
    private Runnable fullscreenPendingRequestCancelRunnable;
    private String fullscreenPlacementId;
    private Interstitial interstitialAd;
    private ProgressBar progressBar;
    private RewardedVideo rewardedVideoAd;
    private String rewardedVideoPlacementId;
    private Runnable rewardedVideoShowCancelRunnable;

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void onDestroy() {
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void sendNativeViewRequest() {
    }

    public FastTrackAppnextAdapter(FastTrackSdkModel fastTrackSdkModel, Context context) {
        super(fastTrackSdkModel, context);
        this.bannerViewRefreshRunnable = new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAppnextAdapter.2
            @Override // java.lang.Runnable
            public void run() {
                if (FastTrackAppnextAdapter.this.bannerView != null) {
                    Log.d(FastTrackAdsController.fastTrackLogTag, "appnext banner attempt to load");
                    FastTrackAppnextAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + FastTrackAppnextAdapter.this.bannerPlacementId);
                    FastTrackAppnextAdapter.this.bannerDetails.put(BrowserActivity.KEY_UNIQ_ID, GuidGenerator.generateNewGuid());
                    FastTrackAppnextAdapter.this.bannerView.loadAd(new BannerAdRequest());
                    FastTrackAppnextAdapter.this.bannerView.setVisibility(8);
                    FastTrackAppnextAdapter.this.progressBar.setVisibility(0);
                    FastTrackAppnextAdapter.this.bannerRequestFailReported = false;
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_REQUEST, FastTrackAppnextAdapter.this.bannerDetails, FastTrackAppnextAdapter.this.context, true);
                    FastTrackAppnextAdapter.this.handler.postDelayed(FastTrackAppnextAdapter.this.bannerViewRepeatRequestRunnable, 60000L);
                    return;
                }
                Log.d(FastTrackAdsController.fastTrackLogTag, "appnext banner attempt to load failed: bannerView null");
            }
        };
        this.bannerViewRepeatRequestRunnable = new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAppnextAdapter.3
            @Override // java.lang.Runnable
            public void run() {
                if (FastTrackAppnextAdapter.this.bannerView != null) {
                    Log.d(FastTrackAdsController.fastTrackLogTag, "appnext banner repeat attempt to load");
                    FastTrackAppnextAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + FastTrackAppnextAdapter.this.bannerPlacementId);
                    if (!FastTrackAppnextAdapter.this.bannerRequestFailReported) {
                        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_NOFILL, FastTrackAppnextAdapter.this.bannerDetails, FastTrackAppnextAdapter.this.context, true);
                    }
                    FastTrackAppnextAdapter.this.bannerDetails.put(BrowserActivity.KEY_UNIQ_ID, GuidGenerator.generateNewGuid());
                    FastTrackAppnextAdapter.this.bannerView.loadAd(new BannerAdRequest());
                    FastTrackAppnextAdapter.this.progressBar.setVisibility(0);
                    FastTrackAppnextAdapter.this.bannerRequestFailReported = false;
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_REQUEST, FastTrackAppnextAdapter.this.bannerDetails, FastTrackAppnextAdapter.this.context, true);
                    FastTrackAppnextAdapter.this.handler.postDelayed(FastTrackAppnextAdapter.this.bannerViewRepeatRequestRunnable, 60000L);
                    return;
                }
                Log.d(FastTrackAdsController.fastTrackLogTag, "appnext banner attempt to load failed: bannerView null");
            }
        };
        this.fullscreenPendingRequestCancelRunnable = new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAppnextAdapter$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                FastTrackAppnextAdapter.this.m192xa6d2bf6b();
            }
        };
        this.rewardedVideoShowCancelRunnable = new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAppnextAdapter$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                FastTrackAppnextAdapter.this.m191x439ba7f9();
            }
        };
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    protected void init() {
        this.fullscreenPlacementId = this.fastTrackSdkModel.getFullscreenPlacementId();
        this.bannerPlacementId = this.fastTrackSdkModel.getBannerPlacementId();
        this.rewardedVideoPlacementId = this.fastTrackSdkModel.getRewardedVideoPlacementId();
        String str = this.fullscreenPlacementId;
        if (str != null && !str.isEmpty()) {
            this.interstitialDetails.putAll(this.appDetails);
            if (this.fastTrackSdkModel.isCustomFullscreenActivated()) {
                this.interstitialDetails.put("ad_source", StatController.FT_NETWORK_APPNEXT_CUSTOM);
                this.interstitialDetails.put("net_name", StatController.FT_NETWORK_APPNEXT_CUSTOM);
                this.interstitialDetails.put("net_name_FS", StatController.FT_NETWORK_APPNEXT_CUSTOM);
                Log.d(FastTrackAdsController.fastTrackLogTag, "appnext fullscreen: custom");
            } else {
                this.interstitialDetails.put("ad_source", StatController.FT_NETWORK_APPNEXT);
                this.interstitialDetails.put("net_name", StatController.FT_NETWORK_APPNEXT);
                this.interstitialDetails.put("net_name_FS", StatController.FT_NETWORK_APPNEXT);
                Log.d(FastTrackAdsController.fastTrackLogTag, "appnext fullscreen: platform");
            }
        }
        String str2 = this.bannerPlacementId;
        if (str2 != null && !str2.isEmpty()) {
            this.bannerDetails.putAll(this.appDetails);
            if (this.fastTrackSdkModel.isCustomBannerActivated()) {
                this.bannerDetails.put("ad_source", StatController.FT_NETWORK_APPNEXT_CUSTOM);
                this.bannerDetails.put("net_name", StatController.FT_NETWORK_APPNEXT_CUSTOM);
                this.bannerDetails.put("net_name_FS", StatController.FT_NETWORK_APPNEXT_CUSTOM);
                Log.d(FastTrackAdsController.fastTrackLogTag, "appnext banner: custom");
            } else {
                this.bannerDetails.put("ad_source", StatController.FT_NETWORK_APPNEXT);
                this.bannerDetails.put("net_name", StatController.FT_NETWORK_APPNEXT);
                this.bannerDetails.put("net_name_FS", StatController.FT_NETWORK_APPNEXT);
                Log.d(FastTrackAdsController.fastTrackLogTag, "appnext banner: platform");
            }
        }
        String str3 = this.rewardedVideoPlacementId;
        if (str3 != null && !str3.isEmpty()) {
            this.rewardedDetails.putAll(this.appDetails);
            if (this.fastTrackSdkModel.isCustomRewardedActivated()) {
                this.rewardedDetails.put("ad_source", StatController.FT_NETWORK_APPNEXT_CUSTOM);
                this.rewardedDetails.put("net_name", StatController.FT_NETWORK_APPNEXT_CUSTOM);
                this.rewardedDetails.put("net_name_FS", StatController.FT_NETWORK_APPNEXT_CUSTOM);
                Log.d(FastTrackAdsController.fastTrackLogTag, "appnext rewarded: custom");
            } else {
                this.rewardedDetails.put("ad_source", StatController.FT_NETWORK_APPNEXT);
                this.rewardedDetails.put("net_name", StatController.FT_NETWORK_APPNEXT);
                this.rewardedDetails.put("net_name_FS", StatController.FT_NETWORK_APPNEXT);
                Log.d(FastTrackAdsController.fastTrackLogTag, "appnext rewarded: platform");
            }
        }
        Appnext.init(this.context);
        loadFullscreen();
        loadRewardedVideo();
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void initBannerView(ViewGroup viewGroup, String str, Activity activity) {
        Integer bannerViewRefreshRate = getBannerViewRefreshRate(str);
        viewGroup.setVisibility(8);
        String str2 = this.bannerPlacementId;
        if (str2 == null || str2.isEmpty() || bannerViewRefreshRate.intValue() == 0) {
            return;
        }
        Log.d(FastTrackAdsController.fastTrackLogTag, "appnext banner initializing: " + this.bannerPlacementId);
        this.bannerView = new BannerView(this.context);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, (int) TypedValue.applyDimension(1, 50.0f, this.context.getResources().getDisplayMetrics()));
        this.bannerView.setLayoutParams(layoutParams);
        this.bannerView.setPlacementId(this.bannerPlacementId);
        this.bannerView.setBannerSize(BannerSize.BANNER);
        ProgressBar progressBar = new ProgressBar(this.context);
        this.progressBar = progressBar;
        progressBar.setLayoutParams(layoutParams);
        viewGroup.addView(this.progressBar);
        this.progressBar.setVisibility(0);
        this.bannerView.setBannerListener(new AnonymousClass1(viewGroup, bannerViewRefreshRate));
        Log.d(FastTrackAdsController.fastTrackLogTag, "appnext banner attempt to attach bannerView to container");
        this.bannerViewContainer = viewGroup;
        this.bannerViewContainer.addView(this.bannerView);
        this.handler.post(this.bannerViewRefreshRunnable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAppnextAdapter$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public class AnonymousClass1 extends BannerListener {
        final /* synthetic */ ViewGroup val$bannerViewContainer;
        final /* synthetic */ Integer val$bannerViewRefreshRate;

        AnonymousClass1(ViewGroup viewGroup, Integer num) {
            this.val$bannerViewContainer = viewGroup;
            this.val$bannerViewRefreshRate = num;
        }

        @Override // com.appnext.banners.BannerListener
        public void onError(AppnextError appnextError) {
            Log.d(FastTrackAdsController.fastTrackLogTag, "appnext banner onError: " + appnextError.getErrorMessage());
            FastTrackAppnextAdapter.this.bannerRequestFailReported = true;
            FastTrackAppnextAdapter.this.progressBar.setVisibility(8);
            if (Objects.equals(appnextError.getErrorMessage(), AppnextError.NO_ADS)) {
                FastTrackAppnextAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + FastTrackAppnextAdapter.this.bannerPlacementId);
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_NOFILL, FastTrackAppnextAdapter.this.bannerDetails, FastTrackAppnextAdapter.this.context, true);
            } else {
                FastTrackAppnextAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + FastTrackAppnextAdapter.this.bannerPlacementId + "; error_desc: error code " + appnextError.getErrorMessage());
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_ERROR, FastTrackAppnextAdapter.this.bannerDetails, FastTrackAppnextAdapter.this.context, true);
            }
            super.onError(appnextError);
        }

        @Override // com.appnext.banners.BannerListener
        public void onAdLoaded(String str, AppnextAdCreativeType appnextAdCreativeType) {
            if (this.val$bannerViewContainer != null && FastTrackAppnextAdapter.this.bannerView != null) {
                this.val$bannerViewContainer.setVisibility(0);
                FastTrackAppnextAdapter.this.bannerView.setVisibility(0);
                FastTrackAppnextAdapter.this.progressBar.setVisibility(8);
                FastTrackAppnextAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + FastTrackAppnextAdapter.this.bannerPlacementId);
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_IMPRESSION, FastTrackAppnextAdapter.this.bannerDetails, FastTrackAppnextAdapter.this.context, true);
                FastTrackAppnextAdapter.this.handler.removeCallbacks(FastTrackAppnextAdapter.this.bannerViewRepeatRequestRunnable);
                FastTrackAppnextAdapter.this.handler.removeCallbacks(FastTrackAppnextAdapter.this.bannerViewRefreshRunnable);
                FastTrackAppnextAdapter.this.handler.postDelayed(FastTrackAppnextAdapter.this.bannerViewRefreshRunnable, this.val$bannerViewRefreshRate.intValue());
            } else {
                Log.d(FastTrackAdsController.fastTrackLogTag, "appnext banner loaded, but bannerViewContainer is null");
            }
            Log.d(FastTrackAdsController.fastTrackLogTag, "appnext banner onAdLoaded");
            super.onAdLoaded(str, appnextAdCreativeType);
        }

        @Override // com.appnext.banners.BannerListener
        public void adImpression() {
            Log.d(FastTrackAdsController.fastTrackLogTag, "appnext banner adImpression");
            super.adImpression();
        }

        @Override // com.appnext.banners.BannerListener
        public void onAdClicked() {
            if (!FastTrackAppnextAdapter.this.bannerClickReportedRecently) {
                FastTrackAppnextAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + FastTrackAppnextAdapter.this.bannerPlacementId);
                FastTrackAppnextAdapter.this.bannerClickReportedRecently = true;
                FastTrackAppnextAdapter.this.handler.postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAppnextAdapter$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        FastTrackAppnextAdapter.AnonymousClass1.this.m194x683d17b6();
                    }
                }, 1000L);
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_CLICK, FastTrackAppnextAdapter.this.bannerDetails, FastTrackAppnextAdapter.this.context, true);
                Log.d(FastTrackAdsController.fastTrackLogTag, "appnext banner onAdClicked");
            }
            super.onAdClicked();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onAdClicked$0$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppnextAdapter$1  reason: not valid java name */
        public /* synthetic */ void m194x683d17b6() {
            FastTrackAppnextAdapter.this.bannerClickReportedRecently = false;
        }
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void loadFullscreen() {
        String str = this.fullscreenPlacementId;
        if (str == null || str.isEmpty()) {
            return;
        }
        this.interstitialAd = new Interstitial(this.context, this.fullscreenPlacementId);
        Log.d(FastTrackAdsController.fastTrackLogTag, "appnext fullscreen initializing: " + this.fullscreenPlacementId);
        this.interstitialAd.setOnAdLoadedCallback(new OnAdLoaded() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAppnextAdapter$$ExternalSyntheticLambda0
            @Override // com.appnext.core.callbacks.OnAdLoaded
            public final void adLoaded(String str2, AppnextAdCreativeType appnextAdCreativeType) {
                FastTrackAppnextAdapter.this.m180xd73a17e0(str2, appnextAdCreativeType);
            }
        });
        this.interstitialAd.setOnAdErrorCallback(new OnAdError() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAppnextAdapter$$ExternalSyntheticLambda8
            @Override // com.appnext.core.callbacks.OnAdError
            public final void adError(String str2) {
                FastTrackAppnextAdapter.this.m181xb2fb93a1(str2);
            }
        });
        this.interstitialAd.setOnAdOpenedCallback(new OnAdOpened() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAppnextAdapter$$ExternalSyntheticLambda9
            @Override // com.appnext.core.callbacks.OnAdOpened
            public final void adOpened() {
                FastTrackAppnextAdapter.this.m182x8ebd0f62();
            }
        });
        this.interstitialAd.setOnAdClosedCallback(new OnAdClosed() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAppnextAdapter$$ExternalSyntheticLambda10
            @Override // com.appnext.core.callbacks.OnAdClosed
            public final void onAdClosed() {
                FastTrackAppnextAdapter.this.m183x6a7e8b23();
            }
        });
        this.interstitialAd.setOnAdClickedCallback(new OnAdClicked() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAppnextAdapter$$ExternalSyntheticLambda11
            @Override // com.appnext.core.callbacks.OnAdClicked
            public final void adClicked() {
                FastTrackAppnextAdapter.this.m184x464006e4();
            }
        });
        Log.d(FastTrackAdsController.fastTrackLogTag, "appnext fullscreen attempt to load");
        this.interstitialDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + this.fullscreenPlacementId);
        this.interstitialDetails.put(BrowserActivity.KEY_UNIQ_ID, GuidGenerator.generateNewGuid());
        this.interstitialAd.loadAd();
        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_REQUEST, this.interstitialDetails, this.context, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$loadFullscreen$1$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppnextAdapter  reason: not valid java name */
    public /* synthetic */ void m180xd73a17e0(String str, AppnextAdCreativeType appnextAdCreativeType) {
        if (this.pendingFullscreenRequest && this.isInForeground) {
            this.pendingFullscreenRequest = false;
            Log.d(FastTrackAdsController.fastTrackLogTag, "appnext fullscreen loaded, pending request processing");
            this.handler.removeCallbacks(this.fullscreenPendingRequestCancelRunnable);
            final AppsgeyserProgressDialog appsgeyserProgressDialog = this.progressDialog;
            appsgeyserProgressDialog.show();
            this.handler.postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAppnextAdapter$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    FastTrackAppnextAdapter.this.m179xfb789c1f(appsgeyserProgressDialog);
                }
            }, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        }
        Log.d(FastTrackAdsController.fastTrackLogTag, "appnext fullscreen setOnAdLoadedCallback");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$loadFullscreen$0$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppnextAdapter  reason: not valid java name */
    public /* synthetic */ void m179xfb789c1f(AppsgeyserProgressDialog appsgeyserProgressDialog) {
        try {
            appsgeyserProgressDialog.dismiss();
        } catch (IllegalArgumentException unused) {
            Log.d(FastTrackAdsController.fastTrackLogTag, "progressDialog dismissal IAE");
        }
        this.interstitialAd.showAd();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$loadFullscreen$2$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppnextAdapter  reason: not valid java name */
    public /* synthetic */ void m181xb2fb93a1(String str) {
        if (Objects.equals(str, AppnextError.NO_ADS)) {
            this.interstitialDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + this.fullscreenPlacementId);
            StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_NOFILL, this.interstitialDetails, this.context, true);
        } else {
            this.interstitialDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + this.fullscreenPlacementId + "; error_desc: error code " + str);
            StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_ERROR, this.interstitialDetails, this.context, true);
        }
        this.handler.postDelayed(new FastTrackAppnextAdapter$$ExternalSyntheticLambda14(this), 30000L);
        Log.d(FastTrackAdsController.fastTrackLogTag, "appnext fullscreen OnAdError: " + str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$loadFullscreen$3$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppnextAdapter  reason: not valid java name */
    public /* synthetic */ void m182x8ebd0f62() {
        Log.d(FastTrackAdsController.fastTrackLogTag, "appnext fullscreen OnAdOpened");
        this.interstitialDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + this.fullscreenPlacementId);
        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_IMPRESSION, this.interstitialDetails, this.context, true);
        if (this.fullscreenListener != null) {
            this.fullscreenListener.onShow();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$loadFullscreen$4$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppnextAdapter  reason: not valid java name */
    public /* synthetic */ void m183x6a7e8b23() {
        this.handler.postDelayed(new FastTrackAppnextAdapter$$ExternalSyntheticLambda14(this), 5000L);
        if (this.progressDialog != null && this.progressDialog.isShowing()) {
            try {
                this.progressDialog.dismiss();
            } catch (IllegalArgumentException unused) {
                Log.d(FastTrackAdsController.fastTrackLogTag, "progressDialog dismissal IAE");
            }
        }
        if (this.fullscreenListener != null) {
            this.fullscreenListener.onClose();
        }
        Log.d(FastTrackAdsController.fastTrackLogTag, "appnext fullscreen OnAdClosed");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$loadFullscreen$5$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppnextAdapter  reason: not valid java name */
    public /* synthetic */ void m184x464006e4() {
        Log.d(FastTrackAdsController.fastTrackLogTag, "appnext fullscreen OnAdClicked");
        this.interstitialDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + this.fullscreenPlacementId);
        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_CLICK, this.interstitialDetails, this.context, true);
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void showFullscreen(String str, String str2, boolean z, Context context) {
        if (z && System.currentTimeMillis() - this.preferencesCoder.getPrefLong(Constants.PREFS_APPSGEYSER_FULLSCREEN_LAST_REQUEST_TIMING, 0L) <= getFullscreenFrequencyTimerValue(str2).intValue()) {
            Log.d(FastTrackAdsController.fastTrackLogTag, "appnext fullscreen show request was cancelled due to frequency timing settings");
            return;
        }
        this.preferencesCoder.savePrefLong(Constants.PREFS_APPSGEYSER_FULLSCREEN_LAST_REQUEST_TIMING, System.currentTimeMillis());
        Log.d(FastTrackAdsController.fastTrackLogTag, "appnext fullscreen show request");
        if (this.fullscreenListener != null) {
            this.fullscreenListener.onRequest();
        }
        if (new Random().nextInt(100) + 1 <= getFullscreenIntensityPoints(str2).intValue()) {
            if (this.interstitialAd != null) {
                this.interstitialDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + this.fullscreenPlacementId);
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_ATTEMPT, this.interstitialDetails, context, true);
                if (this.interstitialAd.isAdLoaded()) {
                    Log.d(FastTrackAdsController.fastTrackLogTag, "appnext fullscreen attempt to show");
                    final AppsgeyserProgressDialog appsgeyserProgressDialog = this.progressDialog;
                    appsgeyserProgressDialog.show();
                    this.handler.postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAppnextAdapter$$ExternalSyntheticLambda15
                        @Override // java.lang.Runnable
                        public final void run() {
                            FastTrackAppnextAdapter.this.m193xf0e26c7c(appsgeyserProgressDialog);
                        }
                    }, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                    return;
                }
                Log.d(FastTrackAdsController.fastTrackLogTag, "appnext fullscreen not loaded yet, waiting for load");
                this.pendingFullscreenRequest = true;
                this.handler.postDelayed(this.fullscreenPendingRequestCancelRunnable, getFullscreenPendingDelayTimerValue().intValue());
                return;
            }
            Log.d(FastTrackAdsController.fastTrackLogTag, "appnext fullscreen disabled");
            if (this.fullscreenListener != null) {
                this.fullscreenListener.onFailedToShow();
                return;
            }
            return;
        }
        Log.d(FastTrackAdsController.fastTrackLogTag, "appnext fullscreen attempt to show canceled due to intensity settings");
        if (this.fullscreenListener != null) {
            this.fullscreenListener.onFailedToShow();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$showFullscreen$6$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppnextAdapter  reason: not valid java name */
    public /* synthetic */ void m193xf0e26c7c(AppsgeyserProgressDialog appsgeyserProgressDialog) {
        try {
            appsgeyserProgressDialog.dismiss();
        } catch (IllegalArgumentException unused) {
            Log.d(FastTrackAdsController.fastTrackLogTag, "progressDialog dismissal IAE");
        }
        this.interstitialAd.showAd();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$7$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppnextAdapter  reason: not valid java name */
    public /* synthetic */ void m192xa6d2bf6b() {
        this.pendingFullscreenRequest = false;
        if (this.fullscreenListener != null) {
            this.fullscreenListener.onFailedToShow();
        }
        Log.d(FastTrackAdsController.fastTrackLogTag, "appnext fullscreen not loaded, cancelling wait");
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void loadRewardedVideo() {
        String str = this.rewardedVideoPlacementId;
        if (str == null || str.isEmpty()) {
            return;
        }
        RewardedVideo rewardedVideo = new RewardedVideo(this.context, this.rewardedVideoPlacementId);
        this.rewardedVideoAd = rewardedVideo;
        rewardedVideo.setOnAdLoadedCallback(new OnAdLoaded() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAppnextAdapter$$ExternalSyntheticLambda2
            @Override // com.appnext.core.callbacks.OnAdLoaded
            public final void adLoaded(String str2, AppnextAdCreativeType appnextAdCreativeType) {
                FastTrackAppnextAdapter.this.m189x12c63693(str2, appnextAdCreativeType);
            }
        });
        this.rewardedVideoAd.setOnAdOpenedCallback(new OnAdOpened() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAppnextAdapter$$ExternalSyntheticLambda3
            @Override // com.appnext.core.callbacks.OnAdOpened
            public final void adOpened() {
                FastTrackAppnextAdapter.this.m190xee87b254();
            }
        });
        this.rewardedVideoAd.setOnAdErrorCallback(new OnAdError() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAppnextAdapter$$ExternalSyntheticLambda4
            @Override // com.appnext.core.callbacks.OnAdError
            public final void adError(String str2) {
                FastTrackAppnextAdapter.this.m185x4aa32a6e(str2);
            }
        });
        this.rewardedVideoAd.setOnAdClickedCallback(new OnAdClicked() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAppnextAdapter$$ExternalSyntheticLambda5
            @Override // com.appnext.core.callbacks.OnAdClicked
            public final void adClicked() {
                FastTrackAppnextAdapter.this.m186x2664a62f();
            }
        });
        this.rewardedVideoAd.setOnAdClosedCallback(new OnAdClosed() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAppnextAdapter$$ExternalSyntheticLambda6
            @Override // com.appnext.core.callbacks.OnAdClosed
            public final void onAdClosed() {
                FastTrackAppnextAdapter.this.m187x22621f0();
            }
        });
        this.rewardedVideoAd.setOnVideoEndedCallback(new OnVideoEnded() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAppnextAdapter$$ExternalSyntheticLambda7
            @Override // com.appnext.core.callbacks.OnVideoEnded
            public final void videoEnded() {
                FastTrackAppnextAdapter.this.m188xdde79db1();
            }
        });
        Log.d(FastTrackAdsController.fastTrackLogTag, "appnext rewarded attempt to load");
        this.rewardedDetails.put(StatController.KEY_GET_PARAM_DETAILS, "rewarded id: " + this.rewardedVideoPlacementId);
        this.rewardedDetails.put(BrowserActivity.KEY_UNIQ_ID, GuidGenerator.generateNewGuid());
        this.rewardedVideoAd.loadAd();
        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_REWARDED_SDK_REQUEST, this.rewardedDetails, this.context, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$loadRewardedVideo$8$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppnextAdapter  reason: not valid java name */
    public /* synthetic */ void m189x12c63693(String str, AppnextAdCreativeType appnextAdCreativeType) {
        this.videoDownloadError = false;
        if (this.rewardedVideoListener != null) {
            showRewardedVideo(this.rewardedVideoListener, this.rewardedVideoCurrentPlacement);
        }
        this.handler.removeCallbacks(this.rewardedVideoShowCancelRunnable);
        Log.d(FastTrackAdsController.fastTrackLogTag, "appnext rewarded OnAdLoaded");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$loadRewardedVideo$9$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppnextAdapter  reason: not valid java name */
    public /* synthetic */ void m190xee87b254() {
        if (this.progressDialog != null) {
            this.progressDialog.dismiss();
        }
        this.rewardedDetails.put(StatController.KEY_GET_PARAM_DETAILS, "rewarded id: " + this.rewardedVideoPlacementId);
        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_REWARDED_SDK_IMPRESSION, this.rewardedDetails, this.context, true);
        if (this.rewardedVideoListener != null) {
            this.rewardedVideoListener.onVideoOpened();
        }
        Log.d(FastTrackAdsController.fastTrackLogTag, "appnext rewarded OnAdOpened");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$loadRewardedVideo$10$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppnextAdapter  reason: not valid java name */
    public /* synthetic */ void m185x4aa32a6e(String str) {
        this.videoDownloadError = true;
        if (this.rewardedVideoListener != null) {
            if (this.videoShowRequested) {
                this.rewardedVideoListener.onVideoError(this.context.getResources().getString(R.string.appsgeysersdk_fasttrack_no_rew_video));
                this.videoShowRequested = false;
            }
            this.rewardedVideoListener = null;
        }
        if (Objects.equals(str, AppnextError.NO_ADS)) {
            this.rewardedDetails.put(StatController.KEY_GET_PARAM_DETAILS, "rewarded id: " + this.rewardedVideoPlacementId);
            StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_REWARDED_SDK_NOFILL, this.rewardedDetails, this.context, true);
        } else {
            this.rewardedDetails.put(StatController.KEY_GET_PARAM_DETAILS, "rewarded id: " + this.rewardedVideoPlacementId + "; error_desc: error code " + str);
            StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_REWARDED_SDK_ERROR, this.rewardedDetails, this.context, true);
        }
        this.handler.postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAppnextAdapter$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                FastTrackAppnextAdapter.this.loadRewardedVideo();
            }
        }, 30000L);
        Log.d(FastTrackAdsController.fastTrackLogTag, "appnext rewarded OnAdError: " + str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$loadRewardedVideo$11$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppnextAdapter  reason: not valid java name */
    public /* synthetic */ void m186x2664a62f() {
        this.rewardedDetails.put(StatController.KEY_GET_PARAM_DETAILS, "rewarded id: " + this.rewardedVideoPlacementId);
        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_REWARDED_SDK_CLICK, this.rewardedDetails, this.context, true);
        if (this.rewardedVideoListener != null) {
            this.rewardedVideoListener.onVideoClicked();
        }
        Log.d(FastTrackAdsController.fastTrackLogTag, "appnext rewarded OnAdClicked");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$loadRewardedVideo$12$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppnextAdapter  reason: not valid java name */
    public /* synthetic */ void m187x22621f0() {
        if (this.rewardedVideoListener != null) {
            this.rewardedVideoListener.onVideoClosed();
            this.rewardedVideoListener = null;
        }
        loadRewardedVideo();
        Log.d(FastTrackAdsController.fastTrackLogTag, "appnext rewarded OnAdClosed");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$loadRewardedVideo$13$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppnextAdapter  reason: not valid java name */
    public /* synthetic */ void m188xdde79db1() {
        if (this.rewardedVideoListener != null) {
            this.rewardedVideoListener.onVideoFinished();
        }
        this.rewardedDetails.put(StatController.KEY_GET_PARAM_DETAILS, "rewarded id: " + this.rewardedVideoPlacementId);
        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_REWARDED_SDK_COMPLETION, this.rewardedDetails, this.context, true);
        Log.d(FastTrackAdsController.fastTrackLogTag, "appnext rewarded OnVideoEnded");
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void showRewardedVideo(FastTrackBaseAdapter.RewardedVideoListener rewardedVideoListener, String str) {
        this.rewardedVideoListener = rewardedVideoListener;
        this.rewardedVideoCurrentPlacement = str;
        if (getRewardedVideoActivationStatus(str).booleanValue()) {
            if (this.rewardedVideoAd.isAdLoaded()) {
                this.videoShowRequested = true;
                this.rewardedVideoAd.showAd();
                return;
            } else if (this.videoDownloadError) {
                this.rewardedVideoListener.onVideoError(this.context.getResources().getString(R.string.appsgeysersdk_fasttrack_no_rew_video));
                this.rewardedVideoListener = null;
                return;
            } else {
                if (this.progressDialog == null) {
                    this.progressDialog = new AppsgeyserProgressDialog(this.context);
                }
                this.progressDialog.show();
                this.handler.postDelayed(this.rewardedVideoShowCancelRunnable, 10000L);
                return;
            }
        }
        Log.d(FastTrackAdsController.fastTrackLogTag, "Rewarded video placement disabled");
        this.rewardedVideoListener.onVideoDeactivated();
        this.rewardedVideoListener = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$14$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppnextAdapter  reason: not valid java name */
    public /* synthetic */ void m191x439ba7f9() {
        this.progressDialog.dismiss();
        this.progressDialog = null;
        if (this.rewardedVideoListener != null) {
            this.rewardedVideoListener.onVideoError(this.context.getResources().getString(R.string.appsgeysersdk_fasttrack_no_rew_video));
            this.rewardedVideoListener = null;
        }
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public List<Object> getNativeAds(int i) {
        return new ArrayList();
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void onResume(Context context) {
        super.onResume(context);
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void onPause() {
        super.onPause();
        if (this.bannerView != null) {
            if (this.bannerViewContainer != null) {
                Log.d(FastTrackAdsController.fastTrackLogTag, "appnext banner attempt to detach bannerView from container");
                this.bannerViewContainer.removeView(this.bannerView);
                this.bannerViewContainer.removeView(this.progressBar);
                this.bannerViewContainer = null;
            }
            this.bannerView.setBannerListener(null);
            this.bannerView.destroy();
            this.bannerView = null;
            this.progressBar = null;
        }
        this.handler.removeCallbacks(this.bannerViewRepeatRequestRunnable);
        this.handler.removeCallbacks(this.bannerViewRefreshRunnable);
    }
}
