.class public final Lcom/appodeal/ads/adapters/bidmachine/interstitial/a$a;
.super Ljava/lang/Object;
.source "BidMachineInterstitial.java"

# interfaces
.implements Lio/bidmachine/interstitial/InterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/adapters/bidmachine/interstitial/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/interstitial/a$a;->a:Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    return-void
.end method


# virtual methods
.method public final onAdClicked(Lio/bidmachine/IAd;)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/interstitial/InterstitialAd;

    .line 2
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/interstitial/a$a;->a:Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;->onAdClicked()V

    return-void
.end method

.method public final onAdClosed(Lio/bidmachine/IAd;Z)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/interstitial/InterstitialAd;

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/interstitial/a$a;->a:Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;->onAdFinished()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/interstitial/a$a;->a:Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;->onAdClosed()V

    return-void
.end method

.method public final onAdExpired(Lio/bidmachine/IAd;)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/interstitial/InterstitialAd;

    .line 2
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/interstitial/a$a;->a:Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;->onAdExpired()V

    return-void
.end method

.method public final onAdImpression(Lio/bidmachine/IAd;)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/interstitial/InterstitialAd;

    .line 2
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/interstitial/a$a;->a:Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;->onAdShown()V

    return-void
.end method

.method public final onAdLoadFailed(Lio/bidmachine/IAd;Lio/bidmachine/utils/BMError;)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/interstitial/InterstitialAd;

    .line 2
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/interstitial/a$a;->a:Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    invoke-static {p1, p2}, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork;->printError(Lcom/appodeal/ads/unified/UnifiedAdCallback;Lio/bidmachine/utils/BMError;)V

    .line 3
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/interstitial/a$a;->a:Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    invoke-static {p2}, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork;->mapBidMachineError(Lio/bidmachine/utils/BMError;)Lcom/appodeal/ads/networking/LoadingError;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;->onAdLoadFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public final onAdLoaded(Lio/bidmachine/IAd;)V
    .locals 1

    .line 1
    check-cast p1, Lio/bidmachine/interstitial/InterstitialAd;

    .line 2
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/interstitial/a$a;->a:Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    invoke-virtual {p1}, Lio/bidmachine/interstitial/InterstitialAd;->getAuctionResult()Lio/bidmachine/models/AuctionResult;

    move-result-object p1

    invoke-static {p1}, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork;->getRequestedAdInfo(Lio/bidmachine/models/AuctionResult;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;->onAdInfoRequested(Landroid/os/Bundle;)V

    .line 3
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/interstitial/a$a;->a:Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;->onAdLoaded()V

    return-void
.end method

.method public final onAdShowFailed(Lio/bidmachine/IAd;Lio/bidmachine/utils/BMError;)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/interstitial/InterstitialAd;

    .line 2
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/interstitial/a$a;->a:Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    invoke-static {p1, p2}, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork;->printError(Lcom/appodeal/ads/unified/UnifiedAdCallback;Lio/bidmachine/utils/BMError;)V

    .line 3
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/interstitial/a$a;->a:Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;->onAdShowFailed()V

    return-void
.end method
