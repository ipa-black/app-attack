.class public Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork;
.super Lcom/appodeal/ads/AdNetwork;
.source "BidMachineNetwork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$builder;,
        Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$RequestParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/AdNetwork<",
        "Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$RequestParams;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/appodeal/ads/AdNetworkBuilder;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/appodeal/ads/AdNetwork;-><init>(Lcom/appodeal/ads/AdNetworkBuilder;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/appodeal/ads/AdNetworkBuilder;Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork;-><init>(Lcom/appodeal/ads/AdNetworkBuilder;)V

    return-void
.end method

.method public static getRequestedAdInfo(Lio/bidmachine/models/AuctionResult;)Landroid/os/Bundle;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-interface {p0}, Lio/bidmachine/models/AuctionResult;->getNetworkParams()Ljava/util/Map;

    move-result-object v1

    const-string v2, "appodeal_id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-interface {p0}, Lio/bidmachine/models/AuctionResult;->getDemandSource()Ljava/lang/String;

    move-result-object v1

    const-string v2, "demand_source"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {p0}, Lio/bidmachine/models/AuctionResult;->getPrice()D

    move-result-wide v1

    const-string p0, "ecpm"

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-object v0
.end method

.method public static mapBidMachineError(Lio/bidmachine/utils/BMError;)Lcom/appodeal/ads/networking/LoadingError;
    .locals 2

    if-eqz p0, :cond_9

    .line 1
    sget-object v0, Lio/bidmachine/utils/BMError;->NoConnection:Lio/bidmachine/utils/BMError;

    invoke-virtual {v0}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result v0

    invoke-virtual {p0}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->ConnectionError:Lcom/appodeal/ads/networking/LoadingError;

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lio/bidmachine/utils/BMError;->TimeoutError:Lio/bidmachine/utils/BMError;

    invoke-virtual {v0}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result v0

    invoke-virtual {p0}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 4
    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->TimeoutError:Lcom/appodeal/ads/networking/LoadingError;

    return-object p0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result v0

    const/16 v1, 0x67

    if-ne v1, v0, :cond_2

    .line 6
    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->NoFill:Lcom/appodeal/ads/networking/LoadingError;

    return-object p0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result v0

    const/16 v1, 0x65

    if-ne v1, v0, :cond_3

    .line 8
    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->IncorrectAdunit:Lcom/appodeal/ads/networking/LoadingError;

    return-object p0

    .line 9
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result v0

    const/16 v1, 0x6c

    if-ne v1, v0, :cond_4

    .line 10
    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->InternalError:Lcom/appodeal/ads/networking/LoadingError;

    return-object p0

    .line 11
    :cond_4
    sget-object v0, Lio/bidmachine/utils/BMError;->Server:Lio/bidmachine/utils/BMError;

    invoke-virtual {v0}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result v0

    invoke-virtual {p0}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 12
    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->ServerError:Lcom/appodeal/ads/networking/LoadingError;

    return-object p0

    .line 13
    :cond_5
    sget-object v0, Lio/bidmachine/utils/BMError;->AlreadyShown:Lio/bidmachine/utils/BMError;

    invoke-virtual {v0}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result v0

    invoke-virtual {p0}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 14
    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->ShowFailed:Lcom/appodeal/ads/networking/LoadingError;

    return-object p0

    .line 15
    :cond_6
    sget-object v0, Lio/bidmachine/utils/BMError;->Destroyed:Lio/bidmachine/utils/BMError;

    invoke-virtual {v0}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result v0

    invoke-virtual {p0}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 16
    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->ShowFailed:Lcom/appodeal/ads/networking/LoadingError;

    return-object p0

    .line 17
    :cond_7
    sget-object v0, Lio/bidmachine/utils/BMError;->Expired:Lio/bidmachine/utils/BMError;

    invoke-virtual {v0}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result v0

    invoke-virtual {p0}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 18
    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->ShowFailed:Lcom/appodeal/ads/networking/LoadingError;

    return-object p0

    .line 19
    :cond_8
    invoke-virtual {p0}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result p0

    const/16 v0, 0x6e

    if-ne v0, p0, :cond_9

    .line 20
    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->RequestError:Lcom/appodeal/ads/networking/LoadingError;

    return-object p0

    .line 23
    :cond_9
    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->InternalError:Lcom/appodeal/ads/networking/LoadingError;

    return-object p0
.end method

