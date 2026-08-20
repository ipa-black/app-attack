.class final Lio/bidmachine/ads/networks/meta_audience/MetaAudienceRewarded$Listener;
.super Lio/bidmachine/ads/networks/meta_audience/BaseMetaAudienceListener;
.source "MetaAudienceRewarded.java"

# interfaces
.implements Lcom/facebook/ads/RewardedVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/meta_audience/MetaAudienceRewarded;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/ads/networks/meta_audience/BaseMetaAudienceListener<",
        "Lio/bidmachine/unified/UnifiedFullscreenAdCallback;",
        ">;",
        "Lcom/facebook/ads/RewardedVideoAdListener;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/meta_audience/BaseMetaAudienceListener;-><init>(Lio/bidmachine/unified/UnifiedAdCallback;)V

    return-void
.end method


# virtual methods
.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 76
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceRewarded$Listener;->getCallback()Lio/bidmachine/unified/UnifiedAdCallback;

    move-result-object p1

    check-cast p1, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdLoaded()V

    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 81
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceRewarded$Listener;->getCallback()Lio/bidmachine/unified/UnifiedAdCallback;

    move-result-object p1

    check-cast p1, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdShown()V

    return-void
.end method

.method public onRewardedVideoClosed()V
    .locals 1

    .line 91
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceRewarded$Listener;->getCallback()Lio/bidmachine/unified/UnifiedAdCallback;

    move-result-object v0

    check-cast v0, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {v0}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdClosed()V

    return-void
.end method

.method public onRewardedVideoCompleted()V
    .locals 1

    .line 86
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceRewarded$Listener;->getCallback()Lio/bidmachine/unified/UnifiedAdCallback;

    move-result-object v0

    check-cast v0, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {v0}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdFinished()V

    return-void
.end method
