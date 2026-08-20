.class public Lio/bidmachine/NetworkRegistry;
.super Ljava/lang/Object;
.source "NetworkRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/NetworkRegistry$NetworksInitializeCallback;,
        Lio/bidmachine/NetworkRegistry$NetworkLoadTask;
    }
.end annotation


# static fields
.field static final CACHED_NETWORK_CONFIG_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/NetworkConfig;",
            ">;"
        }
    .end annotation
.end field

.field static final FROM_INIT_NETWORK_CONFIG_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/NetworkConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_NETWORKS_INITIALIZED:Ljava/util/concurrent/atomic/AtomicBoolean;

.field static final NETWORK_ADAPTER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/NetworkAdapter;",
            ">;"
        }
    .end annotation
.end field

.field static final PENDING_NETWORK_CONFIG_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/NetworkConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/bidmachine/NetworkRegistry;->NETWORK_ADAPTER_MAP:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/bidmachine/NetworkRegistry;->PENDING_NETWORK_CONFIG_MAP:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/bidmachine/NetworkRegistry;->CACHED_NETWORK_CONFIG_MAP:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/bidmachine/NetworkRegistry;->FROM_INIT_NETWORK_CONFIG_MAP:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/bidmachine/NetworkRegistry;->IS_NETWORKS_INITIALIZED:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Ljava/util/Collection;Lio/bidmachine/NetworkRegistry$NetworksInitializeCallback;)V
    .locals 0

    .line 30
    invoke-static {p0, p1, p2, p3}, Lio/bidmachine/NetworkRegistry;->initializeNetworks(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Ljava/util/Collection;Lio/bidmachine/NetworkRegistry$NetworksInitializeCallback;)V

    return-void
.end method

