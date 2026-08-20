.class public Lorg/apache/mina/io/socket/SocketConnector;
.super Lorg/apache/mina/common/BaseSessionManager;
.source "SocketConnector.java"

# interfaces
.implements Lorg/apache/mina/io/IoConnector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;,
        Lorg/apache/mina/io/socket/SocketConnector$Worker;
    }
.end annotation


# static fields
.field private static volatile nextId:I


# instance fields
.field private final connectQueue:Lorg/apache/mina/util/Queue;

.field private final filters:Lorg/apache/mina/io/IoSessionManagerFilterChain;

.field private final id:I

.field private final selector:Ljava/nio/channels/Selector;

.field private worker:Lorg/apache/mina/io/socket/SocketConnector$Worker;


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

    .line 66
    invoke-direct {p0}, Lorg/apache/mina/common/BaseSessionManager;-><init>()V

    .line 50
    sget v0, Lorg/apache/mina/io/socket/SocketConnector;->nextId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/apache/mina/io/socket/SocketConnector;->nextId:I

    iput v0, p0, Lorg/apache/mina/io/socket/SocketConnector;->id:I

    .line 52
    new-instance v0, Lorg/apache/mina/io/socket/SocketSessionManagerFilterChain;

    invoke-direct {v0, p0}, Lorg/apache/mina/io/socket/SocketSessionManagerFilterChain;-><init>(Lorg/apache/mina/io/IoSessionManager;)V

    iput-object v0, p0, Lorg/apache/mina/io/socket/SocketConnector;->filters:Lorg/apache/mina/io/IoSessionManagerFilterChain;

    .line 56
    new-instance v0, Lorg/apache/mina/util/Queue;

    invoke-direct {v0}, Lorg/apache/mina/util/Queue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/io/socket/SocketConnector;->connectQueue:Lorg/apache/mina/util/Queue;

    .line 67
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/io/socket/SocketConnector;->selector:Ljava/nio/channels/Selector;

    return-void
.end method

