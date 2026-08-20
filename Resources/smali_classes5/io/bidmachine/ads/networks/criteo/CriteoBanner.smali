.class Lio/bidmachine/ads/networks/criteo/CriteoBanner;
.super Lio/bidmachine/unified/UnifiedBannerAd;
.source "CriteoBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/criteo/CriteoBanner$Listener;
    }
.end annotation


# instance fields
.field private criteoBannerView:Lcom/criteo/publisher/CriteoBannerView;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lio/bidmachine/unified/UnifiedBannerAd;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$load$0$io-bidmachine-ads-networks-criteo-CriteoBanner(Lio/bidmachine/ContextProvider;Lcom/criteo/publisher/model/BannerAdUnit;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lcom/criteo/publisher/Bid;)V
    .locals 1

    .line 44
    :try_start_0
    new-instance v0, Lcom/criteo/publisher/CriteoBannerView;

    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/criteo/publisher/CriteoBannerView;-><init>(Landroid/content/Context;Lcom/criteo/publisher/model/BannerAdUnit;)V

    iput-object v0, p0, Lio/bidmachine/ads/networks/criteo/CriteoBanner;->criteoBannerView:Lcom/criteo/publisher/CriteoBannerView;

    .line 45
    new-instance p1, Lio/bidmachine/ads/networks/criteo/CriteoBanner$Listener;

    invoke-direct {p1, p3}, Lio/bidmachine/ads/networks/criteo/CriteoBanner$Listener;-><init>(Lio/bidmachine/unified/UnifiedBannerAdCallback;)V

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/CriteoBannerView;->setCriteoBannerAdListener(Lcom/criteo/publisher/CriteoBannerAdListener;)V

    .line 46
    iget-object p1, p0, Lio/bidmachine/ads/networks/criteo/CriteoBanner;->criteoBannerView:Lcom/criteo/publisher/CriteoBannerView;

    invoke-virtual {p1, p4}, Lcom/criteo/publisher/CriteoBannerView;->loadAd(Lcom/criteo/publisher/Bid;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 48
    invoke-static {p1}, Lio/bidmachine/core/AdapterLogger;->logThrowable(Ljava/lang/Throwable;)V

    .line 49
    const-string p1, "Exception when loading banner object"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p3, p1}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdCallback;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 21
    check-cast p2, Lio/bidmachine/unified/UnifiedBannerAdCallback;

    check-cast p3, Lio/bidmachine/unified/UnifiedBannerAdRequestParams;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/ads/networks/criteo/CriteoBanner;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lio/bidmachine/unified/UnifiedBannerAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V

    return-void
.end method

.method public load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lio/bidmachine/unified/UnifiedBannerAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 31
    const-string p3, "ad_unit_id"

    invoke-virtual {p4, p3}, Lio/bidmachine/unified/UnifiedMediationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 32
    invoke-static {p3}, Lio/bidmachine/ads/networks/criteo/CriteoAdUnitStorage;->getAdUnit(Ljava/lang/String;)Lcom/criteo/publisher/model/AdUnit;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Lcom/criteo/publisher/model/BannerAdUnit;

    if-nez v3, :cond_0

    .line 34
    const-string p1, "AdUnit"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->notFound(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 37
    :cond_0
    invoke-static {p5}, Lio/bidmachine/ads/networks/criteo/CriteoBidTokenStorage;->takeBid(Lio/bidmachine/NetworkAdUnit;)Lcom/criteo/publisher/Bid;

    move-result-object v5

    if-nez v5, :cond_1

    .line 39
    const-string p1, "Bid"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->notFound(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 42
    :cond_1
    new-instance p3, Lio/bidmachine/ads/networks/criteo/CriteoBanner$$ExternalSyntheticLambda0;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/ads/networks/criteo/CriteoBanner$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/ads/networks/criteo/CriteoBanner;Lio/bidmachine/ContextProvider;Lcom/criteo/publisher/model/BannerAdUnit;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lcom/criteo/publisher/Bid;)V

    invoke-static {p3}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 56
    iget-object v0, p0, Lio/bidmachine/ads/networks/criteo/CriteoBanner;->criteoBannerView:Lcom/criteo/publisher/CriteoBannerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Lcom/criteo/publisher/CriteoBannerView;->setCriteoBannerAdListener(Lcom/criteo/publisher/CriteoBannerAdListener;)V

    .line 58
    iput-object v1, p0, Lio/bidmachine/ads/networks/criteo/CriteoBanner;->criteoBannerView:Lcom/criteo/publisher/CriteoBannerView;

    :cond_0
    return-void
.end method
