package com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import com.appodeal.ads.Appodeal;
import com.appodeal.ads.InterstitialCallbacks;
import com.appsgeyser.sdk.BrowserActivity;
import com.appsgeyser.sdk.GuidGenerator;
import com.appsgeyser.sdk.ads.fastTrack.FastTrackAdsController;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackMultiAdsAdapter;
import com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel;
import com.appsgeyser.sdk.server.StatController;
import com.appsgeyser.sdk.ui.AppsgeyserProgressDialog;
import com.google.android.exoplayer2.ExoPlayer;
import java.util.Arrays;
import java.util.HashMap;
/* loaded from: classes2.dex */
public class MultiAdsFullscreenAppodealAdapter extends MultiAdsFullscreenBaseAdapter {
    private boolean pendingInitCompletion;
    private Runnable pendingInitCompletionRunnable;

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenBaseAdapter
    protected void init() {
    }

    public MultiAdsFullscreenAppodealAdapter(Context context, AdNetworkSdkModel adNetworkSdkModel, HashMap<String, String> hashMap) {
        super(context, adNetworkSdkModel, hashMap);
        this.pendingInitCompletionRunnable = new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenAppodealAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                MultiAdsFullscreenAppodealAdapter.this.pendingInitCompletion = false;
                if (!Appodeal.isInitialized(3)) {
                    Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Appodeal fullscreen initializing takes too long");
                    MultiAdsFullscreenAppodealAdapter.this.fullscreenDetails.put("ad_source", StatController.FT_NETWORK_MA_APPODEAL);
                    MultiAdsFullscreenAppodealAdapter.this.fullscreenDetails.put("net_name", StatController.FT_NETWORK_MA_APPODEAL);
                    MultiAdsFullscreenAppodealAdapter.this.fullscreenDetails.put("net_name_FS", StatController.FT_NETWORK_MA_APPODEAL);
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_NOFILL, MultiAdsFullscreenAppodealAdapter.this.fullscreenDetails, MultiAdsFullscreenAppodealAdapter.this.context, true);
                    MultiAdsFullscreenAppodealAdapter.this.listener.onFullscreenError("Appodeal fullscreen initializing takes too long");
                    return;
                }
                MultiAdsFullscreenAppodealAdapter.this.loadFullscreen();
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
        if (!Appodeal.isInitialized(3)) {
            this.pendingInitCompletion = true;
            this.handler.postDelayed(this.pendingInitCompletionRunnable, 5000L);
        } else if (this.adNetworkSdkModel.getAppId() != null && !this.adNetworkSdkModel.getAppId().isEmpty()) {
            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Appodeal fullscreen initializing");
            Appodeal.setInterstitialCallbacks(new InterstitialCallbacks() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenAppodealAdapter.2
                @Override // com.appodeal.ads.InterstitialCallbacks
                public void onInterstitialLoaded(boolean z) {
                    Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Appodeal fullscreen onInterstitialLoaded");
                    MultiAdsFullscreenAppodealAdapter.this.listener.onFullscreenLoaded();
                }

                @Override // com.appodeal.ads.InterstitialCallbacks
                public void onInterstitialFailedToLoad() {
                    MultiAdsFullscreenAppodealAdapter.this.fullscreenDetails.put("ad_source", StatController.FT_NETWORK_MA_APPODEAL);
                    MultiAdsFullscreenAppodealAdapter.this.fullscreenDetails.put("net_name", StatController.FT_NETWORK_MA_APPODEAL);
                    MultiAdsFullscreenAppodealAdapter.this.fullscreenDetails.put("net_name_FS", StatController.FT_NETWORK_MA_APPODEAL);
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_NOFILL, MultiAdsFullscreenAppodealAdapter.this.fullscreenDetails, MultiAdsFullscreenAppodealAdapter.this.context, true);
                    Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Appodeal fullscreen onInterstitialFailedToLoad");
                    MultiAdsFullscreenAppodealAdapter.this.listener.onFullscreenError("Appodeal fullscreen onInterstitialFailedToLoad");
                }

                @Override // com.appodeal.ads.InterstitialCallbacks
                public void onInterstitialShown() {
                    Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Appodeal fullscreen onInterstitialShown");
                    MultiAdsFullscreenAppodealAdapter.this.fullscreenDetails.put("ad_source", StatController.FT_NETWORK_MA_APPODEAL);
                    MultiAdsFullscreenAppodealAdapter.this.fullscreenDetails.put("net_name", StatController.FT_NETWORK_MA_APPODEAL);
                    MultiAdsFullscreenAppodealAdapter.this.fullscreenDetails.put("net_name_FS", StatController.FT_NETWORK_MA_APPODEAL);
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_IMPRESSION, MultiAdsFullscreenAppodealAdapter.this.fullscreenDetails, MultiAdsFullscreenAppodealAdapter.this.context, true);
                    MultiAdsFullscreenAppodealAdapter.this.listener.onFullscreenOpened();
                }

