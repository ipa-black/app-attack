.class public abstract Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AbstractRewardedFacade;
.super Ljava/lang/Object;
.source "AbstractRewardedFacade.java"

# interfaces
.implements Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;


# instance fields
.field protected configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

.field protected context:Landroid/content/Context;

.field protected listener:Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;

.field protected priority:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AbstractRewardedFacade;->context:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AbstractRewardedFacade;->configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    .line 21
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AbstractRewardedFacade;->setPriority()V

    .line 22
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AbstractRewardedFacade;->init()V

    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AbstractRewardedFacade;->priority:I

    return v0
.end method

.method protected abstract init()V
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

.method public setListener(Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AbstractRewardedFacade;->listener:Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;

    return-void
.end method

.method protected abstract setPriority()V
.end method
