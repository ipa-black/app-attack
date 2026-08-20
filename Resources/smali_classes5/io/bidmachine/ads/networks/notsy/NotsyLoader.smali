.class Lio/bidmachine/ads/networks/notsy/NotsyLoader;
.super Ljava/lang/Object;
.source "NotsyLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final DEFAULT_BOTTOM_BORDER_LOADED_AD:I = 0x2

.field private static final DEFAULT_BREAK_AFTER_AD_LOADED:Z = true

.field private static final DEFAULT_REST_AD_LOAD_MS:I = 0x64

.field private static final DEFAULT_REST_TASK_LOAD_MS:I = 0x1388

.field private static applicationContext:Landroid/content/Context;

.field private static final loadAdUnitListExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final loadTaskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/AdsFormat;",
            "Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;",
            ">;"
        }
    .end annotation
.end field

.field static final notsyAdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;",
            ">;"
        }
    .end annotation
.end field

.field private static final notsyAdListLock:Ljava/lang/Object;

.field static final reservedNotsyAdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/NetworkAdUnit;",
            "Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->CPU_COUNT:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->CORE_POOL_SIZE:I

    .line 38
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->loadAdUnitListExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->loadTaskMap:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->notsyAdList:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->reservedNotsyAdMap:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->notsyAdListLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .line 26
    sget v0, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->CORE_POOL_SIZE:I

    return v0
.end method

.method static synthetic access$200(Ljava/util/List;)I
    .locals 0

    .line 26
    invoke-static {p0}, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->loadedNotsyAdCount(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;I)V
    .locals 0

    .line 26
    invoke-static {p0, p1}, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->scheduleLoadTasks(Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;I)V

    return-void
.end method

