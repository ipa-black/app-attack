.class final Lio/bidmachine/BidMachineImpl;
.super Ljava/lang/Object;
.source "BidMachineImpl.java"


# static fields
.field private static volatile instance:Lio/bidmachine/BidMachineImpl;


# instance fields
.field private final adRequestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/AdRequest$AdRequestListener<",
            "*>;>;"
        }
    .end annotation
.end field

.field appContext:Landroid/content/Context;

.field private final callbackSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/bidmachine/InitializationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private customParams:Lio/bidmachine/CustomParams;

.field private final deviceParams:Lio/bidmachine/DeviceParams;

.field private final iabSharedPreference:Lio/bidmachine/IABSharedPreference;

.field ifv:Ljava/lang/String;

.field initialRequest:Lio/bidmachine/InitialRequest;

.field private final isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isTestMode:Z

.field private networksLoadingTimeOutSec:I

.field private final priceFloorParams:Lio/bidmachine/PriceFloorParams;

.field private publisher:Lio/bidmachine/Publisher;

.field requestTimeOutMs:I

.field private sellerId:Ljava/lang/String;

.field private sessionTracker:Lio/bidmachine/SessionTracker;

.field private targetingParams:Lio/bidmachine/TargetingParams;

.field private final trackingEventTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/TrackEventType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final userRestrictionParams:Lio/bidmachine/UserRestrictionParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lio/bidmachine/BidMachineImpl$1;

    invoke-direct {v0}, Lio/bidmachine/BidMachineImpl$1;-><init>()V

    invoke-static {v0}, Lio/bidmachine/core/Logger;->setMessageBuilder(Lio/bidmachine/core/Logger$LoggerMessageBuilder;)V

    return-void
.end method