                @Override // com.appodeal.ads.InterstitialCallbacks
                public void onInterstitialShowFailed() {
                    Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Appodeal fullscreen onInterstitialShowFailed");
                }

                @Override // com.appodeal.ads.InterstitialCallbacks
                public void onInterstitialClicked() {
                    Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Appodeal fullscreen onInterstitialClicked");
                    MultiAdsFullscreenAppodealAdapter.this.fullscreenDetails.put("ad_source", StatController.FT_NETWORK_MA_APPODEAL);
                    MultiAdsFullscreenAppodealAdapter.this.fullscreenDetails.put("net_name", StatController.FT_NETWORK_MA_APPODEAL);
                    MultiAdsFullscreenAppodealAdapter.this.fullscreenDetails.put("net_name_FS", StatController.FT_NETWORK_MA_APPODEAL);
                    StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_CLICK, MultiAdsFullscreenAppodealAdapter.this.fullscreenDetails, MultiAdsFullscreenAppodealAdapter.this.context, true);
                    MultiAdsFullscreenAppodealAdapter.this.listener.onFullscreenClicked();
                }

                @Override // com.appodeal.ads.InterstitialCallbacks
                public void onInterstitialClosed() {
                    if (MultiAdsFullscreenAppodealAdapter.this.progressDialog != null && MultiAdsFullscreenAppodealAdapter.this.progressDialog.isShowing()) {
                        try {
                            MultiAdsFullscreenAppodealAdapter.this.progressDialog.dismiss();
                        } catch (IllegalArgumentException unused) {
                            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "progressDialog dismissal IAE");
                        }
                    }
                    Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Appodeal fullscreen onInterstitialClosed");
                    MultiAdsFullscreenAppodealAdapter.this.listener.onFullscreenClosed();
                }

                @Override // com.appodeal.ads.InterstitialCallbacks
                public void onInterstitialExpired() {
                    Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Appodeal fullscreen onInterstitialExpired");
                }
            });
            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "appodeal fullscreen attempt to load");
            this.fullscreenDetails.put(BrowserActivity.KEY_UNIQ_ID, GuidGenerator.generateNewGuid());
            this.fullscreenDetails.put("ad_source", StatController.FT_NETWORK_MA_APPODEAL);
            this.fullscreenDetails.put("net_name", StatController.FT_NETWORK_MA_APPODEAL);
            this.fullscreenDetails.put("net_name_FS", StatController.FT_NETWORK_MA_APPODEAL);
            StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_FT_INTERSTITIAL_SDK_REQUEST, this.fullscreenDetails, this.context, true);
            Appodeal.cache((Activity) this.context, 3);
        } else {
            Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Appodeal app placement id missing");
            this.listener.onFullscreenError("Appodeal app placement id missing");
        }
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface
    public boolean isFullscreenLoaded() {
        return Appodeal.isLoaded(3);
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface
    public void showFullscreen(final Context context) {
        Log.d(FastTrackMultiAdsAdapter.multiAdsLogTag, "Appodeal fullscreen attempt to show");
        this.progressDialog = new AppsgeyserProgressDialog(context);
        final AppsgeyserProgressDialog appsgeyserProgressDialog = this.progressDialog;
        appsgeyserProgressDialog.show();
        this.handler.postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenAppodealAdapter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                MultiAdsFullscreenAppodealAdapter.lambda$showFullscreen$0(AppsgeyserProgressDialog.this, context);
            }
        }, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$showFullscreen$0(AppsgeyserProgressDialog appsgeyserProgressDialog, Context context) {
        try {
            appsgeyserProgressDialog.dismiss();
        } catch (IllegalArgumentException unused) {
            Log.d(FastTrackAdsController.fastTrackLogTag, "progressDialog dismissal IAE");
        }
        try {
            Appodeal.show((Activity) context, 3);
        } catch (Exception e2) {
            Log.d(FastTrackAdsController.fastTrackLogTag, "Appodeal activity pass fail: " + Arrays.toString(e2.getStackTrace()));
        }
    }
}