.method static synthetic access$1000(Lorg/apache/mina/io/socket/SocketConnector;Ljava/util/Set;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lorg/apache/mina/io/socket/SocketConnector;->processSessions(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$1100(Lorg/apache/mina/io/socket/SocketConnector;Ljava/util/Set;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lorg/apache/mina/io/socket/SocketConnector;->processTimedOutSessions(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/apache/mina/io/socket/SocketConnector;)Lorg/apache/mina/util/Queue;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/apache/mina/io/socket/SocketConnector;->connectQueue:Lorg/apache/mina/util/Queue;

    return-object p0
.end method

.method static synthetic access$1302(Lorg/apache/mina/io/socket/SocketConnector;Lorg/apache/mina/io/socket/SocketConnector$Worker;)Lorg/apache/mina/io/socket/SocketConnector$Worker;
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/apache/mina/io/socket/SocketConnector;->worker:Lorg/apache/mina/io/socket/SocketConnector$Worker;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/apache/mina/io/socket/SocketConnector;)Lorg/apache/mina/common/ExceptionMonitor;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/apache/mina/io/socket/SocketConnector;->exceptionMonitor:Lorg/apache/mina/common/ExceptionMonitor;

    return-object p0
.end method

.method static synthetic access$700(Lorg/apache/mina/io/socket/SocketConnector;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/apache/mina/io/socket/SocketConnector;->id:I

    return p0
.end method

.method static synthetic access$800(Lorg/apache/mina/io/socket/SocketConnector;)Ljava/nio/channels/Selector;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/apache/mina/io/socket/SocketConnector;->selector:Ljava/nio/channels/Selector;

    return-object p0
.end method

.method static synthetic access$900(Lorg/apache/mina/io/socket/SocketConnector;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/apache/mina/io/socket/SocketConnector;->registerNew()V

    return-void
.end method

.method private newSession(Ljava/nio/channels/SocketChannel;Lorg/apache/mina/io/IoHandler;)Lorg/apache/mina/io/socket/SocketSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    new-instance v0, Lorg/apache/mina/io/socket/SocketSession;

    iget-object v1, p0, Lorg/apache/mina/io/socket/SocketConnector;->filters:Lorg/apache/mina/io/IoSessionManagerFilterChain;

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/mina/io/socket/SocketSession;-><init>(Lorg/apache/mina/io/IoSessionManagerFilterChain;Ljava/nio/channels/SocketChannel;Lorg/apache/mina/io/IoHandler;)V

    .line 292
    :try_start_0
    invoke-interface {p2, v0}, Lorg/apache/mina/io/IoHandler;->sessionCreated(Lorg/apache/mina/io/IoSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 296
    invoke-static {p1}, Lorg/apache/mina/util/ExceptionUtil;->throwException(Ljava/lang/Throwable;)V

    .line 298
    :goto_0
    invoke-static {}, Lorg/apache/mina/io/socket/SocketIoProcessor;->getInstance()Lorg/apache/mina/io/socket/SocketIoProcessor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/apache/mina/io/socket/SocketIoProcessor;->addSession(Lorg/apache/mina/io/socket/SocketSession;)V

    return-object v0
.end method

.method private processSessions(Ljava/util/Set;)V
    .locals 6

    .line 210
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 212
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 214
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 216
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SocketChannel;

    .line 220
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;

    const/4 v4, 0x1

    .line 224
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    .line 225
    invoke-static {v3}, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;->access$500(Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;)Lorg/apache/mina/io/IoHandler;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lorg/apache/mina/io/socket/SocketConnector;->newSession(Ljava/nio/channels/SocketChannel;Lorg/apache/mina/io/IoHandler;)Lorg/apache/mina/io/socket/SocketSession;

    move-result-object v5

    .line 226
    invoke-static {v3, v5}, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;->access$302(Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;Lorg/apache/mina/io/socket/SocketSession;)Lorg/apache/mina/io/socket/SocketSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 234
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 235
    invoke-static {v3}, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;->access$300(Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;)Lorg/apache/mina/io/socket/SocketSession;

    move-result-object v1

    if-nez v1, :cond_1

    .line 239
    :try_start_1
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 243
    iget-object v2, p0, Lorg/apache/mina/io/socket/SocketConnector;->exceptionMonitor:Lorg/apache/mina/common/ExceptionMonitor;

    invoke-interface {v2, p0, v1}, Lorg/apache/mina/common/ExceptionMonitor;->exceptionCaught(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 247
    :cond_1
    :goto_1
    monitor-enter v3

    .line 249
    :try_start_2
    invoke-static {v3, v4}, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;->access$102(Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;Z)Z

    .line 250
    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 251
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception v5

    .line 230
    :try_start_3
    invoke-static {v3, v5}, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;->access$202(Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 234
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 235
    invoke-static {v3}, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;->access$300(Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;)Lorg/apache/mina/io/socket/SocketSession;

    move-result-object v1

    if-nez v1, :cond_2

    .line 239
    :try_start_4
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 243
    iget-object v2, p0, Lorg/apache/mina/io/socket/SocketConnector;->exceptionMonitor:Lorg/apache/mina/common/ExceptionMonitor;

    invoke-interface {v2, p0, v1}, Lorg/apache/mina/common/ExceptionMonitor;->exceptionCaught(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 247
    :cond_2
    :goto_2
    monitor-enter v3

    .line 249
    :try_start_5
    invoke-static {v3, v4}, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;->access$102(Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;Z)Z

    .line 250
    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 251
    monitor-exit v3

    goto :goto_0

    :catchall_2
    move-exception p1

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    .line 234
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 235
    invoke-static {v3}, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;->access$300(Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;)Lorg/apache/mina/io/socket/SocketSession;

    move-result-object v0

    if-nez v0, :cond_3

    .line 239
    :try_start_6
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 243
    iget-object v1, p0, Lorg/apache/mina/io/socket/SocketConnector;->exceptionMonitor:Lorg/apache/mina/common/ExceptionMonitor;

    invoke-interface {v1, p0, v0}, Lorg/apache/mina/common/ExceptionMonitor;->exceptionCaught(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 247
    :cond_3
    :goto_3
    monitor-enter v3

    .line 249
    :try_start_7
    invoke-static {v3, v4}, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;->access$102(Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;Z)Z

    .line 250
    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 251
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 252
    throw p1

    :catchall_4
    move-exception p1

    .line 251
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw p1

    .line 255
    :cond_4
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private processTimedOutSessions(Ljava/util/Set;)V
    .locals 6

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 261
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 263
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 265
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 267
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 270
    :cond_1
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;

    .line 272
    invoke-static {v3}, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;->access$600(Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;)J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    .line 274
    new-instance v4, Ljava/net/ConnectException;

    invoke-direct {v4}, Ljava/net/ConnectException;-><init>()V

    invoke-static {v3, v4}, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;->access$202(Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    const/4 v4, 0x1

    .line 275
    invoke-static {v3, v4}, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;->access$102(Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;Z)Z

    .line 277
    monitor-enter v3

    .line 279
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 280
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 280
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    return-void
.end method

.method private registerNew()V
    .locals 4

    .line 177
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketConnector;->connectQueue:Lorg/apache/mina/util/Queue;

    invoke-virtual {v0}, Lorg/apache/mina/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 183
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketConnector;->connectQueue:Lorg/apache/mina/util/Queue;

    monitor-enter v0

    .line 185
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/io/socket/SocketConnector;->connectQueue:Lorg/apache/mina/util/Queue;

    invoke-virtual {v1}, Lorg/apache/mina/util/Queue;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;

    .line 186
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    return-void

    .line 191
    :cond_1
    invoke-static {v1}, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;->access$400(Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 194
    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/io/socket/SocketConnector;->selector:Ljava/nio/channels/Selector;

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3, v1}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 198
    invoke-static {v1, v0}, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;->access$202(Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 199
    monitor-enter v1

    const/4 v0, 0x1

    .line 201
    :try_start_2
    invoke-static {v1, v0}, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;->access$102(Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;Z)Z

    .line 202
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 203
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

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

.method private declared-synchronized startupWorker()V
    .locals 1

    monitor-enter p0

    .line 168
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketConnector;->worker:Lorg/apache/mina/io/socket/SocketConnector$Worker;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lorg/apache/mina/io/socket/SocketConnector$Worker;

    invoke-direct {v0, p0}, Lorg/apache/mina/io/socket/SocketConnector$Worker;-><init>(Lorg/apache/mina/io/socket/SocketConnector;)V

    iput-object v0, p0, Lorg/apache/mina/io/socket/SocketConnector;->worker:Lorg/apache/mina/io/socket/SocketConnector$Worker;

    .line 171
    invoke-virtual {v0}, Lorg/apache/mina/io/socket/SocketConnector$Worker;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public connect(Ljava/net/SocketAddress;ILorg/apache/mina/io/IoHandler;)Lorg/apache/mina/io/IoSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/apache/mina/io/socket/SocketConnector;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;ILorg/apache/mina/io/IoHandler;)Lorg/apache/mina/io/IoSession;

    move-result-object p1

    return-object p1
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;ILorg/apache/mina/io/IoHandler;)Lorg/apache/mina/io/IoSession;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_9

    if-eqz p4, :cond_8

    if-lez p3, :cond_7

    .line 96
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_6

    if-eqz p2, :cond_1

    .line 100
    instance-of v0, p2, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string p4, "Unexpected local address type: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 104
    :cond_1
    :goto_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 108
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setReuseAddress(Z)V

    if-eqz p2, :cond_2

    .line 111
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :cond_2
    const/4 p2, 0x0

    .line 114
    invoke-virtual {v0, p2}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 116
    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 118
    invoke-direct {p0, v0, p4}, Lorg/apache/mina/io/socket/SocketConnector;->newSession(Ljava/nio/channels/SocketChannel;Lorg/apache/mina/io/IoHandler;)Lorg/apache/mina/io/socket/SocketSession;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    return-object p1

    .line 133
    :cond_3
    new-instance p1, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;

    const/4 p2, 0x0

    invoke-direct {p1, v0, p3, p4, p2}, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;-><init>(Ljava/nio/channels/SocketChannel;ILorg/apache/mina/io/IoHandler;Lorg/apache/mina/io/socket/SocketConnector$1;)V

    .line 134
    monitor-enter p0

    .line 136
    :try_start_1
    iget-object p2, p0, Lorg/apache/mina/io/socket/SocketConnector;->connectQueue:Lorg/apache/mina/util/Queue;

    monitor-enter p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 138
    :try_start_2
    iget-object p3, p0, Lorg/apache/mina/io/socket/SocketConnector;->connectQueue:Lorg/apache/mina/util/Queue;

    invoke-virtual {p3, p1}, Lorg/apache/mina/util/Queue;->push(Ljava/lang/Object;)V

    .line 139
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 140
    :try_start_3
    invoke-direct {p0}, Lorg/apache/mina/io/socket/SocketConnector;->startupWorker()V

    .line 141
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 142
    iget-object p2, p0, Lorg/apache/mina/io/socket/SocketConnector;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p2}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 144
    monitor-enter p1

    .line 146
    :catch_0
    :goto_1
    :try_start_4
    invoke-static {p1}, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;->access$100(Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;)Z

    move-result p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez p2, :cond_4

    .line 150
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 156
    :cond_4
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 158
    invoke-static {p1}, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;->access$200(Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 160
    invoke-static {p1}, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;->access$200(Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/mina/util/ExceptionUtil;->throwException(Ljava/lang/Throwable;)V

    .line 163
    :cond_5
    invoke-static {p1}, Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;->access$300(Lorg/apache/mina/io/socket/SocketConnector$ConnectionRequest;)Lorg/apache/mina/io/socket/SocketSession;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p2

    .line 156
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p2

    :catchall_1
    move-exception p1

    .line 139
    :try_start_8
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw p1

    :catchall_2
    move-exception p1

    .line 141
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    .line 129
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    .line 131
    throw p1

    .line 97
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string p4, "Unexpected address type: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 94
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string p4, "Illegal timeout: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "handler"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "address"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/io/IoHandler;)Lorg/apache/mina/io/IoSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x7fffffff

    .line 77
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/mina/io/socket/SocketConnector;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;ILorg/apache/mina/io/IoHandler;)Lorg/apache/mina/io/IoSession;

    move-result-object p1

    return-object p1
.end method

.method public connect(Ljava/net/SocketAddress;Lorg/apache/mina/io/IoHandler;)Lorg/apache/mina/io/IoSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 72
    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/mina/io/socket/SocketConnector;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;ILorg/apache/mina/io/IoHandler;)Lorg/apache/mina/io/IoSession;

    move-result-object p1

    return-object p1
.end method

.method public getFilterChain()Lorg/apache/mina/io/IoFilterChain;
    .locals 1

    .line 379
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketConnector;->filters:Lorg/apache/mina/io/IoSessionManagerFilterChain;

    return-object v0
.end method
