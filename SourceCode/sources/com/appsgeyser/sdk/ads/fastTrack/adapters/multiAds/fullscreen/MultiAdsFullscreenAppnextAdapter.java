package com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen;

import android.content.Context;
import android.util.Log;
import com.appnext.ads.interstitial.Interstitial;
import com.appnext.core.AppnextAdCreativeType;
import com.appnext.core.AppnextError;
import com.appnext.core.callbacks.OnAdClicked;
import com.appnext.core.callbacks.OnAdClosed;
import com.appnext.core.callbacks.OnAdError;
import com.appnext.core.callbacks.OnAdLoaded;
import com.appnext.core.callbacks.OnAdOpened;
import com.appsgeyser.sdk.BrowserActivity;
import com.appsgeyser.sdk.GuidGenerator;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackMultiAdsAdapter;
import com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel;
import com.appsgeyser.sdk.server.StatController;
import com.appsgeyser.sdk.ui.AppsgeyserProgressDialog;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ExoPlayer;
import java.util.HashMap;
import java.util.Objects;
/* loaded from: classes2.dex */
public class MultiAdsFullscreenAppnextAdapter extends MultiAdsFullscreenBaseAdapter {
    private Interstitial interstitialAd;
    private final Runnable onFullscreenClosedRunnable;

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenBaseAdapter
    protected void init() {
    }

