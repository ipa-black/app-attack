.class Lorg/apache/mina/io/datagram/DatagramSession;
.super Lorg/apache/mina/common/BaseSession;
.source "DatagramSession.java"

# interfaces
.implements Lorg/apache/mina/io/IoSession;


# instance fields
.field private final ch:Ljava/nio/channels/DatagramChannel;

.field private final config:Lorg/apache/mina/io/datagram/DatagramSessionConfig;

.field private disposed:Z

.field private final filterChain:Lorg/apache/mina/io/IoSessionFilterChain;

.field private final handler:Lorg/apache/mina/io/IoHandler;

.field private key:Ljava/nio/channels/SelectionKey;

.field private final localAddress:Ljava/net/SocketAddress;

.field private final managerFilterChain:Lorg/apache/mina/io/IoSessionManagerFilterChain;

.field private remoteAddress:Ljava/net/SocketAddress;

.field private final writeBufferQueue:Lorg/apache/mina/util/Queue;

.field private final writeMarkerQueue:Lorg/apache/mina/util/Queue;


# direct methods
.method constructor <init>(Lorg/apache/mina/io/IoSessionManagerFilterChain;Ljava/nio/channels/DatagramChannel;Lorg/apache/mina/io/IoHandler;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Lorg/apache/mina/common/BaseSession;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/apache/mina/io/datagram/DatagramSession;->managerFilterChain:Lorg/apache/mina/io/IoSessionManagerFilterChain;

    .line 74
    new-instance v0, Lorg/apache/mina/io/IoSessionFilterChain;

    invoke-direct {v0, p1}, Lorg/apache/mina/io/IoSessionFilterChain;-><init>(Lorg/apache/mina/io/IoSessionManagerFilterChain;)V

    iput-object v0, p0, Lorg/apache/mina/io/datagram/DatagramSession;->filterChain:Lorg/apache/mina/io/IoSessionFilterChain;

    .line 75
    iput-object p2, p0, Lorg/apache/mina/io/datagram/DatagramSession;->ch:Ljava/nio/channels/DatagramChannel;

    .line 76
    new-instance p1, Lorg/apache/mina/io/datagram/DatagramSessionConfig;

    invoke-direct {p1, p2}, Lorg/apache/mina/io/datagram/DatagramSessionConfig;-><init>(Ljava/nio/channels/DatagramChannel;)V

    iput-object p1, p0, Lorg/apache/mina/io/datagram/DatagramSession;->config:Lorg/apache/mina/io/datagram/DatagramSessionConfig;

    .line 77
    new-instance p1, Lorg/apache/mina/util/Queue;

    invoke-direct {p1}, Lorg/apache/mina/util/Queue;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/io/datagram/DatagramSession;->writeBufferQueue:Lorg/apache/mina/util/Queue;

    .line 78
    new-instance p1, Lorg/apache/mina/util/Queue;

    invoke-direct {p1}, Lorg/apache/mina/util/Queue;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/io/datagram/DatagramSession;->writeMarkerQueue:Lorg/apache/mina/util/Queue;

    .line 79
    iput-object p3, p0, Lorg/apache/mina/io/datagram/DatagramSession;->handler:Lorg/apache/mina/io/IoHandler;

    .line 80
    invoke-virtual {p2}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/io/datagram/DatagramSession;->remoteAddress:Ljava/net/SocketAddress;

    .line 81
    invoke-virtual {p2}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/io/datagram/DatagramSession;->localAddress:Ljava/net/SocketAddress;

    return-void
.end method


# virtual methods
.method public declared-synchronized close(Z)V
    .locals 2

    monitor-enter p0

    .line 125
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/io/datagram/DatagramSession;->disposed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 127
    monitor-exit p0

    return-void

    .line 130
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramSession;->managerFilterChain:Lorg/apache/mina/io/IoSessionManagerFilterChain;

    invoke-virtual {v0}, Lorg/apache/mina/io/IoSessionManagerFilterChain;->getManager()Lorg/apache/mina/io/IoSessionManager;

    move-result-object v0

    .line 131
    instance-of v1, v0, Lorg/apache/mina/io/datagram/DatagramConnector;

    if-eqz v1, :cond_1

    .line 133
    check-cast v0, Lorg/apache/mina/io/datagram/DatagramConnector;

    invoke-virtual {v0, p0}, Lorg/apache/mina/io/datagram/DatagramConnector;->closeSession(Lorg/apache/mina/io/datagram/DatagramSession;)V

    if-eqz p1, :cond_1

    .line 136
    :catch_0
    :goto_0
    iget-boolean p1, p0, Lorg/apache/mina/io/datagram/DatagramSession;->disposed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 140
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 148
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getChannel()Ljava/nio/channels/DatagramChannel;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramSession;->ch:Ljava/nio/channels/DatagramChannel;

    return-object v0
.end method

.method public getConfig()Lorg/apache/mina/common/SessionConfig;
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramSession;->config:Lorg/apache/mina/io/datagram/DatagramSessionConfig;

    return-object v0
.end method

.method public getFilterChain()Lorg/apache/mina/io/IoFilterChain;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramSession;->filterChain:Lorg/apache/mina/io/IoSessionFilterChain;

    return-object v0
.end method

.method public getHandler()Lorg/apache/mina/io/IoHandler;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramSession;->handler:Lorg/apache/mina/io/IoHandler;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramSession;->localAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method getManagerFilterChain()Lorg/apache/mina/io/IoSessionManagerFilterChain;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramSession;->managerFilterChain:Lorg/apache/mina/io/IoSessionManagerFilterChain;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramSession;->remoteAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method getSelectionKey()Ljava/nio/channels/SelectionKey;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramSession;->key:Ljava/nio/channels/SelectionKey;

    return-object v0
.end method

.method public getTransportType()Lorg/apache/mina/common/TransportType;
    .locals 1

    .line 167
    sget-object v0, Lorg/apache/mina/common/TransportType;->DATAGRAM:Lorg/apache/mina/common/TransportType;

    return-object v0
.end method

.method getWriteBufferQueue()Lorg/apache/mina/util/Queue;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramSession;->writeBufferQueue:Lorg/apache/mina/util/Queue;

    return-object v0
.end method

.method getWriteMarkerQueue()Lorg/apache/mina/util/Queue;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramSession;->writeMarkerQueue:Lorg/apache/mina/util/Queue;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramSession;->ch:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->isConnected()Z

    move-result v0

    return v0
.end method

.method declared-synchronized notifyClose()V
    .locals 1

    monitor-enter p0

    .line 116
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/io/datagram/DatagramSession;->disposed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lorg/apache/mina/io/datagram/DatagramSession;->disposed:Z

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setRemoteAddress(Ljava/net/SocketAddress;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lorg/apache/mina/io/datagram/DatagramSession;->remoteAddress:Ljava/net/SocketAddress;

    return-void
.end method

.method setSelectionKey(Ljava/nio/channels/SelectionKey;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lorg/apache/mina/io/datagram/DatagramSession;->key:Ljava/nio/channels/SelectionKey;

    return-void
.end method

.method public write(Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramSession;->filterChain:Lorg/apache/mina/io/IoSessionFilterChain;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/mina/io/IoSessionFilterChain;->filterWrite(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V

    return-void
.end method
