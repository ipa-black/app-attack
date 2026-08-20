.class public Lorg/apache/mina/io/datagram/DatagramConnector;
.super Lorg/apache/mina/io/datagram/DatagramSessionManager;
.source "DatagramConnector.java"

# interfaces
.implements Lorg/apache/mina/io/IoConnector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;,
        Lorg/apache/mina/io/datagram/DatagramConnector$Worker;
    }
.end annotation


# static fields
.field private static volatile nextId:I


# instance fields
.field private final cancelQueue:Lorg/apache/mina/util/Queue;

.field private final filters:Lorg/apache/mina/io/IoSessionManagerFilterChain;

.field private final flushingSessions:Lorg/apache/mina/util/Queue;

.field private final id:I

.field private final registerQueue:Lorg/apache/mina/util/Queue;

.field private final selector:Ljava/nio/channels/Selector;

.field private worker:Lorg/apache/mina/io/datagram/DatagramConnector$Worker;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lorg/apache/mina/io/datagram/DatagramSessionManager;-><init>()V

    .line 49
    new-instance v0, Lorg/apache/mina/io/datagram/DatagramSessionManagerFilterChain;

    invoke-direct {v0, p0}, Lorg/apache/mina/io/datagram/DatagramSessionManagerFilterChain;-><init>(Lorg/apache/mina/io/datagram/DatagramSessionManager;)V

    iput-object v0, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->filters:Lorg/apache/mina/io/IoSessionManagerFilterChain;

    .line 52
    sget v0, Lorg/apache/mina/io/datagram/DatagramConnector;->nextId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/apache/mina/io/datagram/DatagramConnector;->nextId:I

    iput v0, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->id:I

    .line 56
    new-instance v0, Lorg/apache/mina/util/Queue;

    invoke-direct {v0}, Lorg/apache/mina/util/Queue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->registerQueue:Lorg/apache/mina/util/Queue;

    .line 58
    new-instance v0, Lorg/apache/mina/util/Queue;

    invoke-direct {v0}, Lorg/apache/mina/util/Queue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->cancelQueue:Lorg/apache/mina/util/Queue;

    .line 60
    new-instance v0, Lorg/apache/mina/util/Queue;

    invoke-direct {v0}, Lorg/apache/mina/util/Queue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->flushingSessions:Lorg/apache/mina/util/Queue;

    .line 71
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->selector:Ljava/nio/channels/Selector;

    return-void
.end method

.method static synthetic access$1000(Lorg/apache/mina/io/datagram/DatagramConnector;)Lorg/apache/mina/util/Queue;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->registerQueue:Lorg/apache/mina/util/Queue;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/apache/mina/io/datagram/DatagramConnector;)Lorg/apache/mina/util/Queue;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->cancelQueue:Lorg/apache/mina/util/Queue;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/apache/mina/io/datagram/DatagramConnector;Lorg/apache/mina/io/datagram/DatagramConnector$Worker;)Lorg/apache/mina/io/datagram/DatagramConnector$Worker;
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->worker:Lorg/apache/mina/io/datagram/DatagramConnector$Worker;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/apache/mina/io/datagram/DatagramConnector;)Lorg/apache/mina/common/ExceptionMonitor;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->exceptionMonitor:Lorg/apache/mina/common/ExceptionMonitor;

    return-object p0
.end method

