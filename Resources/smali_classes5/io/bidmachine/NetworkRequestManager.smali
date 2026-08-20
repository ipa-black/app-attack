.class Lio/bidmachine/NetworkRequestManager;
.super Ljava/lang/Object;
.source "NetworkRequestManager.java"


# static fields
.field private static volatile instance:Lio/bidmachine/NetworkRequestManager;


# instance fields
.field private final lock:Ljava/lang/Object;

.field final networkRequestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/core/NetworkRequest<",
            "*",
            "Lcom/explorestack/protobuf/openrtb/Response;",
            "Lio/bidmachine/utils/BMError;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/bidmachine/NetworkRequestManager;->lock:Ljava/lang/Object;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/bidmachine/NetworkRequestManager;->networkRequestMap:Ljava/util/Map;

    return-void
.end method

.method public static get()Lio/bidmachine/NetworkRequestManager;
    .locals 2

    .line 20
    sget-object v0, Lio/bidmachine/NetworkRequestManager;->instance:Lio/bidmachine/NetworkRequestManager;

    if-nez v0, :cond_1

    .line 22
    const-class v1, Lio/bidmachine/NetworkRequestManager;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lio/bidmachine/NetworkRequestManager;->instance:Lio/bidmachine/NetworkRequestManager;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lio/bidmachine/NetworkRequestManager;

    invoke-direct {v0}, Lio/bidmachine/NetworkRequestManager;-><init>()V

    .line 26
    sput-object v0, Lio/bidmachine/NetworkRequestManager;->instance:Lio/bidmachine/NetworkRequestManager;

    .line 28
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Lio/bidmachine/core/NetworkRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/bidmachine/core/NetworkRequest<",
            "*",
            "Lcom/explorestack/protobuf/openrtb/Response;",
            "Lio/bidmachine/utils/BMError;",
            ">;)V"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lio/bidmachine/NetworkRequestManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/NetworkRequestManager;->networkRequestMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2

    .line 39
    iget-object v0, p0, Lio/bidmachine/NetworkRequestManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 40
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/NetworkRequestManager;->networkRequestMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public remove(Ljava/lang/String;)Lio/bidmachine/core/NetworkRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/bidmachine/core/NetworkRequest<",
            "*",
            "Lcom/explorestack/protobuf/openrtb/Response;",
            "Lio/bidmachine/utils/BMError;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lio/bidmachine/NetworkRequestManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/NetworkRequestManager;->networkRequestMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/core/NetworkRequest;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