.method public static printError(Lcom/appodeal/ads/unified/UnifiedAdCallback;Lio/bidmachine/utils/BMError;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/utils/BMError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/appodeal/ads/unified/UnifiedAdCallback;->printError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createBanner()Lcom/appodeal/ads/unified/UnifiedBanner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedBanner<",
            "Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$RequestParams;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/appodeal/ads/adapters/bidmachine/banner/a;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/bidmachine/banner/a;-><init>()V

    return-object v0
.end method

.method public createInterstitial()Lcom/appodeal/ads/unified/UnifiedInterstitial;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedInterstitial<",
            "Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$RequestParams;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/appodeal/ads/adapters/bidmachine/interstitial/a;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/bidmachine/interstitial/a;-><init>()V

    return-object v0
.end method

.method public createMrec()Lcom/appodeal/ads/unified/UnifiedMrec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedMrec<",
            "Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$RequestParams;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/appodeal/ads/adapters/bidmachine/mrec/a;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/bidmachine/mrec/a;-><init>()V

    return-object v0
.end method

.method public createNativeAd()Lcom/appodeal/ads/unified/UnifiedNative;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedNative<",
            "Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$RequestParams;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a;-><init>()V

    return-object v0
.end method

.method public createRewarded()Lcom/appodeal/ads/unified/UnifiedRewarded;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedRewarded<",
            "Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$RequestParams;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/appodeal/ads/adapters/bidmachine/rewarded_video/a;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/bidmachine/rewarded_video/a;-><init>()V

    return-object v0
.end method

.method public createVideo()Lcom/appodeal/ads/unified/UnifiedVideo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedVideo<",
            "Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$RequestParams;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/appodeal/ads/adapters/bidmachine/video/a;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/bidmachine/video/a;-><init>()V

    return-object v0
.end method

.method public getRecommendedVersion()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "2.1.5"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "2.1.5"

    return-object v0
.end method

.method public initialize(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/AdUnit;Lcom/appodeal/ads/AdNetworkMediationParams;Lcom/appodeal/ads/NetworkInitializationListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;",
            "Lcom/appodeal/ads/AdUnit;",
            "Lcom/appodeal/ads/AdNetworkMediationParams;",
            "Lcom/appodeal/ads/NetworkInitializationListener<",
            "Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$RequestParams;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->getJsonData()Lorg/json/JSONObject;

    move-result-object p2

    .line 2
    invoke-interface {p1}, Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-nez p2, :cond_0

    .line 4
    sget-object p1, Lcom/appodeal/ads/networking/LoadingError;->IncorrectAdunit:Lcom/appodeal/ads/networking/LoadingError;

    invoke-interface {p4, p1}, Lcom/appodeal/ads/NetworkInitializationListener;->onInitializationFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void

    .line 7
    :cond_0
    const-string v0, "price_floors"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/adapters/bidmachine/c;->a(Ljava/lang/String;)Lio/bidmachine/PriceFloorParams;

    move-result-object v3

    .line 9
    invoke-interface {p3}, Lcom/appodeal/ads/AdNetworkMediationParams;->getRestrictedData()Lcom/appodeal/ads/RestrictedData;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/appodeal/ads/adapters/bidmachine/c;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/appodeal/ads/RestrictedData;)Lio/bidmachine/TargetingParams;

    move-result-object v2

    .line 10
    const-string v0, "custom_parameters"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/adapters/bidmachine/c;->a(Lorg/json/JSONObject;)Lio/bidmachine/CustomParams;

    move-result-object v4

    .line 11
    const-string v0, "mediation_config"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 13
    new-instance v0, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$a;

    move-object v1, v0

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$a;-><init>(Lio/bidmachine/TargetingParams;Lio/bidmachine/PriceFloorParams;Lio/bidmachine/CustomParams;Lorg/json/JSONArray;Lcom/appodeal/ads/NetworkInitializationListener;)V

    .line 36
    invoke-static {}, Lcom/appodeal/ads/adapters/bidmachine/b;->a()Lcom/appodeal/ads/adapters/bidmachine/b;

    move-result-object p4

    .line 37
    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/appodeal/ads/adapters/bidmachine/b;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/appodeal/ads/AppodealStateParams;Lcom/appodeal/ads/adapters/bidmachine/b$a;)V

    return-void
.end method

.method public setLogging(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/bidmachine/BidMachine;->setLoggingEnabled(Z)V

    return-void
.end method