.method constructor <init>()V
    .locals 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lio/bidmachine/BidMachineImpl;->callbackSet:Ljava/util/Set;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/bidmachine/BidMachineImpl;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/bidmachine/BidMachineImpl;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    new-instance v0, Lio/bidmachine/UserRestrictionParams;

    invoke-direct {v0}, Lio/bidmachine/UserRestrictionParams;-><init>()V

    iput-object v0, p0, Lio/bidmachine/BidMachineImpl;->userRestrictionParams:Lio/bidmachine/UserRestrictionParams;

    .line 75
    new-instance v0, Lio/bidmachine/PriceFloorParams;

    invoke-direct {v0}, Lio/bidmachine/PriceFloorParams;-><init>()V

    .line 78
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    invoke-virtual {v0, v2, v3, v4}, Lio/bidmachine/PriceFloorParams;->addPriceFloor(Ljava/lang/String;D)Lio/bidmachine/PriceFloorParams;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/BidMachineImpl;->priceFloorParams:Lio/bidmachine/PriceFloorParams;

    .line 79
    new-instance v0, Lio/bidmachine/DeviceParams;

    invoke-direct {v0}, Lio/bidmachine/DeviceParams;-><init>()V

    iput-object v0, p0, Lio/bidmachine/BidMachineImpl;->deviceParams:Lio/bidmachine/DeviceParams;

    .line 81
    new-instance v0, Lio/bidmachine/IABSharedPreference;

    invoke-direct {v0}, Lio/bidmachine/IABSharedPreference;-><init>()V

    iput-object v0, p0, Lio/bidmachine/BidMachineImpl;->iabSharedPreference:Lio/bidmachine/IABSharedPreference;

    .line 83
    new-instance v0, Ljava/util/EnumMap;

    const-class v2, Lio/bidmachine/TrackEventType;

    invoke-direct {v0, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lio/bidmachine/BidMachineImpl;->trackingEventTypes:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/BidMachineImpl;->adRequestListeners:Ljava/util/List;

    .line 95
    new-instance v0, Lio/bidmachine/TargetingParams;

    invoke-direct {v0}, Lio/bidmachine/TargetingParams;-><init>()V

    iput-object v0, p0, Lio/bidmachine/BidMachineImpl;->targetingParams:Lio/bidmachine/TargetingParams;

    .line 97
    new-instance v0, Lio/bidmachine/CustomParams;

    invoke-direct {v0}, Lio/bidmachine/CustomParams;-><init>()V

    iput-object v0, p0, Lio/bidmachine/BidMachineImpl;->customParams:Lio/bidmachine/CustomParams;

    .line 104
    iput v1, p0, Lio/bidmachine/BidMachineImpl;->requestTimeOutMs:I

    .line 106
    iput v1, p0, Lio/bidmachine/BidMachineImpl;->networksLoadingTimeOutSec:I

    return-void
.end method

.method static synthetic access$000(Lio/bidmachine/BidMachineImpl;)Lio/bidmachine/IABSharedPreference;
    .locals 0

    .line 38
    iget-object p0, p0, Lio/bidmachine/BidMachineImpl;->iabSharedPreference:Lio/bidmachine/IABSharedPreference;

    return-object p0
.end method

.method static synthetic access$100(Lio/bidmachine/BidMachineImpl;Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lio/bidmachine/BidMachineImpl;->loadStoredInitResponse(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lio/bidmachine/BidMachineImpl;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lio/bidmachine/BidMachineImpl;->requestInitData(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lio/bidmachine/BidMachineImpl;Landroid/content/Context;Lio/bidmachine/protobuf/InitResponse;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lio/bidmachine/BidMachineImpl;->prepareAnalytics(Landroid/content/Context;Lio/bidmachine/protobuf/InitResponse;)V

    return-void
.end method

.method static get()Lio/bidmachine/BidMachineImpl;
    .locals 2

    .line 44
    sget-object v0, Lio/bidmachine/BidMachineImpl;->instance:Lio/bidmachine/BidMachineImpl;

    if-nez v0, :cond_1

    .line 45
    const-class v0, Lio/bidmachine/BidMachineImpl;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lio/bidmachine/BidMachineImpl;->instance:Lio/bidmachine/BidMachineImpl;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lio/bidmachine/BidMachineImpl;

    invoke-direct {v1}, Lio/bidmachine/BidMachineImpl;-><init>()V

    sput-object v1, Lio/bidmachine/BidMachineImpl;->instance:Lio/bidmachine/BidMachineImpl;

    .line 49
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 51
    :cond_1
    :goto_0
    sget-object v0, Lio/bidmachine/BidMachineImpl;->instance:Lio/bidmachine/BidMachineImpl;

    return-object v0
.end method

.method private loadStoredInitResponse(Landroid/content/Context;)V
    .locals 0

    .line 193
    invoke-static {p1}, Lio/bidmachine/BidMachineSharedPreference;->getInitResponse(Landroid/content/Context;)Lio/bidmachine/protobuf/InitResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 195
    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineImpl;->handleInitResponse(Lio/bidmachine/protobuf/InitResponse;)V

    :cond_0
    return-void
.end method

.method static preInitialize(Landroid/content/Context;)V
    .locals 0

    .line 112
    invoke-static {p0}, Lio/bidmachine/BidMachineActivityManager;->initialize(Landroid/content/Context;)V

    .line 113
    invoke-static {p0}, Lio/bidmachine/UserAgentProvider;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private prepareAnalytics(Landroid/content/Context;Lio/bidmachine/protobuf/InitResponse;)V
    .locals 8

    .line 233
    :try_start_0
    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->hasSdkAnalyticConfig()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->getSdkAnalyticConfig()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object p2

    .line 237
    invoke-virtual {p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-virtual {p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getContext()Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 242
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 243
    invoke-virtual {p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getMetricConfigsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    .line 244
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getDimensionsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 245
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getMetricsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 246
    new-instance v7, Lio/bidmachine/analytics/entity/AnalyticsMetricConfig;

    invoke-virtual {v4}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4, v5, v6}, Lio/bidmachine/analytics/entity/AnalyticsMetricConfig;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 249
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    :cond_2
    new-instance v3, Lio/bidmachine/analytics/AnalyticsConfig$Builder;

    invoke-direct {v3, v0, v1}, Lio/bidmachine/analytics/AnalyticsConfig$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getInterval()I

    move-result v0

    invoke-virtual {v3, v0}, Lio/bidmachine/analytics/AnalyticsConfig$Builder;->setIntervalSec(I)Lio/bidmachine/analytics/AnalyticsConfig$Builder;

    move-result-object v0

    .line 253
    invoke-virtual {p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getCount()I

    move-result p2

    invoke-virtual {v0, p2}, Lio/bidmachine/analytics/AnalyticsConfig$Builder;->setEventBatchSize(I)Lio/bidmachine/analytics/AnalyticsConfig$Builder;

    move-result-object p2

    .line 254
    invoke-virtual {p2, v2}, Lio/bidmachine/analytics/AnalyticsConfig$Builder;->setAnalyticsMetricConfigList(Ljava/util/List;)Lio/bidmachine/analytics/AnalyticsConfig$Builder;

    move-result-object p2

    .line 255
    invoke-virtual {p2}, Lio/bidmachine/analytics/AnalyticsConfig$Builder;->build()Lio/bidmachine/analytics/AnalyticsConfig;

    move-result-object p2

    .line 256
    invoke-static {p1, p2}, Lio/bidmachine/BidMachineAnalytics;->initialize(Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :catchall_0
    :cond_3
    :goto_1
    return-void
.end method

.method private requestInitData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 200
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl;->initialRequest:Lio/bidmachine/InitialRequest;

    if-eqz v0, :cond_0

    return-void

    .line 203
    :cond_0
    new-instance v0, Lio/bidmachine/InitialRequest;

    invoke-static {}, Lio/bidmachine/UrlProvider;->getInitUrlQueue()Ljava/util/Queue;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/InitialRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Queue;)V

    iput-object v0, p0, Lio/bidmachine/BidMachineImpl;->initialRequest:Lio/bidmachine/InitialRequest;

    .line 204
    new-instance p2, Lio/bidmachine/BidMachineImpl$4;

    invoke-direct {p2, p0, p1}, Lio/bidmachine/BidMachineImpl$4;-><init>(Lio/bidmachine/BidMachineImpl;Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lio/bidmachine/InitialRequest;->setListener(Lio/bidmachine/InitialRequest$Listener;)V

    .line 228
    iget-object p1, p0, Lio/bidmachine/BidMachineImpl;->initialRequest:Lio/bidmachine/InitialRequest;

    invoke-virtual {p1}, Lio/bidmachine/InitialRequest;->request()V

    return-void
.end method

.method private static sendOnInitialized(Lio/bidmachine/InitializationCallback;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 184
    :cond_0
    new-instance v0, Lio/bidmachine/BidMachineImpl$3;

    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineImpl$3;-><init>(Lio/bidmachine/InitializationCallback;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method getAdRequestListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/AdRequest$AdRequestListener<",
            "*>;>;"
        }
    .end annotation

    .line 427
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl;->adRequestListeners:Ljava/util/List;

    return-object v0
.end method

.method getAppContext()Landroid/content/Context;
    .locals 1

    .line 168
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method getCustomParams()Lio/bidmachine/CustomParams;
    .locals 1

    .line 384
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl;->customParams:Lio/bidmachine/CustomParams;

    return-object v0
.end method

.method getDeviceParams()Lio/bidmachine/DeviceParams;
    .locals 1

    .line 403
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl;->deviceParams:Lio/bidmachine/DeviceParams;

    return-object v0
.end method

.method getIabSharedPreference()Lio/bidmachine/IABSharedPreference;
    .locals 1

    .line 408
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl;->iabSharedPreference:Lio/bidmachine/IABSharedPreference;

    return-object v0
.end method

.method getNetworksLoadingTimeOutSec()I
    .locals 1

    .line 331
    iget v0, p0, Lio/bidmachine/BidMachineImpl;->networksLoadingTimeOutSec:I

    return v0
.end method

.method getPriceFloorParams()Lio/bidmachine/PriceFloorParams;
    .locals 1

    .line 398
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl;->priceFloorParams:Lio/bidmachine/PriceFloorParams;

    return-object v0
.end method

.method getPublisher()Lio/bidmachine/Publisher;
    .locals 1

    .line 375
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl;->publisher:Lio/bidmachine/Publisher;

    return-object v0
.end method

.method getRequestTimeOutMs()I
    .locals 1

    .line 327
    iget v0, p0, Lio/bidmachine/BidMachineImpl;->requestTimeOutMs:I

    return v0
.end method

.method getSellerId()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl;->sellerId:Ljava/lang/String;

    return-object v0
.end method

.method getSessionTracker()Lio/bidmachine/SessionTracker;
    .locals 1

    .line 356
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl;->sessionTracker:Lio/bidmachine/SessionTracker;

    return-object v0
.end method

.method getTargetingParams()Lio/bidmachine/TargetingParams;
    .locals 1

    .line 366
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl;->targetingParams:Lio/bidmachine/TargetingParams;

    return-object v0
.end method

.method getTrackingUrls(Lio/bidmachine/TrackEventType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/TrackEventType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl;->trackingEventTypes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method getUserRestrictionParams()Lio/bidmachine/UserRestrictionParams;
    .locals 1

    .line 393
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl;->userRestrictionParams:Lio/bidmachine/UserRestrictionParams;

    return-object v0
.end method

.method handleInitResponse(Lio/bidmachine/protobuf/InitResponse;)V
    .locals 3

    .line 263
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/UrlProvider;->setAuctionUrlFromInit(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl;->trackingEventTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 265
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl;->trackingEventTypes:Ljava/util/Map;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getEventList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/OrtbUtils;->prepareEvents(Ljava/util/Map;Ljava/util/List;)V

    .line 266
    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    move-result-object v0

    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getSessionResetAfter()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/SessionManager;->setSessionResetAfter(J)V

    .line 267
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdRequestTmax()I

    move-result v0

    iput v0, p0, Lio/bidmachine/BidMachineImpl;->requestTimeOutMs:I

    .line 268
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdNetworksLoadingTimeout()I

    move-result v0

    iput v0, p0, Lio/bidmachine/BidMachineImpl;->networksLoadingTimeOutSec:I

    .line 270
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdCachePlacementControlMap()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 272
    invoke-static {p1}, Lio/bidmachine/AdResponseManager;->setAdCachePlacementControlMap(Ljava/util/Map;)V

    .line 275
    sget-object v0, Lio/bidmachine/AdsType;->Interstitial:Lio/bidmachine/AdsType;

    invoke-virtual {v0}, Lio/bidmachine/AdsType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdCachePlacementControl;

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxCacheSize()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 279
    :goto_0
    sget-object v1, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    invoke-virtual {v1}, Lio/bidmachine/AdsType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdCachePlacementControl;

    if-eqz p1, :cond_1

    .line 281
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxCacheSize()I

    move-result p1

    add-int/2addr v0, p1

    :cond_1
    const/4 p1, 0x5

    if-le v0, p1, :cond_2

    .line 284
    invoke-static {v0}, Lcom/explorestack/iab/vast/VastRequest;->setCacheSize(I)V

    :cond_2
    return-void
.end method

.method initialize(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/InitializationCallback;)V
    .locals 2

    .line 119
    invoke-virtual {p0}, Lio/bidmachine/BidMachineImpl;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-static {p3}, Lio/bidmachine/BidMachineImpl;->sendOnInitialized(Lio/bidmachine/InitializationCallback;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 124
    const-string p1, "Initialization fail: Context is not provided"

    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    return-void

    .line 127
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    const-string p1, "Initialization fail: Source id is not provided"

    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz p3, :cond_3

    .line 132
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl;->callbackSet:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_3
    iget-object p3, p0, Lio/bidmachine/BidMachineImpl;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p3

    if-nez p3, :cond_4

    return-void

    .line 138
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 139
    iput-object p1, p0, Lio/bidmachine/BidMachineImpl;->appContext:Landroid/content/Context;

    .line 140
    iput-object p2, p0, Lio/bidmachine/BidMachineImpl;->sellerId:Ljava/lang/String;

    .line 141
    new-instance p3, Lio/bidmachine/SessionTrackerImpl;

    invoke-direct {p3}, Lio/bidmachine/SessionTrackerImpl;-><init>()V

    iput-object p3, p0, Lio/bidmachine/BidMachineImpl;->sessionTracker:Lio/bidmachine/SessionTracker;

    .line 143
    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    move-result-object p3

    invoke-virtual {p3}, Lio/bidmachine/SessionManager;->resume()V

    .line 144
    invoke-static {p1}, Lio/bidmachine/utils/BluetoothUtils;->register(Landroid/content/Context;)V

    .line 146
    new-instance p3, Lio/bidmachine/BidMachineImpl$2;

    invoke-direct {p3, p0, p1, p2}, Lio/bidmachine/BidMachineImpl$2;-><init>(Lio/bidmachine/BidMachineImpl;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p3}, Lio/bidmachine/core/Utils;->onBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method initializeInitNetworks(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/AdNetwork;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 294
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdNetwork;

    .line 295
    invoke-static {p1, v0}, Lio/bidmachine/NetworkRegistry;->registerInitNetwork(Landroid/content/Context;Lio/bidmachine/protobuf/AdNetwork;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method initializeNetworks(Landroid/content/Context;Lio/bidmachine/NetworkRegistry$NetworksInitializeCallback;)V
    .locals 1

    .line 302
    new-instance v0, Lio/bidmachine/ads/networks/mraid/MraidConfig;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/mraid/MraidConfig;-><init>()V

    invoke-static {v0}, Lio/bidmachine/NetworkRegistry;->registerNetwork(Lio/bidmachine/NetworkConfig;)V

    .line 303
    new-instance v0, Lio/bidmachine/ads/networks/vast/VastConfig;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/vast/VastConfig;-><init>()V

    invoke-static {v0}, Lio/bidmachine/NetworkRegistry;->registerNetwork(Lio/bidmachine/NetworkConfig;)V

    .line 304
    new-instance v0, Lio/bidmachine/ads/networks/nast/NastConfig;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/nast/NastConfig;-><init>()V

    invoke-static {v0}, Lio/bidmachine/NetworkRegistry;->registerNetwork(Lio/bidmachine/NetworkConfig;)V

    .line 306
    invoke-static {p1, p2}, Lio/bidmachine/NetworkRegistry;->initializeNetworks(Landroid/content/Context;Lio/bidmachine/NetworkRegistry$NetworksInitializeCallback;)V

    return-void
.end method

.method isInitializationStarted()Z
    .locals 1

    .line 335
    invoke-virtual {p0}, Lio/bidmachine/BidMachineImpl;->isInitializing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lio/bidmachine/BidMachineImpl;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isInitialized()Z
    .locals 1

    .line 343
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method isInitializing()Z
    .locals 1

    .line 339
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method isTestMode()Z
    .locals 1

    .line 347
    iget-boolean v0, p0, Lio/bidmachine/BidMachineImpl;->isTestMode:Z

    return v0
.end method

.method notifyInitializationFinished()V
    .locals 2

    .line 311
    const-string v0, "Notify initialization finished"

    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 314
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 315
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl;->callbackSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/InitializationCallback;

    .line 316
    invoke-static {v1}, Lio/bidmachine/BidMachineImpl;->sendOnInitialized(Lio/bidmachine/InitializationCallback;)V

    goto :goto_0

    .line 318
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl;->callbackSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method obtainIFV(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl;->ifv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object p1, p0, Lio/bidmachine/BidMachineImpl;->ifv:Ljava/lang/String;

    return-object p1

    .line 176
    :cond_0
    invoke-static {p1}, Lio/bidmachine/BidMachineSharedPreference;->obtainIFV(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/BidMachineImpl;->ifv:Ljava/lang/String;

    return-object p1
.end method

.method registerAdRequestListener(Lio/bidmachine/AdRequest$AdRequestListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest$AdRequestListener<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl;->adRequestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method setCustomParams(Lio/bidmachine/CustomParams;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    new-instance p1, Lio/bidmachine/CustomParams;

    invoke-direct {p1}, Lio/bidmachine/CustomParams;-><init>()V

    :goto_0
    iput-object p1, p0, Lio/bidmachine/BidMachineImpl;->customParams:Lio/bidmachine/CustomParams;

    return-void
.end method

.method setPublisher(Lio/bidmachine/Publisher;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lio/bidmachine/BidMachineImpl;->publisher:Lio/bidmachine/Publisher;

    return-void
.end method

.method setTargetingParams(Lio/bidmachine/TargetingParams;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 370
    :cond_0
    new-instance p1, Lio/bidmachine/TargetingParams;

    invoke-direct {p1}, Lio/bidmachine/TargetingParams;-><init>()V

    :goto_0
    iput-object p1, p0, Lio/bidmachine/BidMachineImpl;->targetingParams:Lio/bidmachine/TargetingParams;

    return-void
.end method

.method setTestMode(Z)V
    .locals 0

    .line 351
    iput-boolean p1, p0, Lio/bidmachine/BidMachineImpl;->isTestMode:Z

    return-void
.end method

.method unregisterAdRequestListener(Lio/bidmachine/AdRequest$AdRequestListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest$AdRequestListener<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl;->adRequestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
