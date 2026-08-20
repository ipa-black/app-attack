.class Lorg/apache/mina/io/socket/SocketSession;
.super Lorg/apache/mina/common/BaseSession;
.source "SocketSession.java"

# interfaces
.implements Lorg/apache/mina/io/IoSession;


# instance fields
.field private final ch:Ljava/nio/channels/SocketChannel;

.field private final config:Lorg/apache/mina/io/socket/SocketSessionConfig;

.field private disposed:Z

.field private final filterChain:Lorg/apache/mina/io/IoSessionFilterChain;

.field private final handler:Lorg/apache/mina/io/IoHandler;

.field private key:Ljava/nio/channels/SelectionKey;

.field private final localAddress:Ljava/net/SocketAddress;

.field private final managerFilterChain:Lorg/apache/mina/io/IoSessionManagerFilterChain;

.field private final remoteAddress:Ljava/net/SocketAddress;

.field private final writeBufferQueue:Lorg/apache/mina/util/Queue;

.field private final writeMarkerQueue:Lorg/apache/mina/util/Queue;


# direct methods
.method constructor <init>(Lorg/apache/mina/io/IoSessionManagerFilterChain;Ljava/nio/channels/SocketChannel;Lorg/apache/mina/io/IoHandler;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Lorg/apache/mina/common/BaseSession;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/apache/mina/io/socket/SocketSession;->managerFilterChain:Lorg/apache/mina/io/IoSessionManagerFilterChain;

    .line 73
    new-instance v0, Lorg/apache/mina/io/IoSessionFilterChain;

    invoke-direct {v0, p1}, Lorg/apache/mina/io/IoSessionFilterChain;-><init>(Lorg/apache/mina/io/IoSessionManagerFilterChain;)V

    iput-object v0, p0, Lorg/apache/mina/io/socket/SocketSession;->filterChain:Lorg/apache/mina/io/IoSessionFilterChain;

    .line 74
    iput-object p2, p0, Lorg/apache/mina/io/socket/SocketSession;->ch:Ljava/nio/channels/SocketChannel;

    .line 75
    new-instance p1, Lorg/apache/mina/io/socket/SocketSessionConfig;

    invoke-direct {p1, p0}, Lorg/apache/mina/io/socket/SocketSessionConfig;-><init>(Lorg/apache/mina/io/socket/SocketSession;)V

    iput-object p1, p0, Lorg/apache/mina/io/socket/SocketSession;->config:Lorg/apache/mina/io/socket/SocketSessionConfig;

    .line 76
    new-instance p1, Lorg/apache/mina/util/Queue;

    invoke-direct {p1}, Lorg/apache/mina/util/Queue;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/io/socket/SocketSession;->writeBufferQueue:Lorg/apache/mina/util/Queue;

    .line 77
    new-instance p1, Lorg/apache/mina/util/Queue;

    invoke-direct {p1}, Lorg/apache/mina/util/Queue;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/io/socket/SocketSession;->writeMarkerQueue:Lorg/apache/mina/util/Queue;

    .line 78
    iput-object p3, p0, Lorg/apache/mina/io/socket/SocketSession;->handler:Lorg/apache/mina/io/IoHandler;

    .line 79
    invoke-virtual {p2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/io/socket/SocketSession;->remoteAddress:Ljava/net/SocketAddress;

    .line 80
    invoke-virtual {p2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/io/socket/SocketSession;->localAddress:Ljava/net/SocketAddress;

    return-void
.end method


# virtual methods
.method public declared-synchronized close(Z)V
    .locals 1

    monitor-enter p0

    .line 125
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/io/socket/SocketSession;->disposed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 127
    monitor-exit p0

    return-void

    .line 130
    :cond_0
    :try_start_1
    invoke-static {}, Lorg/apache/mina/io/socket/SocketIoProcessor;->getInstance()Lorg/apache/mina/io/socket/SocketIoProcessor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/mina/io/socket/SocketIoProcessor;->removeSession(Lorg/apache/mina/io/socket/SocketSession;)V

    if-eqz p1, :cond_1

    .line 133
    :catch_0
    :goto_0
    iget-boolean p1, p0, Lorg/apache/mina/io/socket/SocketSession;->disposed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 137
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 144
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketSession;->ch:Ljava/nio/channels/SocketChannel;

    return-object v0
.end method

.method public getConfig()Lorg/apache/mina/common/SessionConfig;
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketSession;->config:Lorg/apache/mina/io/socket/SocketSessionConfig;

    return-object v0
.end method

.method public getFilterChain()Lorg/apache/mina/io/IoFilterChain;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketSession;->filterChain:Lorg/apache/mina/io/IoSessionFilterChain;

    return-object v0
.end method

.method public getHandler()Lorg/apache/mina/io/IoHandler;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketSession;->handler:Lorg/apache/mina/io/IoHandler;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketSession;->localAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method getManagerFilterChain()Lorg/apache/mina/io/IoSessionManagerFilterChain;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketSession;->managerFilterChain:Lorg/apache/mina/io/IoSessionManagerFilterChain;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketSession;->remoteAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method getSelectionKey()Ljava/nio/channels/SelectionKey;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketSession;->key:Ljava/nio/channels/SelectionKey;

    return-object v0
.end method

.method public getTransportType()Lorg/apache/mina/common/TransportType;
    .locals 1

    .line 163
    sget-object v0, Lorg/apache/mina/common/TransportType;->SOCKET:Lorg/apache/mina/common/TransportType;

    return-object v0
.end method

.method getWriteBufferQueue()Lorg/apache/mina/util/Queue;
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketSession;->writeBufferQueue:Lorg/apache/mina/util/Queue;

    return-object v0
.end method

.method getWriteMarkerQueue()Lorg/apache/mina/util/Queue;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketSession;->writeMarkerQueue:Lorg/apache/mina/util/Queue;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketSession;->ch:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v0

    return v0
.end method

.method declared-synchronized notifyClose()V
    .locals 1

    monitor-enter p0

    .line 115
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/io/socket/SocketSession;->disposed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lorg/apache/mina/io/socket/SocketSession;->disposed:Z

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setSelectionKey(Ljava/nio/channels/SelectionKey;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lorg/apache/mina/io/socket/SocketSession;->key:Ljava/nio/channels/SelectionKey;

    return-void
.end method

.method public write(Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketSession;->filterChain:Lorg/apache/mina/io/IoSessionFilterChain;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/mina/io/IoSessionFilterChain;->filterWrite(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V

    return-void
.end method
