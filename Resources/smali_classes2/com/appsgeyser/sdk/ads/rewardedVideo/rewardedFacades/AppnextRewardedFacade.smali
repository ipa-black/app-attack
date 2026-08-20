.class public Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;
.super Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AbstractRewardedFacade;
.source "AppnextRewardedFacade.java"


# instance fields
.field private rewardedVideo:Lcom/appnext/ads/fullscreen/RewardedVideo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AbstractRewardedFacade;-><init>(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V

    return-void
.end method

.method private setupCallbacks()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;->rewardedVideo:Lcom/appnext/ads/fullscreen/RewardedVideo;

    new-instance v1, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade$$ExternalSyntheticLambda0;-><init>(Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;)V

    invoke-virtual {v0, v1}, Lcom/appnext/ads/fullscreen/RewardedVideo;->setOnAdLoadedCallback(Lcom/appnext/core/callbacks/OnAdLoaded;)V

    .line 48
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;->rewardedVideo:Lcom/appnext/ads/fullscreen/RewardedVideo;

    new-instance v1, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade$$ExternalSyntheticLambda1;-><init>(Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;)V

    invoke-virtual {v0, v1}, Lcom/appnext/ads/fullscreen/RewardedVideo;->setOnAdOpenedCallback(Lcom/appnext/core/callbacks/OnAdOpened;)V

    .line 61
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;->rewardedVideo:Lcom/appnext/ads/fullscreen/RewardedVideo;

    new-instance v1, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade$$ExternalSyntheticLambda2;-><init>(Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;)V

    invoke-virtual {v0, v1}, Lcom/appnext/ads/fullscreen/RewardedVideo;->setOnAdClickedCallback(Lcom/appnext/core/callbacks/OnAdClicked;)V

    .line 74
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;->rewardedVideo:Lcom/appnext/ads/fullscreen/RewardedVideo;

    new-instance v1, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade$$ExternalSyntheticLambda3;-><init>(Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;)V

    invoke-virtual {v0, v1}, Lcom/appnext/ads/fullscreen/RewardedVideo;->setOnAdClosedCallback(Lcom/appnext/core/callbacks/OnAdClosed;)V

    .line 79
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;->rewardedVideo:Lcom/appnext/ads/fullscreen/RewardedVideo;

    new-instance v1, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade$$ExternalSyntheticLambda4;-><init>(Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;)V

    invoke-virtual {v0, v1}, Lcom/appnext/ads/fullscreen/RewardedVideo;->setOnAdErrorCallback(Lcom/appnext/core/callbacks/OnAdError;)V

    .line 84
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;->rewardedVideo:Lcom/appnext/ads/fullscreen/RewardedVideo;

    new-instance v1, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade$$ExternalSyntheticLambda5;-><init>(Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;)V

    invoke-virtual {v0, v1}, Lcom/appnext/ads/fullscreen/RewardedVideo;->setOnVideoEndedCallback(Lcom/appnext/core/callbacks/OnVideoEnded;)V

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/appnext/base/Appnext;->init(Landroid/content/Context;)V

    return-void
.end method

.method public isVideoLoaded()Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;->rewardedVideo:Lcom/appnext/ads/fullscreen/RewardedVideo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/RewardedVideo;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$setupCallbacks$0$com-appsgeyser-sdk-ads-rewardedVideo-rewardedFacades-AppnextRewardedFacade(Ljava/lang/String;Lcom/appnext/core/AppnextAdCreativeType;)V
    .locals 0

    .line 46
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;->listener:Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;->onVideoLoaded()V

    return-void
.end method

.method synthetic lambda$setupCallbacks$1$com-appsgeyser-sdk-ads-rewardedVideo-rewardedFacades-AppnextRewardedFacade()V
    .locals 6

    .line 49
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;->configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;->context:Landroid/content/Context;

    sget-object v3, Lcom/appsgeyser/sdk/server/StatController$AdsType;->REWARDED:Lcom/appsgeyser/sdk/server/StatController$AdsType;

    const-string v4, "appnext rewarded video impression"

    const-string v5, "appnextSdk"

    .line 51
    invoke-static {v1, v2, v3, v4, v5}, Lcom/appsgeyser/sdk/server/StatController;->generateQueryParametersForSdk(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;Lcom/appsgeyser/sdk/server/StatController$AdsType;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;->context:Landroid/content/Context;

    const/4 v3, 0x0

    .line 50
    const-string v4, "appnext_rewarded_sdk_impression"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 58
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;->listener:Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;->onVideoOpened()V

    return-void
.end method

.method synthetic lambda$setupCallbacks$2$com-appsgeyser-sdk-ads-rewardedVideo-rewardedFacades-AppnextRewardedFacade()V
    .locals 6

    .line 62
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;->configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;->context:Landroid/content/Context;

    sget-object v3, Lcom/appsgeyser/sdk/server/StatController$AdsType;->REWARDED:Lcom/appsgeyser/sdk/server/StatController$AdsType;

    const-string v4, "appnext rewarded video click"

    const-string v5, "appnextSdk"

    .line 64
    invoke-static {v1, v2, v3, v4, v5}, Lcom/appsgeyser/sdk/server/StatController;->generateQueryParametersForSdk(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;Lcom/appsgeyser/sdk/server/StatController$AdsType;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;->context:Landroid/content/Context;

    const/4 v3, 0x0

    .line 63
    const-string v4, "appnext_rewarded_sdk_click"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 71
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;->listener:Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;->onVideoClicked()V

    return-void
.end method

.method synthetic lambda$setupCallbacks$3$com-appsgeyser-sdk-ads-rewardedVideo-rewardedFacades-AppnextRewardedFacade()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;->rewardedVideo:Lcom/appnext/ads/fullscreen/RewardedVideo;

    .line 76
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;->listener:Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;->onVideoClosed()V

    return-void
.end method

.method synthetic lambda$setupCallbacks$4$com-appsgeyser-sdk-ads-rewardedVideo-rewardedFacades-AppnextRewardedFacade(Ljava/lang/String;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;->rewardedVideo:Lcom/appnext/ads/fullscreen/RewardedVideo;

    .line 81
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;->listener:Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;

    invoke-interface {v0, p1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;->onVideoError(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setupCallbacks$5$com-appsgeyser-sdk-ads-rewardedVideo-rewardedFacades-AppnextRewardedFacade()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;->listener:Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;->onVideoFinished()V

    return-void
.end method

.method public loadRewardedVideo()V
    .locals 4

    .line 38
    new-instance v0, Lcom/appnext/ads/fullscreen/RewardedVideo;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;->configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    invoke-virtual {v2}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getRewardedVideoSdk()Ljava/util/Map;

    move-result-object v2

    const-string v3, "appnextSdk"

    .line 39
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    .line 40
    invoke-virtual {v2}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/appnext/ads/fullscreen/RewardedVideo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;->rewardedVideo:Lcom/appnext/ads/fullscreen/RewardedVideo;

    .line 41
    invoke-direct {p0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;->setupCallbacks()V

    .line 42
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;->rewardedVideo:Lcom/appnext/ads/fullscreen/RewardedVideo;

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/RewardedVideo;->loadAd()V

    return-void
.end method

.method protected setPriority()V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;->configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getRewardedVideoSdk()Ljava/util/Map;

    move-result-object v0

    const-string v1, "appnextSdk"

    .line 27
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    .line 28
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->getPriority()I

    move-result v0

    iput v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;->priority:I

    return-void
.end method

.method public showRewardedVideo()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AppnextRewardedFacade;->rewardedVideo:Lcom/appnext/ads/fullscreen/RewardedVideo;

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/RewardedVideo;->showAd()V

    return-void
.end method
