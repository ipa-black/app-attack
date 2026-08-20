.class Lio/bidmachine/ads/networks/criteo/CriteoAdapter;
.super Lio/bidmachine/HeaderBiddingAdapter;
.source "CriteoAdapter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 7

    const/4 v0, 0x2

    .line 34
    new-array v6, v0, [Lio/bidmachine/AdsType;

    const/4 v0, 0x0

    sget-object v1, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    aput-object v1, v6, v0

    const/4 v0, 0x1

    sget-object v1, Lio/bidmachine/AdsType;->Interstitial:Lio/bidmachine/AdsType;

    aput-object v1, v6, v0

    const-string v2, "criteo"

    const-string v3, "4.6.0"

    const-string v4, "2.1.5.10"

    const/16 v5, 0x10

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/bidmachine/HeaderBiddingAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Lio/bidmachine/AdsType;)V

    return-void
.end method

.method static synthetic lambda$onCollectHeaderBiddingParams$0(Lio/bidmachine/NetworkAdUnit;Ljava/lang/String;Lio/bidmachine/HeaderBiddingCollectParamsCallback;Lcom/criteo/publisher/Bid;)V
    .locals 2

    if-eqz p3, :cond_0

    .line 108
    invoke-static {p0, p3}, Lio/bidmachine/ads/networks/criteo/CriteoBidTokenStorage;->storeBid(Lio/bidmachine/NetworkAdUnit;Lcom/criteo/publisher/Bid;)V

    .line 110
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 111
    const-string v0, "ad_unit_id"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {p3}, Lcom/criteo/publisher/Bid;->getPrice()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    const-string p3, "price"

    invoke-interface {p0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-interface {p2, p0}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFinished(Ljava/util/Map;)V

    goto :goto_0

    .line 116
    :cond_0
    const-string p0, "Bid"

    invoke-static {p0}, Lio/bidmachine/utils/BMError;->adapterGetsParameter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFail(Lio/bidmachine/utils/BMError;)V

    :goto_0
    return-void
.end method

.method static mapError(Lcom/criteo/publisher/CriteoErrorCode;)Lio/bidmachine/utils/BMError;
    .locals 1

    .line 133
    sget-object v0, Lio/bidmachine/ads/networks/criteo/CriteoAdapter$1;->$SwitchMap$com$criteo$publisher$CriteoErrorCode:[I

    invoke-virtual {p0}, Lcom/criteo/publisher/CriteoErrorCode;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 139
    const-string p0, "Unknown error"

    invoke-static {p0}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p0

    return-object p0

    .line 137
    :cond_0
    sget-object p0, Lio/bidmachine/utils/BMError;->NoConnection:Lio/bidmachine/utils/BMError;

    return-object p0

    .line 135
    :cond_1
    invoke-static {}, Lio/bidmachine/utils/BMError;->noFill()Lio/bidmachine/utils/BMError;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearAuction(Lio/bidmachine/NetworkAdUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 128
    invoke-static {p1}, Lio/bidmachine/ads/networks/criteo/CriteoBidTokenStorage;->takeBid(Lio/bidmachine/NetworkAdUnit;)Lcom/criteo/publisher/Bid;

    return-void
.end method

.method public createBanner()Lio/bidmachine/unified/UnifiedBannerAd;
    .locals 1

    .line 43
    new-instance v0, Lio/bidmachine/ads/networks/criteo/CriteoBanner;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/criteo/CriteoBanner;-><init>()V

    return-object v0
.end method

.method public createInterstitial()Lio/bidmachine/unified/UnifiedFullscreenAd;
    .locals 1

    .line 48
    new-instance v0, Lio/bidmachine/ads/networks/criteo/CriteoInterstitial;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/criteo/CriteoInterstitial;-><init>()V

    return-object v0
.end method

.method protected isNetworkInitialized(Lio/bidmachine/ContextProvider;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 53
    invoke-static {}, Lcom/criteo/publisher/Criteo;->getInstance()Lcom/criteo/publisher/Criteo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onCollectHeaderBiddingParams(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/HeaderBiddingAdRequestParams;Lio/bidmachine/HeaderBiddingCollectParamsCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 95
    const-string p1, "ad_unit_id"

    invoke-virtual {p3, p1}, Lio/bidmachine/NetworkAdUnit;->getMediationParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 96
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 97
    invoke-static {p1}, Lio/bidmachine/utils/BMError;->adapterGetsParameter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p5, p1}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 101
    :cond_0
    invoke-static {p2}, Lio/bidmachine/ads/networks/criteo/CriteoAdUnitStorage;->getAdUnit(Ljava/lang/String;)Lcom/criteo/publisher/model/AdUnit;

    move-result-object p1

    if-nez p1, :cond_1

    .line 103
    const-string p1, "AdUnit"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->adapterGetsParameter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p5, p1}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 106
    :cond_1
    invoke-static {}, Lcom/criteo/publisher/Criteo;->getInstance()Lcom/criteo/publisher/Criteo;

    move-result-object p4

    new-instance v0, Lio/bidmachine/ads/networks/criteo/CriteoAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3, p2, p5}, Lio/bidmachine/ads/networks/criteo/CriteoAdapter$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/NetworkAdUnit;Ljava/lang/String;Lio/bidmachine/HeaderBiddingCollectParamsCallback;)V

    invoke-virtual {p4, p1, v0}, Lcom/criteo/publisher/Criteo;->loadBid(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/BidResponseListener;)V

    return-void
.end method

.method public onLossAuction(Lio/bidmachine/NetworkAdUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 123
    invoke-static {p1}, Lio/bidmachine/ads/networks/criteo/CriteoBidTokenStorage;->takeBid(Lio/bidmachine/NetworkAdUnit;)Lcom/criteo/publisher/Bid;

    return-void
.end method

.method protected onNetworkInitialize(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfigParams;Lio/bidmachine/NetworkInitializationCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 62
    invoke-interface {p3}, Lio/bidmachine/NetworkConfigParams;->obtainNetworkParams()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    const-string p1, "Network parameters not found"

    invoke-interface {p4, p1}, Lio/bidmachine/NetworkInitializationCallback;->onFail(Ljava/lang/String;)V

    return-void

    .line 67
    :cond_0
    const-string v1, "publisher_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    const-string p1, "%s not provided"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Lio/bidmachine/NetworkInitializationCallback;->onFail(Ljava/lang/String;)V

    return-void

    .line 73
    :cond_1
    invoke-static {p3}, Lio/bidmachine/ads/networks/criteo/CriteoAdUnitStorage;->extractAdUnits(Lio/bidmachine/NetworkConfigParams;)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 74
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 79
    :cond_2
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 80
    new-instance v1, Lcom/criteo/publisher/Criteo$Builder;

    invoke-direct {v1, p1, v0}, Lcom/criteo/publisher/Criteo$Builder;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    .line 81
    invoke-interface {p2}, Lio/bidmachine/InitializationParams;->isTestMode()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/criteo/publisher/Criteo$Builder;->debugLogsEnabled(Z)Lcom/criteo/publisher/Criteo$Builder;

    move-result-object p1

    .line 82
    invoke-virtual {p1, p3}, Lcom/criteo/publisher/Criteo$Builder;->adUnits(Ljava/util/List;)Lcom/criteo/publisher/Criteo$Builder;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lcom/criteo/publisher/Criteo$Builder;->init()Lcom/criteo/publisher/Criteo;

    .line 85
    invoke-interface {p4}, Lio/bidmachine/NetworkInitializationCallback;->onSuccess()V

    return-void

    .line 75
    :cond_3
    :goto_0
    const-string p1, "AdUnits not found"

    invoke-interface {p4, p1}, Lio/bidmachine/NetworkInitializationCallback;->onFail(Ljava/lang/String;)V

    return-void
.end method
