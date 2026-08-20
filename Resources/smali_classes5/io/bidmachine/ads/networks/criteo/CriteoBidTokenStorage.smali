.class Lio/bidmachine/ads/networks/criteo/CriteoBidTokenStorage;
.super Ljava/lang/Object;
.source "CriteoBidTokenStorage.java"


# static fields
.field static final bidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/NetworkAdUnit;",
            "Lcom/criteo/publisher/Bid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/bidmachine/ads/networks/criteo/CriteoBidTokenStorage;->bidMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized storeBid(Lio/bidmachine/NetworkAdUnit;Lcom/criteo/publisher/Bid;)V
    .locals 2

    const-class v0, Lio/bidmachine/ads/networks/criteo/CriteoBidTokenStorage;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lio/bidmachine/ads/networks/criteo/CriteoBidTokenStorage;->bidMap:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized takeBid(Lio/bidmachine/NetworkAdUnit;)Lcom/criteo/publisher/Bid;
    .locals 2

    const-class v0, Lio/bidmachine/ads/networks/criteo/CriteoBidTokenStorage;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lio/bidmachine/ads/networks/criteo/CriteoBidTokenStorage;->bidMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/criteo/publisher/Bid;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
