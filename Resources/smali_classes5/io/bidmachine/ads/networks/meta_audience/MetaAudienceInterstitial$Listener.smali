.class final Lio/bidmachine/ads/networks/meta_audience/MetaAudienceInterstitial$Listener;
.super Lio/bidmachine/ads/networks/meta_audience/BaseMetaAudienceListener;
.source "MetaAudienceInterstitial.java"

# interfaces
.implements Lcom/facebook/ads/InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/meta_audience/MetaAudienceInterstitial;
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
        "Lcom/facebook/ads/InterstitialAdListener;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/meta_audience/BaseMetaAudienceListener;-><init>(Lio/bidmachine/unified/UnifiedAdCallback;)V

    return-void
.end method


# virtual methods
.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 75
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceInterstitial$Listener;->getCallback()Lio/bidmachine/unified/UnifiedAdCallback;

    move-result-object p1

    check-cast p1, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdLoaded()V

    return-void
.end method

.method public onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 90
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceInterstitial$Listener;->getCallback()Lio/bidmachine/unified/UnifiedAdCallback;

    move-result-object v0

    check-cast v0, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {v0}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdClosed()V

    .line 91
    invoke-interface {p1}, Lcom/facebook/ads/Ad;->destroy()V

    return-void
.end method

.method public onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
    .locals 0

    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 85
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceInterstitial$Listener;->getCallback()Lio/bidmachine/unified/UnifiedAdCallback;

    move-result-object p1

    check-cast p1, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdShown()V

    return-void
.end method
