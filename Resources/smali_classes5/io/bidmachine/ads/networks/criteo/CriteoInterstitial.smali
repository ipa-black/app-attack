.class Lio/bidmachine/ads/networks/criteo/CriteoInterstitial;
.super Lio/bidmachine/unified/UnifiedFullscreenAd;
.source "CriteoInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/criteo/CriteoInterstitial$Listener;
    }
.end annotation


# instance fields
.field private criteoInterstitial:Lcom/criteo/publisher/CriteoInterstitial;


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

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/ads/networks/criteo/CriteoInterstitial;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V

    return-void
.end method

.method public load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 28
    const-string p1, "ad_unit_id"

    invoke-virtual {p4, p1}, Lio/bidmachine/unified/UnifiedMediationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-static {p1}, Lio/bidmachine/ads/networks/criteo/CriteoAdUnitStorage;->getAdUnit(Ljava/lang/String;)Lcom/criteo/publisher/model/AdUnit;

    move-result-object p1

    check-cast p1, Lcom/criteo/publisher/model/InterstitialAdUnit;

    if-nez p1, :cond_0

    .line 31
    const-string p1, "AdUnit"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->notFound(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 34
    :cond_0
    invoke-static {p5}, Lio/bidmachine/ads/networks/criteo/CriteoBidTokenStorage;->takeBid(Lio/bidmachine/NetworkAdUnit;)Lcom/criteo/publisher/Bid;

    move-result-object p3

    if-nez p3, :cond_1

    .line 36
    const-string p1, "Bid"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->notFound(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 39
    :cond_1
    new-instance p4, Lcom/criteo/publisher/CriteoInterstitial;

    invoke-direct {p4, p1}, Lcom/criteo/publisher/CriteoInterstitial;-><init>(Lcom/criteo/publisher/model/InterstitialAdUnit;)V

    iput-object p4, p0, Lio/bidmachine/ads/networks/criteo/CriteoInterstitial;->criteoInterstitial:Lcom/criteo/publisher/CriteoInterstitial;

    .line 40
    new-instance p1, Lio/bidmachine/ads/networks/criteo/CriteoInterstitial$Listener;

    invoke-direct {p1, p2}, Lio/bidmachine/ads/networks/criteo/CriteoInterstitial$Listener;-><init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V

    invoke-virtual {p4, p1}, Lcom/criteo/publisher/CriteoInterstitial;->setCriteoInterstitialAdListener(Lcom/criteo/publisher/CriteoInterstitialAdListener;)V

    .line 41
    iget-object p1, p0, Lio/bidmachine/ads/networks/criteo/CriteoInterstitial;->criteoInterstitial:Lcom/criteo/publisher/CriteoInterstitial;

    invoke-virtual {p1, p3}, Lcom/criteo/publisher/CriteoInterstitial;->loadAd(Lcom/criteo/publisher/Bid;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 56
    iget-object v0, p0, Lio/bidmachine/ads/networks/criteo/CriteoInterstitial;->criteoInterstitial:Lcom/criteo/publisher/CriteoInterstitial;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Lcom/criteo/publisher/CriteoInterstitial;->setCriteoInterstitialAdListener(Lcom/criteo/publisher/CriteoInterstitialAdListener;)V

    .line 58
    iput-object v1, p0, Lio/bidmachine/ads/networks/criteo/CriteoInterstitial;->criteoInterstitial:Lcom/criteo/publisher/CriteoInterstitial;

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

    .line 47
    iget-object p1, p0, Lio/bidmachine/ads/networks/criteo/CriteoInterstitial;->criteoInterstitial:Lcom/criteo/publisher/CriteoInterstitial;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/criteo/publisher/CriteoInterstitial;->isAdLoaded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p0, Lio/bidmachine/ads/networks/criteo/CriteoInterstitial;->criteoInterstitial:Lcom/criteo/publisher/CriteoInterstitial;

    invoke-virtual {p1}, Lcom/criteo/publisher/CriteoInterstitial;->show()V

    goto :goto_0

    .line 50
    :cond_0
    const-string p1, "Interstitial object is null or not loaded"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    :goto_0
    return-void
.end method
