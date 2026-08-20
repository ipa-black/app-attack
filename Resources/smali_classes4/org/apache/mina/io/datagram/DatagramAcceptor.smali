.class public Lorg/apache/mina/io/datagram/DatagramAcceptor;
.super Lorg/apache/mina/io/datagram/DatagramSessionManager;
.source "DatagramAcceptor.java"

# interfaces
.implements Lorg/apache/mina/io/IoAcceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;,
        Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;,
        Lorg/apache/mina/io/datagram/DatagramAcceptor$Worker;
    }
.end annotation


# static fields
.field private static volatile nextId:I


# instance fields
.field private final cancelQueue:Lorg/apache/mina/util/Queue;

.field private final channels:Ljava/util/Map;

.field private final filters:Lorg/apache/mina/io/IoSessionManagerFilterChain;

.field private final flushingSessions:Lorg/apache/mina/util/Queue;

.field private final id:I

.field private final registerQueue:Lorg/apache/mina/util/Queue;

.field private final selector:Ljava/nio/channels/Selector;

.field private worker:Lorg/apache/mina/io/datagram/DatagramAcceptor$Worker;


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

    .line 73
    invoke-direct {p0}, Lorg/apache/mina/io/datagram/DatagramSessionManager;-><init>()V

    .line 50
    new-instance v0, Lorg/apache/mina/io/datagram/DatagramSessionManagerFilterChain;

    invoke-direct {v0, p0}, Lorg/apache/mina/io/datagram/DatagramSessionManagerFilterChain;-><init>(Lorg/apache/mina/io/datagram/DatagramSessionManager;)V

    iput-object v0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->filters:Lorg/apache/mina/io/IoSessionManagerFilterChain;

    .line 53
    sget v0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->nextId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/apache/mina/io/datagram/DatagramAcceptor;->nextId:I

    iput v0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->id:I

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->channels:Ljava/util/Map;

    .line 59
    new-instance v0, Lorg/apache/mina/util/Queue;

    invoke-direct {v0}, Lorg/apache/mina/util/Queue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->registerQueue:Lorg/apache/mina/util/Queue;

    .line 61
    new-instance v0, Lorg/apache/mina/util/Queue;

    invoke-direct {v0}, Lorg/apache/mina/util/Queue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->cancelQueue:Lorg/apache/mina/util/Queue;

    .line 63
    new-instance v0, Lorg/apache/mina/util/Queue;

    invoke-direct {v0}, Lorg/apache/mina/util/Queue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->flushingSessions:Lorg/apache/mina/util/Queue;

    .line 74
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    return-void
.end method

