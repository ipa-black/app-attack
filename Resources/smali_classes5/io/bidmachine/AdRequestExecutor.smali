.class Lio/bidmachine/AdRequestExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "AdRequestExecutor.java"


# static fields
.field private static volatile instance:Lio/bidmachine/AdRequestExecutor;


# direct methods
.method constructor <init>(I)V
    .locals 7

    .line 26
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method

.method public static get()Lio/bidmachine/AdRequestExecutor;
    .locals 3

    .line 14
    sget-object v0, Lio/bidmachine/AdRequestExecutor;->instance:Lio/bidmachine/AdRequestExecutor;

    if-nez v0, :cond_1

    .line 15
    const-class v0, Lio/bidmachine/AdRequestExecutor;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lio/bidmachine/AdRequestExecutor;->instance:Lio/bidmachine/AdRequestExecutor;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lio/bidmachine/AdRequestExecutor;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Lio/bidmachine/AdRequestExecutor;-><init>(I)V

    sput-object v1, Lio/bidmachine/AdRequestExecutor;->instance:Lio/bidmachine/AdRequestExecutor;

    .line 19
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 21
    :cond_1
    :goto_0
    sget-object v0, Lio/bidmachine/AdRequestExecutor;->instance:Lio/bidmachine/AdRequestExecutor;

    return-object v0
.end method
