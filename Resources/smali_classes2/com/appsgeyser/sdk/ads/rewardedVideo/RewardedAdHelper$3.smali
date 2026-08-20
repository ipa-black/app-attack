.class Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$3;
.super Ljava/lang/Object;
.source "RewardedAdHelper.java"

# interfaces
.implements Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->createDefaultListener(Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;)Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

.field final synthetic val$listener:Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$3;->this$0:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$3;->val$listener:Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoClicked()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$3;->val$listener:Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;->onVideoClicked()V

    return-void
.end method

.method public onVideoClosed()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$3;->this$0:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->access$102(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;I)I

    .line 147
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$3;->this$0:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->access$002(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;I)I

    .line 148
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$3;->this$0:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->access$600(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;)V

    .line 149
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$3;->val$listener:Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;->onVideoClosed()V

    return-void
.end method

.method public onVideoError(Ljava/lang/String;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$3;->val$listener:Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;

    invoke-interface {v0, p1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;->onVideoError(Ljava/lang/String;)V

    .line 155
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$3;->this$0:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->access$600(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;)V

    return-void
.end method

.method public onVideoFinished()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$3;->val$listener:Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;->onVideoFinished()V

    .line 161
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$3;->this$0:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->access$002(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;I)I

    return-void
.end method

.method public onVideoLoaded()V
    .locals 0

    return-void
.end method

.method public onVideoOpened()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$3;->val$listener:Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;->onVideoOpened()V

    return-void
.end method
