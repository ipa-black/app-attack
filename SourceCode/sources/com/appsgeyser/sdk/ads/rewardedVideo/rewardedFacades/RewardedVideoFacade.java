package com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades;

import java.io.Serializable;
/* loaded from: classes2.dex */
public interface RewardedVideoFacade {

    /* loaded from: classes2.dex */
    public interface RewardedVideoListener extends Serializable {
        void onVideoClicked();

        void onVideoClosed();

        void onVideoError(String str);

        void onVideoFinished();

        void onVideoLoaded();

        void onVideoOpened();
    }

    boolean isVideoLoaded();

    void loadRewardedVideo();

    void onDestroy();

    void onPause();

    void onResume();

    void setListener(RewardedVideoListener rewardedVideoListener);

    void showRewardedVideo();
}
