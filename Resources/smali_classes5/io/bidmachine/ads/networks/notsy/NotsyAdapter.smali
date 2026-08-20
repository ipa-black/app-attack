.class Lio/bidmachine/ads/networks/notsy/NotsyAdapter;
.super Lio/bidmachine/HeaderBiddingAdapter;
.source "NotsyAdapter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 7

    const/4 v0, 0x3

    .line 32
    new-array v6, v0, [Lio/bidmachine/AdsType;

    const/4 v0, 0x0

    sget-object v1, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    aput-object v1, v6, v0

    const/4 v0, 0x1

    sget-object v1, Lio/bidmachine/AdsType;->Interstitial:Lio/bidmachine/AdsType;

    aput-object v1, v6, v0

    const/4 v0, 0x2

    sget-object v1, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    aput-object v1, v6, v0

    const-string v2, "notsy"

    const-string v3, "20.6.0"

    const-string v4, "2.1.5.2"

    const/16 v5, 0x10

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/bidmachine/HeaderBiddingAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Lio/bidmachine/AdsType;)V

    return-void
.end method


# virtual methods
.method public clearAuction(Lio/bidmachine/NetworkAdUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 145
    invoke-static {p1}, Lio/bidmachine/ads/networks/notsy/NotsyNetwork;->unReserveNotsyAd(Lio/bidmachine/NetworkAdUnit;)V

    return-void
.end method

.method public createBanner()Lio/bidmachine/unified/UnifiedBannerAd;
    .locals 1

    .line 41
    new-instance v0, Lio/bidmachine/ads/networks/notsy/NotsyBanner;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/notsy/NotsyBanner;-><init>()V

    return-object v0
.end method

.method public createInterstitial()Lio/bidmachine/unified/UnifiedFullscreenAd;
    .locals 1

    .line 46
    new-instance v0, Lio/bidmachine/ads/networks/notsy/NotsyInterstitial;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/notsy/NotsyInterstitial;-><init>()V

    return-object v0
.end method

.method public createRewarded()Lio/bidmachine/unified/UnifiedFullscreenAd;
    .locals 1

    .line 51
    new-instance v0, Lio/bidmachine/ads/networks/notsy/NotsyRewarded;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/notsy/NotsyRewarded;-><init>()V

    return-object v0
.end method

.method protected isNetworkInitialized(Lio/bidmachine/ContextProvider;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 56
    invoke-static {}, Lio/bidmachine/ads/networks/notsy/NotsyNetwork;->isInitialized()Z

    move-result p1

    return p1
.end method

.method protected onCollectHeaderBiddingParams(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/HeaderBiddingAdRequestParams;Lio/bidmachine/HeaderBiddingCollectParamsCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 122
    invoke-virtual {p3}, Lio/bidmachine/NetworkAdUnit;->getMediationConfig()Ljava/util/Map;

    move-result-object p1

    .line 123
    invoke-static {p1}, Lio/bidmachine/ads/networks/notsy/InternalNotsyData$Factory;->create(Ljava/util/Map;)Lio/bidmachine/ads/networks/notsy/InternalNotsyData;

    move-result-object p2

    if-nez p2, :cond_0

    .line 125
    const-string p1, "InternalNotsyData is null"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->adapter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p5, p1}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 129
    :cond_0
    invoke-static {p3, p2}, Lio/bidmachine/ads/networks/notsy/NotsyNetwork;->reserveNotsyAd(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/notsy/InternalNotsyData;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 130
    const-string p1, "Ad not loaded by this parameters - %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->adapter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p5, p1}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 135
    :cond_1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p5, p2}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFinished(Ljava/util/Map;)V

    return-void
.end method

.method public onLossAuction(Lio/bidmachine/NetworkAdUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 140
    invoke-static {p1}, Lio/bidmachine/ads/networks/notsy/NotsyNetwork;->unReserveNotsyAd(Lio/bidmachine/NetworkAdUnit;)V

    return-void
.end method

.method protected onNetworkInitialize(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfigParams;Lio/bidmachine/NetworkInitializationCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 64
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 65
    invoke-static {p1}, Lio/bidmachine/ads/networks/notsy/NotsyNetwork;->isGAMPresent(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 66
    const-string p1, "GAM is absent or used unsupported version"

    invoke-interface {p4, p1}, Lio/bidmachine/NetworkInitializationCallback;->onFail(Ljava/lang/String;)V

    return-void

    .line 70
    :cond_0
    invoke-static {}, Lio/bidmachine/AdsFormat;->values()[Lio/bidmachine/AdsFormat;

    move-result-object p2

    invoke-interface {p3, p2}, Lio/bidmachine/NetworkConfigParams;->obtainNetworkMediationConfigs([Lio/bidmachine/AdsFormat;)Ljava/util/EnumMap;

    move-result-object p2

    if-nez p2, :cond_1

    .line 72
    const-string p1, "Network mediation configs not found"

    invoke-interface {p4, p1}, Lio/bidmachine/NetworkInitializationCallback;->onFail(Ljava/lang/String;)V

    return-void

    .line 75
    :cond_1
    new-instance p3, Ljava/util/EnumMap;

    const-class v0, Lio/bidmachine/AdsFormat;

    invoke-direct {p3, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 76
    invoke-static {}, Lio/bidmachine/AdsFormat;->values()[Lio/bidmachine/AdsFormat;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_8

    aget-object v3, v0, v2

    .line 77
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_2

    goto :goto_2

    .line 81
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 83
    const-string v7, "ad_unit_id"

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 84
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    .line 88
    :cond_3
    const-string v8, "score"

    invoke-interface {v6, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 89
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_1

    .line 93
    :cond_4
    const-string v9, "price"

    invoke-interface {v6, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 94
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_1

    .line 99
    :cond_5
    new-instance v10, Lio/bidmachine/ads/networks/notsy/InternalNotsyData;

    .line 100
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 101
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-direct {v10, v7, v8, v9}, Lio/bidmachine/ads/networks/notsy/InternalNotsyData;-><init>(Ljava/lang/String;FF)V

    .line 102
    new-instance v7, Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;

    invoke-direct {v7, v3, v10, v6}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;-><init>(Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/notsy/InternalNotsyData;Ljava/util/Map;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 106
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_2

    .line 109
    :cond_7
    invoke-interface {p3, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_8
    invoke-static {p1, p3}, Lio/bidmachine/ads/networks/notsy/NotsyNetwork;->init(Landroid/content/Context;Ljava/util/Map;)V

    .line 113
    invoke-interface {p4}, Lio/bidmachine/NetworkInitializationCallback;->onSuccess()V

    return-void
.end method
