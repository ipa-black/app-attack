.class final Lio/bidmachine/NetworkRegistry$NetworkLoadTask;
.super Ljava/lang/Object;
.source "NetworkRegistry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/NetworkRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NetworkLoadTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/NetworkRegistry$NetworkLoadTask$InitializationCallback;
    }
.end annotation


# static fields
.field private static final executor:Ljava/util/concurrent/Executor;

.field static final networkLoadTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkRegistry$NetworkLoadTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final callback:Lio/bidmachine/NetworkRegistry$NetworksInitializeCallback;

.field private final contextProvider:Lio/bidmachine/ContextProvider;

.field private final initializationParams:Lio/bidmachine/InitializationParams;

.field private final networkConfig:Lio/bidmachine/NetworkConfig;

.field private final networkKey:Ljava/lang/String;

.field private final trackingObject:Lio/bidmachine/TrackingObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 253
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 252
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->executor:Ljava/util/concurrent/Executor;

    .line 255
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->networkLoadTaskList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfig;Lio/bidmachine/NetworkRegistry$NetworksInitializeCallback;)V
    .locals 0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p1, p0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->contextProvider:Lio/bidmachine/ContextProvider;

    .line 276
    iput-object p2, p0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->initializationParams:Lio/bidmachine/InitializationParams;

    .line 277
    iput-object p3, p0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->networkConfig:Lio/bidmachine/NetworkConfig;

    .line 278
    iput-object p4, p0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->callback:Lio/bidmachine/NetworkRegistry$NetworksInitializeCallback;

    .line 280
    invoke-virtual {p3}, Lio/bidmachine/NetworkConfig;->getNetworkKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->networkKey:Ljava/lang/String;

    .line 281
    new-instance p2, Lio/bidmachine/SimpleTrackingObject;

    const-string p3, "%s_initialize"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/bidmachine/SimpleTrackingObject;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->trackingObject:Lio/bidmachine/TrackingObject;

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfig;Lio/bidmachine/NetworkRegistry$NetworksInitializeCallback;Lio/bidmachine/NetworkRegistry$1;)V
    .locals 0

    .line 250
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;-><init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfig;Lio/bidmachine/NetworkRegistry$NetworksInitializeCallback;)V

    return-void
.end method


