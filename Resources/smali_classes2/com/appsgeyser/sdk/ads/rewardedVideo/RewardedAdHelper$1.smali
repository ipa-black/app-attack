.class Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$1;
.super Ljava/lang/Object;
.source "RewardedAdHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$1;->this$0:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;)I
    .locals 0

    .line 61
    check-cast p2, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AbstractRewardedFacade;

    invoke-virtual {p2}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AbstractRewardedFacade;->getPriority()I

    move-result p2

    check-cast p1, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AbstractRewardedFacade;

    .line 62
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/AbstractRewardedFacade;->getPriority()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 58
    check-cast p1, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;

    check-cast p2, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;

    invoke-virtual {p0, p1, p2}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$1;->compare(Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;)I

    move-result p1

    return p1
.end method
