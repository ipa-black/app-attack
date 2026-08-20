.class public Lorg/apache/mina/io/socket/SocketAcceptor;
.super Lorg/apache/mina/common/BaseSessionManager;
.source "SocketAcceptor.java"

# interfaces
.implements Lorg/apache/mina/io/IoAcceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/io/socket/SocketAcceptor$CancellationRequest;,
        Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;,
        Lorg/apache/mina/io/socket/SocketAcceptor$Worker;
    }
.end annotation


# static fields
.field private static volatile nextId:I


# instance fields
.field private backlog:I

.field private final cancelQueue:Lorg/apache/mina/util/Queue;

.field private final channels:Ljava/util/Map;

.field private final filters:Lorg/apache/mina/io/IoSessionManagerFilterChain;

.field private final id:I

.field private final registerQueue:Lorg/apache/mina/util/Queue;

.field private final selector:Ljava/nio/channels/Selector;

.field private worker:Lorg/apache/mina/io/socket/SocketAcceptor$Worker;


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
    invoke-direct {p0}, Lorg/apache/mina/common/BaseSessionManager;-><init>()V

    .line 50
    new-instance v0, Lorg/apache/mina/io/socket/SocketSessionManagerFilterChain;

    invoke-direct {v0, p0}, Lorg/apache/mina/io/socket/SocketSessionManagerFilterChain;-><init>(Lorg/apache/mina/io/IoSessionManager;)V

    iput-object v0, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->filters:Lorg/apache/mina/io/IoSessionManagerFilterChain;

    .line 52
    sget v0, Lorg/apache/mina/io/socket/SocketAcceptor;->nextId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/apache/mina/io/socket/SocketAcceptor;->nextId:I

    iput v0, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->id:I

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->channels:Ljava/util/Map;

    .line 58
    new-instance v0, Lorg/apache/mina/util/Queue;

    invoke-direct {v0}, Lorg/apache/mina/util/Queue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->registerQueue:Lorg/apache/mina/util/Queue;

    .line 60
    new-instance v0, Lorg/apache/mina/util/Queue;

    invoke-direct {v0}, Lorg/apache/mina/util/Queue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->cancelQueue:Lorg/apache/mina/util/Queue;

    const/16 v0, 0x32

    .line 62
    iput v0, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->backlog:I

    .line 74
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->selector:Ljava/nio/channels/Selector;

    return-void
.end method

.method static synthetic access$1000(Lorg/apache/mina/io/socket/SocketAcceptor;)Lorg/apache/mina/util/Queue;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->registerQueue:Lorg/apache/mina/util/Queue;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/apache/mina/io/socket/SocketAcceptor;)Lorg/apache/mina/util/Queue;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->cancelQueue:Lorg/apache/mina/util/Queue;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/apache/mina/io/socket/SocketAcceptor;Lorg/apache/mina/io/socket/SocketAcceptor$Worker;)Lorg/apache/mina/io/socket/SocketAcceptor$Worker;
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->worker:Lorg/apache/mina/io/socket/SocketAcceptor$Worker;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/apache/mina/io/socket/SocketAcceptor;)Lorg/apache/mina/common/ExceptionMonitor;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->exceptionMonitor:Lorg/apache/mina/common/ExceptionMonitor;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/apache/mina/io/socket/SocketAcceptor;)Lorg/apache/mina/io/IoSessionManagerFilterChain;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->filters:Lorg/apache/mina/io/IoSessionManagerFilterChain;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/apache/mina/io/socket/SocketAcceptor;)Lorg/apache/mina/common/ExceptionMonitor;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->exceptionMonitor:Lorg/apache/mina/common/ExceptionMonitor;

    return-object p0
.end method

