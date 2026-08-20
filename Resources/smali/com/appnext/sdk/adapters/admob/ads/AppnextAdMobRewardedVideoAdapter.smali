.class public Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;
    }
.end annotation


# instance fields
.field private _mediationRewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

.field ad:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->_mediationRewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    return-object p0
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Ljava/lang/String;Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3

    .line 33
    iput-object p4, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->_mediationRewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    .line 38
    const-string p2, "parameter"

    const-string p4, "AppnextRewardPostback"

    const-string v0, "AppnextConfiguration"

    if-eqz p5, :cond_0

    .line 39
    :try_start_0
    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p3

    .line 40
    invoke-virtual {p5, p4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 41
    invoke-virtual {p5, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    const/4 p5, 0x0

    move-object v1, p5

    move-object p5, p3

    move-object p3, v1

    :goto_0
    if-eqz p6, :cond_3

    .line 44
    invoke-virtual {p6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p3

    .line 46
    :cond_1
    invoke-virtual {p6, p4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {p6, p4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 48
    :cond_2
    invoke-virtual {p6, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 49
    invoke-virtual {p6, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    :cond_3
    if-eqz p3, :cond_4

    .line 52
    instance-of p2, p3, Lcom/appnext/ads/fullscreen/RewardedConfig;

    if-eqz p2, :cond_4

    .line 53
    new-instance p2, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;

    check-cast p3, Lcom/appnext/ads/fullscreen/RewardedConfig;

    invoke-direct {p2, p0, p1, p5, p3}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;-><init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;Landroid/content/Context;Ljava/lang/String;Lcom/appnext/ads/fullscreen/RewardedConfig;)V

    iput-object p2, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->ad:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;

    goto :goto_1

    .line 55
    :cond_4
    new-instance p2, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;

    invoke-direct {p2, p0, p1, p5}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;-><init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->ad:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;

    :goto_1
    if-eqz v1, :cond_5

    .line 58
    instance-of p1, v1, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;

    if-eqz p1, :cond_5

    .line 59
    check-cast v1, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;

    .line 60
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->ad:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;

    .line 61
    invoke-virtual {v1}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsTransactionId()Ljava/lang/String;

    move-result-object p2

    .line 62
    invoke-virtual {v1}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsUserId()Ljava/lang/String;

    move-result-object p3

    .line 63
    invoke-virtual {v1}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsRewardTypeCurrency()Ljava/lang/String;

    move-result-object p4

    .line 64
    invoke-virtual {v1}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsAmountRewarded()Ljava/lang/String;

    move-result-object p5

    .line 65
    invoke-virtual {v1}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsCustomParameter()Ljava/lang/String;

    move-result-object p6

    .line 60
    invoke-virtual/range {p1 .. p6}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;->setRewardedServerSidePostback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_5
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->ad:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;

    new-instance p2, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$1;

    invoke-direct {p2, p0}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$1;-><init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;)V

    invoke-virtual {p1, p2}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;->setOnAdErrorCallback(Lcom/appnext/core/callbacks/OnAdError;)V

    .line 75
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->ad:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;

    new-instance p2, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$2;

    invoke-direct {p2, p0}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$2;-><init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;)V

    invoke-virtual {p1, p2}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;->setOnAdClickedCallback(Lcom/appnext/core/callbacks/OnAdClicked;)V

    .line 82
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->ad:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;

    new-instance p2, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$3;

    invoke-direct {p2, p0}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$3;-><init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;)V

    invoke-virtual {p1, p2}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;->setOnAdClosedCallback(Lcom/appnext/core/callbacks/OnAdClosed;)V

    .line 89
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->ad:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;

    new-instance p2, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$4;

    invoke-direct {p2, p0}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$4;-><init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;)V

    invoke-virtual {p1, p2}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;->setOnAdLoadedCallback(Lcom/appnext/core/callbacks/OnAdLoaded;)V

    .line 96
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->ad:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;

    new-instance p2, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$5;

    invoke-direct {p2, p0}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$5;-><init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;)V

    invoke-virtual {p1, p2}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;->setOnAdOpenedCallback(Lcom/appnext/core/callbacks/OnAdOpened;)V

    .line 103
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->ad:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;

    new-instance p2, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$6;

    invoke-direct {p2, p0}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$6;-><init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;)V

    invoke-virtual {p1, p2}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;->setOnVideoEndedCallback(Lcom/appnext/core/callbacks/OnVideoEnded;)V

    .line 121
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->_mediationRewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    if-eqz p1, :cond_6

    .line 122
    invoke-interface {p1, p0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onInitializationSucceeded(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    return-void

    .line 124
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 125
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->_mediationRewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    if-eqz p1, :cond_7

    const/4 p2, 0x0

    .line 126
    invoke-interface {p1, p0, p2}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onInitializationFailed(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;I)V

    :cond_7
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->ad:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadAd(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 6

    .line 132
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->ad:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;

    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p1}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;->loadAd()V

    .line 136
    :cond_0
    const-string p1, "AppnextRewardPostback"

    if-eqz p3, :cond_1

    .line 137
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 139
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 140
    instance-of p2, p1, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;

    if-eqz p2, :cond_3

    .line 141
    check-cast p1, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;

    .line 142
    iget-object v0, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->ad:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;

    .line 143
    invoke-virtual {p1}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsTransactionId()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-virtual {p1}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsUserId()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-virtual {p1}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsRewardTypeCurrency()Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-virtual {p1}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsAmountRewarded()Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-virtual {p1}, Lcom/appnext/ads/fullscreen/RewardedServerSidePostback;->getRewardsCustomParameter()Ljava/lang/String;

    move-result-object v5

    .line 142
    invoke-virtual/range {v0 .. v5}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;->setRewardedServerSidePostback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public showVideo()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter;->ad:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobRewardedVideoAdapter$AppnextRewardedVideoAd;->showAd()V

    :cond_0
    return-void
.end method
