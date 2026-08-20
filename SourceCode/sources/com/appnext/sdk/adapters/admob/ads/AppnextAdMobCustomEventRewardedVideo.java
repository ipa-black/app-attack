package com.appnext.sdk.adapters.admob.ads;

import android.content.Context;
import android.os.Bundle;
import com.appnext.ads.fullscreen.RewardedConfig;
import com.appnext.ads.fullscreen.RewardedServerSidePostback;
import com.appnext.ads.fullscreen.RewardedVideo;
import com.appnext.core.Ad;
import java.io.Serializable;
/* loaded from: classes.dex */
public class AppnextAdMobCustomEventRewardedVideo extends AppnextAdMobCustomEvent {

    /* loaded from: classes.dex */
    private class CustomEventRewardedVideoAd extends RewardedVideo {
        protected static final String TID = "321";

        public CustomEventRewardedVideoAd(Context context, String str) {
            super(context, str);
        }

        public CustomEventRewardedVideoAd(Context context, String str, RewardedConfig rewardedConfig) {
            super(context, str, rewardedConfig);
        }

        @Override // com.appnext.ads.fullscreen.Video, com.appnext.core.Ad
        public String getTID() {
            return TID;
        }
    }

    @Override // com.appnext.sdk.adapters.admob.ads.AppnextAdMobCustomEvent
    protected Ad createAd(Context context, String str, Bundle bundle) {
        Serializable serializable;
        Serializable serializable2;
        CustomEventRewardedVideoAd customEventRewardedVideoAd = null;
        if (bundle != null) {
            try {
                serializable = bundle.getSerializable(AppnextAdMobCustomEvent.AppnextConfigurationExtraKey);
                serializable2 = bundle.getSerializable(AppnextAdMobCustomEvent.AppnextRewardPostbackExtraKey);
            } catch (Throwable th) {
                this.mListener.onAdFailedToLoad(0);
                th.getMessage();
            }
        } else {
            serializable2 = null;
            serializable = null;
        }
        if (serializable != null && (serializable instanceof RewardedConfig)) {
            customEventRewardedVideoAd = new CustomEventRewardedVideoAd(context, str, (RewardedConfig) serializable);
        } else {
            customEventRewardedVideoAd = new CustomEventRewardedVideoAd(context, str);
        }
        if (serializable2 != null && (serializable2 instanceof RewardedServerSidePostback)) {
            RewardedServerSidePostback rewardedServerSidePostback = (RewardedServerSidePostback) serializable2;
            customEventRewardedVideoAd.setRewardedServerSidePostback(rewardedServerSidePostback.getRewardsTransactionId(), rewardedServerSidePostback.getRewardsUserId(), rewardedServerSidePostback.getRewardsRewardTypeCurrency(), rewardedServerSidePostback.getRewardsAmountRewarded(), rewardedServerSidePostback.getRewardsCustomParameter());
        }
        return customEventRewardedVideoAd;
    }
}
