.class Lio/bidmachine/ads/networks/meta_audience/MetaAudienceRewarded;
.super Lio/bidmachine/unified/UnifiedFullscreenAd;
.source "MetaAudienceRewarded.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/meta_audience/MetaAudienceRewarded$Listener;
    }
.end annotation


# instance fields
.field private listener:Lio/bidmachine/ads/networks/meta_audience/MetaAudienceRewarded$Listener;

.field private rewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lio/bidmachine/unified/UnifiedFullscreenAd;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdCallback;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 18
    check-cast p2, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    check-cast p3, Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceRewarded;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V

    return-void
.end method

.method public load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 30
    new-instance p3, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceParams;

    invoke-direct {p3, p4}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceParams;-><init>(Lio/bidmachine/unified/UnifiedMediationParams;)V

    .line 31
    invoke-virtual {p3, p2}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceParams;->isValid(Lio/bidmachine/unified/UnifiedAdCallback;)Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    .line 34
    :cond_0
    new-instance p4, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceRewarded$Listener;

    invoke-direct {p4, p2}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceRewarded$Listener;-><init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V

    iput-object p4, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceRewarded;->listener:Lio/bidmachine/ads/networks/meta_audience/MetaAudienceRewarded$Listener;

    .line 35
    new-instance p2, Lcom/facebook/ads/RewardedVideoAd;

    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p4, p3, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceParams;->placementId:Ljava/lang/String;

    invoke-direct {p2, p1, p4}, Lcom/facebook/ads/RewardedVideoAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceRewarded;->rewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

    .line 36
    invoke-virtual {p2}, Lcom/facebook/ads/RewardedVideoAd;->buildLoadAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object p1

    iget-object p4, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceRewarded;->listener:Lio/bidmachine/ads/networks/meta_audience/MetaAudienceRewarded$Listener;

    .line 37
    invoke-interface {p1, p4}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/RewardedVideoAdListener;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object p1

    iget-object p3, p3, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceParams;->bidPayload:Ljava/lang/String;

    .line 38
    invoke-interface {p1, p3}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withBid(Ljava/lang/String;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object p1

    const/4 p3, 0x0

    .line 39
    invoke-interface {p1, p3}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withFailOnCacheFailureEnabled(Z)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object p1

    .line 40
    invoke-interface {p1}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;

    move-result-object p1

    .line 36
    invoke-virtual {p2, p1}, Lcom/facebook/ads/RewardedVideoAd;->loadAd(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceRewarded;->listener:Lio/bidmachine/ads/networks/meta_audience/MetaAudienceRewarded$Listener;

    .line 59
    iget-object v1, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceRewarded;->rewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {v1}, Lcom/facebook/ads/RewardedVideoAd;->destroy()V

    .line 61
    iput-object v0, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceRewarded;->rewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

    :cond_0
    return-void
.end method

.method public show(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 46
    iget-object p1, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceRewarded;->rewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/facebook/ads/RewardedVideoAd;->isAdLoaded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceRewarded;->rewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

    .line 48
    invoke-virtual {p1}, Lcom/facebook/ads/RewardedVideoAd;->isAdInvalidated()Z

    move-result p1

    if-nez p1, :cond_0

    .line 49
    iget-object p1, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceRewarded;->rewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {p1}, Lcom/facebook/ads/RewardedVideoAd;->show()Z

    goto :goto_0

    .line 51
    :cond_0
    const-string p1, "Rewarded object is null or not loaded or invalidated"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    :goto_0
    return-void
.end method
