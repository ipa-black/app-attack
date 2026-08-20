.class public final Lcom/appodeal/ads/adapters/bidmachine/rewarded_video/a;
.super Lcom/appodeal/ads/unified/UnifiedRewarded;
.source "BidMachineRewarded.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/adapters/bidmachine/rewarded_video/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/unified/UnifiedRewarded<",
        "Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$RequestParams;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lio/bidmachine/rewarded/RewardedRequest;

.field public b:Lio/bidmachine/rewarded/RewardedAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedRewarded;-><init>()V

    return-void
.end method


# virtual methods
.method public final load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/appodeal/ads/unified/UnifiedRewardedParams;

    check-cast p3, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$RequestParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    .line 2
    new-instance p2, Lio/bidmachine/rewarded/RewardedRequest$Builder;

    invoke-direct {p2}, Lio/bidmachine/rewarded/RewardedRequest$Builder;-><init>()V

    .line 3
    invoke-virtual {p3, p2}, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$RequestParams;->prepareRequest(Lio/bidmachine/models/RequestBuilder;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p2

    check-cast p2, Lio/bidmachine/rewarded/RewardedRequest$Builder;

    .line 4
    invoke-virtual {p2}, Lio/bidmachine/rewarded/RewardedRequest$Builder;->build()Lio/bidmachine/AdRequest;

    move-result-object p2

    check-cast p2, Lio/bidmachine/rewarded/RewardedRequest;

    iput-object p2, p0, Lcom/appodeal/ads/adapters/bidmachine/rewarded_video/a;->a:Lio/bidmachine/rewarded/RewardedRequest;

    .line 5
    new-instance p2, Lio/bidmachine/rewarded/RewardedAd;

    invoke-interface {p1}, Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/bidmachine/rewarded/RewardedAd;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/appodeal/ads/adapters/bidmachine/rewarded_video/a$a;

    invoke-direct {p1, p4}, Lcom/appodeal/ads/adapters/bidmachine/rewarded_video/a$a;-><init>(Lcom/appodeal/ads/unified/UnifiedRewardedCallback;)V

    .line 6
    invoke-virtual {p2, p1}, Lio/bidmachine/rewarded/RewardedAd;->setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/IAd;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rewarded/RewardedAd;

    iget-object p2, p0, Lcom/appodeal/ads/adapters/bidmachine/rewarded_video/a;->a:Lio/bidmachine/rewarded/RewardedRequest;

    .line 7
    invoke-virtual {p1, p2}, Lio/bidmachine/rewarded/RewardedAd;->load(Lio/bidmachine/AdRequest;)Lio/bidmachine/IAd;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rewarded/RewardedAd;

    iput-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/rewarded_video/a;->b:Lio/bidmachine/rewarded/RewardedAd;

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/rewarded_video/a;->a:Lio/bidmachine/rewarded/RewardedRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/rewarded/RewardedRequest;->destroy()V

    .line 3
    iput-object v1, p0, Lcom/appodeal/ads/adapters/bidmachine/rewarded_video/a;->a:Lio/bidmachine/rewarded/RewardedRequest;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/rewarded_video/a;->b:Lio/bidmachine/rewarded/RewardedAd;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lio/bidmachine/rewarded/RewardedAd;->destroy()V

    .line 7
    iput-object v1, p0, Lcom/appodeal/ads/adapters/bidmachine/rewarded_video/a;->b:Lio/bidmachine/rewarded/RewardedAd;

    :cond_1
    return-void
.end method

.method public final onMediationLoss(Ljava/lang/String;D)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/appodeal/ads/unified/UnifiedAd;->onMediationLoss(Ljava/lang/String;D)V

    .line 2
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/rewarded_video/a;->a:Lio/bidmachine/rewarded/RewardedRequest;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/rewarded/RewardedRequest;->notifyMediationLoss(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_0
    return-void
.end method

.method public final onMediationWin()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/appodeal/ads/unified/UnifiedAd;->onMediationWin()V

    .line 2
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/rewarded_video/a;->a:Lio/bidmachine/rewarded/RewardedRequest;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lio/bidmachine/rewarded/RewardedRequest;->notifyMediationWin()V

    :cond_0
    return-void
.end method

.method public final show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    .line 2
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/rewarded_video/a;->b:Lio/bidmachine/rewarded/RewardedAd;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/bidmachine/rewarded/RewardedAd;->canShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/rewarded_video/a;->b:Lio/bidmachine/rewarded/RewardedAd;

    invoke-virtual {p1}, Lio/bidmachine/rewarded/RewardedAd;->show()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;->onAdShowFailed()V

    :goto_0
    return-void
.end method
