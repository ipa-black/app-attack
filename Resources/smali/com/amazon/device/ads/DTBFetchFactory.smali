.class public Lcom/amazon/device/ads/DTBFetchFactory;
.super Ljava/lang/Object;
.source "DTBFetchFactory.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DTBFetchFactory"

.field private static theFactory:Lcom/amazon/device/ads/DTBFetchFactory;


# instance fields
.field private final EXPIRATION_INTERVAL_MS:I

.field private managers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/ads/DTBFetchManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x75300

    .line 15
    iput v0, p0, Lcom/amazon/device/ads/DTBFetchFactory;->EXPIRATION_INTERVAL_MS:I

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBFetchFactory;->managers:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/amazon/device/ads/DTBFetchFactory;
    .locals 4

    .line 24
    :try_start_0
    sget-object v0, Lcom/amazon/device/ads/DTBFetchFactory;->theFactory:Lcom/amazon/device/ads/DTBFetchFactory;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/amazon/device/ads/DTBFetchFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/DTBFetchFactory;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/DTBFetchFactory;->theFactory:Lcom/amazon/device/ads/DTBFetchFactory;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 28
    sget-object v1, Lcom/amazon/device/ads/DTBFetchFactory;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Fail to initialize DTBFetchFactory"

    invoke-static {v1, v2}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-object v1, Lcom/amazon/aps/shared/analytics/APSEventSeverity;->ERROR:Lcom/amazon/aps/shared/analytics/APSEventSeverity;

    sget-object v3, Lcom/amazon/aps/shared/analytics/APSEventType;->EXCEPTION:Lcom/amazon/aps/shared/analytics/APSEventType;

    invoke-static {v1, v3, v2, v0}, Lcom/amazon/aps/shared/APSAnalytics;->logEvent(Lcom/amazon/aps/shared/analytics/APSEventSeverity;Lcom/amazon/aps/shared/analytics/APSEventType;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 32
    :cond_0
    :goto_0
    sget-object v0, Lcom/amazon/device/ads/DTBFetchFactory;->theFactory:Lcom/amazon/device/ads/DTBFetchFactory;

    return-object v0
.end method


# virtual methods
.method public createFetchManager(Ljava/lang/String;Lcom/amazon/device/ads/DTBAdLoader;)Lcom/amazon/device/ads/DTBFetchManager;
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/device/ads/DTBFetchFactory;->createFetchManager(Ljava/lang/String;Lcom/amazon/device/ads/DTBAdLoader;Z)Lcom/amazon/device/ads/DTBFetchManager;

    move-result-object p1

    return-object p1
.end method

.method public createFetchManager(Ljava/lang/String;Lcom/amazon/device/ads/DTBAdLoader;Z)Lcom/amazon/device/ads/DTBFetchManager;
    .locals 1

    .line 47
    invoke-static {p1}, Lcom/amazon/device/ads/DtbCommonUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 51
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBFetchFactory;->getFetchManager(Ljava/lang/String;)Lcom/amazon/device/ads/DTBFetchManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/amazon/device/ads/DTBFetchManager;

    invoke-direct {v0, p2, p3}, Lcom/amazon/device/ads/DTBFetchManager;-><init>(Lcom/amazon/device/ads/DTBAdLoader;Z)V

    .line 55
    iget-object p2, p0, Lcom/amazon/device/ads/DTBFetchFactory;->managers:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 57
    :cond_0
    const-string p1, "The fetch manager with the provided label has already been created"

    invoke-static {p1}, Lcom/amazon/device/ads/DtbLog;->warn(Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Fetch manager label and loader cannot be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getExpirationInMillis()I
    .locals 1

    const v0, 0x75300

    return v0
.end method

.method public getFetchManager(Ljava/lang/String;)Lcom/amazon/device/ads/DTBFetchManager;
    .locals 1

    .line 36
    invoke-static {p1}, Lcom/amazon/device/ads/DtbCommonUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "The fetch manager label is null or empty"

    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;)V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/DTBFetchFactory;->managers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/device/ads/DTBFetchManager;

    return-object p1
.end method

.method public removeFetchManager(Ljava/lang/String;)V
    .locals 3

    .line 65
    :try_start_0
    invoke-static {p1}, Lcom/amazon/device/ads/DtbCommonUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "The fetch manager label is null or empty"

    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;)V

    .line 68
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBFetchFactory;->getFetchManager(Ljava/lang/String;)Lcom/amazon/device/ads/DTBFetchManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBFetchManager;->stop()V

    .line 71
    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBFetchManager;->submitWasteQueueReport()V

    .line 72
    iget-object v0, p0, Lcom/amazon/device/ads/DTBFetchFactory;->managers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 75
    sget-object v0, Lcom/amazon/device/ads/DTBFetchFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Fail to execute removeFetchManager method"

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/amazon/aps/shared/analytics/APSEventSeverity;->ERROR:Lcom/amazon/aps/shared/analytics/APSEventSeverity;

    sget-object v2, Lcom/amazon/aps/shared/analytics/APSEventType;->EXCEPTION:Lcom/amazon/aps/shared/analytics/APSEventType;

    invoke-static {v0, v2, v1, p1}, Lcom/amazon/aps/shared/APSAnalytics;->logEvent(Lcom/amazon/aps/shared/analytics/APSEventSeverity;Lcom/amazon/aps/shared/analytics/APSEventType;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method
