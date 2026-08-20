package com.appnext.ads.fullscreen;

import android.content.Context;
import com.appnext.core.p;
/* loaded from: classes.dex */
public class RewardedVideo extends Video {
    public static final String VIDEO_MODE_DEFAULT = "default";
    public static final String VIDEO_MODE_MULTI = "multi";
    public static final String VIDEO_MODE_NORMAL = "normal";
    private String mode;
    private int multiTimerLength;
    private RewardedServerSidePostback rewardedServerSidePostback;

    /* JADX INFO: Access modifiers changed from: protected */
    public RewardedVideo(Context context, RewardedVideo rewardedVideo) {
        super(context, rewardedVideo);
        this.mode = VIDEO_MODE_DEFAULT;
        this.multiTimerLength = 5;
        if (rewardedVideo != null) {
            setRewardedServerSidePostback(rewardedVideo.getRewardedServerSidePostback());
            setMode(rewardedVideo.getMode());
            setMultiTimerLength(rewardedVideo.getMultiTimerLength());
            setBackButtonCanClose(rewardedVideo.isBackButtonCanClose());
        }
    }

    public RewardedVideo(Context context, String str) {
        super(context, 2, str);
        this.mode = VIDEO_MODE_DEFAULT;
        this.multiTimerLength = 5;
    }

    @Override // com.appnext.core.Ad
    public String getAUID() {
        return "800";
    }

    public RewardedVideo(Context context, String str, RewardedConfig rewardedConfig) {
        super(context, 2, str, rewardedConfig);
        this.mode = VIDEO_MODE_DEFAULT;
        this.multiTimerLength = 5;
        if (rewardedConfig != null) {
            setBackButtonCanClose(rewardedConfig.isBackButtonCanClose());
            setMode(rewardedConfig.getMode());
            setMultiTimerLength(rewardedConfig.getMultiTimerLength());
            setShowCta(rewardedConfig.isShowCta());
        }
    }

    @Override // com.appnext.ads.fullscreen.Video
    protected p getConfig() {
        return f.q();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public RewardedServerSidePostback getRewardedServerSidePostback() {
        if (getRewardsTransactionId().equals("") && getRewardsUserId().equals("") && getRewardsRewardTypeCurrency().equals("") && getRewardsAmountRewarded().equals("") && getRewardsCustomParameter().equals("")) {
            return null;
        }
        return this.rewardedServerSidePostback;
    }

    protected void setRewardedServerSidePostback(RewardedServerSidePostback rewardedServerSidePostback) {
        this.rewardedServerSidePostback = rewardedServerSidePostback;
    }

    public void setRewardedServerSidePostback(String str, String str2, String str3, String str4, String str5) {
        setRewardsTransactionId(str);
        setRewardsUserId(str2);
        setRewardsRewardTypeCurrency(str3);
        setRewardsAmountRewarded(str4);
        setRewardsCustomParameter(str5);
    }

    public String getRewardsTransactionId() {
        RewardedServerSidePostback rewardedServerSidePostback = this.rewardedServerSidePostback;
        if (rewardedServerSidePostback == null) {
            return "";
        }
        return rewardedServerSidePostback.getRewardsTransactionId();
    }

    public void setRewardsTransactionId(String str) {
        if (this.rewardedServerSidePostback == null) {
            this.rewardedServerSidePostback = new RewardedServerSidePostback();
        }
        this.rewardedServerSidePostback.setRewardsTransactionId(str);
    }

    public String getRewardsUserId() {
        RewardedServerSidePostback rewardedServerSidePostback = this.rewardedServerSidePostback;
        if (rewardedServerSidePostback == null) {
            return "";
        }
        return rewardedServerSidePostback.getRewardsUserId();
    }

    public void setRewardsUserId(String str) {
        if (this.rewardedServerSidePostback == null) {
            this.rewardedServerSidePostback = new RewardedServerSidePostback();
        }
        this.rewardedServerSidePostback.setRewardsUserId(str);
    }

    public String getRewardsRewardTypeCurrency() {
        RewardedServerSidePostback rewardedServerSidePostback = this.rewardedServerSidePostback;
        if (rewardedServerSidePostback == null) {
            return "";
        }
        return rewardedServerSidePostback.getRewardsRewardTypeCurrency();
    }

    public void setRewardsRewardTypeCurrency(String str) {
        if (this.rewardedServerSidePostback == null) {
            this.rewardedServerSidePostback = new RewardedServerSidePostback();
        }
        this.rewardedServerSidePostback.setRewardsRewardTypeCurrency(str);
    }

    public String getRewardsAmountRewarded() {
        RewardedServerSidePostback rewardedServerSidePostback = this.rewardedServerSidePostback;
        if (rewardedServerSidePostback == null) {
            return "";
        }
        return rewardedServerSidePostback.getRewardsAmountRewarded();
    }

    public void setRewardsAmountRewarded(String str) {
        if (this.rewardedServerSidePostback == null) {
            this.rewardedServerSidePostback = new RewardedServerSidePostback();
        }
        this.rewardedServerSidePostback.setRewardsAmountRewarded(str);
    }

    public String getRewardsCustomParameter() {
        RewardedServerSidePostback rewardedServerSidePostback = this.rewardedServerSidePostback;
        if (rewardedServerSidePostback == null) {
            return "";
        }
        return rewardedServerSidePostback.getRewardsCustomParameter();
    }

    public void setRewardsCustomParameter(String str) {
        if (this.rewardedServerSidePostback == null) {
            this.rewardedServerSidePostback = new RewardedServerSidePostback();
        }
        this.rewardedServerSidePostback.setRewardsCustomParameter(str);
    }

    public String getMode() {
        return this.mode;
    }

    public void setMode(String str) {
        this.mode = str;
    }

    public int getMultiTimerLength() {
        return this.multiTimerLength;
    }

    public void setMultiTimerLength(int i) {
        if (i <= 0 || i > 20) {
            return;
        }
        this.multiTimerLength = i;
    }
}
