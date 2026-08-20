package com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import com.appsgeyser.sdk.BrowserActivity;
import com.appsgeyser.sdk.GuidGenerator;
import com.appsgeyser.sdk.ads.fastTrack.FastTrackAdsController;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackMultiAdsAdapter;
import com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel;
import com.appsgeyser.sdk.server.StatController;
import com.appsgeyser.sdk.ui.AppsgeyserProgressDialog;
import com.google.android.exoplayer2.ExoPlayer;
import com.unity3d.ads.IUnityAdsLoadListener;
import com.unity3d.ads.IUnityAdsShowListener;
import com.unity3d.ads.UnityAds;
import com.unity3d.ads.UnityAdsShowOptions;
import java.util.Arrays;
import java.util.HashMap;
/* loaded from: classes2.dex */
public class MultiAdsFullscreenUnityAdapter extends MultiAdsFullscreenBaseAdapter {
    private boolean fullscreenAdsLoaded;
    private boolean pendingInitCompletion;
    private Runnable pendingInitCompletionRunnable;
    private IUnityAdsShowListener showListener;

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenBaseAdapter
    protected void init() {
    }

    public MultiAdsFullscreenUnityAdapter(Context context, AdNetworkSdkModel adNetworkSdkModel, HashMap<String, String> hashMap) {
        super(context, adNetworkSdkModel, hashMap);
        this.pendingInitCompletionRunnable = new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenUnityAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                MultiAdsFullscreenUnityAdapter.this.pendingInitCompletion = false;
                if (!UnityAds.isInitialized()) {
                    Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "unity fullscreen initializing takes too long");
                    MultiAdsFullscreenUnityAdapter.this.fullscreenDetails.put("ad_source", StatController.FT_NETWORK_MA_UNITY);
                    MultiAdsFullscreenUnityAdapter.this.fullscreenDetails.put("net_name", StatController.FT_NETWORK_MA_UNITY);
                    MultiAdsFullscreenUnityAdapter.this.fullscreenDetails.put("net_name_FS", StatController.FT_NETWORK_MA_UNITY);
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_NOFILL, MultiAdsFullscreenUnityAdapter.this.fullscreenDetails, MultiAdsFullscreenUnityAdapter.this.context, true);
                    MultiAdsFullscreenUnityAdapter.this.listener.onFullscreenError("unity fullscreen initializing takes too long");
                    return;
                }
                MultiAdsFullscreenUnityAdapter.this.loadFullscreen();
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
        if (!UnityAds.isInitialized()) {
            this.pendingInitCompletion = true;
            this.handler.postDelayed(this.pendingInitCompletionRunnable, 5000L);
        } else if (this.adNetworkSdkModel.getPlacementId() != null && !this.adNetworkSdkModel.getPlacementId().isEmpty()) {
            this.fullscreenAdsLoaded = false;
            Log.d(FastTrackAdsController.fastTrackLogTag, "unity fullscreen initializing: " + this.adNetworkSdkModel.getPlacementId());
            this.showListener = new IUnityAdsShowListener() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenUnityAdapter.2
                @Override // com.unity3d.ads.IUnityAdsShowListener
                public void onUnityAdsShowFailure(String str, UnityAds.UnityAdsShowError unityAdsShowError, String str2) {
                    Log.d(FastTrackAdsController.fastTrackLogTag, "unity fs onUnityAdsShowFailure");
                }

                @Override // com.unity3d.ads.IUnityAdsShowListener
                public void onUnityAdsShowStart(String str) {
                    Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "unity fullscreen onUnityAdsShowStart");
                    MultiAdsFullscreenUnityAdapter.this.fullscreenDetails.put("ad_source", StatController.FT_NETWORK_MA_UNITY);
                    MultiAdsFullscreenUnityAdapter.this.fullscreenDetails.put("net_name", StatController.FT_NETWORK_MA_UNITY);
                    MultiAdsFullscreenUnityAdapter.this.fullscreenDetails.put("net_name_FS", StatController.FT_NETWORK_MA_UNITY);
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_IMPRESSION, MultiAdsFullscreenUnityAdapter.this.fullscreenDetails, MultiAdsFullscreenUnityAdapter.this.context, true);
                    MultiAdsFullscreenUnityAdapter.this.listener.onFullscreenOpened();
                }

                @Override // com.unity3d.ads.IUnityAdsShowListener
                public void onUnityAdsShowClick(String str) {
                    Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "unity fullscreen onUnityAdsShowClick");
                    MultiAdsFullscreenUnityAdapter.this.fullscreenDetails.put("ad_source", StatController.FT_NETWORK_MA_UNITY);
                    MultiAdsFullscreenUnityAdapter.this.fullscreenDetails.put("net_name", StatController.FT_NETWORK_MA_UNITY);
                    MultiAdsFullscreenUnityAdapter.this.fullscreenDetails.put("net_name_FS", StatController.FT_NETWORK_MA_UNITY);
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_CLICK, MultiAdsFullscreenUnityAdapter.this.fullscreenDetails, MultiAdsFullscreenUnityAdapter.this.context, true);
                    MultiAdsFullscreenUnityAdapter.this.listener.onFullscreenClicked();
                }

                @Override // com.unity3d.ads.IUnityAdsShowListener
                public void onUnityAdsShowComplete(String str, UnityAds.UnityAdsShowCompletionState unityAdsShowCompletionState) {
                    if (MultiAdsFullscreenUnityAdapter.this.progressDialog != null && MultiAdsFullscreenUnityAdapter.this.progressDialog.isShowing()) {
                        try {
                            MultiAdsFullscreenUnityAdapter.this.progressDialog.dismiss();
                        } catch (IllegalArgumentException unused) {
                            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "progressDialog dismissal IAE");
                        }
                    }
                    Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "unity fullscreen onInterstitialDismissed");
                    MultiAdsFullscreenUnityAdapter.this.listener.onFullscreenClosed();
                    MultiAdsFullscreenUnityAdapter.this.fullscreenAdsLoaded = false;
                }
            };
            IUnityAdsLoadListener iUnityAdsLoadListener = new IUnityAdsLoadListener() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenUnityAdapter.3
                @Override // com.unity3d.ads.IUnityAdsLoadListener
                public void onUnityAdsAdLoaded(String str) {
                    MultiAdsFullscreenUnityAdapter.this.fullscreenAdsLoaded = true;
                    Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "unity fullscreen onUnityAdsAdLoaded");
                    MultiAdsFullscreenUnityAdapter.this.listener.onFullscreenLoaded();
                }

                @Override // com.unity3d.ads.IUnityAdsLoadListener
                public void onUnityAdsFailedToLoad(String str, UnityAds.UnityAdsLoadError unityAdsLoadError, String str2) {
                    MultiAdsFullscreenUnityAdapter.this.fullscreenDetails.put("ad_source", StatController.FT_NETWORK_MA_UNITY);
                    MultiAdsFullscreenUnityAdapter.this.fullscreenDetails.put("net_name", StatController.FT_NETWORK_MA_UNITY);
                    MultiAdsFullscreenUnityAdapter.this.fullscreenDetails.put("net_name_FS", StatController.FT_NETWORK_MA_UNITY);
                    if (unityAdsLoadError == UnityAds.UnityAdsLoadError.NO_FILL) {
                        MultiAdsFullscreenUnityAdapter.this.fullscreenDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + MultiAdsFullscreenUnityAdapter.this.adNetworkSdkModel.getPlacementId());
                        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_NOFILL, MultiAdsFullscreenUnityAdapter.this.fullscreenDetails, MultiAdsFullscreenUnityAdapter.this.context, true);
                    } else {
                        MultiAdsFullscreenUnityAdapter.this.fullscreenDetails.put(StatController.KEY_GET_PARAM_DETAILS, "fs id: " + MultiAdsFullscreenUnityAdapter.this.adNetworkSdkModel.getPlacementId() + "; error_desc: error message " + str2);
                        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_ERROR, MultiAdsFullscreenUnityAdapter.this.fullscreenDetails, MultiAdsFullscreenUnityAdapter.this.context, true);
                    }
                    Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "unity fs onUnityAdsFailedToLoad " + unityAdsLoadError.toString() + " ; " + str2);
                    MultiAdsFullscreenUnityAdapter.this.listener.onFullscreenError(str2);
                }
            };
            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "unity fullscreen attempt to load");
            this.fullscreenDetails.put(BrowserActivity.KEY_UNIQ_ID, GuidGenerator.generateNewGuid());
            this.fullscreenDetails.put("ad_source", StatController.FT_NETWORK_MA_UNITY);
            this.fullscreenDetails.put("net_name", StatController.FT_NETWORK_MA_UNITY);
            this.fullscreenDetails.put("net_name_FS", StatController.FT_NETWORK_MA_UNITY);
            StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_REQUEST, this.fullscreenDetails, this.context, true);
            UnityAds.load(this.adNetworkSdkModel.getPlacementId(), iUnityAdsLoadListener);
        } else {
            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "unity fullscreen placement id missing");
            this.listener.onFullscreenError("unity fullscreen placement id missing");
        }
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface
    public boolean isFullscreenLoaded() {
        return this.fullscreenAdsLoaded;
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface
    public void showFullscreen(final Context context) {
        Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "unity fullscreen attempt to show");
        this.progressDialog = new AppsgeyserProgressDialog(context);
        final AppsgeyserProgressDialog appsgeyserProgressDialog = this.progressDialog;
        appsgeyserProgressDialog.show();
        this.handler.postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenUnityAdapter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                MultiAdsFullscreenUnityAdapter.this.m227x9bd1909c(appsgeyserProgressDialog, context);
            }
        }, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$showFullscreen$0$com-appsgeyser-sdk-ads-fastTrack-adapters-multiAds-fullscreen-MultiAdsFullscreenUnityAdapter  reason: not valid java name */
    public /* synthetic */ void m227x9bd1909c(AppsgeyserProgressDialog appsgeyserProgressDialog, Context context) {
        try {
            appsgeyserProgressDialog.dismiss();
        } catch (IllegalArgumentException unused) {
            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "progressDialog dismissal IAE");
        }
        try {
            UnityAds.show((Activity) context, this.adNetworkSdkModel.getPlacementId(), new UnityAdsShowOptions(), this.showListener);
        } catch (Exception e2) {
            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "facebook activity pass fail: " + Arrays.toString(e2.getStackTrace()));
        }
    }
}
