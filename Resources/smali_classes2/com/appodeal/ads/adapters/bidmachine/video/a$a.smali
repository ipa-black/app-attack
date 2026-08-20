.class public final Lcom/appodeal/ads/adapters/bidmachine/video/a$a;
.super Ljava/lang/Object;
.source "BidMachineVideo.java"

# interfaces
.implements Lio/bidmachine/interstitial/InterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/adapters/bidmachine/video/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/appodeal/ads/unified/UnifiedVideoCallback;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/unified/UnifiedVideoCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/video/a$a;->a:Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    return-void
.end method


# virtual methods
.method public final onAdClicked(Lio/bidmachine/IAd;)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/interstitial/InterstitialAd;

    .line 2
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/video/a$a;->a:Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedVideoCallback;->onAdClicked()V

    return-void
.end method

.method public final onAdClosed(Lio/bidmachine/IAd;Z)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/interstitial/InterstitialAd;

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/video/a$a;->a:Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedVideoCallback;->onAdFinished()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/video/a$a;->a:Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedVideoCallback;->onAdClosed()V

    return-void
.end method

.method public final onAdExpired(Lio/bidmachine/IAd;)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/interstitial/InterstitialAd;

    .line 2
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/video/a$a;->a:Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedVideoCallback;->onAdExpired()V

    return-void
.end method

.method public final onAdImpression(Lio/bidmachine/IAd;)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/interstitial/InterstitialAd;

    .line 2
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/video/a$a;->a:Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedVideoCallback;->onAdShown()V

    return-void
.end method

.method public final onAdLoadFailed(Lio/bidmachine/IAd;Lio/bidmachine/utils/BMError;)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/interstitial/InterstitialAd;

    .line 2
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/video/a$a;->a:Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    invoke-static {p1, p2}, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork;->printError(Lcom/appodeal/ads/unified/UnifiedAdCallback;Lio/bidmachine/utils/BMError;)V

    .line 3
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/video/a$a;->a:Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    invoke-static {p2}, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork;->mapBidMachineError(Lio/bidmachine/utils/BMError;)Lcom/appodeal/ads/networking/LoadingError;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/unified/UnifiedVideoCallback;->onAdLoadFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public final onAdLoaded(Lio/bidmachine/IAd;)V
    .locals 1

    .line 1
    check-cast p1, Lio/bidmachine/interstitial/InterstitialAd;

    .line 2
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/video/a$a;->a:Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    invoke-virtual {p1}, Lio/bidmachine/interstitial/InterstitialAd;->getAuctionResult()Lio/bidmachine/models/AuctionResult;

    move-result-object p1

    invoke-static {p1}, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork;->getRequestedAdInfo(Lio/bidmachine/models/AuctionResult;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/unified/UnifiedVideoCallback;->onAdInfoRequested(Landroid/os/Bundle;)V

    .line 3
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/video/a$a;->a:Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedVideoCallback;->onAdLoaded()V

    return-void
.end method

.method public final onAdShowFailed(Lio/bidmachine/IAd;Lio/bidmachine/utils/BMError;)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/interstitial/InterstitialAd;

    .line 2
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/video/a$a;->a:Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    invoke-static {p1, p2}, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork;->printError(Lcom/appodeal/ads/unified/UnifiedAdCallback;Lio/bidmachine/utils/BMError;)V

    .line 3
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/video/a$a;->a:Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedVideoCallback;->onAdShowFailed()V

    return-void
.end method
