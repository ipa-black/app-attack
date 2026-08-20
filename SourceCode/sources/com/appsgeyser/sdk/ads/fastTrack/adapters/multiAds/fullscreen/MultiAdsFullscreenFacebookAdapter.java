package com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen;

import android.content.Context;
import android.util.Log;
import com.appsgeyser.sdk.BrowserActivity;
import com.appsgeyser.sdk.GuidGenerator;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackMultiAdsAdapter;
import com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel;
import com.appsgeyser.sdk.server.StatController;
import com.appsgeyser.sdk.ui.AppsgeyserProgressDialog;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AudienceNetworkAds;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdListener;
import com.google.android.exoplayer2.ExoPlayer;
import java.util.Arrays;
import java.util.HashMap;
/* loaded from: classes2.dex */
public class MultiAdsFullscreenFacebookAdapter extends MultiAdsFullscreenBaseAdapter {
    private InterstitialAd interstitialAd;
    private boolean pendingInitCompletion;
    private Runnable pendingInitCompletionRunnable;

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenBaseAdapter
    protected void init() {
    }

    public MultiAdsFullscreenFacebookAdapter(Context context, AdNetworkSdkModel adNetworkSdkModel, HashMap<String, String> hashMap) {
        super(context, adNetworkSdkModel, hashMap);
        this.pendingInitCompletionRunnable = new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenFacebookAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                MultiAdsFullscreenFacebookAdapter.this.pendingInitCompletion = false;
                if (!AudienceNetworkAds.isInitialized(MultiAdsFullscreenFacebookAdapter.this.context)) {
                    Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "facebook fullscreen initializing takes too long");
                    MultiAdsFullscreenFacebookAdapter.this.fullscreenDetails.put("ad_source", StatController.FT_NETWORK_MA_FACEBOOK);
                    MultiAdsFullscreenFacebookAdapter.this.fullscreenDetails.put("net_name", StatController.FT_NETWORK_MA_FACEBOOK);
                    MultiAdsFullscreenFacebookAdapter.this.fullscreenDetails.put("net_name_FS", StatController.FT_NETWORK_MA_FACEBOOK);
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_NOFILL, MultiAdsFullscreenFacebookAdapter.this.fullscreenDetails, MultiAdsFullscreenFacebookAdapter.this.context, true);
                    MultiAdsFullscreenFacebookAdapter.this.listener.onFullscreenError("facebook fullscreen initializing takes too long");
                    return;
                }
                MultiAdsFullscreenFacebookAdapter.this.loadFullscreen();
            }
        };
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenBaseAdapter, com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface
    public void initCompleted() {
        if (this.pendingInitCompletion) {
            this.handler.removeCallbacks(this.pendingInitCompletionRunnable);
            this.pendingInitCompletionRunnable.run();
        }
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface
    public void loadFullscreen() {
        if (!AudienceNetworkAds.isInitialized(this.context)) {
            this.pendingInitCompletion = true;
            this.handler.postDelayed(this.pendingInitCompletionRunnable, 5000L);
        } else if (this.adNetworkSdkModel.getPlacementId() != null && !this.adNetworkSdkModel.getPlacementId().isEmpty()) {
            this.interstitialAd = new InterstitialAd(this.context, this.adNetworkSdkModel.getPlacementId());
            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "facebook fullscreen initializing: " + this.adNetworkSdkModel.getPlacementId());
            InterstitialAdListener interstitialAdListener = new InterstitialAdListener() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenFacebookAdapter.2
                @Override // com.facebook.ads.AdListener
                public void onLoggingImpression(Ad ad) {
                }

                @Override // com.facebook.ads.InterstitialAdListener
                public void onInterstitialDismissed(Ad ad) {
                    if (MultiAdsFullscreenFacebookAdapter.this.progressDialog != null && MultiAdsFullscreenFacebookAdapter.this.progressDialog.isShowing()) {
                        try {
                            MultiAdsFullscreenFacebookAdapter.this.progressDialog.dismiss();
                        } catch (IllegalArgumentException unused) {
                            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "progressDialog dismissal IAE");
                        }
                    }
                    Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "facebook fullscreen onInterstitialDismissed");
                    MultiAdsFullscreenFacebookAdapter.this.listener.onFullscreenClosed();
                }

                @Override // com.facebook.ads.AdListener
                public void onError(Ad ad, AdError adError) {
                    MultiAdsFullscreenFacebookAdapter.this.fullscreenDetails.put("ad_source", StatController.FT_NETWORK_MA_FACEBOOK);
                    MultiAdsFullscreenFacebookAdapter.this.fullscreenDetails.put("net_name", StatController.FT_NETWORK_MA_FACEBOOK);
                    MultiAdsFullscreenFacebookAdapter.this.fullscreenDetails.put("net_name_FS", StatController.FT_NETWORK_MA_FACEBOOK);
                    if (adError.getErrorCode() == 1001) {
                        MultiAdsFullscreenFacebookAdapter.this.fullscreenDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + MultiAdsFullscreenFacebookAdapter.this.adNetworkSdkModel.getPlacementId());
                        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_NOFILL, MultiAdsFullscreenFacebookAdapter.this.fullscreenDetails, MultiAdsFullscreenFacebookAdapter.this.context, true);
                    } else {
                        MultiAdsFullscreenFacebookAdapter.this.fullscreenDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + MultiAdsFullscreenFacebookAdapter.this.adNetworkSdkModel.getPlacementId() + "; error_desc: error code " + adError.getErrorCode() + " " + adError.getErrorMessage());
                        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_ERROR, MultiAdsFullscreenFacebookAdapter.this.fullscreenDetails, MultiAdsFullscreenFacebookAdapter.this.context, true);
                    }
                    Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "facebook fs onError " + adError.getErrorCode() + " " + adError.getErrorMessage());
                    MultiAdsFullscreenFacebookAdapter.this.listener.onFullscreenError(adError.getErrorMessage());
                }

                @Override // com.facebook.ads.AdListener
                public void onAdClicked(Ad ad) {
                    Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "facebook fullscreen onAdClicked");
                    MultiAdsFullscreenFacebookAdapter.this.fullscreenDetails.put("ad_source", StatController.FT_NETWORK_MA_FACEBOOK);
                    MultiAdsFullscreenFacebookAdapter.this.fullscreenDetails.put("net_name", StatController.FT_NETWORK_MA_FACEBOOK);
                    MultiAdsFullscreenFacebookAdapter.this.fullscreenDetails.put("net_name_FS", StatController.FT_NETWORK_MA_FACEBOOK);
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_CLICK, MultiAdsFullscreenFacebookAdapter.this.fullscreenDetails, MultiAdsFullscreenFacebookAdapter.this.context, true);
                    MultiAdsFullscreenFacebookAdapter.this.listener.onFullscreenClicked();
                }

                @Override // com.facebook.ads.InterstitialAdListener
                public void onInterstitialDisplayed(Ad ad) {
                    Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "facebook fullscreen onInterstitialDisplayed");
                    MultiAdsFullscreenFacebookAdapter.this.fullscreenDetails.put("ad_source", StatController.FT_NETWORK_MA_FACEBOOK);
                    MultiAdsFullscreenFacebookAdapter.this.fullscreenDetails.put("net_name", StatController.FT_NETWORK_MA_FACEBOOK);
                    MultiAdsFullscreenFacebookAdapter.this.fullscreenDetails.put("net_name_FS", StatController.FT_NETWORK_MA_FACEBOOK);
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_IMPRESSION, MultiAdsFullscreenFacebookAdapter.this.fullscreenDetails, MultiAdsFullscreenFacebookAdapter.this.context, true);
                    MultiAdsFullscreenFacebookAdapter.this.listener.onFullscreenOpened();
                }

                @Override // com.facebook.ads.AdListener
                public void onAdLoaded(Ad ad) {
                    Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "facebook fullscreen onInterstitialLoaded");
                    MultiAdsFullscreenFacebookAdapter.this.listener.onFullscreenLoaded();
                }
            };
            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "facebook fullscreen attempt to load");
            this.fullscreenDetails.put(BrowserActivity.KEY_UNIQ_ID, GuidGenerator.generateNewGuid());
            this.fullscreenDetails.put("ad_source", StatController.FT_NETWORK_MA_FACEBOOK);
            this.fullscreenDetails.put("net_name", StatController.FT_NETWORK_MA_FACEBOOK);
            this.fullscreenDetails.put("net_name_FS", StatController.FT_NETWORK_MA_FACEBOOK);
            StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_REQUEST, this.fullscreenDetails, this.context, true);
            InterstitialAd interstitialAd = this.interstitialAd;
            interstitialAd.loadAd(interstitialAd.buildLoadAdConfig().withAdListener(interstitialAdListener).build());
        } else {
            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "facebook fullscreen placement id missing");
            this.listener.onFullscreenError("facebook fullscreen placement id missing");
        }
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface
    public boolean isFullscreenLoaded() {
        return this.interstitialAd.isAdLoaded();
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface
    public void showFullscreen(Context context) {
        Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "facebook fullscreen attempt to show");
        this.progressDialog = new AppsgeyserProgressDialog(context);
        final AppsgeyserProgressDialog appsgeyserProgressDialog = this.progressDialog;
        appsgeyserProgressDialog.show();
        this.handler.postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenFacebookAdapter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                MultiAdsFullscreenFacebookAdapter.this.m224x224ae3e7(appsgeyserProgressDialog);
            }
        }, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$showFullscreen$0$com-appsgeyser-sdk-ads-fastTrack-adapters-multiAds-fullscreen-MultiAdsFullscreenFacebookAdapter  reason: not valid java name */
    public /* synthetic */ void m224x224ae3e7(AppsgeyserProgressDialog appsgeyserProgressDialog) {
        try {
            appsgeyserProgressDialog.dismiss();
        } catch (IllegalArgumentException unused) {
            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "progressDialog dismissal IAE");
        }
        try {
            this.interstitialAd.show();
        } catch (Exception e2) {
            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "facebook activity pass fail: " + Arrays.toString(e2.getStackTrace()));
        }
    }
}
