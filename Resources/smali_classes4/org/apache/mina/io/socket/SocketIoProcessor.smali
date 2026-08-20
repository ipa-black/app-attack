.class Lorg/apache/mina/io/socket/SocketIoProcessor;
.super Ljava/lang/Object;
.source "SocketIoProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/io/socket/SocketIoProcessor$Worker;
    }
.end annotation


# static fields
.field private static final instance:Lorg/apache/mina/io/socket/SocketIoProcessor;


# instance fields
.field private final flushingSessions:Lorg/apache/mina/util/Queue;

.field private lastIdleCheckTime:J

.field private final newSessions:Lorg/apache/mina/util/Queue;

.field private final readableSessions:Lorg/apache/mina/util/Queue;

.field private final removingSessions:Lorg/apache/mina/util/Queue;

.field private final selector:Ljava/nio/channels/Selector;

.field private worker:Lorg/apache/mina/io/socket/SocketIoProcessor$Worker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    :try_start_0
    new-instance v0, Lorg/apache/mina/io/socket/SocketIoProcessor;

    invoke-direct {v0}, Lorg/apache/mina/io/socket/SocketIoProcessor;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    sput-object v0, Lorg/apache/mina/io/socket/SocketIoProcessor;->instance:Lorg/apache/mina/io/socket/SocketIoProcessor;

    return-void

    :catch_0
    move-exception v0

    .line 55
    new-instance v1, Ljava/lang/InternalError;

    const-string v2, "Failed to open selector."

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/InternalError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 58
    throw v1
.end method

