package com.appsgeyser.sdk.ads.fastTrack.adapters;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import com.appsgeyser.sdk.ads.fastTrack.FastTrackSdkModel;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class FastTrackDisabledAdapter extends FastTrackBaseAdapter {
    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    protected void init() {
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void initBannerView(ViewGroup viewGroup, String str, Activity activity) {
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

    public FastTrackDisabledAdapter(FastTrackSdkModel fastTrackSdkModel, Context context) {
        super(fastTrackSdkModel, context);
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void showFullscreen(String str, String str2, boolean z, Context context) {
        if (this.fullscreenListener != null) {
            this.fullscreenListener.onRequest();
            this.fullscreenListener.onFailedToShow();
        }
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public void showRewardedVideo(FastTrackBaseAdapter.RewardedVideoListener rewardedVideoListener, String str) {
        rewardedVideoListener.onVideoDeactivated();
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter
    public List<Object> getNativeAds(int i) {
        return new ArrayList();
    }
}