.method static synthetic access$400(Lorg/apache/mina/io/datagram/DatagramConnector;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->id:I

    return p0
.end method

.method static synthetic access$500(Lorg/apache/mina/io/datagram/DatagramConnector;)Ljava/nio/channels/Selector;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->selector:Ljava/nio/channels/Selector;

    return-object p0
.end method

.method static synthetic access$600(Lorg/apache/mina/io/datagram/DatagramConnector;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/apache/mina/io/datagram/DatagramConnector;->registerNew()V

    return-void
.end method

.method static synthetic access$700(Lorg/apache/mina/io/datagram/DatagramConnector;Ljava/util/Set;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lorg/apache/mina/io/datagram/DatagramConnector;->processReadySessions(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/mina/io/datagram/DatagramConnector;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/apache/mina/io/datagram/DatagramConnector;->flushSessions()V

    return-void
.end method

.method static synthetic access$900(Lorg/apache/mina/io/datagram/DatagramConnector;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/apache/mina/io/datagram/DatagramConnector;->cancelKeys()V

    return-void
.end method

.method private cancelKeys()V
    .locals 3

    .line 460
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->cancelQueue:Lorg/apache/mina/util/Queue;

    invoke-virtual {v0}, Lorg/apache/mina/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 466
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->cancelQueue:Lorg/apache/mina/util/Queue;

    monitor-enter v0

    .line 468
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->cancelQueue:Lorg/apache/mina/util/Queue;

    invoke-virtual {v1}, Lorg/apache/mina/util/Queue;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 469
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    return-void

    .line 475
    :cond_1
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    .line 478
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 482
    iget-object v2, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->exceptionMonitor:Lorg/apache/mina/common/ExceptionMonitor;

    invoke-interface {v2, p0, v0}, Lorg/apache/mina/common/ExceptionMonitor;->exceptionCaught(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 484
    :goto_1
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 485
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 469
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private flush(Lorg/apache/mina/io/datagram/DatagramSession;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    invoke-virtual {p1}, Lorg/apache/mina/io/datagram/DatagramSession;->getChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    .line 338
    invoke-virtual {p1}, Lorg/apache/mina/io/datagram/DatagramSession;->getWriteBufferQueue()Lorg/apache/mina/util/Queue;

    move-result-object v1

    .line 339
    invoke-virtual {p1}, Lorg/apache/mina/io/datagram/DatagramSession;->getWriteMarkerQueue()Lorg/apache/mina/util/Queue;

    move-result-object v2

    .line 345
    :cond_0
    :goto_0
    monitor-enter v1

    .line 347
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/mina/util/Queue;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/common/ByteBuffer;

    .line 348
    invoke-virtual {v2}, Lorg/apache/mina/util/Queue;->first()Ljava/lang/Object;

    move-result-object v4

    .line 349
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v3, :cond_1

    return-void

    .line 354
    :cond_1
    invoke-virtual {v3}, Lorg/apache/mina/common/ByteBuffer;->remaining()I

    move-result v5

    if-nez v5, :cond_2

    .line 357
    monitor-enter v1

    .line 359
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/mina/util/Queue;->pop()Ljava/lang/Object;

    .line 360
    invoke-virtual {v2}, Lorg/apache/mina/util/Queue;->pop()Ljava/lang/Object;

    .line 361
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    :try_start_2
    invoke-virtual {v3}, Lorg/apache/mina/common/ByteBuffer;->release()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 369
    invoke-virtual {p1}, Lorg/apache/mina/io/datagram/DatagramSession;->getManagerFilterChain()Lorg/apache/mina/io/IoSessionManagerFilterChain;

    move-result-object v5

    invoke-virtual {v5, p1, v3}, Lorg/apache/mina/io/IoSessionManagerFilterChain;->exceptionCaught(Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V

    .line 372
    :goto_1
    invoke-virtual {p1}, Lorg/apache/mina/io/datagram/DatagramSession;->getManagerFilterChain()Lorg/apache/mina/io/IoSessionManagerFilterChain;

    move-result-object v3

    invoke-virtual {v3, p1, v4}, Lorg/apache/mina/io/IoSessionManagerFilterChain;->dataWritten(Lorg/apache/mina/io/IoSession;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 361
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 376
    :cond_2
    invoke-virtual {v3}, Lorg/apache/mina/common/ByteBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/channels/DatagramChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 378
    invoke-virtual {p1}, Lorg/apache/mina/io/datagram/DatagramSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v5

    if-nez v3, :cond_3

    .line 382
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v3

    or-int/lit8 v3, v3, 0x4

    invoke-virtual {v5, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_0

    :cond_3
    if-lez v3, :cond_0

    .line 386
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v6

    and-int/lit8 v6, v6, -0x5

    invoke-virtual {v5, v6}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 390
    monitor-enter v1

    .line 392
    :try_start_4
    invoke-virtual {v1}, Lorg/apache/mina/util/Queue;->pop()Ljava/lang/Object;

    .line 393
    invoke-virtual {v2}, Lorg/apache/mina/util/Queue;->pop()Ljava/lang/Object;

    .line 394
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 396
    invoke-virtual {p1, v3}, Lorg/apache/mina/io/datagram/DatagramSession;->increaseWrittenBytes(I)V

    .line 397
    invoke-virtual {p1}, Lorg/apache/mina/io/datagram/DatagramSession;->getManagerFilterChain()Lorg/apache/mina/io/IoSessionManagerFilterChain;

    move-result-object v3

    invoke-virtual {v3, p1, v4}, Lorg/apache/mina/io/IoSessionManagerFilterChain;->dataWritten(Lorg/apache/mina/io/IoSession;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 394
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 349
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method

.method private flushSessions()V
    .locals 3

    .line 308
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->flushingSessions:Lorg/apache/mina/util/Queue;

    invoke-virtual {v0}, Lorg/apache/mina/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 315
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->flushingSessions:Lorg/apache/mina/util/Queue;

    monitor-enter v0

    .line 317
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->flushingSessions:Lorg/apache/mina/util/Queue;

    invoke-virtual {v1}, Lorg/apache/mina/util/Queue;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/io/datagram/DatagramSession;

    .line 318
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    return-void

    .line 325
    :cond_1
    :try_start_1
    invoke-direct {p0, v1}, Lorg/apache/mina/io/datagram/DatagramConnector;->flush(Lorg/apache/mina/io/datagram/DatagramSession;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 329
    invoke-virtual {v1}, Lorg/apache/mina/io/datagram/DatagramSession;->getManagerFilterChain()Lorg/apache/mina/io/IoSessionManagerFilterChain;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/apache/mina/io/IoSessionManagerFilterChain;->exceptionCaught(Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 318
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private processReadySessions(Ljava/util/Set;)V
    .locals 3

    .line 258
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 259
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 262
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 264
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/io/datagram/DatagramSession;

    .line 266
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    invoke-direct {p0, v1}, Lorg/apache/mina/io/datagram/DatagramConnector;->readSession(Lorg/apache/mina/io/datagram/DatagramSession;)V

    .line 271
    :cond_1
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-direct {p0, v1}, Lorg/apache/mina/io/datagram/DatagramConnector;->scheduleFlush(Lorg/apache/mina/io/datagram/DatagramSession;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private readSession(Lorg/apache/mina/io/datagram/DatagramSession;)V
    .locals 3

    const/16 v0, 0x800

    .line 281
    invoke-static {v0}, Lorg/apache/mina/common/ByteBuffer;->allocate(I)Lorg/apache/mina/common/ByteBuffer;

    move-result-object v0

    .line 284
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/io/datagram/DatagramSession;->getChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/channels/DatagramChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-lez v1, :cond_0

    .line 287
    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->flip()Lorg/apache/mina/common/ByteBuffer;

    .line 288
    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->limit()I

    move-result v2

    invoke-static {v2}, Lorg/apache/mina/common/ByteBuffer;->allocate(I)Lorg/apache/mina/common/ByteBuffer;

    move-result-object v2

    .line 289
    invoke-virtual {v2, v0}, Lorg/apache/mina/common/ByteBuffer;->put(Lorg/apache/mina/common/ByteBuffer;)Lorg/apache/mina/common/ByteBuffer;

    .line 290
    invoke-virtual {v2}, Lorg/apache/mina/common/ByteBuffer;->flip()Lorg/apache/mina/common/ByteBuffer;

    .line 292
    invoke-virtual {p1, v1}, Lorg/apache/mina/io/datagram/DatagramSession;->increaseReadBytes(I)V

    .line 293
    iget-object v1, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->filters:Lorg/apache/mina/io/IoSessionManagerFilterChain;

    invoke-virtual {v1, p1, v2}, Lorg/apache/mina/io/IoSessionManagerFilterChain;->dataRead(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 298
    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->filters:Lorg/apache/mina/io/IoSessionManagerFilterChain;

    invoke-virtual {v2, p1, v1}, Lorg/apache/mina/io/IoSessionManagerFilterChain;->exceptionCaught(Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->release()V

    return-void

    :goto_1
    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->release()V

    .line 303
    throw p1
.end method

.method private registerNew()V
    .locals 5

    .line 404
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->registerQueue:Lorg/apache/mina/util/Queue;

    invoke-virtual {v0}, Lorg/apache/mina/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 410
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->registerQueue:Lorg/apache/mina/util/Queue;

    monitor-enter v0

    .line 412
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->registerQueue:Lorg/apache/mina/util/Queue;

    invoke-virtual {v1}, Lorg/apache/mina/util/Queue;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;

    .line 413
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-nez v1, :cond_1

    return-void

    .line 418
    :cond_1
    new-instance v0, Lorg/apache/mina/io/datagram/DatagramSession;

    iget-object v2, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->filters:Lorg/apache/mina/io/IoSessionManagerFilterChain;

    invoke-static {v1}, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;->access$1400(Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;)Ljava/nio/channels/DatagramChannel;

    move-result-object v3

    invoke-static {v1}, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;->access$1500(Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;)Lorg/apache/mina/io/IoHandler;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lorg/apache/mina/io/datagram/DatagramSession;-><init>(Lorg/apache/mina/io/IoSessionManagerFilterChain;Ljava/nio/channels/DatagramChannel;Lorg/apache/mina/io/IoHandler;)V

    const/4 v2, 0x1

    .line 423
    :try_start_1
    invoke-static {v1}, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;->access$1500(Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;)Lorg/apache/mina/io/IoHandler;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/apache/mina/io/IoHandler;->sessionCreated(Lorg/apache/mina/io/IoSession;)V

    .line 425
    invoke-static {v1}, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;->access$1400(Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;)Ljava/nio/channels/DatagramChannel;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v3, v4, v2, v0}, Ljava/nio/channels/DatagramChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    .line 428
    invoke-virtual {v0, v3}, Lorg/apache/mina/io/datagram/DatagramSession;->setSelectionKey(Ljava/nio/channels/SelectionKey;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 436
    monitor-enter v1

    .line 438
    :try_start_2
    invoke-static {v1, v2}, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;->access$102(Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;Z)Z

    .line 439
    invoke-static {v1, v0}, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;->access$302(Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;Lorg/apache/mina/io/datagram/DatagramSession;)Lorg/apache/mina/io/datagram/DatagramSession;

    .line 440
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 441
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 443
    invoke-static {v1}, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;->access$200(Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 447
    :try_start_3
    invoke-static {v1}, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;->access$1400(Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 441
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v3

    .line 432
    :try_start_5
    invoke-static {v1, v3}, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;->access$202(Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 436
    monitor-enter v1

    .line 438
    :try_start_6
    invoke-static {v1, v2}, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;->access$102(Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;Z)Z

    .line 439
    invoke-static {v1, v0}, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;->access$302(Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;Lorg/apache/mina/io/datagram/DatagramSession;)Lorg/apache/mina/io/datagram/DatagramSession;

    .line 440
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 441
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 443
    invoke-static {v1}, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;->access$200(Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 447
    :try_start_7
    invoke-static {v1}, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;->access$1400(Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 451
    iget-object v1, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->exceptionMonitor:Lorg/apache/mina/common/ExceptionMonitor;

    invoke-interface {v1, p0, v0}, Lorg/apache/mina/common/ExceptionMonitor;->exceptionCaught(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_2
    move-exception v0

    .line 441
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :catchall_3
    move-exception v3

    .line 436
    monitor-enter v1

    .line 438
    :try_start_9
    invoke-static {v1, v2}, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;->access$102(Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;Z)Z

    .line 439
    invoke-static {v1, v0}, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;->access$302(Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;Lorg/apache/mina/io/datagram/DatagramSession;)Lorg/apache/mina/io/datagram/DatagramSession;

    .line 440
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 441
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 443
    invoke-static {v1}, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;->access$200(Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 447
    :try_start_a
    invoke-static {v1}, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;->access$1400(Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 451
    iget-object v1, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->exceptionMonitor:Lorg/apache/mina/common/ExceptionMonitor;

    invoke-interface {v1, p0, v0}, Lorg/apache/mina/common/ExceptionMonitor;->exceptionCaught(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 454
    :cond_2
    :goto_1
    throw v3

    :catchall_4
    move-exception v0

    .line 441
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v0

    :catchall_5
    move-exception v1

    .line 413
    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v1
.end method

.method private scheduleFlush(Lorg/apache/mina/io/datagram/DatagramSession;)V
    .locals 2

    .line 194
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->flushingSessions:Lorg/apache/mina/util/Queue;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->flushingSessions:Lorg/apache/mina/util/Queue;

    invoke-virtual {v1, p1}, Lorg/apache/mina/util/Queue;->push(Ljava/lang/Object;)V

    .line 197
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

    .line 164
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->worker:Lorg/apache/mina/io/datagram/DatagramConnector$Worker;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lorg/apache/mina/io/datagram/DatagramConnector$Worker;

    invoke-direct {v0, p0}, Lorg/apache/mina/io/datagram/DatagramConnector$Worker;-><init>(Lorg/apache/mina/io/datagram/DatagramConnector;)V

    iput-object v0, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->worker:Lorg/apache/mina/io/datagram/DatagramConnector$Worker;

    .line 167
    invoke-virtual {v0}, Lorg/apache/mina/io/datagram/DatagramConnector$Worker;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method closeSession(Lorg/apache/mina/io/datagram/DatagramSession;)V
    .locals 2

    .line 173
    monitor-enter p0

    .line 175
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/io/datagram/DatagramSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object p1

    .line 176
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->cancelQueue:Lorg/apache/mina/util/Queue;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 178
    :try_start_1
    iget-object v1, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->cancelQueue:Lorg/apache/mina/util/Queue;

    invoke-virtual {v1, p1}, Lorg/apache/mina/util/Queue;->push(Ljava/lang/Object;)V

    .line 179
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    :try_start_2
    invoke-direct {p0}, Lorg/apache/mina/io/datagram/DatagramConnector;->startupWorker()V

    .line 181
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 183
    iget-object p1, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-void

    :catchall_0
    move-exception p1

    .line 179
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 181
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public connect(Ljava/net/SocketAddress;ILorg/apache/mina/io/IoHandler;)Lorg/apache/mina/io/IoSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    .line 81
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/mina/io/datagram/DatagramConnector;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/io/IoHandler;)Lorg/apache/mina/io/IoSession;

    move-result-object p1

    return-object p1
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;ILorg/apache/mina/io/IoHandler;)Lorg/apache/mina/io/IoSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/mina/io/datagram/DatagramConnector;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/io/IoHandler;)Lorg/apache/mina/io/IoSession;

    move-result-object p1

    return-object p1
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/io/IoHandler;)Lorg/apache/mina/io/IoSession;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_7

    if-eqz p3, :cond_6

    .line 97
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_5

    if-eqz p2, :cond_1

    .line 101
    instance-of v0, p2, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string v0, "Unexpected local address type: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_1
    :goto_0
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    .line 111
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    if-eqz p2, :cond_2

    .line 114
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 116
    :cond_2
    invoke-virtual {v0, p1}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    const/4 p1, 0x0

    .line 117
    invoke-virtual {v0, p1}, Ljava/nio/channels/DatagramChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 128
    new-instance p1, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;

    const/4 p2, 0x0

    invoke-direct {p1, v0, p3, p2}, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;-><init>(Ljava/nio/channels/DatagramChannel;Lorg/apache/mina/io/IoHandler;Lorg/apache/mina/io/datagram/DatagramConnector$1;)V

    .line 129
    monitor-enter p0

    .line 131
    :try_start_1
    iget-object p2, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->registerQueue:Lorg/apache/mina/util/Queue;

    monitor-enter p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 133
    :try_start_2
    iget-object p3, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->registerQueue:Lorg/apache/mina/util/Queue;

    invoke-virtual {p3, p1}, Lorg/apache/mina/util/Queue;->push(Ljava/lang/Object;)V

    .line 134
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 135
    :try_start_3
    invoke-direct {p0}, Lorg/apache/mina/io/datagram/DatagramConnector;->startupWorker()V

    .line 136
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 138
    iget-object p2, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p2}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 140
    monitor-enter p1

    .line 142
    :catch_0
    :goto_1
    :try_start_4
    invoke-static {p1}, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;->access$100(Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;)Z

    move-result p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez p2, :cond_3

    .line 146
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 152
    :cond_3
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 154
    invoke-static {p1}, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;->access$200(Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 156
    invoke-static {p1}, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;->access$200(Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/mina/util/ExceptionUtil;->throwException(Ljava/lang/Throwable;)V

    .line 159
    :cond_4
    invoke-static {p1}, Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;->access$300(Lorg/apache/mina/io/datagram/DatagramConnector$RegistrationRequest;)Lorg/apache/mina/io/datagram/DatagramSession;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p2

    .line 152
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p2

    :catchall_1
    move-exception p1

    .line 134
    :try_start_8
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw p1

    :catchall_2
    move-exception p1

    .line 136
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    .line 124
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->close()V

    .line 126
    throw p1

    .line 98
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string v0, "Unexpected address type: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 95
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "handler"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "address"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public connect(Ljava/net/SocketAddress;Lorg/apache/mina/io/IoHandler;)Lorg/apache/mina/io/IoSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/mina/io/datagram/DatagramConnector;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/io/IoHandler;)Lorg/apache/mina/io/IoSession;

    move-result-object p1

    return-object p1
.end method

.method flushSession(Lorg/apache/mina/io/datagram/DatagramSession;)V
    .locals 0

    .line 188
    invoke-direct {p0, p1}, Lorg/apache/mina/io/datagram/DatagramConnector;->scheduleFlush(Lorg/apache/mina/io/datagram/DatagramSession;)V

    .line 189
    iget-object p1, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-void
.end method

.method public getFilterChain()Lorg/apache/mina/io/IoFilterChain;
    .locals 1

    .line 492
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramConnector;->filters:Lorg/apache/mina/io/IoSessionManagerFilterChain;

    return-object v0
.end method