.method static synthetic access$1000(Lorg/apache/mina/io/datagram/DatagramAcceptor;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/apache/mina/io/datagram/DatagramAcceptor;->flushSessions()V

    return-void
.end method

.method static synthetic access$1100(Lorg/apache/mina/io/datagram/DatagramAcceptor;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/apache/mina/io/datagram/DatagramAcceptor;->cancelKeys()V

    return-void
.end method

.method static synthetic access$1200(Lorg/apache/mina/io/datagram/DatagramAcceptor;)Lorg/apache/mina/util/Queue;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->registerQueue:Lorg/apache/mina/util/Queue;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/apache/mina/io/datagram/DatagramAcceptor;)Lorg/apache/mina/util/Queue;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->cancelQueue:Lorg/apache/mina/util/Queue;

    return-object p0
.end method

.method static synthetic access$1402(Lorg/apache/mina/io/datagram/DatagramAcceptor;Lorg/apache/mina/io/datagram/DatagramAcceptor$Worker;)Lorg/apache/mina/io/datagram/DatagramAcceptor$Worker;
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->worker:Lorg/apache/mina/io/datagram/DatagramAcceptor$Worker;

    return-object p1
.end method

.method static synthetic access$1500(Lorg/apache/mina/io/datagram/DatagramAcceptor;)Lorg/apache/mina/common/ExceptionMonitor;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->exceptionMonitor:Lorg/apache/mina/common/ExceptionMonitor;

    return-object p0
.end method

.method static synthetic access$600(Lorg/apache/mina/io/datagram/DatagramAcceptor;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->id:I

    return p0
.end method

.method static synthetic access$700(Lorg/apache/mina/io/datagram/DatagramAcceptor;)Ljava/nio/channels/Selector;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    return-object p0
.end method

.method static synthetic access$800(Lorg/apache/mina/io/datagram/DatagramAcceptor;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/apache/mina/io/datagram/DatagramAcceptor;->registerNew()V

    return-void
.end method

.method static synthetic access$900(Lorg/apache/mina/io/datagram/DatagramAcceptor;Ljava/util/Set;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lorg/apache/mina/io/datagram/DatagramAcceptor;->processReadySessions(Ljava/util/Set;)V

    return-void
.end method

.method private cancelKeys()V
    .locals 5

    .line 460
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->cancelQueue:Lorg/apache/mina/util/Queue;

    invoke-virtual {v0}, Lorg/apache/mina/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 466
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->cancelQueue:Lorg/apache/mina/util/Queue;

    monitor-enter v0

    .line 468
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->cancelQueue:Lorg/apache/mina/util/Queue;

    invoke-virtual {v1}, Lorg/apache/mina/util/Queue;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;

    .line 469
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-nez v1, :cond_1

    return-void

    .line 476
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->channels:Ljava/util/Map;

    invoke-static {v1}, Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;->access$1800(Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;)Ljava/net/SocketAddress;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 482
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Address not bound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v1}, Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;->access$1800(Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;)Ljava/net/SocketAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;->access$502(Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    goto :goto_1

    .line 487
    :cond_2
    iget-object v3, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0, v3}, Ljava/nio/channels/DatagramChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    .line 488
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 489
    iget-object v3, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 490
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 499
    :goto_1
    monitor-enter v1

    .line 501
    :try_start_2
    invoke-static {v1, v2}, Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;->access$402(Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;Z)Z

    .line 502
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 503
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 495
    :try_start_3
    iget-object v3, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->exceptionMonitor:Lorg/apache/mina/common/ExceptionMonitor;

    invoke-interface {v3, p0, v0}, Lorg/apache/mina/common/ExceptionMonitor;->exceptionCaught(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 499
    monitor-enter v1

    .line 501
    :try_start_4
    invoke-static {v1, v2}, Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;->access$402(Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;Z)Z

    .line 502
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 503
    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    .line 499
    monitor-enter v1

    .line 501
    :try_start_5
    invoke-static {v1, v2}, Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;->access$402(Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;Z)Z

    .line 502
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 503
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 504
    throw v0

    :catchall_4
    move-exception v0

    .line 503
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    :catchall_5
    move-exception v1

    .line 469
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v1
.end method

.method private flush(Lorg/apache/mina/io/datagram/DatagramSession;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    invoke-virtual {p1}, Lorg/apache/mina/io/datagram/DatagramSession;->getChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    .line 341
    invoke-virtual {p1}, Lorg/apache/mina/io/datagram/DatagramSession;->getWriteBufferQueue()Lorg/apache/mina/util/Queue;

    move-result-object v1

    .line 342
    invoke-virtual {p1}, Lorg/apache/mina/io/datagram/DatagramSession;->getWriteMarkerQueue()Lorg/apache/mina/util/Queue;

    move-result-object v2

    .line 348
    :cond_0
    :goto_0
    monitor-enter v1

    .line 350
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/mina/util/Queue;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/common/ByteBuffer;

    .line 351
    invoke-virtual {v2}, Lorg/apache/mina/util/Queue;->first()Ljava/lang/Object;

    move-result-object v4

    .line 352
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v3, :cond_1

    return-void

    .line 357
    :cond_1
    invoke-virtual {v3}, Lorg/apache/mina/common/ByteBuffer;->remaining()I

    move-result v5

    if-nez v5, :cond_2

    .line 360
    monitor-enter v1

    .line 362
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/mina/util/Queue;->pop()Ljava/lang/Object;

    .line 363
    invoke-virtual {v2}, Lorg/apache/mina/util/Queue;->pop()Ljava/lang/Object;

    .line 364
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    :try_start_2
    invoke-virtual {v3}, Lorg/apache/mina/common/ByteBuffer;->release()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 372
    invoke-virtual {p1}, Lorg/apache/mina/io/datagram/DatagramSession;->getManagerFilterChain()Lorg/apache/mina/io/IoSessionManagerFilterChain;

    move-result-object v5

    invoke-virtual {v5, p1, v3}, Lorg/apache/mina/io/IoSessionManagerFilterChain;->exceptionCaught(Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V

    .line 375
    :goto_1
    invoke-virtual {p1}, Lorg/apache/mina/io/datagram/DatagramSession;->getManagerFilterChain()Lorg/apache/mina/io/IoSessionManagerFilterChain;

    move-result-object v3

    invoke-virtual {v3, p1, v4}, Lorg/apache/mina/io/IoSessionManagerFilterChain;->dataWritten(Lorg/apache/mina/io/IoSession;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 364
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 379
    :cond_2
    invoke-virtual {v3}, Lorg/apache/mina/common/ByteBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/mina/io/datagram/DatagramSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/nio/channels/DatagramChannel;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I

    move-result v3

    .line 382
    invoke-virtual {p1}, Lorg/apache/mina/io/datagram/DatagramSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v5

    if-nez v3, :cond_3

    .line 386
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v3

    or-int/lit8 v3, v3, 0x4

    invoke-virtual {v5, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_0

    :cond_3
    if-lez v3, :cond_0

    .line 390
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v6

    and-int/lit8 v6, v6, -0x5

    invoke-virtual {v5, v6}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 394
    monitor-enter v1

    .line 396
    :try_start_4
    invoke-virtual {v1}, Lorg/apache/mina/util/Queue;->pop()Ljava/lang/Object;

    .line 397
    invoke-virtual {v2}, Lorg/apache/mina/util/Queue;->pop()Ljava/lang/Object;

    .line 398
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 400
    invoke-virtual {p1, v3}, Lorg/apache/mina/io/datagram/DatagramSession;->increaseWrittenBytes(I)V

    .line 401
    invoke-virtual {p1}, Lorg/apache/mina/io/datagram/DatagramSession;->getManagerFilterChain()Lorg/apache/mina/io/IoSessionManagerFilterChain;

    move-result-object v3

    invoke-virtual {v3, p1, v4}, Lorg/apache/mina/io/IoSessionManagerFilterChain;->dataWritten(Lorg/apache/mina/io/IoSession;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 398
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 352
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method

.method private flushSessions()V
    .locals 3

    .line 311
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->flushingSessions:Lorg/apache/mina/util/Queue;

    invoke-virtual {v0}, Lorg/apache/mina/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 318
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->flushingSessions:Lorg/apache/mina/util/Queue;

    monitor-enter v0

    .line 320
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->flushingSessions:Lorg/apache/mina/util/Queue;

    invoke-virtual {v1}, Lorg/apache/mina/util/Queue;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/io/datagram/DatagramSession;

    .line 321
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    return-void

    .line 328
    :cond_1
    :try_start_1
    invoke-direct {p0, v1}, Lorg/apache/mina/io/datagram/DatagramAcceptor;->flush(Lorg/apache/mina/io/datagram/DatagramSession;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 332
    invoke-virtual {v1}, Lorg/apache/mina/io/datagram/DatagramSession;->getManagerFilterChain()Lorg/apache/mina/io/IoSessionManagerFilterChain;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/apache/mina/io/IoSessionManagerFilterChain;->exceptionCaught(Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 321
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private processReadySessions(Ljava/util/Set;)V
    .locals 6

    .line 244
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 245
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 248
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 250
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/DatagramChannel;

    .line 252
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;

    .line 253
    new-instance v3, Lorg/apache/mina/io/datagram/DatagramSession;

    iget-object v4, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->filters:Lorg/apache/mina/io/IoSessionManagerFilterChain;

    invoke-static {v2}, Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;->access$1600(Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;)Lorg/apache/mina/io/IoHandler;

    move-result-object v5

    invoke-direct {v3, v4, v1, v5}, Lorg/apache/mina/io/datagram/DatagramSession;-><init>(Lorg/apache/mina/io/IoSessionManagerFilterChain;Ljava/nio/channels/DatagramChannel;Lorg/apache/mina/io/IoHandler;)V

    .line 255
    invoke-virtual {v3, v0}, Lorg/apache/mina/io/datagram/DatagramSession;->setSelectionKey(Ljava/nio/channels/SelectionKey;)V

    .line 259
    :try_start_0
    invoke-static {v2}, Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;->access$1600(Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;)Lorg/apache/mina/io/IoHandler;

    move-result-object v1

    invoke-interface {v1, v3}, Lorg/apache/mina/io/IoHandler;->sessionCreated(Lorg/apache/mina/io/IoSession;)V

    .line 261
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    invoke-direct {p0, v3}, Lorg/apache/mina/io/datagram/DatagramAcceptor;->readSession(Lorg/apache/mina/io/datagram/DatagramSession;)V

    .line 266
    :cond_1
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-direct {p0, v3}, Lorg/apache/mina/io/datagram/DatagramAcceptor;->scheduleFlush(Lorg/apache/mina/io/datagram/DatagramSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 273
    iget-object v1, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->exceptionMonitor:Lorg/apache/mina/common/ExceptionMonitor;

    invoke-interface {v1, p0, v0}, Lorg/apache/mina/common/ExceptionMonitor;->exceptionCaught(Ljava/lang/Object;Ljava/lang/Throwable;)V

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

    invoke-virtual {v1, v2}, Ljava/nio/channels/DatagramChannel;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 288
    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->flip()Lorg/apache/mina/common/ByteBuffer;

    .line 289
    invoke-virtual {p1, v1}, Lorg/apache/mina/io/datagram/DatagramSession;->setRemoteAddress(Ljava/net/SocketAddress;)V

    .line 291
    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->limit()I

    move-result v1

    invoke-static {v1}, Lorg/apache/mina/common/ByteBuffer;->allocate(I)Lorg/apache/mina/common/ByteBuffer;

    move-result-object v1

    .line 292
    invoke-virtual {v1, v0}, Lorg/apache/mina/common/ByteBuffer;->put(Lorg/apache/mina/common/ByteBuffer;)Lorg/apache/mina/common/ByteBuffer;

    .line 293
    invoke-virtual {v1}, Lorg/apache/mina/common/ByteBuffer;->flip()Lorg/apache/mina/common/ByteBuffer;

    .line 295
    invoke-virtual {v1}, Lorg/apache/mina/common/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/apache/mina/io/datagram/DatagramSession;->increaseReadBytes(I)V

    .line 296
    iget-object v2, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->filters:Lorg/apache/mina/io/IoSessionManagerFilterChain;

    invoke-virtual {v2, p1, v1}, Lorg/apache/mina/io/IoSessionManagerFilterChain;->dataRead(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 301
    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->filters:Lorg/apache/mina/io/IoSessionManagerFilterChain;

    invoke-virtual {v2, p1, v1}, Lorg/apache/mina/io/IoSessionManagerFilterChain;->exceptionCaught(Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->release()V

    return-void

    :goto_1
    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->release()V

    .line 306
    throw p1
.end method

.method private registerNew()V
    .locals 5

    .line 408
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->registerQueue:Lorg/apache/mina/util/Queue;

    invoke-virtual {v0}, Lorg/apache/mina/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 414
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->registerQueue:Lorg/apache/mina/util/Queue;

    monitor-enter v0

    .line 416
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->registerQueue:Lorg/apache/mina/util/Queue;

    invoke-virtual {v1}, Lorg/apache/mina/util/Queue;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;

    .line 417
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 425
    :try_start_1
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v3, 0x0

    .line 426
    :try_start_2
    invoke-virtual {v2, v3}, Ljava/nio/channels/DatagramChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 427
    invoke-virtual {v2}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v3

    invoke-static {v1}, Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;->access$1700(Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;)Ljava/net/SocketAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 428
    iget-object v3, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/channels/DatagramChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    .line 429
    iget-object v3, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->channels:Ljava/util/Map;

    invoke-static {v1}, Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;->access$1700(Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;)Ljava/net/SocketAddress;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 437
    monitor-enter v1

    .line 439
    :try_start_3
    invoke-static {v1, v0}, Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;->access$102(Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;Z)Z

    .line 440
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 441
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_0

    .line 443
    invoke-static {v1}, Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;->access$200(Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 447
    :try_start_4
    invoke-virtual {v2}, Ljava/nio/channels/DatagramChannel;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 441
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catchall_1
    move-exception v3

    goto :goto_1

    :catchall_2
    move-exception v3

    const/4 v2, 0x0

    .line 433
    :goto_1
    :try_start_6
    invoke-static {v1, v3}, Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;->access$202(Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 437
    monitor-enter v1

    .line 439
    :try_start_7
    invoke-static {v1, v0}, Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;->access$102(Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;Z)Z

    .line 440
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 441
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v2, :cond_0

    .line 443
    invoke-static {v1}, Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;->access$200(Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 447
    :try_start_8
    invoke-virtual {v2}, Ljava/nio/channels/DatagramChannel;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception v0

    .line 451
    iget-object v1, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->exceptionMonitor:Lorg/apache/mina/common/ExceptionMonitor;

    invoke-interface {v1, p0, v0}, Lorg/apache/mina/common/ExceptionMonitor;->exceptionCaught(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_4
    move-exception v0

    .line 441
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    :catchall_5
    move-exception v3

    .line 437
    monitor-enter v1

    .line 439
    :try_start_a
    invoke-static {v1, v0}, Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;->access$102(Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;Z)Z

    .line 440
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 441
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    if-eqz v2, :cond_2

    .line 443
    invoke-static {v1}, Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;->access$200(Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 447
    :try_start_b
    invoke-virtual {v2}, Ljava/nio/channels/DatagramChannel;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_2

    :catchall_6
    move-exception v0

    .line 451
    iget-object v1, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->exceptionMonitor:Lorg/apache/mina/common/ExceptionMonitor;

    invoke-interface {v1, p0, v0}, Lorg/apache/mina/common/ExceptionMonitor;->exceptionCaught(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 454
    :cond_2
    :goto_2
    throw v3

    :catchall_7
    move-exception v0

    .line 441
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    throw v0

    :catchall_8
    move-exception v1

    .line 417
    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    throw v1
.end method

.method private scheduleFlush(Lorg/apache/mina/io/datagram/DatagramSession;)V
    .locals 2

    .line 180
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->flushingSessions:Lorg/apache/mina/util/Queue;

    monitor-enter v0

    .line 182
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->flushingSessions:Lorg/apache/mina/util/Queue;

    invoke-virtual {v1, p1}, Lorg/apache/mina/util/Queue;->push(Ljava/lang/Object;)V

    .line 183
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

    .line 161
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->worker:Lorg/apache/mina/io/datagram/DatagramAcceptor$Worker;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lorg/apache/mina/io/datagram/DatagramAcceptor$Worker;

    invoke-direct {v0, p0}, Lorg/apache/mina/io/datagram/DatagramAcceptor$Worker;-><init>(Lorg/apache/mina/io/datagram/DatagramAcceptor;)V

    iput-object v0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->worker:Lorg/apache/mina/io/datagram/DatagramAcceptor$Worker;

    .line 164
    invoke-virtual {v0}, Lorg/apache/mina/io/datagram/DatagramAcceptor$Worker;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;Lorg/apache/mina/io/IoHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 85
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_3

    .line 88
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    new-instance v0, Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;-><init>(Ljava/net/SocketAddress;Lorg/apache/mina/io/IoHandler;Lorg/apache/mina/io/datagram/DatagramAcceptor$1;)V

    .line 92
    monitor-enter p0

    .line 94
    :try_start_0
    iget-object p1, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->registerQueue:Lorg/apache/mina/util/Queue;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 96
    :try_start_1
    iget-object p2, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->registerQueue:Lorg/apache/mina/util/Queue;

    invoke-virtual {p2, v0}, Lorg/apache/mina/util/Queue;->push(Ljava/lang/Object;)V

    .line 97
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    :try_start_2
    invoke-direct {p0}, Lorg/apache/mina/io/datagram/DatagramAcceptor;->startupWorker()V

    .line 99
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 100
    iget-object p1, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 102
    monitor-enter v0

    .line 104
    :catch_0
    :goto_0
    :try_start_3
    invoke-static {v0}, Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;->access$100(Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p1, :cond_0

    .line 108
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 114
    :cond_0
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 116
    invoke-static {v0}, Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;->access$200(Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 118
    invoke-static {v0}, Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;->access$200(Lorg/apache/mina/io/datagram/DatagramAcceptor$RegistrationRequest;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/mina/util/ExceptionUtil;->throwException(Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 114
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1

    :catchall_1
    move-exception p2

    .line 97
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p2

    :catchall_2
    move-exception p1

    .line 99
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1

    .line 89
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported port number: 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Unexpected address type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 83
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "handler"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "address"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method closeSession(Lorg/apache/mina/io/datagram/DatagramSession;)V
    .locals 0

    return-void
.end method

.method flushSession(Lorg/apache/mina/io/datagram/DatagramSession;)V
    .locals 0

    .line 170
    invoke-direct {p0, p1}, Lorg/apache/mina/io/datagram/DatagramAcceptor;->scheduleFlush(Lorg/apache/mina/io/datagram/DatagramSession;)V

    .line 171
    iget-object p1, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-void
.end method

.method public getFilterChain()Lorg/apache/mina/io/IoFilterChain;
    .locals 1

    .line 510
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->filters:Lorg/apache/mina/io/IoSessionManagerFilterChain;

    return-object v0
.end method

.method public unbind(Ljava/net/SocketAddress;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 127
    new-instance v0, Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;-><init>(Ljava/net/SocketAddress;Lorg/apache/mina/io/datagram/DatagramAcceptor$1;)V

    .line 128
    monitor-enter p0

    .line 130
    :try_start_0
    iget-object p1, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->cancelQueue:Lorg/apache/mina/util/Queue;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 132
    :try_start_1
    iget-object v1, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->cancelQueue:Lorg/apache/mina/util/Queue;

    invoke-virtual {v1, v0}, Lorg/apache/mina/util/Queue;->push(Ljava/lang/Object;)V

    .line 133
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 134
    :try_start_2
    invoke-direct {p0}, Lorg/apache/mina/io/datagram/DatagramAcceptor;->startupWorker()V

    .line 135
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 136
    iget-object p1, p0, Lorg/apache/mina/io/datagram/DatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 138
    monitor-enter v0

    .line 140
    :catch_0
    :goto_0
    :try_start_3
    invoke-static {v0}, Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;->access$400(Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p1, :cond_0

    .line 144
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 150
    :cond_0
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 152
    invoke-static {v0}, Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;->access$500(Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;)Ljava/lang/RuntimeException;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 154
    :cond_1
    invoke-static {v0}, Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;->access$500(Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;)Ljava/lang/RuntimeException;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 155
    invoke-static {v0}, Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;->access$500(Lorg/apache/mina/io/datagram/DatagramAcceptor$CancellationRequest;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 150
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1

    :catchall_1
    move-exception v0

    .line 133
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    :catchall_2
    move-exception p1

    .line 135
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1

    .line 125
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "address"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