    public MultiAdsFullscreenAppnextAdapter(Context context, AdNetworkSdkModel adNetworkSdkModel, HashMap<String, String> hashMap) {
        super(context, adNetworkSdkModel, hashMap);
        this.onFullscreenClosedRunnable = new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenAppnextAdapter$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                MultiAdsFullscreenAppnextAdapter.this.m222x30e7590a();
            }
        };
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface
    public void loadFullscreen() {
        if (this.adNetworkSdkModel.getPlacementId() != null && !this.adNetworkSdkModel.getPlacementId().isEmpty()) {
            this.interstitialAd = new Interstitial(this.context, this.adNetworkSdkModel.getPlacementId());
            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Appnext fullscreen initializing: " + this.adNetworkSdkModel.getPlacementId());
            this.interstitialAd.setOnAdLoadedCallback(new OnAdLoaded() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenAppnextAdapter$$ExternalSyntheticLambda2
                @Override // com.appnext.core.callbacks.OnAdLoaded
                public final void adLoaded(String str, AppnextAdCreativeType appnextAdCreativeType) {
                    MultiAdsFullscreenAppnextAdapter.this.m217x984b3894(str, appnextAdCreativeType);
                }
            });
            this.interstitialAd.setOnAdErrorCallback(new OnAdError() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenAppnextAdapter$$ExternalSyntheticLambda3
                @Override // com.appnext.core.callbacks.OnAdError
                public final void adError(String str) {
                    MultiAdsFullscreenAppnextAdapter.this.m218x78cd0073(str);
                }
            });
            this.interstitialAd.setOnAdOpenedCallback(new OnAdOpened() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenAppnextAdapter$$ExternalSyntheticLambda4
                @Override // com.appnext.core.callbacks.OnAdOpened
                public final void adOpened() {
                    MultiAdsFullscreenAppnextAdapter.this.m219x594ec852();
                }
            });
            this.interstitialAd.setOnAdClosedCallback(new OnAdClosed() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenAppnextAdapter$$ExternalSyntheticLambda5
                @Override // com.appnext.core.callbacks.OnAdClosed
                public final void onAdClosed() {
                    MultiAdsFullscreenAppnextAdapter.this.m220x39d09031();
                }
            });
            this.interstitialAd.setOnAdClickedCallback(new OnAdClicked() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenAppnextAdapter$$ExternalSyntheticLambda6
                @Override // com.appnext.core.callbacks.OnAdClicked
                public final void adClicked() {
                    MultiAdsFullscreenAppnextAdapter.this.m221x1a525810();
                }
            });
            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Appnext fullscreen attempt to load");
            this.fullscreenDetails.put("ad_source", StatController.FT_NETWORK_MA_APPNEXT);
            this.fullscreenDetails.put("net_name", StatController.FT_NETWORK_MA_APPNEXT);
            this.fullscreenDetails.put("net_name_FS", StatController.FT_NETWORK_MA_APPNEXT);
            this.fullscreenDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + this.adNetworkSdkModel.getPlacementId());
            this.fullscreenDetails.put(BrowserActivity.KEY_UNIQ_ID, GuidGenerator.generateNewGuid());
            StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_REQUEST, this.fullscreenDetails, this.context, true);
            this.interstitialAd.loadAd();
            return;
        }
        Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Appnext fullscreen placement id missing");
        this.listener.onFullscreenError("Appnext fullscreen placement id missing");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$loadFullscreen$0$com-appsgeyser-sdk-ads-fastTrack-adapters-multiAds-fullscreen-MultiAdsFullscreenAppnextAdapter  reason: not valid java name */
    public /* synthetic */ void m217x984b3894(String str, AppnextAdCreativeType appnextAdCreativeType) {
        Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Appnext fullscreen setOnAdLoadedCallback");
        this.listener.onFullscreenLoaded();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$loadFullscreen$1$com-appsgeyser-sdk-ads-fastTrack-adapters-multiAds-fullscreen-MultiAdsFullscreenAppnextAdapter  reason: not valid java name */
    public /* synthetic */ void m218x78cd0073(String str) {
        this.fullscreenDetails.put("ad_source", StatController.FT_NETWORK_MA_APPNEXT);
        this.fullscreenDetails.put("net_name", StatController.FT_NETWORK_MA_APPNEXT);
        this.fullscreenDetails.put("net_name_FS", StatController.FT_NETWORK_MA_APPNEXT);
        if (Objects.equals(str, AppnextError.NO_ADS)) {
            this.fullscreenDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + this.adNetworkSdkModel.getPlacementId());
            StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_NOFILL, this.fullscreenDetails, this.context, true);
        } else {
            this.fullscreenDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + this.adNetworkSdkModel.getPlacementId() + "; error_desc: error code " + str);
            StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_ERROR, this.fullscreenDetails, this.context, true);
        }
        Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Appnext fullscreen OnAdError: " + str);
        this.listener.onFullscreenError(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$loadFullscreen$2$com-appsgeyser-sdk-ads-fastTrack-adapters-multiAds-fullscreen-MultiAdsFullscreenAppnextAdapter  reason: not valid java name */
    public /* synthetic */ void m219x594ec852() {
        Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Appnext fullscreen OnAdOpened");
        this.fullscreenDetails.put("ad_source", StatController.FT_NETWORK_MA_APPNEXT);
        this.fullscreenDetails.put("net_name", StatController.FT_NETWORK_MA_APPNEXT);
        this.fullscreenDetails.put("net_name_FS", StatController.FT_NETWORK_MA_APPNEXT);
        this.fullscreenDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + this.adNetworkSdkModel.getPlacementId());
        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_IMPRESSION, this.fullscreenDetails, this.context, true);
        this.listener.onFullscreenOpened();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$loadFullscreen$3$com-appsgeyser-sdk-ads-fastTrack-adapters-multiAds-fullscreen-MultiAdsFullscreenAppnextAdapter  reason: not valid java name */
    public /* synthetic */ void m220x39d09031() {
        if (this.progressDialog != null && this.progressDialog.isShowing()) {
            try {
                this.progressDialog.dismiss();
            } catch (IllegalArgumentException unused) {
                Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "progressDialog dismissal IAE");
            }
        }
        Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Appnext fullscreen OnAdClosed");
        this.handler.removeCallbacks(this.onFullscreenClosedRunnable);
        this.handler.postDelayed(this.onFullscreenClosedRunnable, C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$loadFullscreen$4$com-appsgeyser-sdk-ads-fastTrack-adapters-multiAds-fullscreen-MultiAdsFullscreenAppnextAdapter  reason: not valid java name */
    public /* synthetic */ void m221x1a525810() {
        Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Appnext fullscreen OnAdClicked");
        this.fullscreenDetails.put("ad_source", StatController.FT_NETWORK_MA_APPNEXT);
        this.fullscreenDetails.put("net_name", StatController.FT_NETWORK_MA_APPNEXT);
        this.fullscreenDetails.put("net_name_FS", StatController.FT_NETWORK_MA_APPNEXT);
        this.fullscreenDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + this.adNetworkSdkModel.getPlacementId());
        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_CLICK, this.fullscreenDetails, this.context, true);
        this.listener.onFullscreenClicked();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$5$com-appsgeyser-sdk-ads-fastTrack-adapters-multiAds-fullscreen-MultiAdsFullscreenAppnextAdapter  reason: not valid java name */
    public /* synthetic */ void m222x30e7590a() {
        this.listener.onFullscreenClosed();
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface
    public boolean isFullscreenLoaded() {
        return this.interstitialAd.isAdLoaded();
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface
    public void showFullscreen(Context context) {
        this.progressDialog = new AppsgeyserProgressDialog(context);
        final AppsgeyserProgressDialog appsgeyserProgressDialog = this.progressDialog;
        appsgeyserProgressDialog.show();
        this.handler.postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenAppnextAdapter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                MultiAdsFullscreenAppnextAdapter.this.m223xb1adc157(appsgeyserProgressDialog);
            }
        }, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$showFullscreen$6$com-appsgeyser-sdk-ads-fastTrack-adapters-multiAds-fullscreen-MultiAdsFullscreenAppnextAdapter  reason: not valid java name */
    public /* synthetic */ void m223xb1adc157(AppsgeyserProgressDialog appsgeyserProgressDialog) {
        try {
            appsgeyserProgressDialog.dismiss();
        } catch (IllegalArgumentException unused) {
            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "progressDialog dismissal IAE");
        }
        this.interstitialAd.showAd();
    }
}