.method static synthetic access$500()Landroid/content/Context;
    .locals 1

    .line 26
    sget-object v0, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V
    .locals 0

    .line 26
    invoke-static {p0}, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->destroyNotsyAd(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V

    return-void
.end method

.method static clear()V
    .locals 1

    .line 214
    sget-object v0, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->loadTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 215
    sget-object v0, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->notsyAdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 216
    sget-object v0, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->reservedNotsyAdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private static destroyNotsyAd(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V
    .locals 0

    .line 192
    :try_start_0
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :catchall_0
    invoke-static {p0}, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->removeFromCaches(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V

    return-void
.end method

.method private static findIdleNotsyAd(Lio/bidmachine/ads/networks/notsy/InternalNotsyData;)Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;
    .locals 4

    .line 123
    sget-object v0, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->notsyAdListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_0
    sget-object v1, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->notsyAdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;

    .line 125
    invoke-virtual {v2}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->getInternalNotsyData()Lio/bidmachine/ads/networks/notsy/InternalNotsyData;

    move-result-object v3

    invoke-virtual {v3, p0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    invoke-static {v2}, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->isReserved(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 129
    :cond_1
    monitor-exit v0

    return-object v2

    .line 131
    :cond_2
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static getNotsyAd(Lio/bidmachine/NetworkAdUnit;)Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;
    .locals 1

    .line 99
    sget-object v0, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->reservedNotsyAdMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;

    return-object p0
.end method

.method static isReserved(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)Z
    .locals 1

    .line 137
    sget-object v0, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->reservedNotsyAdMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$setup$0(Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;)I
    .locals 0

    .line 63
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;->getInternalNotsyData()Lio/bidmachine/ads/networks/notsy/InternalNotsyData;

    move-result-object p0

    invoke-virtual {p0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyData;->getScore()F

    move-result p0

    .line 64
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;->getInternalNotsyData()Lio/bidmachine/ads/networks/notsy/InternalNotsyData;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/ads/networks/notsy/InternalNotsyData;->getScore()F

    move-result p1

    .line 63
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method static synthetic lambda$storeNotsyAd$1(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)I
    .locals 0

    .line 171
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->getScope()F

    move-result p0

    invoke-virtual {p1}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->getScope()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method private static loadTask(Lio/bidmachine/AdsFormat;)V
    .locals 1

    .line 141
    sget-object v0, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->loadTaskMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;

    if-nez p0, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-static {p0}, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->loadTask(Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;)V

    return-void
.end method

.method private static loadTask(Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;)V
    .locals 1

    .line 149
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 152
    :cond_0
    sget-object v0, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->loadAdUnitListExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static loadedNotsyAdCount(Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;",
            ">;)I"
        }
    .end annotation

    .line 199
    sget-object v0, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->notsyAdListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    sget-object v1, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->notsyAdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;

    .line 202
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;

    .line 203
    invoke-virtual {v3}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->getAdUnit()Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;

    move-result-object v6

    invoke-virtual {v6, v5}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    .line 209
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static onNotsyAdDestroy(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 112
    :try_start_0
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->destroyAd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :catchall_0
    invoke-static {p0}, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->removeFromCaches(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-static {p0}, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->unReserveNotsyAd(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V

    :goto_0
    return-void
.end method

.method static onNotsyAdShown(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V
    .locals 1

    .line 103
    sget-object v0, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->notsyAdListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    invoke-static {p0}, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->removeFromCaches(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V

    .line 105
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->getAdsFormat()Lio/bidmachine/AdsFormat;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->loadTask(Lio/bidmachine/AdsFormat;)V

    .line 106
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static removeFromCaches(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V
    .locals 2

    .line 176
    sget-object v0, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->notsyAdListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_0
    sget-object v1, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->notsyAdList:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 178
    invoke-static {p0}, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->unReserveNotsyAd(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V

    .line 179
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static reserveNotsyAd(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/notsy/InternalNotsyData;)Z
    .locals 2

    .line 82
    sget-object v0, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->notsyAdListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    invoke-static {p1}, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->findIdleNotsyAd(Lio/bidmachine/ads/networks/notsy/InternalNotsyData;)Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 85
    sget-object v1, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->reservedNotsyAdMap:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 88
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 90
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static scheduleLoadTasks(Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;I)V
    .locals 3

    .line 156
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 159
    :cond_0
    sget-object v0, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->loadAdUnitListExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static setup(Landroid/content/Context;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Lio/bidmachine/AdsFormat;",
            "Ljava/util/List<",
            "Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;",
            ">;>;)V"
        }
    .end annotation

    .line 54
    sput-object p0, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->applicationContext:Landroid/content/Context;

    .line 56
    invoke-static {}, Lio/bidmachine/AdsFormat;->values()[Lio/bidmachine/AdsFormat;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 57
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_1

    .line 58
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 61
    :cond_0
    new-instance v3, Lio/bidmachine/ads/networks/notsy/NotsyLoader$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lio/bidmachine/ads/networks/notsy/NotsyLoader$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 66
    sget-object v3, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->loadTaskMap:Ljava/util/Map;

    new-instance v11, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x2

    const/16 v7, 0x64

    const/16 v8, 0x1388

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;-><init>(Ljava/util/List;IIIZLio/bidmachine/ads/networks/notsy/NotsyLoader$1;)V

    invoke-interface {v3, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static startLoading()V
    .locals 2

    .line 75
    sget-object v0, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->loadTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;

    .line 76
    invoke-static {v1}, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->loadTask(Lio/bidmachine/ads/networks/notsy/NotsyLoader$LoadAdUnitListTask;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static storeNotsyAd(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V
    .locals 3

    .line 164
    sget-object v0, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->notsyAdListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_0
    sget-object v1, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->notsyAdList:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    monitor-exit v0

    return-void

    .line 168
    :cond_0
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance p0, Lio/bidmachine/ads/networks/notsy/NotsyLoader$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lio/bidmachine/ads/networks/notsy/NotsyLoader$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 172
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static unReserveNotsyAd(Lio/bidmachine/NetworkAdUnit;)V
    .locals 1

    .line 94
    sget-object v0, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->reservedNotsyAdMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static unReserveNotsyAd(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V
    .locals 3

    .line 183
    sget-object v0, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->reservedNotsyAdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 184
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    sget-object v2, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->reservedNotsyAdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
