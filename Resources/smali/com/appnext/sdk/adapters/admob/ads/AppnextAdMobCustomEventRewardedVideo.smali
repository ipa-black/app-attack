.class public Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventRewardedVideo;
.super Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventRewardedVideo$CustomEventRewardedVideoAd;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAd(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/appnext/core/Ad;
    .locals 8

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 48
    :try_start_0
    const-string v1, "AppnextConfiguration"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 49
    const-string v2, "AppnextRewardPostback"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    move-object p3, v0

    move-object v1, p3

    :goto_0
    if-eqz v1, :cond_1

    .line 52
    instance-of v2, v1, Lcom/appnext/ads/fullscreen/RewardedConfig;

    if-eqz v2, :cond_1

    .line 53
    new-instance v2, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventRewardedVideo$CustomEventRewardedVideoAd;

    check-cast v1, Lcom/appnext/ads/fullscreen/RewardedConfig;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventRewardedVideo$CustomEventRewardedVideoAd;-><init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventRewardedVideo;Landroid/content/Context;Ljava/lang/String;Lcom/appnext/ads/fullscreen/RewardedConfig;)V

    move-object v0, v2

    goto :goto_1

    .line 55
    :cond_1
    new-instance v1, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventRewardedVideo$CustomEventRewardedVideoAd;

    invoke-direct {v1, p0, p1, p2}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventRewardedVideo$CustomEventRewardedVideoAd;-><init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventRewardedVideo;Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    if-eqz p3, :cond_2

    .line 58
    instance-of p1, p3, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;

    if-eqz p1, :cond_2

    .line 59
    check-cast p3, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;

    .line 61
    invoke-virtual {p3}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsTransactionId()Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-virtual {p3}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsUserId()Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-virtual {p3}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsRewardTypeCurrency()Ljava/lang/String;

    move-result-object v5

    .line 64
    invoke-virtual {p3}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsAmountRewarded()Ljava/lang/String;

    move-result-object v6

    .line 65
    invoke-virtual {p3}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsCustomParameter()Ljava/lang/String;

    move-result-object v7

    move-object v2, v0

    .line 60
    invoke-virtual/range {v2 .. v7}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventRewardedVideo$CustomEventRewardedVideoAd;->setRewardedServerSidePostback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 68
    :goto_2
    iget-object p2, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventRewardedVideo;->mListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdFailedToLoad(I)V

    .line 69
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_2
    :goto_3
    return-object v0
.end method
