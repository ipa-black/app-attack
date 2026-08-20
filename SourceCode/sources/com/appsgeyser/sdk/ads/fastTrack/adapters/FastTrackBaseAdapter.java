package com.appsgeyser.sdk.ads.fastTrack.adapters;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.appsgeyser.multiTabApp.ui.views.PdfActivity;
import com.appsgeyser.sdk.ads.fastTrack.FastTrackAdsController;
import com.appsgeyser.sdk.ads.fastTrack.FastTrackSdkModel;
import com.appsgeyser.sdk.configuration.Configuration;
import com.appsgeyser.sdk.configuration.Constants;
import com.appsgeyser.sdk.configuration.PreferencesCoder;
import com.appsgeyser.sdk.ui.AppsgeyserProgressDialog;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class FastTrackBaseAdapter {
    final HashMap<String, String> appDetails;
    final HashMap<String, String> bannerDetails;
    ViewGroup bannerViewContainer;
    Context context;
    FastTrackSdkModel fastTrackSdkModel;
    FullscreenListener fullscreenListener;
    Handler handler;
    final HashMap<String, String> interstitialDetails;
    boolean isInForeground;
    final HashMap<String, String> nativeAdsDetails;
    int nativeRequestQueueSize;
    NativeViewReadyListener nativeViewReadyListener;
    boolean pendingFullscreenRequest;
    PreferencesCoder preferencesCoder;
    AppsgeyserProgressDialog progressDialog;
    final HashMap<String, String> rewardedDetails;
    String rewardedVideoCurrentPlacement;
    RewardedVideoListener rewardedVideoListener;
    boolean videoDownloadError;
    boolean videoShowRequested;

    /* loaded from: classes2.dex */
    public interface FullscreenListener {
        void onClose();

        void onFailedToShow();

        void onRequest();

        void onShow();
    }

    /* loaded from: classes2.dex */
    public interface NativeViewReadyListener {
        void onNativeViewReady(View view);
    }

    /* loaded from: classes2.dex */
    public interface RewardedVideoListener {
        void onVideoClicked();

        void onVideoClosed();

        void onVideoDeactivated();

        void onVideoError(String str);

        void onVideoFinished();

        void onVideoOpened();
    }

    public abstract List<Object> getNativeAds(int i);

    protected abstract void init();

    public abstract void initBannerView(ViewGroup viewGroup, String str, Activity activity);

    public abstract void loadFullscreen();

    public abstract void loadRewardedVideo();

    public abstract void onDestroy();

    public abstract void sendNativeViewRequest();

    public abstract void showFullscreen(String str, String str2, boolean z, Context context);

    public abstract void showRewardedVideo(RewardedVideoListener rewardedVideoListener, String str);

    /* JADX INFO: Access modifiers changed from: package-private */
    public FastTrackBaseAdapter(FastTrackSdkModel fastTrackSdkModel, Context context) {
        HashMap<String, String> hashMap = new HashMap<>();
        this.appDetails = hashMap;
        this.interstitialDetails = new HashMap<>();
        this.bannerDetails = new HashMap<>();
        this.rewardedDetails = new HashMap<>();
        this.nativeAdsDetails = new HashMap<>();
        this.isInForeground = true;
        this.nativeViewReadyListener = null;
        this.nativeRequestQueueSize = 0;
        this.fastTrackSdkModel = fastTrackSdkModel;
        this.context = context;
        Configuration configuration = Configuration.getInstance(context);
        hashMap.put(PdfActivity.WIDGET_ID, configuration.getApplicationId());
        hashMap.put("wdid", configuration.getApplicationId());
        if (fastTrackSdkModel.getAdditionalReportingParams() != null) {
            try {
                hashMap.putAll(fastTrackSdkModel.getAdditionalReportingParams());
            } catch (NullPointerException unused) {
                Log.d(FastTrackAdsController.fastTrackLogTag, "NPE while adding reporting params");
            }
        }
        this.handler = new Handler(context.getMainLooper());
        this.preferencesCoder = new PreferencesCoder(context);
        init();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Integer getBannerViewRefreshRate(String str) {
        Integer num = (this.fastTrackSdkModel.getBannerPlacementsRefreshTimerMap() == null || str == null) ? null : this.fastTrackSdkModel.getBannerPlacementsRefreshTimerMap().get(str);
        if (num != null) {
            return num;
        }
        return Integer.valueOf(this.fastTrackSdkModel.getDefaultBannerRefreshTimer() != null ? this.fastTrackSdkModel.getDefaultBannerRefreshTimer().intValue() : 60000);
    }

    public void onResume(Context context) {
        Context context2 = this.context;
        if (context2 != null && !context2.equals(context)) {
            this.context = context;
        }
        this.isInForeground = true;
    }

    public void onPause() {
        this.isInForeground = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Integer getFullscreenIntensityPoints(String str) {
        Integer num = (this.fastTrackSdkModel.getFullscreenPlacementsIntensityMap() == null || str == null) ? null : this.fastTrackSdkModel.getFullscreenPlacementsIntensityMap().get(str);
        if (num != null) {
            return num;
        }
        return Integer.valueOf(this.fastTrackSdkModel.getDefaultFullscreenIntensity() != null ? this.fastTrackSdkModel.getDefaultFullscreenIntensity().intValue() : 100);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Integer getFullscreenFrequencyTimerValue(String str) {
        Integer num = (this.fastTrackSdkModel.getFullscreenPlacementsFrequencyTimerMap() == null || str == null) ? null : this.fastTrackSdkModel.getFullscreenPlacementsFrequencyTimerMap().get(str);
        if (num != null) {
            return Integer.valueOf(num.intValue() >= 15000 ? num.intValue() : 120000);
        }
        Integer fullscreenFrequencyTimer = this.fastTrackSdkModel.getFullscreenFrequencyTimer();
        if (fullscreenFrequencyTimer != null && fullscreenFrequencyTimer.intValue() >= 15000) {
            r0 = fullscreenFrequencyTimer.intValue();
        }
        return Integer.valueOf(r0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Integer getFullscreenPendingDelayTimerValue() {
        Integer fullscreenPendingDelayTimer = this.fastTrackSdkModel.getFullscreenPendingDelayTimer();
        return Integer.valueOf((fullscreenPendingDelayTimer == null || fullscreenPendingDelayTimer.intValue() < 10000) ? 15000 : fullscreenPendingDelayTimer.intValue());
    }

    public void setFullscreenListener(FullscreenListener fullscreenListener) {
        this.fullscreenListener = fullscreenListener;
    }

    public void showRewardedVideoWithDialog(final RewardedVideoListener rewardedVideoListener, final String str, String str2, String str3, String str4) {
        if (getRewardedVideoActivationStatus(str).booleanValue()) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
            builder.setMessage(str2);
            builder.setPositiveButton(str3, new DialogInterface.OnClickListener() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    FastTrackBaseAdapter.this.m201x64127e36(rewardedVideoListener, str, dialogInterface, i);
                }
            });
            builder.setNegativeButton(str4, new DialogInterface.OnClickListener() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                }
            });
            builder.show();
            return;
        }
        rewardedVideoListener.onVideoDeactivated();
        Log.d(FastTrackAdsController.fastTrackLogTag, "Rewarded placement deactivated");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$showRewardedVideoWithDialog$1$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackBaseAdapter  reason: not valid java name */
    public /* synthetic */ void m201x64127e36(final RewardedVideoListener rewardedVideoListener, final String str, final DialogInterface dialogInterface, int i) {
        this.handler.post(new Runnable() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                FastTrackBaseAdapter.this.m200xe5b17a57(rewardedVideoListener, str, dialogInterface);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$showRewardedVideoWithDialog$0$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackBaseAdapter  reason: not valid java name */
    public /* synthetic */ void m200xe5b17a57(RewardedVideoListener rewardedVideoListener, String str, DialogInterface dialogInterface) {
        showRewardedVideo(rewardedVideoListener, str);
        dialogInterface.dismiss();
    }

    public Boolean getRewardedVideoActivationStatus(String str) {
        Boolean bool = true;
        if (this.fastTrackSdkModel.getRewardedPlacementsActivationMap() != null && str != null) {
            bool = this.fastTrackSdkModel.getRewardedPlacementsActivationMap().get(str);
        }
        return Boolean.valueOf(bool != null ? bool.booleanValue() : true);
    }

    public int getNativeStepByPlacementTag(String str) {
        Map<String, Integer> nativePlacementsActivationMap = this.fastTrackSdkModel.getNativePlacementsActivationMap();
        if (nativePlacementsActivationMap == null || str == null) {
            return 10;
        }
        Integer num = nativePlacementsActivationMap.get(str);
        if (num != null) {
            return num.intValue();
        }
        Integer num2 = nativePlacementsActivationMap.get(Constants.NATIVE_BANNER_MAIN_PLACEMENT_TAG);
        if (num2 != null) {
            return num2.intValue();
        }
        return 10;
    }

    public boolean isNativePlacementActive(String str) {
        Map<String, Integer> nativePlacementsActivationMap = this.fastTrackSdkModel.getNativePlacementsActivationMap();
        if (nativePlacementsActivationMap == null || str == null) {
            return true;
        }
        Integer num = nativePlacementsActivationMap.get(str);
        if (num != null) {
            return num.intValue() != 0;
        }
        Integer num2 = nativePlacementsActivationMap.get(Constants.NATIVE_BANNER_MAIN_PLACEMENT_TAG);
        return num2 == null || num2.intValue() != 0;
    }

    public void setContext(Context context) {
        this.context = context;
    }

    public Context getContext() {
        return this.context;
    }

    public AppsgeyserProgressDialog getProgressDialog() {
        return this.progressDialog;
    }

    public void setProgressDialog(AppsgeyserProgressDialog appsgeyserProgressDialog) {
        this.progressDialog = appsgeyserProgressDialog;
    }

    public FullscreenListener getFullscreenListener() {
        return this.fullscreenListener;
    }

    public RewardedVideoListener getRewardedVideoListener() {
        return this.rewardedVideoListener;
    }

    public void setNativeViewReadyListener(NativeViewReadyListener nativeViewReadyListener) {
        this.nativeViewReadyListener = nativeViewReadyListener;
    }
}
