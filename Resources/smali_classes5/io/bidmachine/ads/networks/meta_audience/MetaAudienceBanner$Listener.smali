.class final Lio/bidmachine/ads/networks/meta_audience/MetaAudienceBanner$Listener;
.super Lio/bidmachine/ads/networks/meta_audience/BaseMetaAudienceListener;
.source "MetaAudienceBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/meta_audience/MetaAudienceBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/ads/networks/meta_audience/BaseMetaAudienceListener<",
        "Lio/bidmachine/unified/UnifiedBannerAdCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/bidmachine/unified/UnifiedBannerAdCallback;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/meta_audience/BaseMetaAudienceListener;-><init>(Lio/bidmachine/unified/UnifiedAdCallback;)V

    return-void
.end method


# virtual methods
.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 73
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceBanner$Listener;->getCallback()Lio/bidmachine/unified/UnifiedAdCallback;

    move-result-object v0

    check-cast v0, Lio/bidmachine/unified/UnifiedBannerAdCallback;

    check-cast p1, Landroid/view/View;

    invoke-interface {v0, p1}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdLoaded(Landroid/view/View;)V

    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0

    return-void
.end method
