package com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades;

import android.content.Context;
import com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade;
import com.appsgeyser.sdk.configuration.models.ConfigPhp;
/* loaded from: classes2.dex */
public abstract class AbstractRewardedFacade implements RewardedVideoFacade {
    protected ConfigPhp configPhp;
    protected Context context;
    protected RewardedVideoFacade.RewardedVideoListener listener;
    protected int priority;

    protected abstract void init();

    @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade
    public void onDestroy() {
    }

    @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade
    public void onPause() {
    }

    @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade
    public void onResume() {
    }

    protected abstract void setPriority();

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractRewardedFacade(Context context, ConfigPhp configPhp) {
        this.context = context;
        this.configPhp = configPhp;
        setPriority();
        init();
    }

    @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade
    public void setListener(RewardedVideoFacade.RewardedVideoListener rewardedVideoListener) {
        this.listener = rewardedVideoListener;
    }

    public int getPriority() {
        return this.priority;
    }
}