# virtual methods
.method execute()V
    .locals 1

    .line 316
    sget-object v0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->networkLoadTaskList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    sget-object v0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method onInitializationFail(Ljava/lang/String;)V
    .locals 3

    .line 337
    iget-object v0, p0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->networkKey:Ljava/lang/String;

    const-string v1, "Initialization error: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->trackingObject:Lio/bidmachine/TrackingObject;

    sget-object v1, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkInitialize:Lio/bidmachine/TrackEventType;

    const/4 v2, 0x0

    .line 341
    invoke-static {p1}, Lio/bidmachine/utils/BMError;->adapterInitialization(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    .line 338
    invoke-static {v0, v1, v2, p1}, Lio/bidmachine/BidMachineEvents;->eventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V

    .line 342
    sget-object p1, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->networkLoadTaskList:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method onInitializationSuccess(Lio/bidmachine/NetworkAdapter;)V
    .locals 3

    .line 321
    iget-object v0, p0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->networkKey:Ljava/lang/String;

    .line 322
    invoke-virtual {p1}, Lio/bidmachine/NetworkAdapter;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    .line 323
    invoke-virtual {p1}, Lio/bidmachine/NetworkAdapter;->getAdapterVersion()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 321
    const-string v2, "Initialization completed: %s, %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    instance-of p1, p1, Lio/bidmachine/HeaderBiddingAdapter;

    if-eqz p1, :cond_0

    .line 325
    iget-object p1, p0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->trackingObject:Lio/bidmachine/TrackingObject;

    sget-object v0, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkInitialize:Lio/bidmachine/TrackEventType;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lio/bidmachine/BidMachineEvents;->eventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V

    goto :goto_0

    .line 330
    :cond_0
    iget-object p1, p0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->trackingObject:Lio/bidmachine/TrackingObject;

    sget-object v0, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkInitialize:Lio/bidmachine/TrackEventType;

    invoke-static {p1, v0}, Lio/bidmachine/BidMachineEvents;->clearEvent(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;)V

    .line 333
    :goto_0
    sget-object p1, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->networkLoadTaskList:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .locals 6

    .line 286
    iget-object v0, p0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->networkKey:Ljava/lang/String;

    const-string v1, "Initialization started"

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->trackingObject:Lio/bidmachine/TrackingObject;

    sget-object v1, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkInitialize:Lio/bidmachine/TrackEventType;

    new-instance v2, Lio/bidmachine/TrackEventInfo;

    invoke-direct {v2}, Lio/bidmachine/TrackEventInfo;-><init>()V

    const-string v3, "HB_NETWORK"

    iget-object v4, p0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->networkKey:Ljava/lang/String;

    .line 291
    invoke-virtual {v2, v3, v4}, Lio/bidmachine/TrackEventInfo;->withParameter(Ljava/lang/String;Ljava/lang/Object;)Lio/bidmachine/TrackEventInfo;

    move-result-object v2

    .line 288
    invoke-static {v0, v1, v2}, Lio/bidmachine/BidMachineEvents;->eventStart(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/TrackEventInfo;)V

    .line 292
    iget-object v0, p0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->networkConfig:Lio/bidmachine/NetworkConfig;

    invoke-static {v0}, Lio/bidmachine/NetworkRegistry;->obtainAdapter(Lio/bidmachine/NetworkConfig;)Lio/bidmachine/NetworkAdapter;

    move-result-object v0

    .line 293
    invoke-static {}, Lio/bidmachine/core/Logger;->isLoggingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/NetworkAdapter;->setLogging(Z)V

    .line 294
    iget-object v1, p0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->contextProvider:Lio/bidmachine/ContextProvider;

    iget-object v2, p0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->initializationParams:Lio/bidmachine/InitializationParams;

    iget-object v3, p0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->networkConfig:Lio/bidmachine/NetworkConfig;

    .line 296
    invoke-virtual {v3}, Lio/bidmachine/NetworkConfig;->getNetworkConfigParams()Lio/bidmachine/NetworkConfigParams;

    move-result-object v3

    new-instance v4, Lio/bidmachine/NetworkRegistry$NetworkLoadTask$InitializationCallback;

    invoke-direct {v4, p0}, Lio/bidmachine/NetworkRegistry$NetworkLoadTask$InitializationCallback;-><init>(Lio/bidmachine/NetworkRegistry$NetworkLoadTask;)V

    .line 294
    invoke-virtual {v0, v1, v2, v3, v4}, Lio/bidmachine/NetworkAdapter;->initialize(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfigParams;Lio/bidmachine/InternalNetworkInitializationCallback;)V

    .line 298
    sget-object v1, Lio/bidmachine/NetworkRegistry;->CACHED_NETWORK_CONFIG_MAP:Ljava/util/Map;

    iget-object v2, p0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->networkKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    sget-object v1, Lio/bidmachine/NetworkRegistry;->CACHED_NETWORK_CONFIG_MAP:Ljava/util/Map;

    iget-object v2, p0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->networkKey:Ljava/lang/String;

    iget-object v3, p0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->networkConfig:Lio/bidmachine/NetworkConfig;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_0
    iget-object v1, p0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->networkConfig:Lio/bidmachine/NetworkConfig;

    invoke-virtual {v1, v0}, Lio/bidmachine/NetworkConfig;->getSupportedAdsTypes(Lio/bidmachine/NetworkAdapter;)[Lio/bidmachine/AdsType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 302
    iget-object v4, p0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->networkKey:Ljava/lang/String;

    iget-object v5, p0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->networkConfig:Lio/bidmachine/NetworkConfig;

    invoke-virtual {v3, v4, v5}, Lio/bidmachine/AdsType;->addNetworkConfig(Ljava/lang/String;Lio/bidmachine/NetworkConfig;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 304
    :cond_1
    sget-object v0, Lio/bidmachine/NetworkRegistry;->PENDING_NETWORK_CONFIG_MAP:Ljava/util/Map;

    iget-object v1, p0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->networkKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 306
    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    .line 307
    const-string v0, "Network initialization exception"

    invoke-virtual {p0, v0}, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->onInitializationFail(Ljava/lang/String;)V

    .line 310
    :goto_1
    iget-object v0, p0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->callback:Lio/bidmachine/NetworkRegistry$NetworksInitializeCallback;

    if-eqz v0, :cond_2

    .line 311
    invoke-interface {v0}, Lio/bidmachine/NetworkRegistry$NetworksInitializeCallback;->onExecuted()V

    :cond_2
    return-void
.end method
