.class public abstract Lorg/apache/mina/util/BaseThreadPool;
.super Ljava/lang/Object;
.source "BaseThreadPool.java"

# interfaces
.implements Lorg/apache/mina/util/ThreadPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/util/BaseThreadPool$Worker;,
        Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;
    }
.end annotation


# static fields
.field public static final DEFAULT_KEEP_ALIVE_TIME:I = 0xea60

.field public static final DEFAULT_MAXIMUM_POOL_SIZE:I = 0x7fffffff

.field private static volatile threadId:I


# instance fields
.field private final buffers:Ljava/util/Map;

.field private final busySessionBuffers:Ljava/util/Set;

.field private final followers:Lorg/apache/mina/util/Stack;

.field private keepAliveTime:I

.field private leader:Lorg/apache/mina/util/BaseThreadPool$Worker;

.field private maximumPoolSize:I

.field private poolSize:I

.field private final poolSizeLock:Ljava/lang/Object;

.field private final readySessionBuffers:Lorg/apache/mina/util/BlockingSet;

.field private shuttingDown:Z

.field private started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/util/BaseThreadPool;->buffers:Ljava/util/Map;

    .line 54
    new-instance v0, Lorg/apache/mina/util/Stack;

    invoke-direct {v0}, Lorg/apache/mina/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/util/BaseThreadPool;->followers:Lorg/apache/mina/util/Stack;

    .line 56
    new-instance v0, Lorg/apache/mina/util/BlockingSet;

    invoke-direct {v0}, Lorg/apache/mina/util/BlockingSet;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/util/BaseThreadPool;->readySessionBuffers:Lorg/apache/mina/util/BlockingSet;

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/util/BaseThreadPool;->busySessionBuffers:Ljava/util/Set;

    const v0, 0x7fffffff

    .line 62
    iput v0, p0, Lorg/apache/mina/util/BaseThreadPool;->maximumPoolSize:I

    const v0, 0xea60

    .line 64
    iput v0, p0, Lorg/apache/mina/util/BaseThreadPool;->keepAliveTime:I

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/util/BaseThreadPool;->poolSizeLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$1000(Lorg/apache/mina/util/BaseThreadPool;)Ljava/util/Set;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/apache/mina/util/BaseThreadPool;->busySessionBuffers:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/apache/mina/util/BaseThreadPool;Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lorg/apache/mina/util/BaseThreadPool;->removeSessionBuffer(Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/apache/mina/util/BaseThreadPool;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lorg/apache/mina/util/BaseThreadPool;->shuttingDown:Z

    return p0
.end method

.method static synthetic access$408()I
    .locals 2

    .line 38
    sget v0, Lorg/apache/mina/util/BaseThreadPool;->threadId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/apache/mina/util/BaseThreadPool;->threadId:I

    return v0
.end method

.method static synthetic access$500(Lorg/apache/mina/util/BaseThreadPool;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/apache/mina/util/BaseThreadPool;->increasePoolSize()V

    return-void
.end method

.method static synthetic access$600(Lorg/apache/mina/util/BaseThreadPool;)Lorg/apache/mina/util/BaseThreadPool$Worker;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/apache/mina/util/BaseThreadPool;->leader:Lorg/apache/mina/util/BaseThreadPool$Worker;

    return-object p0
.end method

.method static synthetic access$602(Lorg/apache/mina/util/BaseThreadPool;Lorg/apache/mina/util/BaseThreadPool$Worker;)Lorg/apache/mina/util/BaseThreadPool$Worker;
    .locals 0

    .line 38
    iput-object p1, p0, Lorg/apache/mina/util/BaseThreadPool;->leader:Lorg/apache/mina/util/BaseThreadPool$Worker;

    return-object p1
.end method

.method static synthetic access$700(Lorg/apache/mina/util/BaseThreadPool;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/apache/mina/util/BaseThreadPool;->decreasePoolSize()V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/mina/util/BaseThreadPool;)Lorg/apache/mina/util/BlockingSet;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/apache/mina/util/BaseThreadPool;->readySessionBuffers:Lorg/apache/mina/util/BlockingSet;

    return-object p0
.end method

.method static synthetic access$900(Lorg/apache/mina/util/BaseThreadPool;)Lorg/apache/mina/util/Stack;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/apache/mina/util/BaseThreadPool;->followers:Lorg/apache/mina/util/Stack;

    return-object p0
.end method

.method private decreasePoolSize()V
    .locals 2

    .line 167
    iget-object v0, p0, Lorg/apache/mina/util/BaseThreadPool;->poolSizeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_0
    iget v1, p0, Lorg/apache/mina/util/BaseThreadPool;->poolSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/mina/util/BaseThreadPool;->poolSize:I

    .line 170
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getSessionBuffer(Lorg/apache/mina/common/Session;)Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;
    .locals 3

    .line 205
    iget-object v0, p0, Lorg/apache/mina/util/BaseThreadPool;->buffers:Ljava/util/Map;

    .line 206
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;

    if-nez v1, :cond_1

    .line 209
    monitor-enter v0

    .line 211
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;

    if-nez v1, :cond_0

    .line 214
    new-instance v1, Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;-><init>(Lorg/apache/mina/common/Session;Lorg/apache/mina/util/BaseThreadPool$1;)V

    .line 215
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object v1
.end method

.method private increasePoolSize()V
    .locals 2

    .line 159
    iget-object v0, p0, Lorg/apache/mina/util/BaseThreadPool;->poolSizeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_0
    iget v1, p0, Lorg/apache/mina/util/BaseThreadPool;->poolSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/mina/util/BaseThreadPool;->poolSize:I

    .line 162
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeSessionBuffer(Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/apache/mina/util/BaseThreadPool;->buffers:Ljava/util/Map;

    .line 225
    invoke-static {p1}, Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;->access$300(Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;)Lorg/apache/mina/common/Session;

    move-result-object p1

    .line 226
    monitor-enter v0

    .line 228
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method protected fireEvent(Ljava/lang/Object;Lorg/apache/mina/common/Session;Lorg/apache/mina/util/EventType;Ljava/lang/Object;)V
    .locals 4

    .line 176
    iget-object v0, p0, Lorg/apache/mina/util/BaseThreadPool;->readySessionBuffers:Lorg/apache/mina/util/BlockingSet;

    .line 177
    iget-object v1, p0, Lorg/apache/mina/util/BaseThreadPool;->busySessionBuffers:Ljava/util/Set;

    .line 178
    invoke-direct {p0, p2}, Lorg/apache/mina/util/BaseThreadPool;->getSessionBuffer(Lorg/apache/mina/common/Session;)Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;

    move-result-object p2

    .line 179
    invoke-static {p2}, Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;->access$100(Lorg/apache/mina/util/BaseThreadPool$SessionBuffer;)Lorg/apache/mina/util/Queue;

    move-result-object v2

    .line 180
    new-instance v3, Lorg/apache/mina/util/Event;

    invoke-direct {v3, p3, p1, p4}, Lorg/apache/mina/util/Event;-><init>(Lorg/apache/mina/util/EventType;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    monitor-enter p2

    .line 184
    :try_start_0
    invoke-virtual {v2, v3}, Lorg/apache/mina/util/Queue;->push(Ljava/lang/Object;)V

    .line 185
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 187
    monitor-enter v0

    .line 189
    :try_start_1
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 191
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-virtual {v0, p2}, Lorg/apache/mina/util/BlockingSet;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 185
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getKeepAliveTime()I
    .locals 1

    .line 97
    iget v0, p0, Lorg/apache/mina/util/BaseThreadPool;->keepAliveTime:I

    return v0
.end method

.method public getMaximumPoolSize()I
    .locals 1

    .line 92
    iget v0, p0, Lorg/apache/mina/util/BaseThreadPool;->maximumPoolSize:I

    return v0
.end method

.method public getPoolSize()I
    .locals 2

    .line 84
    iget-object v0, p0, Lorg/apache/mina/util/BaseThreadPool;->poolSizeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_0
    iget v1, p0, Lorg/apache/mina/util/BaseThreadPool;->poolSize:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 87
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract processEvent(Ljava/lang/Object;Lorg/apache/mina/common/Session;Lorg/apache/mina/util/EventType;Ljava/lang/Object;)V
.end method

.method public setKeepAliveTime(I)V
    .locals 0

    .line 109
    iput p1, p0, Lorg/apache/mina/util/BaseThreadPool;->keepAliveTime:I

    return-void
.end method

.method public setMaximumPoolSize(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 104
    iput p1, p0, Lorg/apache/mina/util/BaseThreadPool;->maximumPoolSize:I

    return-void

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    .line 114
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/util/BaseThreadPool;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 115
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 117
    :try_start_1
    iput-boolean v0, p0, Lorg/apache/mina/util/BaseThreadPool;->shuttingDown:Z

    .line 119
    new-instance v0, Lorg/apache/mina/util/BaseThreadPool$Worker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/mina/util/BaseThreadPool$Worker;-><init>(Lorg/apache/mina/util/BaseThreadPool;Lorg/apache/mina/util/BaseThreadPool$1;)V

    iput-object v0, p0, Lorg/apache/mina/util/BaseThreadPool;->leader:Lorg/apache/mina/util/BaseThreadPool$Worker;

    .line 120
    invoke-virtual {v0}, Lorg/apache/mina/util/BaseThreadPool$Worker;->start()V

    .line 121
    iget-object v0, p0, Lorg/apache/mina/util/BaseThreadPool;->leader:Lorg/apache/mina/util/BaseThreadPool$Worker;

    invoke-virtual {v0}, Lorg/apache/mina/util/BaseThreadPool$Worker;->lead()V

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lorg/apache/mina/util/BaseThreadPool;->started:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    .line 128
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/util/BaseThreadPool;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 129
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 131
    :try_start_1
    iput-boolean v0, p0, Lorg/apache/mina/util/BaseThreadPool;->shuttingDown:Z

    const/4 v0, 0x0

    .line 135
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/util/BaseThreadPool;->leader:Lorg/apache/mina/util/BaseThreadPool$Worker;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 154
    iput-boolean v0, p0, Lorg/apache/mina/util/BaseThreadPool;->started:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 139
    :catch_0
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Lorg/apache/mina/util/BaseThreadPool$Worker;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    invoke-virtual {v1}, Lorg/apache/mina/util/BaseThreadPool$Worker;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    :try_start_3
    invoke-virtual {v1}, Lorg/apache/mina/util/BaseThreadPool$Worker;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
