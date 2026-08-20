.class public Lcom/appodeal/ads/adapters/mraid/MraidNetwork;
.super Lcom/appodeal/ads/AdNetwork;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/adapters/mraid/MraidNetwork$builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/AdNetwork<",
        "Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/AdNetworkBuilder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/AdNetwork;-><init>(Lcom/appodeal/ads/AdNetworkBuilder;)V

    invoke-static {}, Lcom/appodeal/ads/Appodeal;->getVersion()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/explorestack/iab/IabSettings;->mediatorVersion:Ljava/lang/String;

    new-instance p1, Lcom/appodeal/ads/adapters/mraid/MraidNetwork$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/appodeal/ads/adapters/mraid/MraidNetwork$$ExternalSyntheticLambda0;-><init>(Lcom/appodeal/ads/adapters/mraid/MraidNetwork;)V

    invoke-static {p1}, Lcom/explorestack/iab/mraid/MraidLog;->addLogListener(Lcom/explorestack/iab/utils/LogListener;)V

    return-void
.end method

.method private static obtainScript(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.renderValidationData("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ");"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private parseLogLevel(Lcom/explorestack/iab/utils/Logger$LogLevel;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/adapters/mraid/MraidNetwork$a;->a:[I

    invoke-virtual {p1}, Lcom/explorestack/iab/utils/Logger$LogLevel;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const-string p1, "verbose"

    return-object p1

    :cond_0
    const-string p1, "none"

    return-object p1

    :cond_1
    const-string p1, "error"

    return-object p1

    :cond_2
    const-string p1, "warning"

    return-object p1

    :cond_3
    const-string p1, "debug"

    return-object p1

    :cond_4
    const-string p1, "info"

    return-object p1
.end method


# virtual methods
.method public createBanner()Lcom/appodeal/ads/unified/UnifiedBanner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedBanner<",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/appodeal/ads/adapters/mraid/banner/b;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/mraid/banner/b;-><init>()V

    return-object v0
.end method

.method public createInterstitial()Lcom/appodeal/ads/unified/UnifiedInterstitial;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedInterstitial<",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/appodeal/ads/adapters/mraid/interstitial/b;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/mraid/interstitial/b;-><init>()V

    return-object v0
.end method

.method public createMrec()Lcom/appodeal/ads/unified/UnifiedMrec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedMrec<",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/appodeal/ads/adapters/mraid/mrec/b;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/mraid/mrec/b;-><init>()V

    return-object v0
.end method

.method public createRewarded()Lcom/appodeal/ads/unified/UnifiedRewarded;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedRewarded<",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/appodeal/ads/adapters/mraid/rewarded_video/b;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/mraid/rewarded_video/b;-><init>()V

    return-object v0
.end method

.method public createVideo()Lcom/appodeal/ads/unified/UnifiedVideo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedVideo<",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/appodeal/ads/adapters/mraid/video/b;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/mraid/video/b;-><init>()V

    return-object v0
.end method

.method public getRecommendedVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.4.1"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.4.1"

    return-object v0
.end method

.method public initialize(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/AdUnit;Lcom/appodeal/ads/AdNetworkMediationParams;Lcom/appodeal/ads/NetworkInitializationListener;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;",
            "Lcom/appodeal/ads/AdUnit;",
            "Lcom/appodeal/ads/AdNetworkMediationParams;",
            "Lcom/appodeal/ads/NetworkInitializationListener<",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;",
            ">;)V"
        }
    .end annotation

    invoke-interface/range {p2 .. p2}, Lcom/appodeal/ads/AdUnit;->getJsonData()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "base_url"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "expiry"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "preload"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "tag"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "html"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "mraid_url"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "top"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {p1}, Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v10, p3

    invoke-static {v9, v8, v10}, Lcom/appodeal/ads/unified/UnifiedAdUtils;->parseUrlWithTopParams(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/ads/AdNetworkMediationParams;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object/from16 v10, p3

    :goto_0
    const-string v9, "width"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const-string v11, "height"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const-string v12, "close_time"

    const/4 v13, -0x1

    invoke-virtual {v0, v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v12, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;

    invoke-interface/range {p3 .. p3}, Lcom/appodeal/ads/AdNetworkMediationParams;->getRestrictedData()Lcom/appodeal/ads/RestrictedData;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;-><init>(Lcom/appodeal/ads/RestrictedData;)V

    invoke-virtual {v12, v1}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->setPackageName(Ljava/lang/String;)Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->setBaseUrl(Ljava/lang/String;)Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->setExpiryTime(J)Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->setPreload(Z)Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->setIsTag(Z)Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->setAdm(Ljava/lang/String;)Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->setAdUrl(Ljava/lang/String;)Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->setWidth(I)Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->setHeight(I)Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->setCloseTime(I)Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;

    invoke-interface/range {p3 .. p3}, Lcom/appodeal/ads/AdNetworkMediationParams;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface/range {p2 .. p2}, Lcom/appodeal/ads/AdUnit;->getJsonData()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "validation_data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/adapters/mraid/MraidNetwork;->obtainScript(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->setPageFinishedScript(Ljava/lang/String;)Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;

    :cond_1
    invoke-virtual {v12}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->build()Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;

    move-result-object v0

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Lcom/appodeal/ads/NetworkInitializationListener;->onInitializationFinished(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$new$0$com-appodeal-ads-adapters-mraid-MraidNetwork(Lcom/explorestack/iab/utils/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 0
    sget-object v0, Lcom/appodeal/ads/modules/common/internal/log/InternalLogKt;->observer:Lkotlin/jvm/functions/Function1;

    new-instance v1, Lcom/appodeal/ads/modules/common/internal/log/InternalLogEvent;

    invoke-direct {p0, p1}, Lcom/appodeal/ads/adapters/mraid/MraidNetwork;->parseLogLevel(Lcom/explorestack/iab/utils/Logger$LogLevel;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "mraid event"

    invoke-direct {v1, p2, v2, p3, p1}, Lcom/appodeal/ads/modules/common/internal/log/InternalLogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLogging(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/explorestack/iab/utils/Logger$LogLevel;->debug:Lcom/explorestack/iab/utils/Logger$LogLevel;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/explorestack/iab/utils/Logger$LogLevel;->none:Lcom/explorestack/iab/utils/Logger$LogLevel;

    :goto_0
    invoke-static {p1}, Lcom/explorestack/iab/mraid/MraidLog;->setLoggingLevel(Lcom/explorestack/iab/utils/Logger$LogLevel;)V

    return-void
.end method
