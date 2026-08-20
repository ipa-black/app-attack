.class Lio/bidmachine/ads/networks/notsy/NotsyFullscreenAdListener;
.super Ljava/lang/Object;
.source "NotsyFullscreenAdListener.java"

# interfaces
.implements Lio/bidmachine/ads/networks/notsy/InternalNotsyAdLoadListener;
.implements Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NotsyAdType:",
        "Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd;",
        ">",
        "Ljava/lang/Object;",
        "Lio/bidmachine/ads/networks/notsy/InternalNotsyAdLoadListener<",
        "TNotsyAdType;>;",
        "Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;"
    }
.end annotation


# instance fields
.field protected final callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;


# direct methods
.method constructor <init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/bidmachine/ads/networks/notsy/NotsyFullscreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 40
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/NotsyFullscreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {v0}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdClicked()V

    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .line 50
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/NotsyFullscreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {v0}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdClosed()V

    return-void
.end method

.method public onAdComplete()V
    .locals 1

    .line 45
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/NotsyFullscreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {v0}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdFinished()V

    return-void
.end method

.method public onAdLoadFailed(Lio/bidmachine/utils/BMError;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/NotsyFullscreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {v0, p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V
    .locals 0

    .line 8
    check-cast p1, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/notsy/NotsyFullscreenAdListener;->onAdLoaded(Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd;)V

    return-void
.end method

.method public onAdLoaded(Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TNotsyAdType;)V"
        }
    .end annotation

    .line 20
    iget-object p1, p0, Lio/bidmachine/ads/networks/notsy/NotsyFullscreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdLoaded()V

    return-void
.end method

.method public onAdShowFailed(Lio/bidmachine/utils/BMError;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/NotsyFullscreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {v0, p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onAdShown()V
    .locals 1

    .line 35
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/NotsyFullscreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {v0}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdShown()V

    return-void
.end method