.method static checkAndPutNetwork(Landroid/content/Context;Lio/bidmachine/AdsType;Lio/bidmachine/NetworkConfig;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/bidmachine/AdsType;",
            "Lio/bidmachine/NetworkConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/NetworkConfig;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 88
    invoke-virtual {p2}, Lio/bidmachine/NetworkConfig;->getNetworkKey()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Lio/bidmachine/NetworkRegistry;->getAdapter(Ljava/lang/String;)Lio/bidmachine/NetworkAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    const-string p0, "Network not registered"

    return-object p0

    .line 93
    :cond_0
    invoke-virtual {v0, p1}, Lio/bidmachine/NetworkAdapter;->isAdsTypeSupported(Lio/bidmachine/AdsType;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 94
    const-string p0, "Network does not support this ad type"

    return-object p0

    .line 96
    :cond_1
    invoke-virtual {v0, p0}, Lio/bidmachine/NetworkAdapter;->isInitialized(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 97
    const-string p0, "Network not initialized"

    return-object p0

    .line 99
    :cond_2
    invoke-virtual {p2}, Lio/bidmachine/NetworkConfig;->getNetworkKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method static createInitNetworkConfigMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/NetworkConfig;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lio/bidmachine/NetworkRegistry;->FROM_INIT_NETWORK_CONFIG_MAP:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static getAdapter(Ljava/lang/String;)Lio/bidmachine/NetworkAdapter;
    .locals 1

    .line 59
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 62
    :cond_0
    sget-object v0, Lio/bidmachine/NetworkRegistry;->NETWORK_ADAPTER_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/NetworkAdapter;

    return-object p0
.end method

.method static getConfig(Ljava/lang/String;)Lio/bidmachine/NetworkConfig;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 70
    :cond_0
    sget-object v0, Lio/bidmachine/NetworkRegistry;->CACHED_NETWORK_CONFIG_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/NetworkConfig;

    return-object p0
.end method

.method private static initializeNetwork(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfig;Lio/bidmachine/NetworkRegistry$NetworksInitializeCallback;)V
    .locals 7

    .line 220
    new-instance v6, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;-><init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfig;Lio/bidmachine/NetworkRegistry$NetworksInitializeCallback;Lio/bidmachine/NetworkRegistry$1;)V

    .line 224
    invoke-virtual {v6}, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->execute()V

    return-void
.end method

.method static initializeNetworks(Landroid/content/Context;Lio/bidmachine/NetworkRegistry$NetworksInitializeCallback;)V
    .locals 2

    .line 169
    sget-object v0, Lio/bidmachine/NetworkRegistry;->IS_NETWORKS_INITIALIZED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 172
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 173
    new-instance v0, Lio/bidmachine/NetworkRegistry$1;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/NetworkRegistry$1;-><init>(Landroid/content/Context;Lio/bidmachine/NetworkRegistry$NetworksInitializeCallback;)V

    .line 185
    invoke-virtual {v0}, Lio/bidmachine/NetworkRegistry$1;->start()V

    return-void
.end method

.method private static initializeNetworks(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Ljava/util/Collection;Lio/bidmachine/NetworkRegistry$NetworksInitializeCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "Lio/bidmachine/InitializationParams;",
            "Ljava/util/Collection<",
            "Lio/bidmachine/NetworkConfig;",
            ">;",
            "Lio/bidmachine/NetworkRegistry$NetworksInitializeCallback;",
            ")V"
        }
    .end annotation

    .line 192
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 193
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 194
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/NetworkConfig;

    .line 195
    new-instance v2, Lio/bidmachine/NetworkRegistry$2;

    invoke-direct {v2, v0}, Lio/bidmachine/NetworkRegistry$2;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {p0, p1, v1, v2}, Lio/bidmachine/NetworkRegistry;->initializeNetwork(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfig;Lio/bidmachine/NetworkRegistry$NetworksInitializeCallback;)V

    goto :goto_0

    .line 206
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 208
    invoke-static {p0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    .line 212
    invoke-interface {p3}, Lio/bidmachine/NetworkRegistry$NetworksInitializeCallback;->onExecuted()V

    :cond_2
    return-void
.end method

.method static isNetworkRegistered(Ljava/lang/String;)Z
    .locals 0

    .line 79
    invoke-static {p0}, Lio/bidmachine/NetworkRegistry;->getAdapter(Ljava/lang/String;)Lio/bidmachine/NetworkAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isNetworksInitialized()Z
    .locals 1

    .line 164
    sget-object v0, Lio/bidmachine/NetworkRegistry;->IS_NETWORKS_INITIALIZED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static obtainAdapter(Lio/bidmachine/NetworkConfig;)Lio/bidmachine/NetworkAdapter;
    .locals 3

    .line 45
    const-class v0, Lio/bidmachine/NetworkRegistry;

    monitor-enter v0

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->getNetworkKey()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v1}, Lio/bidmachine/NetworkRegistry;->getAdapter(Ljava/lang/String;)Lio/bidmachine/NetworkAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 49
    monitor-exit v0

    return-object v2

    .line 51
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->createNetworkAdapter()Lio/bidmachine/NetworkAdapter;

    move-result-object p0

    .line 52
    sget-object v2, Lio/bidmachine/NetworkRegistry;->NETWORK_ADAPTER_MAP:Ljava/util/Map;

    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static registerInitNetwork(Landroid/content/Context;Lio/bidmachine/protobuf/AdNetwork;)V
    .locals 1

    .line 153
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/NetworkRegistry;->isNetworkRegistered(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 156
    :cond_0
    invoke-static {p0, p1}, Lio/bidmachine/NetworkConfigFactory;->create(Landroid/content/Context;Lio/bidmachine/protobuf/AdNetwork;)Lio/bidmachine/NetworkConfig;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 158
    sget-object p1, Lio/bidmachine/NetworkRegistry;->FROM_INIT_NETWORK_CONFIG_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->getNetworkKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-static {p0}, Lio/bidmachine/NetworkRegistry;->registerNetwork(Lio/bidmachine/NetworkConfig;)V

    :cond_1
    return-void
.end method

.method static registerNetwork(Lio/bidmachine/NetworkConfig;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 133
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->getNetworkKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/NetworkRegistry;->isNetworkRegistered(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 136
    :cond_1
    invoke-static {p0}, Lio/bidmachine/NetworkRegistry;->obtainAdapter(Lio/bidmachine/NetworkConfig;)Lio/bidmachine/NetworkAdapter;

    .line 137
    sget-object v0, Lio/bidmachine/NetworkRegistry;->PENDING_NETWORK_CONFIG_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->getNetworkKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {}, Lio/bidmachine/NetworkRegistry;->isNetworksInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    invoke-static {}, Lio/bidmachine/BidMachineImpl;->get()Lio/bidmachine/BidMachineImpl;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lio/bidmachine/BidMachineImpl;->getAppContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 145
    :cond_2
    new-instance v2, Lio/bidmachine/SimpleContextProvider;

    invoke-direct {v2, v1}, Lio/bidmachine/SimpleContextProvider;-><init>(Landroid/content/Context;)V

    .line 146
    new-instance v1, Lio/bidmachine/InitializationParamsImpl;

    invoke-virtual {v0}, Lio/bidmachine/BidMachineImpl;->getTargetingParams()Lio/bidmachine/TargetingParams;

    move-result-object v3

    .line 147
    invoke-virtual {v0}, Lio/bidmachine/BidMachineImpl;->getUserRestrictionParams()Lio/bidmachine/UserRestrictionParams;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lio/bidmachine/InitializationParamsImpl;-><init>(Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)V

    const/4 v0, 0x0

    .line 148
    invoke-static {v2, v1, p0, v0}, Lio/bidmachine/NetworkRegistry;->initializeNetwork(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfig;Lio/bidmachine/NetworkRegistry$NetworksInitializeCallback;)V

    :cond_3
    return-void
.end method

.method static registerNetworks(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 116
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 117
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 118
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 119
    invoke-static {p0, v1}, Lio/bidmachine/NetworkConfigFactory;->create(Landroid/content/Context;Lorg/json/JSONObject;)Lio/bidmachine/NetworkConfig;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 121
    invoke-static {v1}, Lio/bidmachine/NetworkRegistry;->registerNetwork(Lio/bidmachine/NetworkConfig;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 125
    invoke-static {p0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method static varargs registerNetworks([Lio/bidmachine/NetworkConfig;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 104
    array-length v0, p0

    if-lez v0, :cond_0

    .line 105
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 106
    invoke-static {v2}, Lio/bidmachine/NetworkRegistry;->registerNetwork(Lio/bidmachine/NetworkConfig;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static reset()V
    .locals 2

    .line 239
    sget-object v0, Lio/bidmachine/NetworkRegistry;->NETWORK_ADAPTER_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 240
    sget-object v0, Lio/bidmachine/NetworkRegistry;->PENDING_NETWORK_CONFIG_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 241
    sget-object v0, Lio/bidmachine/NetworkRegistry;->CACHED_NETWORK_CONFIG_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 242
    sget-object v0, Lio/bidmachine/NetworkRegistry;->FROM_INIT_NETWORK_CONFIG_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 243
    sget-object v0, Lio/bidmachine/NetworkRegistry;->IS_NETWORKS_INITIALIZED:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 245
    sget-object v0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->networkLoadTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method static setLoggingEnabled(Z)V
    .locals 2

    .line 228
    sget-object v0, Lio/bidmachine/NetworkRegistry;->NETWORK_ADAPTER_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 230
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/NetworkAdapter;

    invoke-virtual {v1, p0}, Lio/bidmachine/NetworkAdapter;->setLogging(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 232
    invoke-static {v1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
