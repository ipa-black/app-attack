package com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import com.appsgeyser.sdk.BrowserActivity;
import com.appsgeyser.sdk.GuidGenerator;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackMultiAdsAdapter;
import com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel;
import com.appsgeyser.sdk.server.StatController;
import com.appsgeyser.sdk.ui.AppsgeyserProgressDialog;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;
import java.util.HashMap;
/* loaded from: classes2.dex */
public class MultiAdsFullscreenAdmobAdapter extends MultiAdsFullscreenBaseAdapter {
    private InterstitialAd interstitialAd;
    private boolean interstitialAdLoaded;

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenBaseAdapter
    protected void init() {
    }

    public MultiAdsFullscreenAdmobAdapter(Context context, AdNetworkSdkModel adNetworkSdkModel, HashMap<String, String> hashMap) {
        super(context, adNetworkSdkModel, hashMap);
        this.interstitialAdLoaded = false;
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface
    public void loadFullscreen() {
        this.interstitialAdLoaded = false;
        if (this.adNetworkSdkModel.getPlacementId() != null && !this.adNetworkSdkModel.getPlacementId().isEmpty()) {
            InterstitialAdLoadCallback interstitialAdLoadCallback = new InterstitialAdLoadCallback() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenAdmobAdapter.1
                @Override // com.google.android.gms.ads.AdLoadCallback
                public void onAdLoaded(InterstitialAd interstitialAd) {
                    super.onAdLoaded((AnonymousClass1) MultiAdsFullscreenAdmobAdapter.this.interstitialAd);
                    Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Admob fs onAdLoaded");
                    MultiAdsFullscreenAdmobAdapter.this.interstitialAd = interstitialAd;
                    MultiAdsFullscreenAdmobAdapter.this.interstitialAdLoaded = true;
                    MultiAdsFullscreenAdmobAdapter.this.interstitialAd.setFullScreenContentCallback(new FullScreenContentCallback() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenAdmobAdapter.1.1
                        @Override // com.google.android.gms.ads.FullScreenContentCallback
                        public void onAdFailedToShowFullScreenContent(AdError adError) {
                            super.onAdFailedToShowFullScreenContent(adError);
                            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Admob fs onAdFailedToShowFullScreenContent");
                            MultiAdsFullscreenAdmobAdapter.this.interstitialAdLoaded = false;
                            MultiAdsFullscreenAdmobAdapter.this.listener.onFullscreenError(adError.getMessage());
                        }

                        @Override // com.google.android.gms.ads.FullScreenContentCallback
                        public void onAdShowedFullScreenContent() {
                            super.onAdShowedFullScreenContent();
                            MultiAdsFullscreenAdmobAdapter.this.fullscreenDetails.put("ad_source", StatController.FT_NETWORK_MA_ADMOB);
                            MultiAdsFullscreenAdmobAdapter.this.fullscreenDetails.put("net_name", StatController.FT_NETWORK_MA_ADMOB);
                            MultiAdsFullscreenAdmobAdapter.this.fullscreenDetails.put("net_name_FS", StatController.FT_NETWORK_MA_ADMOB);
                            MultiAdsFullscreenAdmobAdapter.this.fullscreenDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + MultiAdsFullscreenAdmobAdapter.this.adNetworkSdkModel.getPlacementId());
                            StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_IMPRESSION, MultiAdsFullscreenAdmobAdapter.this.fullscreenDetails, MultiAdsFullscreenAdmobAdapter.this.context, true);
                            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Admob fs onAdShowedFullScreenContent");
                            MultiAdsFullscreenAdmobAdapter.this.listener.onFullscreenOpened();
                        }

                        @Override // com.google.android.gms.ads.FullScreenContentCallback
                        public void onAdDismissedFullScreenContent() {
                            super.onAdDismissedFullScreenContent();
                            if (MultiAdsFullscreenAdmobAdapter.this.progressDialog != null && MultiAdsFullscreenAdmobAdapter.this.progressDialog.isShowing()) {
                                try {
                                    MultiAdsFullscreenAdmobAdapter.this.progressDialog.dismiss();
                                } catch (IllegalArgumentException unused) {
                                    Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "progressDialog dismissal IAE");
                                }
                            }
                            MultiAdsFullscreenAdmobAdapter.this.interstitialAd = null;
                            MultiAdsFullscreenAdmobAdapter.this.interstitialAdLoaded = false;
                            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Admob fs onAdDismissedFullScreenContent");
                            MultiAdsFullscreenAdmobAdapter.this.listener.onFullscreenClosed();
                        }

                        @Override // com.google.android.gms.ads.FullScreenContentCallback
                        public void onAdImpression() {
                            super.onAdImpression();
                            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Admob fs onAdImpression");
                        }

                        @Override // com.google.android.gms.ads.FullScreenContentCallback
                        public void onAdClicked() {
                            super.onAdClicked();
                            MultiAdsFullscreenAdmobAdapter.this.fullscreenDetails.put("ad_source", StatController.FT_NETWORK_MA_ADMOB);
                            MultiAdsFullscreenAdmobAdapter.this.fullscreenDetails.put("net_name", StatController.FT_NETWORK_MA_ADMOB);
                            MultiAdsFullscreenAdmobAdapter.this.fullscreenDetails.put("net_name_FS", StatController.FT_NETWORK_MA_ADMOB);
                            MultiAdsFullscreenAdmobAdapter.this.fullscreenDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + MultiAdsFullscreenAdmobAdapter.this.adNetworkSdkModel.getPlacementId());
                            StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_CLICK, MultiAdsFullscreenAdmobAdapter.this.fullscreenDetails, MultiAdsFullscreenAdmobAdapter.this.context, true);
                            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Admob fs onAdClicked");
                            MultiAdsFullscreenAdmobAdapter.this.listener.onFullscreenClicked();
                        }
                    });
                    MultiAdsFullscreenAdmobAdapter.this.listener.onFullscreenLoaded();
                }

                @Override // com.google.android.gms.ads.AdLoadCallback
                public void onAdFailedToLoad(LoadAdError loadAdError) {
                    super.onAdFailedToLoad(loadAdError);
                    MultiAdsFullscreenAdmobAdapter.this.fullscreenDetails.put("ad_source", StatController.FT_NETWORK_MA_ADMOB);
                    MultiAdsFullscreenAdmobAdapter.this.fullscreenDetails.put("net_name", StatController.FT_NETWORK_MA_ADMOB);
                    MultiAdsFullscreenAdmobAdapter.this.fullscreenDetails.put("net_name_FS", StatController.FT_NETWORK_MA_ADMOB);
                    if (loadAdError.getCode() == 3) {
                        MultiAdsFullscreenAdmobAdapter.this.fullscreenDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + MultiAdsFullscreenAdmobAdapter.this.adNetworkSdkModel.getPlacementId());
                        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_NOFILL, MultiAdsFullscreenAdmobAdapter.this.fullscreenDetails, MultiAdsFullscreenAdmobAdapter.this.context, true);
                    } else {
                        MultiAdsFullscreenAdmobAdapter.this.fullscreenDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + MultiAdsFullscreenAdmobAdapter.this.adNetworkSdkModel.getPlacementId() + "; error_desc: error code " + loadAdError.getCode());
                        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_ERROR, MultiAdsFullscreenAdmobAdapter.this.fullscreenDetails, MultiAdsFullscreenAdmobAdapter.this.context, true);
                    }
                    MultiAdsFullscreenAdmobAdapter.this.interstitialAd = null;
                    Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Admob fs onAdFailedToLoad " + loadAdError.getCode());
                    MultiAdsFullscreenAdmobAdapter.this.listener.onFullscreenError(loadAdError.getMessage());
                }
            };
            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Admob fullscreen attempt to load");
            this.fullscreenDetails.put("ad_source", StatController.FT_NETWORK_MA_ADMOB);
            this.fullscreenDetails.put("net_name", StatController.FT_NETWORK_MA_ADMOB);
            this.fullscreenDetails.put("net_name_FS", StatController.FT_NETWORK_MA_ADMOB);
            this.fullscreenDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + this.adNetworkSdkModel.getPlacementId());
            this.fullscreenDetails.put(BrowserActivity.KEY_UNIQ_ID, GuidGenerator.generateNewGuid());
            StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_REQUEST, this.fullscreenDetails, this.context, true);
            InterstitialAd.load(this.context, this.adNetworkSdkModel.getPlacementId(), new AdRequest.Builder().build(), interstitialAdLoadCallback);
            return;
        }
        Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Admob fullscreen placement id missing");
        this.listener.onFullscreenError("Admob fullscreen placement id missing");
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface
    public boolean isFullscreenLoaded() {
        return this.interstitialAdLoaded;
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface
    public void showFullscreen(final Context context) {
        Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Admob fullscreen attempt to show");
        this.progressDialog = new AppsgeyserProgressDialog(context);
        final AppsgeyserProgressDialog appsgeyserProgressDialog = this.progressDialog;
        appsgeyserProgressDialog.show();
        this.handler.postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenAdmobAdapter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                MultiAdsFullscreenAdmobAdapter.this.m216xc7963b14(appsgeyserProgressDialog, context);
            }
        }, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$showFullscreen$0$com-appsgeyser-sdk-ads-fastTrack-adapters-multiAds-fullscreen-MultiAdsFullscreenAdmobAdapter  reason: not valid java name */
    public /* synthetic */ void m216xc7963b14(AppsgeyserProgressDialog appsgeyserProgressDialog, Context context) {
        try {
            appsgeyserProgressDialog.dismiss();
        } catch (IllegalArgumentException unused) {
            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "progressDialog dismissal IAE");
        }
        this.interstitialAd.show((Activity) context);
    }
}