.method static synthetic access$600(Lorg/apache/mina/io/socket/SocketAcceptor;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->id:I

    return p0
.end method

.method static synthetic access$700(Lorg/apache/mina/io/socket/SocketAcceptor;)Ljava/nio/channels/Selector;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->selector:Ljava/nio/channels/Selector;

    return-object p0
.end method

.method static synthetic access$800(Lorg/apache/mina/io/socket/SocketAcceptor;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/apache/mina/io/socket/SocketAcceptor;->registerNew()V

    return-void
.end method

.method static synthetic access$900(Lorg/apache/mina/io/socket/SocketAcceptor;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/apache/mina/io/socket/SocketAcceptor;->cancelKeys()V

    return-void
.end method

.method private cancelKeys()V
    .locals 5

    .line 377
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->cancelQueue:Lorg/apache/mina/util/Queue;

    invoke-virtual {v0}, Lorg/apache/mina/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 386
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->cancelQueue:Lorg/apache/mina/util/Queue;

    monitor-enter v0

    .line 388
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->cancelQueue:Lorg/apache/mina/util/Queue;

    invoke-virtual {v1}, Lorg/apache/mina/util/Queue;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/io/socket/SocketAcceptor$CancellationRequest;

    .line 389
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v1, :cond_1

    return-void

    .line 396
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->channels:Ljava/util/Map;

    invoke-static {v1}, Lorg/apache/mina/io/socket/SocketAcceptor$CancellationRequest;->access$1900(Lorg/apache/mina/io/socket/SocketAcceptor$CancellationRequest;)Ljava/net/SocketAddress;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/ServerSocketChannel;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 403
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Address not bound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v1}, Lorg/apache/mina/io/socket/SocketAcceptor$CancellationRequest;->access$1900(Lorg/apache/mina/io/socket/SocketAcceptor$CancellationRequest;)Ljava/net/SocketAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lorg/apache/mina/io/socket/SocketAcceptor$CancellationRequest;->access$502(Lorg/apache/mina/io/socket/SocketAcceptor$CancellationRequest;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    goto :goto_1

    .line 407
    :cond_2
    iget-object v3, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0, v3}, Ljava/nio/channels/ServerSocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    .line 409
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 411
    iget-object v3, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 413
    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 422
    :goto_1
    monitor-enter v1

    .line 424
    :try_start_2
    invoke-static {v1, v2}, Lorg/apache/mina/io/socket/SocketAcceptor$CancellationRequest;->access$402(Lorg/apache/mina/io/socket/SocketAcceptor$CancellationRequest;Z)Z

    .line 426
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 427
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

    goto :goto_2

    :catch_0
    move-exception v0

    .line 418
    :try_start_3
    iget-object v3, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->exceptionMonitor:Lorg/apache/mina/common/ExceptionMonitor;

    invoke-interface {v3, p0, v0}, Lorg/apache/mina/common/ExceptionMonitor;->exceptionCaught(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 422
    monitor-enter v1

    .line 424
    :try_start_4
    invoke-static {v1, v2}, Lorg/apache/mina/io/socket/SocketAcceptor$CancellationRequest;->access$402(Lorg/apache/mina/io/socket/SocketAcceptor$CancellationRequest;Z)Z

    .line 426
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 427
    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 422
    :goto_2
    monitor-enter v1

    .line 424
    :try_start_5
    invoke-static {v1, v2}, Lorg/apache/mina/io/socket/SocketAcceptor$CancellationRequest;->access$402(Lorg/apache/mina/io/socket/SocketAcceptor$CancellationRequest;Z)Z

    .line 426
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 427
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 428
    throw v0

    :catchall_3
    move-exception v0

    .line 427
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :catchall_4
    move-exception v1

    .line 389
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v1
.end method

.method private registerNew()V
    .locals 6

    .line 316
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->registerQueue:Lorg/apache/mina/util/Queue;

    invoke-virtual {v0}, Lorg/apache/mina/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 325
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->registerQueue:Lorg/apache/mina/util/Queue;

    monitor-enter v0

    .line 327
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->registerQueue:Lorg/apache/mina/util/Queue;

    invoke-virtual {v1}, Lorg/apache/mina/util/Queue;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;

    .line 328
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 339
    :try_start_1
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v2

    const/4 v3, 0x0

    .line 340
    invoke-virtual {v2, v3}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 341
    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v3

    invoke-static {v1}, Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;->access$1700(Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;)Ljava/net/SocketAddress;

    move-result-object v4

    invoke-static {v1}, Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;->access$1800(Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 342
    iget-object v3, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->selector:Ljava/nio/channels/Selector;

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4, v1}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    .line 344
    iget-object v3, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->channels:Ljava/util/Map;

    invoke-static {v1}, Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;->access$1700(Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;)Ljava/net/SocketAddress;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 352
    monitor-enter v1

    .line 354
    :try_start_2
    invoke-static {v1, v0}, Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;->access$102(Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;Z)Z

    .line 356
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 357
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    .line 359
    invoke-static {v1}, Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;->access$200(Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    :try_start_3
    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 357
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    .line 348
    :try_start_5
    invoke-static {v1, v3}, Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;->access$202(Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 352
    monitor-enter v1

    .line 354
    :try_start_6
    invoke-static {v1, v0}, Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;->access$102(Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;Z)Z

    .line 356
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 357
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v2, :cond_0

    .line 359
    invoke-static {v1}, Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;->access$200(Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    :try_start_7
    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 367
    iget-object v1, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->exceptionMonitor:Lorg/apache/mina/common/ExceptionMonitor;

    invoke-interface {v1, p0, v0}, Lorg/apache/mina/common/ExceptionMonitor;->exceptionCaught(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_2
    move-exception v0

    .line 357
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    .line 352
    :goto_1
    monitor-enter v1

    .line 354
    :try_start_9
    invoke-static {v1, v0}, Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;->access$102(Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;Z)Z

    .line 356
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 357
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v2, :cond_2

    .line 359
    invoke-static {v1}, Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;->access$200(Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 363
    :try_start_a
    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 367
    iget-object v1, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->exceptionMonitor:Lorg/apache/mina/common/ExceptionMonitor;

    invoke-interface {v1, p0, v0}, Lorg/apache/mina/common/ExceptionMonitor;->exceptionCaught(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 370
    :cond_2
    :goto_2
    throw v3

    :catchall_3
    move-exception v0

    .line 357
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0

    :catchall_4
    move-exception v1

    .line 328
    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v1
.end method

.method private declared-synchronized startupWorker()V
    .locals 1

    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->worker:Lorg/apache/mina/io/socket/SocketAcceptor$Worker;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lorg/apache/mina/io/socket/SocketAcceptor$Worker;

    invoke-direct {v0, p0}, Lorg/apache/mina/io/socket/SocketAcceptor$Worker;-><init>(Lorg/apache/mina/io/socket/SocketAcceptor;)V

    iput-object v0, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->worker:Lorg/apache/mina/io/socket/SocketAcceptor$Worker;

    .line 146
    invoke-virtual {v0}, Lorg/apache/mina/io/socket/SocketAcceptor$Worker;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 96
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_3

    .line 101
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    new-instance v0, Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;

    iget v1, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->backlog:I

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;-><init>(Ljava/net/SocketAddress;ILorg/apache/mina/io/IoHandler;Lorg/apache/mina/io/socket/SocketAcceptor$1;)V

    .line 108
    monitor-enter p0

    .line 110
    :try_start_0
    iget-object p1, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->registerQueue:Lorg/apache/mina/util/Queue;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 112
    :try_start_1
    iget-object p2, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->registerQueue:Lorg/apache/mina/util/Queue;

    invoke-virtual {p2, v0}, Lorg/apache/mina/util/Queue;->push(Ljava/lang/Object;)V

    .line 113
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    :try_start_2
    invoke-direct {p0}, Lorg/apache/mina/io/socket/SocketAcceptor;->startupWorker()V

    .line 115
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 117
    iget-object p1, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 119
    monitor-enter v0

    .line 121
    :catch_0
    :goto_0
    :try_start_3
    invoke-static {v0}, Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;->access$100(Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p1, :cond_0

    .line 125
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 131
    :cond_0
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 133
    invoke-static {v0}, Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;->access$200(Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;)Ljava/io/IOException;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 135
    :cond_1
    invoke-static {v0}, Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;->access$200(Lorg/apache/mina/io/socket/SocketAcceptor$RegistrationRequest;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 131
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1

    :catchall_1
    move-exception p2

    .line 113
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p2

    :catchall_2
    move-exception p1

    .line 115
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1

    .line 103
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported port number: 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
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

    .line 93
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "handler"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "address"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBacklog()I
    .locals 1

    .line 197
    iget v0, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->backlog:I

    return v0
.end method

.method public getFilterChain()Lorg/apache/mina/io/IoFilterChain;
    .locals 1

    .line 434
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->filters:Lorg/apache/mina/io/IoSessionManagerFilterChain;

    return-object v0
.end method

.method public setBacklog(I)V
    .locals 3

    if-lez p1, :cond_0

    .line 209
    iput p1, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->backlog:I

    return-void

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "defaultBacklog: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unbind(Ljava/net/SocketAddress;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 158
    new-instance v0, Lorg/apache/mina/io/socket/SocketAcceptor$CancellationRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/mina/io/socket/SocketAcceptor$CancellationRequest;-><init>(Ljava/net/SocketAddress;Lorg/apache/mina/io/socket/SocketAcceptor$1;)V

    .line 159
    monitor-enter p0

    .line 161
    :try_start_0
    iget-object p1, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->cancelQueue:Lorg/apache/mina/util/Queue;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 163
    :try_start_1
    iget-object v1, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->cancelQueue:Lorg/apache/mina/util/Queue;

    invoke-virtual {v1, v0}, Lorg/apache/mina/util/Queue;->push(Ljava/lang/Object;)V

    .line 164
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 165
    :try_start_2
    invoke-direct {p0}, Lorg/apache/mina/io/socket/SocketAcceptor;->startupWorker()V

    .line 166
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 168
    iget-object p1, p0, Lorg/apache/mina/io/socket/SocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 170
    monitor-enter v0

    .line 172
    :catch_0
    :goto_0
    :try_start_3
    invoke-static {v0}, Lorg/apache/mina/io/socket/SocketAcceptor$CancellationRequest;->access$400(Lorg/apache/mina/io/socket/SocketAcceptor$CancellationRequest;)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p1, :cond_0

    .line 176
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 182
    :cond_0
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 184
    invoke-static {v0}, Lorg/apache/mina/io/socket/SocketAcceptor$CancellationRequest;->access$500(Lorg/apache/mina/io/socket/SocketAcceptor$CancellationRequest;)Ljava/lang/RuntimeException;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 186
    :cond_1
    invoke-static {v0}, Lorg/apache/mina/io/socket/SocketAcceptor$CancellationRequest;->access$500(Lorg/apache/mina/io/socket/SocketAcceptor$CancellationRequest;)Ljava/lang/RuntimeException;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 188
    invoke-static {v0}, Lorg/apache/mina/io/socket/SocketAcceptor$CancellationRequest;->access$500(Lorg/apache/mina/io/socket/SocketAcceptor$CancellationRequest;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 182
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1

    :catchall_1
    move-exception v0

    .line 164
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    :catchall_2
    move-exception p1

    .line 166
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1

    .line 155
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "address"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
