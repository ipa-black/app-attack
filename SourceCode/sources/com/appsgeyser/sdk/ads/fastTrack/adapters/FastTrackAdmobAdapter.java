package com.appsgeyser.sdk.ads.fastTrack.adapters;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.appsgeyser.sdk.BrowserActivity;
import com.appsgeyser.sdk.GuidGenerator;
import com.appsgeyser.sdk.R;
import com.appsgeyser.sdk.ads.fastTrack.FastTrackAdsController;
import com.appsgeyser.sdk.ads.fastTrack.FastTrackSdkModel;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAdmobAdapter;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter;
import com.appsgeyser.sdk.configuration.Constants;
import com.appsgeyser.sdk.server.StatController;
import com.appsgeyser.sdk.ui.AppsgeyserProgressDialog;
import com.appsgeyser.sdk.utils.admobnative.AdmobNativeBannerMedium;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
/* loaded from: classes2.dex */
public class FastTrackAdmobAdapter extends FastTrackBaseAdapter {
    private AdLoader adLoader;
    private String bannerPlacementId;
    private boolean bannerRequestFailReported;
    private AdView bannerView;
    private Runnable bannerViewRefreshRunnable;
    private Runnable bannerViewRepeatRequestRunnable;
    private Bundle extras;
    private boolean fsRequestsBlocked;
    private Runnable fullscreenPendingRequestCancelRunnable;
    private String fullscreenPlacementId;
    private InterstitialAd interstitialAd;
    private ArrayList<NativeAd> nativeAdCache;
    private String nativeAdsPlacementId;
    private RewardedAd rewardedVideoAd;
    private String rewardedVideoPlacementId;
    private Runnable rewardedVideoShowCancelRunnable;
    private int unsuccessfulFsRequestsCount;

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void onDestroy() {
    }

