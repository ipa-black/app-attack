.class Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$2;
.super Ljava/lang/Object;
.source "RewardedAdHelper.java"

# interfaces
.implements Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->preloadVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

.field final synthetic val$facade:Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$2;->this$0:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$2;->val$facade:Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoClicked()V
    .locals 0

    return-void
.end method

.method public onVideoClosed()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$2;->this$0:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->access$102(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;I)I

    .line 99
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$2;->this$0:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->access$002(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;I)I

    .line 100
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$2;->this$0:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->access$600(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;)V

    return-void
.end method

.method public onVideoError(Ljava/lang/String;)V
    .locals 2

    .line 105
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$2;->this$0:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->access$100(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;)I

    move-result p1

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$2;->this$0:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->access$700(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    .line 106
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$2;->this$0:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    invoke-static {p1, v1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->access$802(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;Z)Z

    .line 107
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$2;->this$0:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->access$300(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;)Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$2;->this$0:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->access$400(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;)Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 108
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$2;->this$0:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->access$400(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;)Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->dismiss()V

    .line 109
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$2;->this$0:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->access$402(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;)Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    .line 110
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$2;->this$0:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->access$300(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;)Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;

    move-result-object p1

    const-string v0, "No video available"

    invoke-interface {p1, v0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;->onVideoError(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$2;->this$0:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->access$108(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;)I

    .line 114
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$2;->this$0:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->access$600(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onVideoFinished()V
    .locals 0

    return-void
.end method

.method public onVideoLoaded()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$2;->this$0:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->access$100(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->access$002(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;I)I

    .line 77
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$2;->this$0:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->access$202(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;Z)Z

    .line 78
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$2;->this$0:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->access$300(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;)Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$2;->this$0:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->access$400(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;)Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$2;->this$0:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->access$400(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;)Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->dismiss()V

    .line 80
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$2;->this$0:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->access$402(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;)Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    .line 81
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$2;->val$facade:Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$2;->this$0:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->access$300(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;)Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->access$500(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;)Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade;->setListener(Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;)V

    .line 82
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper$2;->this$0:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->access$300(Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;)Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;->onVideoLoaded()V

    :cond_0
    return-void
.end method

.method public onVideoOpened()V
    .locals 0

    return-void
.end method
