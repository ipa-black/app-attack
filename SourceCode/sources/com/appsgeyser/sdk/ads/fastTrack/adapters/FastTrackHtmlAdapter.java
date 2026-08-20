package com.appsgeyser.sdk.ads.fastTrack.adapters;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.appsgeyser.sdk.AppsgeyserSDK;
import com.appsgeyser.sdk.InternalEntryPoint;
import com.appsgeyser.sdk.ads.AdView;
import com.appsgeyser.sdk.ads.FullScreenBanner;
import com.appsgeyser.sdk.ads.IFullScreenBannerListener;
import com.appsgeyser.sdk.ads.fastTrack.FastTrackAdsController;
import com.appsgeyser.sdk.ads.fastTrack.FastTrackSdkModel;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter;
import com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade;
import com.appsgeyser.sdk.configuration.Constants;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
/* loaded from: classes2.dex */
public class FastTrackHtmlAdapter extends FastTrackBaseAdapter {
    private AdView adView;

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    protected void init() {
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void loadFullscreen() {
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void loadRewardedVideo() {
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void onDestroy() {
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void sendNativeViewRequest() {
    }

    public FastTrackHtmlAdapter(FastTrackSdkModel fastTrackSdkModel, Context context) {
        super(fastTrackSdkModel, context);
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void initBannerView(ViewGroup viewGroup, String str, Activity activity) {
        if (viewGroup == null || getBannerViewRefreshRate(str).intValue() == 0) {
            return;
        }
        this.adView = new AdView(this.context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, (int) Math.ceil(this.context.getResources().getDisplayMetrics().density * 50.0f));
        layoutParams.addRule(13, -1);
        this.adView.setLayoutParams(layoutParams);
        this.bannerViewContainer = viewGroup;
        this.bannerViewContainer.addView(this.adView);
        AppsgeyserSDK.setAdView(this.adView);
        this.bannerViewContainer.setVisibility(0);
        this.adView.onResume();
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void showFullscreen(String str, String str2, boolean z, Context context) {
        if (z && System.currentTimeMillis() - this.preferencesCoder.getPrefLong(Constants.PREFS_APPSGEYSER_FULLSCREEN_LAST_REQUEST_TIMING, 0L) <= getFullscreenFrequencyTimerValue(str2).intValue()) {
            Log.d(FastTrackAdsController.fastTrackLogTag, "html fullscreen show request was cancelled due to frequency timing settings");
            return;
        }
        this.preferencesCoder.savePrefLong(Constants.PREFS_APPSGEYSER_FULLSCREEN_LAST_REQUEST_TIMING, System.currentTimeMillis());
        Log.d(FastTrackAdsController.fastTrackLogTag, "html fullscreen show request");
        if (new Random().nextInt(100) + 1 <= getFullscreenIntensityPoints(str2).intValue()) {
            InternalEntryPoint.getInstance().getFullScreenBanner(context).load(str);
            return;
        }
        Log.d(FastTrackAdsController.fastTrackLogTag, "html fullscreen attempt to show canceled due to intensity settings");
        if (this.fullscreenListener != null) {
            this.fullscreenListener.onRequest();
            this.fullscreenListener.onFailedToShow();
        }
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void setFullscreenListener(final FastTrackBaseAdapter.FullscreenListener fullscreenListener) {
        AppsgeyserSDK.getFullScreenBanner(this.context).setListener(new IFullScreenBannerListener() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackHtmlAdapter.1
            @Override // com.appsgeyser.sdk.ads.IFullScreenBannerListener
            public void onLoadStarted() {
                FastTrackBaseAdapter.FullscreenListener fullscreenListener2 = fullscreenListener;
                if (fullscreenListener2 != null) {
                    fullscreenListener2.onRequest();
                }
            }

            @Override // com.appsgeyser.sdk.ads.IFullScreenBannerListener
            public void onLoadFinished(FullScreenBanner fullScreenBanner) {
                FastTrackBaseAdapter.FullscreenListener fullscreenListener2 = fullscreenListener;
                if (fullscreenListener2 != null) {
                    fullscreenListener2.onShow();
                }
            }

            @Override // com.appsgeyser.sdk.ads.IFullScreenBannerListener
            public void onAdFailedToLoad(Context context, String str) {
                FastTrackBaseAdapter.FullscreenListener fullscreenListener2 = fullscreenListener;
                if (fullscreenListener2 != null) {
                    fullscreenListener2.onFailedToShow();
                }
            }

            @Override // com.appsgeyser.sdk.ads.IFullScreenBannerListener
            public void onAdHided(Context context, String str) {
                FastTrackBaseAdapter.FullscreenListener fullscreenListener2 = fullscreenListener;
                if (fullscreenListener2 != null) {
                    fullscreenListener2.onClose();
                }
            }
        });
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void showRewardedVideo(final FastTrackBaseAdapter.RewardedVideoListener rewardedVideoListener, String str) {
        if (getRewardedVideoActivationStatus(str).booleanValue()) {
            AppsgeyserSDK.loadRewardedVideo(new RewardedVideoFacade.RewardedVideoListener() { // from class: com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackHtmlAdapter.2
                @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade.RewardedVideoListener
                public void onVideoLoaded() {
                    AppsgeyserSDK.showRewardedVideo();
                }

                @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade.RewardedVideoListener
                public void onVideoOpened() {
                    rewardedVideoListener.onVideoOpened();
                }

                @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade.RewardedVideoListener
                public void onVideoClicked() {
                    rewardedVideoListener.onVideoClicked();
                }

                @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade.RewardedVideoListener
                public void onVideoClosed() {
                    rewardedVideoListener.onVideoClosed();
                }

                @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade.RewardedVideoListener
                public void onVideoError(String str2) {
                    rewardedVideoListener.onVideoError(str2);
                }

                @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade.RewardedVideoListener
                public void onVideoFinished() {
                    rewardedVideoListener.onVideoFinished();
                }
            });
            return;
        }
        Log.d(FastTrackAdsController.fastTrackLogTag, "Rewarded video placement disabled");
        this.rewardedVideoListener.onVideoDeactivated();
        this.rewardedVideoListener = null;
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void onResume(Context context) {
        super.onResume(context);
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void onPause() {
        super.onPause();
        if (this.bannerViewContainer != null) {
            this.bannerViewContainer.removeView(this.adView);
            this.bannerViewContainer.setVisibility(8);
            this.bannerViewContainer = null;
            AppsgeyserSDK.setAdView(null);
            this.adView.onPause();
        }
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public List<Object> getNativeAds(int i) {
        return new ArrayList();
    }
}
