.class public Lcom/appodeal/ads/adapters/vast/VASTNetwork;
.super Lcom/appodeal/ads/AdNetwork;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/adapters/vast/VASTNetwork$builder;,
        Lcom/appodeal/ads/adapters/vast/VASTNetwork$RequestParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/AdNetwork<",
        "Lcom/appodeal/ads/adapters/vast/VASTNetwork$RequestParams;",
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

    new-instance p1, Lcom/appodeal/ads/adapters/vast/VASTNetwork$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/appodeal/ads/adapters/vast/VASTNetwork$$ExternalSyntheticLambda0;-><init>(Lcom/appodeal/ads/adapters/vast/VASTNetwork;)V

    invoke-static {p1}, Lcom/explorestack/iab/vast/VastLog;->addLogListener(Lcom/explorestack/iab/utils/LogListener;)V

    return-void
.end method

.method private parseLogLevel(Lcom/explorestack/iab/utils/Logger$LogLevel;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/adapters/vast/VASTNetwork$a;->a:[I

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
.method public createRewarded()Lcom/appodeal/ads/unified/UnifiedRewarded;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedRewarded<",
            "Lcom/appodeal/ads/adapters/vast/VASTNetwork$RequestParams;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/appodeal/ads/adapters/vast/rewarded_video/b;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/vast/rewarded_video/b;-><init>()V

    return-object v0
.end method

.method public createVideo()Lcom/appodeal/ads/unified/UnifiedVideo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedVideo<",
            "Lcom/appodeal/ads/adapters/vast/VASTNetwork$RequestParams;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/appodeal/ads/adapters/vast/video/b;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/vast/video/b;-><init>()V

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
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;",
            "Lcom/appodeal/ads/AdUnit;",
            "Lcom/appodeal/ads/AdNetworkMediationParams;",
            "Lcom/appodeal/ads/NetworkInitializationListener<",
            "Lcom/appodeal/ads/adapters/vast/VASTNetwork$RequestParams;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->getJsonData()Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "package"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "close_time"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v0, "expiry"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    const-string v0, "vast_xml"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "vast_url"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "top"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, p3}, Lcom/appodeal/ads/unified/UnifiedAdUtils;->parseUrlWithTopParams(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/ads/AdNetworkMediationParams;)Ljava/lang/String;

    move-result-object p1

    move-object v4, p1

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    const-string p1, "video_auto_close"

    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/appodeal/ads/adapters/vast/VASTNetwork$RequestParams;

    invoke-interface {p3}, Lcom/appodeal/ads/AdNetworkMediationParams;->getRestrictedData()Lcom/appodeal/ads/RestrictedData;

    move-result-object v2

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/appodeal/ads/adapters/vast/VASTNetwork$RequestParams;-><init>(Lcom/appodeal/ads/RestrictedData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZ)V

    invoke-interface {p4, p1}, Lcom/appodeal/ads/NetworkInitializationListener;->onInitializationFinished(Ljava/lang/Object;)V

    return-void

    :cond_3
    :goto_1
    sget-object p1, Lcom/appodeal/ads/networking/LoadingError;->IncorrectAdunit:Lcom/appodeal/ads/networking/LoadingError;

    invoke-interface {p4, p1}, Lcom/appodeal/ads/NetworkInitializationListener;->onInitializationFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method synthetic lambda$new$0$com-appodeal-ads-adapters-vast-VASTNetwork(Lcom/explorestack/iab/utils/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 0
    sget-object v0, Lcom/appodeal/ads/modules/common/internal/log/InternalLogKt;->observer:Lkotlin/jvm/functions/Function1;

    new-instance v1, Lcom/appodeal/ads/modules/common/internal/log/InternalLogEvent;

    invoke-direct {p0, p1}, Lcom/appodeal/ads/adapters/vast/VASTNetwork;->parseLogLevel(Lcom/explorestack/iab/utils/Logger$LogLevel;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "vast event"

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
    invoke-static {p1}, Lcom/explorestack/iab/vast/VastLog;->setLoggingLevel(Lcom/explorestack/iab/utils/Logger$LogLevel;)V

    return-void
.end method