    public FastTrackAdmobAdapter(FastTrackSdkModel fastTrackSdkModel, Context context) {
        super(fastTrackSdkModel, context);
        this.nativeAdCache = new ArrayList<>();
        this.bannerViewRefreshRunnable = new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAdmobAdapter.3
            @Override // java.lang.Runnable
            public void run() {
                if (FastTrackAdmobAdapter.this.bannerView != null) {
                    Log.d(FastTrackAdsController.fastTrackLogTag, "admob banner attempt to load");
                    FastTrackAdmobAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + FastTrackAdmobAdapter.this.bannerPlacementId);
                    FastTrackAdmobAdapter.this.bannerDetails.put(BrowserActivity.KEY_UNIQ_ID, GuidGenerator.generateNewGuid());
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_REQUEST, FastTrackAdmobAdapter.this.bannerDetails, FastTrackAdmobAdapter.this.context, true);
                    FastTrackAdmobAdapter.this.bannerView.loadAd(new AdRequest.Builder().build());
                    FastTrackAdmobAdapter.this.bannerRequestFailReported = false;
                    FastTrackAdmobAdapter.this.handler.postDelayed(FastTrackAdmobAdapter.this.bannerViewRepeatRequestRunnable, 60000L);
                    return;
                }
                Log.d(FastTrackAdsController.fastTrackLogTag, "admob banner attempt to load failed: bannerView null");
            }
        };
        this.bannerViewRepeatRequestRunnable = new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAdmobAdapter.4
            @Override // java.lang.Runnable
            public void run() {
                if (FastTrackAdmobAdapter.this.bannerView != null) {
                    Log.d(FastTrackAdsController.fastTrackLogTag, "admob banner repeat attempt to load");
                    FastTrackAdmobAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + FastTrackAdmobAdapter.this.bannerPlacementId);
                    if (!FastTrackAdmobAdapter.this.bannerRequestFailReported) {
                        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_NOFILL, FastTrackAdmobAdapter.this.bannerDetails, FastTrackAdmobAdapter.this.context, true);
                    }
                    FastTrackAdmobAdapter.this.bannerDetails.put(BrowserActivity.KEY_UNIQ_ID, GuidGenerator.generateNewGuid());
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_REQUEST, FastTrackAdmobAdapter.this.bannerDetails, FastTrackAdmobAdapter.this.context, true);
                    FastTrackAdmobAdapter.this.bannerView.loadAd(new AdRequest.Builder().addNetworkExtrasBundle(AdMobAdapter.class, FastTrackAdmobAdapter.this.extras != null ? FastTrackAdmobAdapter.this.extras : new Bundle()).build());
                    FastTrackAdmobAdapter.this.bannerRequestFailReported = false;
                    FastTrackAdmobAdapter.this.handler.postDelayed(FastTrackAdmobAdapter.this.bannerViewRepeatRequestRunnable, 60000L);
                }
            }
        };
        this.fullscreenPendingRequestCancelRunnable = new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAdmobAdapter$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                FastTrackAdmobAdapter.this.m171x6e0f8bdd();
            }
        };
        this.rewardedVideoShowCancelRunnable = new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAdmobAdapter$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                FastTrackAdmobAdapter.this.m172x98e7bdf();
            }
        };
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    protected void init() {
        this.fullscreenPlacementId = this.fastTrackSdkModel.getFullscreenPlacementId();
        this.bannerPlacementId = this.fastTrackSdkModel.getBannerPlacementId();
        this.rewardedVideoPlacementId = this.fastTrackSdkModel.getRewardedVideoPlacementId();
        this.nativeAdsPlacementId = this.fastTrackSdkModel.getNativeAdsPlacementId();
        MobileAds.initialize(this.context.getApplicationContext(), new OnInitializationCompleteListener() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAdmobAdapter.1
            @Override // com.google.android.gms.ads.initialization.OnInitializationCompleteListener
            public void onInitializationComplete(InitializationStatus initializationStatus) {
                FastTrackAdmobAdapter.this.loadFullscreen();
                FastTrackAdmobAdapter.this.loadRewardedVideo();
                Log.d(FastTrackAdsController.fastTrackLogTag, "Admob SDK onInitializationComplete");
            }
        });
        initNativeAdListener();
        String str = this.fullscreenPlacementId;
        if (str != null && !str.isEmpty()) {
            this.interstitialDetails.putAll(this.appDetails);
            if (this.fastTrackSdkModel.isCustomFullscreenActivated()) {
                this.interstitialDetails.put("ad_source", StatController.FT_NETWORK_ADMOB_CUSTOM);
                this.interstitialDetails.put("net_name", StatController.FT_NETWORK_ADMOB_CUSTOM);
                this.interstitialDetails.put("net_name_FS", StatController.FT_NETWORK_ADMOB_CUSTOM);
                Log.d(FastTrackAdsController.fastTrackLogTag, "admob fullscreen: custom");
            } else {
                this.interstitialDetails.put("ad_source", StatController.FT_NETWORK_ADMOB);
                this.interstitialDetails.put("net_name", StatController.FT_NETWORK_ADMOB);
                this.interstitialDetails.put("net_name_FS", StatController.FT_NETWORK_ADMOB);
                Log.d(FastTrackAdsController.fastTrackLogTag, "admob fullscreen: platform");
            }
        } else {
            Log.d(FastTrackAdsController.fastTrackLogTag, "admob fullscreen disabled");
        }
        String str2 = this.bannerPlacementId;
        if (str2 != null && !str2.isEmpty()) {
            this.bannerDetails.putAll(this.appDetails);
            if (this.fastTrackSdkModel.isCustomBannerActivated()) {
                this.bannerDetails.put("ad_source", StatController.FT_NETWORK_ADMOB_CUSTOM);
                this.bannerDetails.put("net_name", StatController.FT_NETWORK_ADMOB_CUSTOM);
                this.bannerDetails.put("net_name_FS", StatController.FT_NETWORK_ADMOB_CUSTOM);
                Log.d(FastTrackAdsController.fastTrackLogTag, "admob banner: custom");
            } else {
                this.bannerDetails.put("ad_source", StatController.FT_NETWORK_ADMOB);
                this.bannerDetails.put("net_name", StatController.FT_NETWORK_ADMOB);
                this.bannerDetails.put("net_name_FS", StatController.FT_NETWORK_ADMOB);
                Log.d(FastTrackAdsController.fastTrackLogTag, "admob banner: platform");
            }
        } else {
            Log.d(FastTrackAdsController.fastTrackLogTag, "admob banner disabled");
        }
        String str3 = this.rewardedVideoPlacementId;
        if (str3 != null && !str3.isEmpty()) {
            this.rewardedDetails.putAll(this.appDetails);
            if (this.fastTrackSdkModel.isCustomRewardedActivated()) {
                this.rewardedDetails.put("ad_source", StatController.FT_NETWORK_ADMOB_CUSTOM);
                this.rewardedDetails.put("net_name", StatController.FT_NETWORK_ADMOB_CUSTOM);
                this.rewardedDetails.put("net_name_FS", StatController.FT_NETWORK_ADMOB_CUSTOM);
                Log.d(FastTrackAdsController.fastTrackLogTag, "admob rewarded: custom");
            } else {
                this.rewardedDetails.put("ad_source", StatController.FT_NETWORK_ADMOB);
                this.rewardedDetails.put("net_name", StatController.FT_NETWORK_ADMOB);
                this.rewardedDetails.put("net_name_FS", StatController.FT_NETWORK_ADMOB);
                Log.d(FastTrackAdsController.fastTrackLogTag, "admob rewarded: platform");
            }
        } else {
            Log.d(FastTrackAdsController.fastTrackLogTag, "admob rewarded disabled");
        }
        String str4 = this.nativeAdsPlacementId;
        if (str4 != null && !str4.isEmpty()) {
            this.nativeAdsDetails.putAll(this.appDetails);
            if (this.fastTrackSdkModel.isCustomRewardedActivated()) {
                this.nativeAdsDetails.put("ad_source", StatController.FT_NETWORK_ADMOB_CUSTOM);
                this.nativeAdsDetails.put("net_name", StatController.FT_NETWORK_ADMOB_CUSTOM);
                this.nativeAdsDetails.put("net_name_FS", StatController.FT_NETWORK_ADMOB_CUSTOM);
                Log.d(FastTrackAdsController.fastTrackLogTag, "admob native: custom");
            } else {
                this.nativeAdsDetails.put("ad_source", StatController.FT_NETWORK_ADMOB);
                this.nativeAdsDetails.put("net_name", StatController.FT_NETWORK_ADMOB);
                this.nativeAdsDetails.put("net_name_FS", StatController.FT_NETWORK_ADMOB);
                Log.d(FastTrackAdsController.fastTrackLogTag, "admob native: platform");
            }
        } else {
            Log.d(FastTrackAdsController.fastTrackLogTag, "admob native disabled");
        }
        String contentRating = this.fastTrackSdkModel.getContentRating();
        this.extras = new Bundle();
        if (contentRating == null || contentRating.isEmpty()) {
            return;
        }
        this.extras.putSerializable("max_ad_content_rating", contentRating);
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void initBannerView(final ViewGroup viewGroup, String str, Activity activity) {
        final Integer bannerViewRefreshRate = getBannerViewRefreshRate(str);
        String str2 = this.bannerPlacementId;
        if (str2 == null || str2.isEmpty() || bannerViewRefreshRate.intValue() == 0) {
            return;
        }
        Log.d(FastTrackAdsController.fastTrackLogTag, "admob banner initializing: " + this.bannerPlacementId);
        AdView adView = new AdView(this.context);
        this.bannerView = adView;
        adView.setAdSize(AdSize.SMART_BANNER);
        this.bannerView.setAdUnitId(this.bannerPlacementId);
        this.bannerView.setAdListener(new AdListener() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAdmobAdapter.2
            @Override // com.google.android.gms.ads.AdListener
            public void onAdClosed() {
                super.onAdClosed();
                Log.d(FastTrackAdsController.fastTrackLogTag, "admob banner onAdClosed");
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdFailedToLoad(LoadAdError loadAdError) {
                super.onAdFailedToLoad(loadAdError);
                if (loadAdError.getCode() == 3) {
                    FastTrackAdmobAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + FastTrackAdmobAdapter.this.bannerPlacementId);
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_NOFILL, FastTrackAdmobAdapter.this.bannerDetails, FastTrackAdmobAdapter.this.context, true);
                } else {
                    FastTrackAdmobAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + FastTrackAdmobAdapter.this.bannerPlacementId + "; error_desc: error code " + loadAdError.getCode());
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_ERROR, FastTrackAdmobAdapter.this.bannerDetails, FastTrackAdmobAdapter.this.context, true);
                }
                FastTrackAdmobAdapter.this.bannerRequestFailReported = true;
                Log.d(FastTrackAdsController.fastTrackLogTag, "admob banner onAdFailedToLoad: " + loadAdError.getCode());
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdClicked() {
                super.onAdClicked();
                FastTrackAdmobAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + FastTrackAdmobAdapter.this.bannerPlacementId);
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_CLICK, FastTrackAdmobAdapter.this.bannerDetails, FastTrackAdmobAdapter.this.context, true);
                Log.d(FastTrackAdsController.fastTrackLogTag, "admob banner onAdClicked");
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdOpened() {
                super.onAdOpened();
                Log.d(FastTrackAdsController.fastTrackLogTag, "admob banner onAdOpened");
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdLoaded() {
                super.onAdLoaded();
                if (viewGroup != null && FastTrackAdmobAdapter.this.bannerView != null) {
                    FastTrackAdmobAdapter.this.bannerDetails.put(StatController.KEY_GET_PARAM_DETAILS, "banner id: " + FastTrackAdmobAdapter.this.bannerPlacementId);
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_IMPRESSION, FastTrackAdmobAdapter.this.bannerDetails, FastTrackAdmobAdapter.this.context, true);
                    viewGroup.setVisibility(0);
                    FastTrackAdmobAdapter.this.handler.removeCallbacks(FastTrackAdmobAdapter.this.bannerViewRepeatRequestRunnable);
                    FastTrackAdmobAdapter.this.handler.removeCallbacks(FastTrackAdmobAdapter.this.bannerViewRefreshRunnable);
                    FastTrackAdmobAdapter.this.handler.postDelayed(FastTrackAdmobAdapter.this.bannerViewRefreshRunnable, bannerViewRefreshRate.intValue());
                } else {
                    Log.d(FastTrackAdsController.fastTrackLogTag, "admob banner loaded, but bannerViewContainer is null");
                }
                Log.d(FastTrackAdsController.fastTrackLogTag, "admob banner onAdLoaded");
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdImpression() {
                super.onAdImpression();
                Log.d(FastTrackAdsController.fastTrackLogTag, "admob banner onAdImpression");
            }
        });
        Log.d(FastTrackAdsController.fastTrackLogTag, "admob banner attempt to attach bannerView to container");
        this.bannerViewContainer = viewGroup;
        this.bannerViewContainer.addView(this.bannerView);
        this.handler.post(this.bannerViewRefreshRunnable);
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void loadFullscreen() {
        String str = this.fullscreenPlacementId;
        if (str == null || str.isEmpty()) {
            return;
        }
        if (!this.fsRequestsBlocked) {
            int i = this.unsuccessfulFsRequestsCount + 1;
            this.unsuccessfulFsRequestsCount = i;
            if (i >= 3) {
                this.fsRequestsBlocked = true;
                this.handler.postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAdmobAdapter$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        FastTrackAdmobAdapter.this.m170x58ea5d96();
                    }
                }, 1200000L);
                return;
            }
            AnonymousClass5 anonymousClass5 = new AnonymousClass5();
            Log.d(FastTrackAdsController.fastTrackLogTag, "admob fullscreen attempt to load");
            this.interstitialDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + this.fullscreenPlacementId);
            this.interstitialDetails.put(BrowserActivity.KEY_UNIQ_ID, GuidGenerator.generateNewGuid());
            Context context = this.context;
            String str2 = this.fullscreenPlacementId;
            AdRequest.Builder builder = new AdRequest.Builder();
            Bundle bundle = this.extras;
            if (bundle == null) {
                bundle = new Bundle();
            }
            InterstitialAd.load(context, str2, builder.addNetworkExtrasBundle(AdMobAdapter.class, bundle).build(), anonymousClass5);
            StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_REQUEST, this.interstitialDetails, this.context, true);
            return;
        }
        Log.d(FastTrackAdsController.fastTrackLogTag, "admob fullscreen attempt to load aborted due to repeating load fails");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$loadFullscreen$0$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAdmobAdapter  reason: not valid java name */
    public /* synthetic */ void m170x58ea5d96() {
        this.unsuccessfulFsRequestsCount = 0;
        this.fsRequestsBlocked = false;
        loadFullscreen();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAdmobAdapter$5  reason: invalid class name */
    /* loaded from: classes2.dex */
    public class AnonymousClass5 extends InterstitialAdLoadCallback {
        AnonymousClass5() {
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdLoaded(InterstitialAd interstitialAd) {
            super.onAdLoaded((AnonymousClass5) FastTrackAdmobAdapter.this.interstitialAd);
            FastTrackAdmobAdapter.this.unsuccessfulFsRequestsCount = 0;
            FastTrackAdmobAdapter.this.interstitialAd = interstitialAd;
            FastTrackAdmobAdapter.this.interstitialAd.setFullScreenContentCallback(new FullScreenContentCallback() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAdmobAdapter.5.1
                @Override // com.google.android.gms.ads.FullScreenContentCallback
                public void onAdFailedToShowFullScreenContent(AdError adError) {
                    super.onAdFailedToShowFullScreenContent(adError);
                    Log.d(FastTrackAdsController.fastTrackLogTag, "admob fs onAdFailedToShowFullScreenContent");
                }

                @Override // com.google.android.gms.ads.FullScreenContentCallback
                public void onAdShowedFullScreenContent() {
                    super.onAdShowedFullScreenContent();
                    FastTrackAdmobAdapter.this.interstitialDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + FastTrackAdmobAdapter.this.fullscreenPlacementId);
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_IMPRESSION, FastTrackAdmobAdapter.this.interstitialDetails, FastTrackAdmobAdapter.this.context, true);
                    if (FastTrackAdmobAdapter.this.fullscreenListener != null) {
                        FastTrackAdmobAdapter.this.fullscreenListener.onShow();
                    }
                    Log.d(FastTrackAdsController.fastTrackLogTag, "admob fs onAdShowedFullScreenContent");
                }

                @Override // com.google.android.gms.ads.FullScreenContentCallback
                public void onAdDismissedFullScreenContent() {
                    super.onAdDismissedFullScreenContent();
                    if (FastTrackAdmobAdapter.this.progressDialog != null && FastTrackAdmobAdapter.this.progressDialog.isShowing()) {
                        try {
                            FastTrackAdmobAdapter.this.progressDialog.dismiss();
                        } catch (IllegalArgumentException unused) {
                            Log.d(FastTrackAdsController.fastTrackLogTag, "progressDialog dismissal IAE");
                        }
                    }
                    if (FastTrackAdmobAdapter.this.fullscreenListener != null) {
                        FastTrackAdmobAdapter.this.fullscreenListener.onClose();
                    }
                    FastTrackAdmobAdapter.this.interstitialAd = null;
                    FastTrackAdmobAdapter.this.loadFullscreen();
                    Log.d(FastTrackAdsController.fastTrackLogTag, "admob fs onAdDismissedFullScreenContent");
                }

                @Override // com.google.android.gms.ads.FullScreenContentCallback
                public void onAdImpression() {
                    super.onAdImpression();
                    Log.d(FastTrackAdsController.fastTrackLogTag, "admob fs onAdImpression");
                }

                @Override // com.google.android.gms.ads.FullScreenContentCallback
                public void onAdClicked() {
                    super.onAdClicked();
                    FastTrackAdmobAdapter.this.interstitialDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + FastTrackAdmobAdapter.this.fullscreenPlacementId);
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_CLICK, FastTrackAdmobAdapter.this.interstitialDetails, FastTrackAdmobAdapter.this.context, true);
                    Log.d(FastTrackAdsController.fastTrackLogTag, "admob fs onAdClicked");
                }
            });
            if (FastTrackAdmobAdapter.this.pendingFullscreenRequest && FastTrackAdmobAdapter.this.isInForeground) {
                FastTrackAdmobAdapter.this.pendingFullscreenRequest = false;
                Log.d(FastTrackAdsController.fastTrackLogTag, "admob fullscreen loaded, pending request processing");
                FastTrackAdmobAdapter.this.handler.removeCallbacks(FastTrackAdmobAdapter.this.fullscreenPendingRequestCancelRunnable);
                final AppsgeyserProgressDialog appsgeyserProgressDialog = FastTrackAdmobAdapter.this.progressDialog;
                appsgeyserProgressDialog.show();
                FastTrackAdmobAdapter.this.handler.postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAdmobAdapter$5$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        FastTrackAdmobAdapter.AnonymousClass5.this.m176x565a07ed(appsgeyserProgressDialog);
                    }
                }, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
            }
            Log.d(FastTrackAdsController.fastTrackLogTag, "admob fs onAdLoaded");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onAdLoaded$0$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAdmobAdapter$5  reason: not valid java name */
        public /* synthetic */ void m176x565a07ed(AppsgeyserProgressDialog appsgeyserProgressDialog) {
            try {
                appsgeyserProgressDialog.dismiss();
            } catch (IllegalArgumentException unused) {
                Log.d(FastTrackAdsController.fastTrackLogTag, "progressDialog dismissal IAE");
            }
            FastTrackAdmobAdapter.this.interstitialAd.show((Activity) FastTrackAdmobAdapter.this.context);
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdFailedToLoad(LoadAdError loadAdError) {
            super.onAdFailedToLoad(loadAdError);
            if (loadAdError.getCode() == 3) {
                FastTrackAdmobAdapter.this.interstitialDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + FastTrackAdmobAdapter.this.fullscreenPlacementId);
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_NOFILL, FastTrackAdmobAdapter.this.interstitialDetails, FastTrackAdmobAdapter.this.context, true);
            } else {
                FastTrackAdmobAdapter.this.interstitialDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + FastTrackAdmobAdapter.this.fullscreenPlacementId + "; error_desc: error code " + loadAdError.getCode());
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_ERROR, FastTrackAdmobAdapter.this.interstitialDetails, FastTrackAdmobAdapter.this.context, true);
            }
            FastTrackAdmobAdapter.this.interstitialAd = null;
            FastTrackAdmobAdapter.this.handler.postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAdmobAdapter$5$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    FastTrackAdmobAdapter.AnonymousClass5.this.m175x46e62c87();
                }
            }, 30000L);
            Log.d(FastTrackAdsController.fastTrackLogTag, "admob fs onAdFailedToLoad " + loadAdError.getCode());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onAdFailedToLoad$1$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAdmobAdapter$5  reason: not valid java name */
        public /* synthetic */ void m175x46e62c87() {
            FastTrackAdmobAdapter.this.loadFullscreen();
        }
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void showFullscreen(String str, String str2, boolean z, final Context context) {
        if (z && System.currentTimeMillis() - this.preferencesCoder.getPrefLong(Constants.PREFS_APPSGEYSER_FULLSCREEN_LAST_REQUEST_TIMING, 0L) <= getFullscreenFrequencyTimerValue(str2).intValue()) {
            Log.d(FastTrackAdsController.fastTrackLogTag, "admob fullscreen show request was cancelled due to frequency timing settings");
            return;
        }
        this.preferencesCoder.savePrefLong(Constants.PREFS_APPSGEYSER_FULLSCREEN_LAST_REQUEST_TIMING, System.currentTimeMillis());
        Log.d(FastTrackAdsController.fastTrackLogTag, "admob fullscreen show request");
        if (this.fullscreenListener != null) {
            this.fullscreenListener.onRequest();
        }
        if (new Random().nextInt(100) + 1 <= getFullscreenIntensityPoints(str2).intValue()) {
            String str3 = this.fullscreenPlacementId;
            if (str3 != null && !str3.isEmpty()) {
                this.interstitialDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + this.fullscreenPlacementId);
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_ATTEMPT, this.interstitialDetails, context, true);
                if (this.interstitialAd != null) {
                    Log.d(FastTrackAdsController.fastTrackLogTag, "admob fullscreen attempt to show");
                    final AppsgeyserProgressDialog appsgeyserProgressDialog = this.progressDialog;
                    appsgeyserProgressDialog.show();
                    this.handler.postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAdmobAdapter$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            FastTrackAdmobAdapter.this.m173xf399492e(appsgeyserProgressDialog, context);
                        }
                    }, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                    return;
                }
                Log.d(FastTrackAdsController.fastTrackLogTag, "admob fullscreen not loaded yet, waiting for load");
                this.pendingFullscreenRequest = true;
                this.handler.postDelayed(this.fullscreenPendingRequestCancelRunnable, getFullscreenPendingDelayTimerValue().intValue());
                return;
            }
            Log.d(FastTrackAdsController.fastTrackLogTag, "admob fullscreen disabled");
            if (this.fullscreenListener != null) {
                this.fullscreenListener.onFailedToShow();
                return;
            }
            return;
        }
        Log.d(FastTrackAdsController.fastTrackLogTag, "admob fullscreen attempt to show canceled due to intensity settings");
        if (this.fullscreenListener != null) {
            this.fullscreenListener.onFailedToShow();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$showFullscreen$1$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAdmobAdapter  reason: not valid java name */
    public /* synthetic */ void m173xf399492e(AppsgeyserProgressDialog appsgeyserProgressDialog, Context context) {
        try {
            appsgeyserProgressDialog.dismiss();
        } catch (IllegalArgumentException unused) {
            Log.d(FastTrackAdsController.fastTrackLogTag, "progressDialog dismissal IAE");
        }
        this.interstitialAd.show((Activity) context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$2$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAdmobAdapter  reason: not valid java name */
    public /* synthetic */ void m171x6e0f8bdd() {
        this.pendingFullscreenRequest = false;
        if (this.fullscreenListener != null) {
            this.fullscreenListener.onFailedToShow();
        }
        Log.d(FastTrackAdsController.fastTrackLogTag, "admob fullscreen not loaded, cancelling wait");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAdmobAdapter$6  reason: invalid class name */
    /* loaded from: classes2.dex */
    public class AnonymousClass6 extends RewardedAdLoadCallback {
        AnonymousClass6() {
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdLoaded(RewardedAd rewardedAd) {
            super.onAdLoaded((AnonymousClass6) rewardedAd);
            FastTrackAdmobAdapter.this.rewardedVideoAd = rewardedAd;
            FastTrackAdmobAdapter.this.rewardedVideoAd.setFullScreenContentCallback(new FullScreenContentCallback() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAdmobAdapter.6.1
                @Override // com.google.android.gms.ads.FullScreenContentCallback
                public void onAdFailedToShowFullScreenContent(AdError adError) {
                    super.onAdFailedToShowFullScreenContent(adError);
                }

                @Override // com.google.android.gms.ads.FullScreenContentCallback
                public void onAdShowedFullScreenContent() {
                    super.onAdShowedFullScreenContent();
                    FastTrackAdmobAdapter.this.progressDialog.dismiss();
                    FastTrackAdmobAdapter.this.rewardedDetails.put(StatController.KEY_GET_PARAM_DETAILS, "rewarded id: " + FastTrackAdmobAdapter.this.rewardedVideoPlacementId);
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_REWARDED_SDK_IMPRESSION, FastTrackAdmobAdapter.this.rewardedDetails, FastTrackAdmobAdapter.this.context, true);
                    FastTrackAdmobAdapter.this.videoShowRequested = false;
                    if (FastTrackAdmobAdapter.this.rewardedVideoListener != null) {
                        FastTrackAdmobAdapter.this.rewardedVideoListener.onVideoOpened();
                    }
                    Log.d(FastTrackAdsController.fastTrackLogTag, "admob rewarded onAdShowedFullScreenContent");
                }

                @Override // com.google.android.gms.ads.FullScreenContentCallback
                public void onAdDismissedFullScreenContent() {
                    super.onAdDismissedFullScreenContent();
                    if (FastTrackAdmobAdapter.this.rewardedVideoListener != null) {
                        FastTrackAdmobAdapter.this.rewardedVideoListener.onVideoClosed();
                        FastTrackAdmobAdapter.this.rewardedVideoListener = null;
                    }
                    FastTrackAdmobAdapter.this.rewardedVideoAd = null;
                    FastTrackAdmobAdapter.this.loadRewardedVideo();
                    Log.d(FastTrackAdsController.fastTrackLogTag, "admob rewarded onRewardedVideoAdClosed");
                }

                @Override // com.google.android.gms.ads.FullScreenContentCallback
                public void onAdImpression() {
                    super.onAdImpression();
                }

                @Override // com.google.android.gms.ads.FullScreenContentCallback
                public void onAdClicked() {
                    super.onAdClicked();
                }
            });
            FastTrackAdmobAdapter.this.videoDownloadError = false;
            if (FastTrackAdmobAdapter.this.rewardedVideoListener != null) {
                FastTrackAdmobAdapter fastTrackAdmobAdapter = FastTrackAdmobAdapter.this;
                fastTrackAdmobAdapter.showRewardedVideo(fastTrackAdmobAdapter.rewardedVideoListener, FastTrackAdmobAdapter.this.rewardedVideoCurrentPlacement);
            }
            FastTrackAdmobAdapter.this.handler.removeCallbacks(FastTrackAdmobAdapter.this.rewardedVideoShowCancelRunnable);
            Log.d(FastTrackAdsController.fastTrackLogTag, "admob rewarded onAdLoaded");
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdFailedToLoad(LoadAdError loadAdError) {
            super.onAdFailedToLoad(loadAdError);
            FastTrackAdmobAdapter.this.videoDownloadError = true;
            if (FastTrackAdmobAdapter.this.rewardedVideoListener != null) {
                if (FastTrackAdmobAdapter.this.videoShowRequested) {
                    FastTrackAdmobAdapter.this.rewardedVideoListener.onVideoError(FastTrackAdmobAdapter.this.context.getResources().getString(R.string.appsgeysersdk_fasttrack_no_rew_video));
                    FastTrackAdmobAdapter.this.videoShowRequested = false;
                }
                FastTrackAdmobAdapter.this.rewardedVideoListener = null;
            }
            if (loadAdError.getCode() == 3) {
                FastTrackAdmobAdapter.this.rewardedDetails.put(StatController.KEY_GET_PARAM_DETAILS, "rewarded id: " + FastTrackAdmobAdapter.this.rewardedVideoPlacementId);
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_REWARDED_SDK_NOFILL, FastTrackAdmobAdapter.this.rewardedDetails, FastTrackAdmobAdapter.this.context, true);
            } else {
                FastTrackAdmobAdapter.this.rewardedDetails.put(StatController.KEY_GET_PARAM_DETAILS, "rewarded id: " + FastTrackAdmobAdapter.this.rewardedVideoPlacementId + "; error_desc: error code " + loadAdError.getCode());
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_REWARDED_SDK_ERROR, FastTrackAdmobAdapter.this.rewardedDetails, FastTrackAdmobAdapter.this.context, true);
            }
            FastTrackAdmobAdapter.this.rewardedVideoAd = null;
            FastTrackAdmobAdapter.this.handler.postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAdmobAdapter$6$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    FastTrackAdmobAdapter.AnonymousClass6.this.m177x6b24b0c7();
                }
            }, 30000L);
            Log.d(FastTrackAdsController.fastTrackLogTag, "admob rewarded onAdFailedToLoad: " + loadAdError.getCode());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onAdFailedToLoad$0$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAdmobAdapter$6  reason: not valid java name */
        public /* synthetic */ void m177x6b24b0c7() {
            FastTrackAdmobAdapter.this.loadRewardedVideo();
        }
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void loadRewardedVideo() {
        String str = this.rewardedVideoPlacementId;
        if (str == null || str.isEmpty()) {
            return;
        }
        AnonymousClass6 anonymousClass6 = new AnonymousClass6();
        Log.d(FastTrackAdsController.fastTrackLogTag, "admob rewarded attempt to load");
        this.rewardedDetails.put(StatController.KEY_GET_PARAM_DETAILS, "rewarded id: " + this.rewardedVideoPlacementId);
        this.rewardedDetails.put(BrowserActivity.KEY_UNIQ_ID, GuidGenerator.generateNewGuid());
        Context context = this.context;
        String str2 = this.rewardedVideoPlacementId;
        AdRequest.Builder builder = new AdRequest.Builder();
        Bundle bundle = this.extras;
        if (bundle == null) {
            bundle = new Bundle();
        }
        RewardedAd.load(context, str2, builder.addNetworkExtrasBundle(AdMobAdapter.class, bundle).build(), anonymousClass6);
        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_REWARDED_SDK_REQUEST, this.rewardedDetails, this.context, true);
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void showRewardedVideo(final FastTrackBaseAdapter.RewardedVideoListener rewardedVideoListener, String str) {
        this.rewardedVideoListener = rewardedVideoListener;
        this.rewardedVideoCurrentPlacement = str;
        String str2 = this.rewardedVideoPlacementId;
        if (str2 != null && !str2.isEmpty() && getRewardedVideoActivationStatus(str).booleanValue()) {
            if (this.rewardedVideoAd != null) {
                this.videoShowRequested = true;
                this.rewardedVideoAd.show((Activity) this.context, new OnUserEarnedRewardListener() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAdmobAdapter$$ExternalSyntheticLambda0
                    @Override // com.google.android.gms.ads.OnUserEarnedRewardListener
                    public final void onUserEarnedReward(RewardItem rewardItem) {
                        FastTrackAdmobAdapter.this.m174x5882fe0e(rewardedVideoListener, rewardItem);
                    }
                });
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
    /* renamed from: lambda$showRewardedVideo$3$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAdmobAdapter  reason: not valid java name */
    public /* synthetic */ void m174x5882fe0e(FastTrackBaseAdapter.RewardedVideoListener rewardedVideoListener, RewardItem rewardItem) {
        if (rewardedVideoListener != null) {
            rewardedVideoListener.onVideoFinished();
        }
        this.rewardedDetails.put(StatController.KEY_GET_PARAM_DETAILS, "rewarded id: " + this.rewardedVideoPlacementId);
        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_REWARDED_SDK_COMPLETION, this.rewardedDetails, this.context, true);
        Log.d(FastTrackAdsController.fastTrackLogTag, "admob rewarded onRewarded");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$4$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAdmobAdapter  reason: not valid java name */
    public /* synthetic */ void m172x98e7bdf() {
        if (this.progressDialog != null) {
            this.progressDialog.dismiss();
            this.progressDialog = null;
        }
        if (this.rewardedVideoListener != null) {
            this.rewardedVideoListener.onVideoError(this.context.getResources().getString(R.string.appsgeysersdk_fasttrack_no_rew_video));
            this.rewardedVideoListener = null;
        }
    }

    public void initNativeAdListener() {
        if (this.nativeAdsPlacementId != null) {
            this.adLoader = new AdLoader.Builder(this.context, this.nativeAdsPlacementId).forNativeAd(new NativeAd.OnNativeAdLoadedListener() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAdmobAdapter$$ExternalSyntheticLambda3
                @Override // com.google.android.gms.ads.nativead.NativeAd.OnNativeAdLoadedListener
                public final void onNativeAdLoaded(NativeAd nativeAd) {
                    FastTrackAdmobAdapter.this.m169x5d8bb9f8(nativeAd);
                }
            }).withAdListener(new AnonymousClass7()).build();
        }
        loadNativeAds(10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$initNativeAdListener$5$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAdmobAdapter  reason: not valid java name */
    public /* synthetic */ void m169x5d8bb9f8(NativeAd nativeAd) {
        Log.d(FastTrackAdsController.fastTrackLogTag, "nativeListener onNativeLoaded");
        onNativeAdLoaded(nativeAd);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAdmobAdapter$7  reason: invalid class name */
    /* loaded from: classes2.dex */
    public class AnonymousClass7 extends AdListener {
        AnonymousClass7() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdClicked() {
            Log.d(FastTrackAdsController.fastTrackLogTag, "admob native onClicked");
            StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_NATIVE_SDK_CLICK, FastTrackAdmobAdapter.this.nativeAdsDetails, FastTrackAdmobAdapter.this.context, true);
            super.onAdClicked();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdFailedToLoad(LoadAdError loadAdError) {
            if (loadAdError.getCode() == 3) {
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_NOFILL, FastTrackAdmobAdapter.this.nativeAdsDetails, FastTrackAdmobAdapter.this.context, true);
            } else {
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_BANNER_SDK_ERROR, FastTrackAdmobAdapter.this.nativeAdsDetails, FastTrackAdmobAdapter.this.context, true);
            }
            Log.d(FastTrackAdsController.fastTrackLogTag, "admob native onAdFailedToLoad: " + loadAdError.getCode());
            new Handler().postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackAdmobAdapter$7$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    FastTrackAdmobAdapter.AnonymousClass7.this.m178x6b24b0c8();
                }
            }, 30000L);
            super.onAdFailedToLoad(loadAdError);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onAdFailedToLoad$0$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAdmobAdapter$7  reason: not valid java name */
        public /* synthetic */ void m178x6b24b0c8() {
            FastTrackAdmobAdapter.this.loadNativeAds(1);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdImpression() {
            Log.d(FastTrackAdsController.fastTrackLogTag, "admob native onShown");
            StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_NATIVE_SDK_IMPRESSION, FastTrackAdmobAdapter.this.nativeAdsDetails, FastTrackAdmobAdapter.this.context, true);
            super.onAdImpression();
        }
    }

    private View createNativeAdView(NativeAd nativeAd) {
        AdmobNativeBannerMedium admobNativeBannerMedium = (AdmobNativeBannerMedium) LayoutInflater.from(this.context).inflate(R.layout.admob_template_view_medium, (ViewGroup) null);
        admobNativeBannerMedium.setNativeAd(nativeAd);
        return admobNativeBannerMedium;
    }

    private void onNativeAdLoaded(NativeAd nativeAd) {
        if (this.nativeRequestQueueSize > 0 && this.nativeViewReadyListener != null) {
            this.nativeViewReadyListener.onNativeViewReady(createNativeAdView(nativeAd));
            this.nativeRequestQueueSize--;
            return;
        }
        this.nativeAdCache.add(nativeAd);
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void sendNativeViewRequest() {
        Log.d(FastTrackAdsController.fastTrackLogTag, "admob sendNativeViewRequest");
        if (this.nativeViewReadyListener != null) {
            if (this.nativeAdCache.size() != 0) {
                this.nativeViewReadyListener.onNativeViewReady(createNativeAdView(this.nativeAdCache.get(0)));
                this.nativeAdCache.remove(0);
                return;
            }
            this.nativeRequestQueueSize++;
            loadNativeAds(10);
            return;
        }
        this.nativeRequestQueueSize++;
        loadNativeAds(10);
    }

    public void loadNativeAds(int i) {
        AdLoader adLoader = this.adLoader;
        if (adLoader != null) {
            adLoader.loadAds(new AdRequest.Builder().build(), i);
            StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_NATIVE_SDK_REQUEST, this.bannerDetails, this.context, true);
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
                Log.d(FastTrackAdsController.fastTrackLogTag, "admob banner attempt to detach bannerView from container");
                this.bannerViewContainer.removeView(this.bannerView);
                this.bannerViewContainer = null;
            }
            this.bannerView.destroy();
            this.bannerView = null;
        }
        this.handler.removeCallbacks(this.bannerViewRefreshRunnable);
        this.handler.removeCallbacks(this.bannerViewRepeatRequestRunnable);
    }
}