.method private constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lorg/apache/mina/util/Queue;

    invoke-direct {v0}, Lorg/apache/mina/util/Queue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->newSessions:Lorg/apache/mina/util/Queue;

    .line 68
    new-instance v0, Lorg/apache/mina/util/Queue;

    invoke-direct {v0}, Lorg/apache/mina/util/Queue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->removingSessions:Lorg/apache/mina/util/Queue;

    .line 70
    new-instance v0, Lorg/apache/mina/util/Queue;

    invoke-direct {v0}, Lorg/apache/mina/util/Queue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->flushingSessions:Lorg/apache/mina/util/Queue;

    .line 72
    new-instance v0, Lorg/apache/mina/util/Queue;

    invoke-direct {v0}, Lorg/apache/mina/util/Queue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->readableSessions:Lorg/apache/mina/util/Queue;

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->lastIdleCheckTime:J

    .line 80
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->selector:Ljava/nio/channels/Selector;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/mina/io/socket/SocketIoProcessor;)Ljava/nio/channels/Selector;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->selector:Ljava/nio/channels/Selector;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/mina/io/socket/SocketIoProcessor;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/apache/mina/io/socket/SocketIoProcessor;->addSessions()V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/mina/io/socket/SocketIoProcessor;Ljava/util/Set;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lorg/apache/mina/io/socket/SocketIoProcessor;->processSessions(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/mina/io/socket/SocketIoProcessor;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/apache/mina/io/socket/SocketIoProcessor;->flushSessions()V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/mina/io/socket/SocketIoProcessor;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/apache/mina/io/socket/SocketIoProcessor;->removeSessions()V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/mina/io/socket/SocketIoProcessor;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/apache/mina/io/socket/SocketIoProcessor;->notifyIdleSessions()V

    return-void
.end method

.method static synthetic access$600(Lorg/apache/mina/io/socket/SocketIoProcessor;)Lorg/apache/mina/util/Queue;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->newSessions:Lorg/apache/mina/util/Queue;

    return-object p0
.end method

.method static synthetic access$702(Lorg/apache/mina/io/socket/SocketIoProcessor;Lorg/apache/mina/io/socket/SocketIoProcessor$Worker;)Lorg/apache/mina/io/socket/SocketIoProcessor$Worker;
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->worker:Lorg/apache/mina/io/socket/SocketIoProcessor$Worker;

    return-object p1
.end method

.method private addSessions()V
    .locals 4

    .line 135
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->newSessions:Lorg/apache/mina/util/Queue;

    invoke-virtual {v0}, Lorg/apache/mina/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 142
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->newSessions:Lorg/apache/mina/util/Queue;

    monitor-enter v0

    .line 144
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->newSessions:Lorg/apache/mina/util/Queue;

    invoke-virtual {v1}, Lorg/apache/mina/util/Queue;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/io/socket/SocketSession;

    .line 145
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    return-void

    .line 150
    :cond_1
    invoke-virtual {v1}, Lorg/apache/mina/io/socket/SocketSession;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    const/4 v2, 0x0

    .line 155
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 156
    iget-object v2, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->selector:Ljava/nio/channels/Selector;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/mina/io/socket/SocketSession;->setSelectionKey(Ljava/nio/channels/SelectionKey;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 169
    invoke-virtual {v1}, Lorg/apache/mina/io/socket/SocketSession;->getManagerFilterChain()Lorg/apache/mina/io/IoSessionManagerFilterChain;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/mina/io/IoSessionManagerFilterChain;->sessionOpened(Lorg/apache/mina/io/IoSession;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {v1}, Lorg/apache/mina/io/socket/SocketSession;->getManagerFilterChain()Lorg/apache/mina/io/IoSessionManagerFilterChain;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/apache/mina/io/IoSessionManagerFilterChain;->exceptionCaught(Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 145
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private flush(Lorg/apache/mina/io/socket/SocketSession;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    invoke-virtual {p1}, Lorg/apache/mina/io/socket/SocketSession;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 435
    invoke-virtual {p1}, Lorg/apache/mina/io/socket/SocketSession;->getWriteBufferQueue()Lorg/apache/mina/util/Queue;

    move-result-object v1

    .line 436
    invoke-virtual {p1}, Lorg/apache/mina/io/socket/SocketSession;->getWriteMarkerQueue()Lorg/apache/mina/util/Queue;

    move-result-object v2

    .line 442
    :goto_0
    monitor-enter v1

    .line 444
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/mina/util/Queue;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/common/ByteBuffer;

    .line 445
    invoke-virtual {v2}, Lorg/apache/mina/util/Queue;->first()Ljava/lang/Object;

    move-result-object v4

    .line 446
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v3, :cond_0

    goto :goto_2

    .line 451
    :cond_0
    invoke-virtual {v3}, Lorg/apache/mina/common/ByteBuffer;->remaining()I

    move-result v5

    if-nez v5, :cond_1

    .line 453
    monitor-enter v1

    .line 455
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/mina/util/Queue;->pop()Ljava/lang/Object;

    .line 456
    invoke-virtual {v2}, Lorg/apache/mina/util/Queue;->pop()Ljava/lang/Object;

    .line 457
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    :try_start_2
    invoke-virtual {v3}, Lorg/apache/mina/common/ByteBuffer;->release()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 464
    invoke-virtual {p1}, Lorg/apache/mina/io/socket/SocketSession;->getManagerFilterChain()Lorg/apache/mina/io/IoSessionManagerFilterChain;

    move-result-object v5

    invoke-virtual {v5, p1, v3}, Lorg/apache/mina/io/IoSessionManagerFilterChain;->exceptionCaught(Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V

    .line 467
    :goto_1
    invoke-virtual {p1}, Lorg/apache/mina/io/socket/SocketSession;->getManagerFilterChain()Lorg/apache/mina/io/IoSessionManagerFilterChain;

    move-result-object v3

    invoke-virtual {v3, p1, v4}, Lorg/apache/mina/io/IoSessionManagerFilterChain;->dataWritten(Lorg/apache/mina/io/IoSession;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 457
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 474
    :cond_1
    :try_start_4
    invoke-virtual {v3}, Lorg/apache/mina/common/ByteBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-lez v4, :cond_2

    .line 480
    invoke-virtual {p1, v4}, Lorg/apache/mina/io/socket/SocketSession;->increaseWrittenBytes(I)V

    .line 481
    sget-object v4, Lorg/apache/mina/common/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/common/IdleStatus;

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lorg/apache/mina/io/socket/SocketSession;->setIdle(Lorg/apache/mina/common/IdleStatus;Z)V

    .line 482
    sget-object v4, Lorg/apache/mina/common/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/common/IdleStatus;

    invoke-virtual {p1, v4, v5}, Lorg/apache/mina/io/socket/SocketSession;->setIdle(Lorg/apache/mina/common/IdleStatus;Z)V

    .line 485
    :cond_2
    invoke-virtual {p1}, Lorg/apache/mina/io/socket/SocketSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v4

    .line 486
    invoke-virtual {v3}, Lorg/apache/mina/common/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 489
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result p1

    or-int/lit8 p1, p1, 0x4

    invoke-virtual {v4, p1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_2

    .line 496
    :cond_3
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v3

    and-int/lit8 v3, v3, -0x5

    invoke-virtual {v4, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 485
    invoke-virtual {p1}, Lorg/apache/mina/io/socket/SocketSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object p1

    .line 486
    invoke-virtual {v3}, Lorg/apache/mina/common/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 489
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :goto_2
    return-void

    .line 496
    :cond_4
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    and-int/lit8 v1, v1, -0x5

    invoke-virtual {p1, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 499
    throw v0

    :catchall_2
    move-exception p1

    .line 446
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method private flushSessions()V
    .locals 3

    .line 379
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->flushingSessions:Lorg/apache/mina/util/Queue;

    invoke-virtual {v0}, Lorg/apache/mina/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 386
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->flushingSessions:Lorg/apache/mina/util/Queue;

    monitor-enter v0

    .line 388
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->flushingSessions:Lorg/apache/mina/util/Queue;

    invoke-virtual {v1}, Lorg/apache/mina/util/Queue;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/io/socket/SocketSession;

    .line 389
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    return-void

    .line 394
    :cond_1
    invoke-virtual {v1}, Lorg/apache/mina/io/socket/SocketSession;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 396
    invoke-direct {p0, v1}, Lorg/apache/mina/io/socket/SocketIoProcessor;->releaseWriteBuffers(Lorg/apache/mina/io/socket/SocketSession;)V

    goto :goto_0

    .line 402
    :cond_2
    :try_start_1
    invoke-direct {p0, v1}, Lorg/apache/mina/io/socket/SocketIoProcessor;->flush(Lorg/apache/mina/io/socket/SocketSession;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 406
    invoke-direct {p0, v1}, Lorg/apache/mina/io/socket/SocketIoProcessor;->scheduleRemove(Lorg/apache/mina/io/socket/SocketSession;)V

    .line 407
    invoke-virtual {v1}, Lorg/apache/mina/io/socket/SocketSession;->getManagerFilterChain()Lorg/apache/mina/io/IoSessionManagerFilterChain;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/apache/mina/io/IoSessionManagerFilterChain;->exceptionCaught(Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 389
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static getInstance()Lorg/apache/mina/io/socket/SocketIoProcessor;
    .locals 1

    .line 85
    sget-object v0, Lorg/apache/mina/io/socket/SocketIoProcessor;->instance:Lorg/apache/mina/io/socket/SocketIoProcessor;

    return-object v0
.end method

.method private notifyIdleSession(Lorg/apache/mina/io/socket/SocketSession;J)V
    .locals 19

    .line 335
    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/io/socket/SocketSession;->getConfig()Lorg/apache/mina/common/SessionConfig;

    move-result-object v0

    .line 337
    sget-object v1, Lorg/apache/mina/common/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/common/IdleStatus;

    invoke-interface {v0, v1}, Lorg/apache/mina/common/SessionConfig;->getIdleTimeInMillis(Lorg/apache/mina/common/IdleStatus;)J

    move-result-wide v6

    sget-object v8, Lorg/apache/mina/common/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/common/IdleStatus;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/io/socket/SocketSession;->getLastIoTime()J

    move-result-wide v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-direct/range {v2 .. v10}, Lorg/apache/mina/io/socket/SocketIoProcessor;->notifyIdleSession0(Lorg/apache/mina/io/socket/SocketSession;JJLorg/apache/mina/common/IdleStatus;J)V

    .line 340
    sget-object v1, Lorg/apache/mina/common/IdleStatus;->READER_IDLE:Lorg/apache/mina/common/IdleStatus;

    invoke-interface {v0, v1}, Lorg/apache/mina/common/SessionConfig;->getIdleTimeInMillis(Lorg/apache/mina/common/IdleStatus;)J

    move-result-wide v6

    sget-object v8, Lorg/apache/mina/common/IdleStatus;->READER_IDLE:Lorg/apache/mina/common/IdleStatus;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/io/socket/SocketSession;->getLastReadTime()J

    move-result-wide v9

    invoke-direct/range {v2 .. v10}, Lorg/apache/mina/io/socket/SocketIoProcessor;->notifyIdleSession0(Lorg/apache/mina/io/socket/SocketSession;JJLorg/apache/mina/common/IdleStatus;J)V

    .line 343
    sget-object v1, Lorg/apache/mina/common/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/common/IdleStatus;

    invoke-interface {v0, v1}, Lorg/apache/mina/common/SessionConfig;->getIdleTimeInMillis(Lorg/apache/mina/common/IdleStatus;)J

    move-result-wide v6

    sget-object v8, Lorg/apache/mina/common/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/common/IdleStatus;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/io/socket/SocketSession;->getLastWriteTime()J

    move-result-wide v9

    invoke-direct/range {v2 .. v10}, Lorg/apache/mina/io/socket/SocketIoProcessor;->notifyIdleSession0(Lorg/apache/mina/io/socket/SocketSession;JJLorg/apache/mina/common/IdleStatus;J)V

    .line 347
    invoke-interface {v0}, Lorg/apache/mina/common/SessionConfig;->getWriteTimeoutInMillis()J

    move-result-wide v15

    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/io/socket/SocketSession;->getLastWriteTime()J

    move-result-wide v17

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-wide/from16 v13, p2

    invoke-direct/range {v11 .. v18}, Lorg/apache/mina/io/socket/SocketIoProcessor;->notifyWriteTimeoutSession(Lorg/apache/mina/io/socket/SocketSession;JJJ)V

    return-void
.end method

.method private notifyIdleSession0(Lorg/apache/mina/io/socket/SocketSession;JJLorg/apache/mina/common/IdleStatus;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_0

    .line 355
    invoke-virtual {p1, p6}, Lorg/apache/mina/io/socket/SocketSession;->isIdle(Lorg/apache/mina/common/IdleStatus;)Z

    move-result v2

    if-nez v2, :cond_0

    cmp-long v0, p7, v0

    if-eqz v0, :cond_0

    sub-long/2addr p2, p7

    cmp-long p2, p2, p4

    if-ltz p2, :cond_0

    const/4 p2, 0x1

    .line 358
    invoke-virtual {p1, p6, p2}, Lorg/apache/mina/io/socket/SocketSession;->setIdle(Lorg/apache/mina/common/IdleStatus;Z)V

    .line 359
    invoke-virtual {p1}, Lorg/apache/mina/io/socket/SocketSession;->getManagerFilterChain()Lorg/apache/mina/io/IoSessionManagerFilterChain;

    move-result-object p2

    invoke-virtual {p2, p1, p6}, Lorg/apache/mina/io/IoSessionManagerFilterChain;->sessionIdle(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/IdleStatus;)V

    :cond_0
    return-void
.end method

.method private notifyIdleSessions()V
    .locals 7

    .line 311
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz v0, :cond_0

    .line 318
    iget-wide v3, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->lastIdleCheckTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 320
    iput-wide v1, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->lastIdleCheckTime:J

    .line 321
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 323
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 325
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SelectionKey;

    .line 326
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/io/socket/SocketSession;

    .line 328
    invoke-direct {p0, v3, v1, v2}, Lorg/apache/mina/io/socket/SocketIoProcessor;->notifyIdleSession(Lorg/apache/mina/io/socket/SocketSession;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyWriteTimeoutSession(Lorg/apache/mina/io/socket/SocketSession;JJJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_0

    sub-long/2addr p2, p6

    cmp-long p2, p2, p4

    if-ltz p2, :cond_0

    .line 367
    invoke-virtual {p1}, Lorg/apache/mina/io/socket/SocketSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result p2

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_0

    .line 371
    invoke-virtual {p1}, Lorg/apache/mina/io/socket/SocketSession;->getManagerFilterChain()Lorg/apache/mina/io/IoSessionManagerFilterChain;

    move-result-object p2

    new-instance p3, Lorg/apache/mina/io/WriteTimeoutException;

    invoke-direct {p3}, Lorg/apache/mina/io/WriteTimeoutException;-><init>()V

    invoke-virtual {p2, p1, p3}, Lorg/apache/mina/io/IoSessionManagerFilterChain;->exceptionCaught(Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private processSessions(Ljava/util/Set;)V
    .locals 4

    .line 219
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 221
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 224
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/io/socket/SocketSession;

    .line 226
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 228
    invoke-direct {p0, v2}, Lorg/apache/mina/io/socket/SocketIoProcessor;->read(Lorg/apache/mina/io/socket/SocketSession;)V

    .line 231
    :cond_1
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    invoke-direct {p0, v2}, Lorg/apache/mina/io/socket/SocketIoProcessor;->scheduleFlush(Lorg/apache/mina/io/socket/SocketSession;)V

    goto :goto_0

    .line 237
    :cond_2
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private read(Lorg/apache/mina/io/socket/SocketSession;)V
    .locals 5

    .line 242
    invoke-virtual {p1}, Lorg/apache/mina/io/socket/SocketSession;->getConfig()Lorg/apache/mina/common/SessionConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/io/socket/SocketSessionConfig;

    invoke-virtual {v0}, Lorg/apache/mina/io/socket/SocketSessionConfig;->getSessionReceiveBufferSize()I

    move-result v0

    invoke-static {v0}, Lorg/apache/mina/common/ByteBuffer;->allocate(I)Lorg/apache/mina/common/ByteBuffer;

    move-result-object v0

    .line 244
    invoke-virtual {p1}, Lorg/apache/mina/io/socket/SocketSession;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    .line 251
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->clear()Lorg/apache/mina/common/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    move v3, v2

    .line 255
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v4, :cond_0

    add-int/2addr v3, v4

    goto :goto_0

    .line 262
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->flip()Lorg/apache/mina/common/ByteBuffer;

    .line 265
    invoke-virtual {p1, v3}, Lorg/apache/mina/io/socket/SocketSession;->increaseReadBytes(I)V

    .line 266
    sget-object v1, Lorg/apache/mina/common/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/common/IdleStatus;

    invoke-virtual {p1, v1, v2}, Lorg/apache/mina/io/socket/SocketSession;->setIdle(Lorg/apache/mina/common/IdleStatus;Z)V

    .line 267
    sget-object v1, Lorg/apache/mina/common/IdleStatus;->READER_IDLE:Lorg/apache/mina/common/IdleStatus;

    invoke-virtual {p1, v1, v2}, Lorg/apache/mina/io/socket/SocketSession;->setIdle(Lorg/apache/mina/common/IdleStatus;Z)V

    if-lez v3, :cond_1

    .line 271
    invoke-static {v3}, Lorg/apache/mina/common/ByteBuffer;->allocate(I)Lorg/apache/mina/common/ByteBuffer;

    move-result-object v1

    .line 272
    invoke-virtual {v1, v0}, Lorg/apache/mina/common/ByteBuffer;->put(Lorg/apache/mina/common/ByteBuffer;)Lorg/apache/mina/common/ByteBuffer;

    .line 273
    invoke-virtual {v1}, Lorg/apache/mina/common/ByteBuffer;->flip()Lorg/apache/mina/common/ByteBuffer;

    .line 274
    invoke-virtual {p1}, Lorg/apache/mina/io/socket/SocketSession;->getManagerFilterChain()Lorg/apache/mina/io/IoSessionManagerFilterChain;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lorg/apache/mina/io/IoSessionManagerFilterChain;->dataRead(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;)V

    :cond_1
    if-gez v4, :cond_3

    .line 278
    invoke-direct {p0, p1}, Lorg/apache/mina/io/socket/SocketIoProcessor;->scheduleRemove(Lorg/apache/mina/io/socket/SocketSession;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 262
    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->flip()Lorg/apache/mina/common/ByteBuffer;

    .line 263
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    .line 283
    :try_start_3
    instance-of v2, v1, Ljava/io/IOException;

    if-eqz v2, :cond_2

    .line 284
    invoke-direct {p0, p1}, Lorg/apache/mina/io/socket/SocketIoProcessor;->scheduleRemove(Lorg/apache/mina/io/socket/SocketSession;)V

    .line 285
    :cond_2
    invoke-virtual {p1}, Lorg/apache/mina/io/socket/SocketSession;->getManagerFilterChain()Lorg/apache/mina/io/IoSessionManagerFilterChain;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lorg/apache/mina/io/IoSessionManagerFilterChain;->exceptionCaught(Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 289
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->release()V

    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->release()V

    .line 290
    throw p1
.end method

.method private releaseWriteBuffers(Lorg/apache/mina/io/socket/SocketSession;)V
    .locals 3

    .line 414
    invoke-virtual {p1}, Lorg/apache/mina/io/socket/SocketSession;->getWriteBufferQueue()Lorg/apache/mina/util/Queue;

    move-result-object v0

    .line 415
    invoke-virtual {p1}, Lorg/apache/mina/io/socket/SocketSession;->getWriteMarkerQueue()Lorg/apache/mina/util/Queue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/mina/util/Queue;->clear()V

    .line 418
    :goto_0
    invoke-virtual {v0}, Lorg/apache/mina/util/Queue;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/common/ByteBuffer;

    if-eqz v1, :cond_0

    .line 422
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/mina/common/ByteBuffer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 426
    invoke-virtual {p1}, Lorg/apache/mina/io/socket/SocketSession;->getManagerFilterChain()Lorg/apache/mina/io/IoSessionManagerFilterChain;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lorg/apache/mina/io/IoSessionManagerFilterChain;->exceptionCaught(Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeSessions()V
    .locals 4

    .line 176
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->removingSessions:Lorg/apache/mina/util/Queue;

    invoke-virtual {v0}, Lorg/apache/mina/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 183
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->removingSessions:Lorg/apache/mina/util/Queue;

    monitor-enter v0

    .line 185
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->removingSessions:Lorg/apache/mina/util/Queue;

    invoke-virtual {v1}, Lorg/apache/mina/util/Queue;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/io/socket/SocketSession;

    .line 186
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    return-void

    .line 191
    :cond_1
    invoke-virtual {v1}, Lorg/apache/mina/io/socket/SocketSession;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 192
    invoke-virtual {v1}, Lorg/apache/mina/io/socket/SocketSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v2

    .line 193
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 200
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 201
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    :goto_1
    invoke-direct {p0, v1}, Lorg/apache/mina/io/socket/SocketIoProcessor;->releaseWriteBuffers(Lorg/apache/mina/io/socket/SocketSession;)V

    .line 211
    invoke-virtual {v1}, Lorg/apache/mina/io/socket/SocketSession;->getManagerFilterChain()Lorg/apache/mina/io/IoSessionManagerFilterChain;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/mina/io/IoSessionManagerFilterChain;->sessionClosed(Lorg/apache/mina/io/IoSession;)V

    .line 212
    invoke-virtual {v1}, Lorg/apache/mina/io/socket/SocketSession;->notifyClose()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 205
    :try_start_2
    invoke-virtual {v1}, Lorg/apache/mina/io/socket/SocketSession;->getManagerFilterChain()Lorg/apache/mina/io/IoSessionManagerFilterChain;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/apache/mina/io/IoSessionManagerFilterChain;->exceptionCaught(Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 209
    :goto_2
    invoke-direct {p0, v1}, Lorg/apache/mina/io/socket/SocketIoProcessor;->releaseWriteBuffers(Lorg/apache/mina/io/socket/SocketSession;)V

    .line 211
    invoke-virtual {v1}, Lorg/apache/mina/io/socket/SocketSession;->getManagerFilterChain()Lorg/apache/mina/io/IoSessionManagerFilterChain;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/mina/io/IoSessionManagerFilterChain;->sessionClosed(Lorg/apache/mina/io/IoSession;)V

    .line 212
    invoke-virtual {v1}, Lorg/apache/mina/io/socket/SocketSession;->notifyClose()V

    .line 213
    throw v0

    :catchall_1
    move-exception v1

    .line 186
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private scheduleFlush(Lorg/apache/mina/io/socket/SocketSession;)V
    .locals 2

    .line 303
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->flushingSessions:Lorg/apache/mina/util/Queue;

    monitor-enter v0

    .line 305
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->flushingSessions:Lorg/apache/mina/util/Queue;

    invoke-virtual {v1, p1}, Lorg/apache/mina/util/Queue;->push(Ljava/lang/Object;)V

    .line 306
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private scheduleRemove(Lorg/apache/mina/io/socket/SocketSession;)V
    .locals 2

    .line 295
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->removingSessions:Lorg/apache/mina/util/Queue;

    monitor-enter v0

    .line 297
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->removingSessions:Lorg/apache/mina/util/Queue;

    invoke-virtual {v1, p1}, Lorg/apache/mina/util/Queue;->push(Ljava/lang/Object;)V

    .line 298
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private declared-synchronized startupWorker()V
    .locals 1

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->worker:Lorg/apache/mina/io/socket/SocketIoProcessor$Worker;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lorg/apache/mina/io/socket/SocketIoProcessor$Worker;

    invoke-direct {v0, p0}, Lorg/apache/mina/io/socket/SocketIoProcessor$Worker;-><init>(Lorg/apache/mina/io/socket/SocketIoProcessor;)V

    iput-object v0, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->worker:Lorg/apache/mina/io/socket/SocketIoProcessor$Worker;

    .line 114
    invoke-virtual {v0}, Lorg/apache/mina/io/socket/SocketIoProcessor$Worker;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method addReadableSession(Lorg/apache/mina/io/socket/SocketSession;)V
    .locals 2

    .line 126
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->readableSessions:Lorg/apache/mina/util/Queue;

    monitor-enter v0

    .line 128
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->readableSessions:Lorg/apache/mina/util/Queue;

    invoke-virtual {v1, p1}, Lorg/apache/mina/util/Queue;->push(Ljava/lang/Object;)V

    .line 129
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    iget-object p1, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-void

    :catchall_0
    move-exception p1

    .line 129
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method addSession(Lorg/apache/mina/io/socket/SocketSession;)V
    .locals 2

    .line 90
    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->newSessions:Lorg/apache/mina/util/Queue;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 94
    :try_start_1
    iget-object v1, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->newSessions:Lorg/apache/mina/util/Queue;

    invoke-virtual {v1, p1}, Lorg/apache/mina/util/Queue;->push(Ljava/lang/Object;)V

    .line 95
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :try_start_2
    invoke-direct {p0}, Lorg/apache/mina/io/socket/SocketIoProcessor;->startupWorker()V

    .line 97
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 99
    iget-object p1, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-void

    :catchall_0
    move-exception p1

    .line 95
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 97
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method flushSession(Lorg/apache/mina/io/socket/SocketSession;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lorg/apache/mina/io/socket/SocketIoProcessor;->scheduleFlush(Lorg/apache/mina/io/socket/SocketSession;)V

    .line 121
    iget-object p1, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-void
.end method

.method removeSession(Lorg/apache/mina/io/socket/SocketSession;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lorg/apache/mina/io/socket/SocketIoProcessor;->scheduleRemove(Lorg/apache/mina/io/socket/SocketSession;)V

    .line 105
    invoke-direct {p0}, Lorg/apache/mina/io/socket/SocketIoProcessor;->startupWorker()V

    .line 106
    iget-object p1, p0, Lorg/apache/mina/io/socket/SocketIoProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-void
.end method
