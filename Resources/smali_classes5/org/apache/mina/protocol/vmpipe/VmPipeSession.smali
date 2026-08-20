.class Lorg/apache/mina/protocol/vmpipe/VmPipeSession;
.super Lorg/apache/mina/common/BaseSession;
.source "VmPipeSession.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolSession;


# instance fields
.field closed:Z

.field private final config:Lorg/apache/mina/protocol/vmpipe/VmPipeSessionConfig;

.field private final filterChain:Lorg/apache/mina/protocol/ProtocolSessionFilterChain;

.field private final handler:Lorg/apache/mina/protocol/ProtocolHandler;

.field private final localAddress:Ljava/net/SocketAddress;

.field final lock:Ljava/lang/Object;

.field private final managerFilterChain:Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;

.field private final remoteAddress:Ljava/net/SocketAddress;

.field final remoteSession:Lorg/apache/mina/protocol/vmpipe/VmPipeSession;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/net/SocketAddress;Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;Lorg/apache/mina/protocol/ProtocolHandler;Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lorg/apache/mina/common/BaseSession;-><init>()V

    .line 35
    new-instance v0, Lorg/apache/mina/protocol/vmpipe/VmPipeSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/protocol/vmpipe/VmPipeSessionConfig;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->config:Lorg/apache/mina/protocol/vmpipe/VmPipeSessionConfig;

    .line 55
    iput-object p1, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->lock:Ljava/lang/Object;

    .line 56
    iput-object p2, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->localAddress:Ljava/net/SocketAddress;

    .line 57
    iget-object p1, p5, Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor$Entry;->address:Lorg/apache/mina/protocol/vmpipe/VmPipeAddress;

    iput-object p1, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->remoteAddress:Ljava/net/SocketAddress;

    .line 58
    iput-object p4, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->handler:Lorg/apache/mina/protocol/ProtocolHandler;

    .line 59
    new-instance p1, Lorg/apache/mina/protocol/ProtocolSessionFilterChain;

    invoke-direct {p1, p3}, Lorg/apache/mina/protocol/ProtocolSessionFilterChain;-><init>(Lorg/apache/mina/protocol/ProtocolSessionManagerFilterChain;)V

    iput-object p1, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->filterChain:Lorg/apache/mina/protocol/ProtocolSessionFilterChain;

    .line 60
    iput-object p3, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->managerFilterChain:Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;

    .line 62
    new-instance p1, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;

    invoke-direct {p1, p0, p5}, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;-><init>(Lorg/apache/mina/protocol/vmpipe/VmPipeSession;Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor$Entry;)V

    iput-object p1, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->remoteSession:Lorg/apache/mina/protocol/vmpipe/VmPipeSession;

    .line 67
    :try_start_0
    iget-object p2, p5, Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor$Entry;->handler:Lorg/apache/mina/protocol/ProtocolHandler;

    invoke-interface {p2, p1}, Lorg/apache/mina/protocol/ProtocolHandler;->sessionCreated(Lorg/apache/mina/protocol/ProtocolSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 80
    :try_start_1
    invoke-interface {p4, p0}, Lorg/apache/mina/protocol/ProtocolHandler;->sessionCreated(Lorg/apache/mina/protocol/ProtocolSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 84
    invoke-static {p1}, Lorg/apache/mina/util/ExceptionUtil;->throwException(Ljava/lang/Throwable;)V

    .line 87
    :goto_0
    iget-object p1, p5, Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor$Entry;->managerFilterChain:Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;

    iget-object p2, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->remoteSession:Lorg/apache/mina/protocol/vmpipe/VmPipeSession;

    invoke-virtual {p1, p2}, Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;->sessionOpened(Lorg/apache/mina/protocol/ProtocolSession;)V

    .line 88
    invoke-virtual {p3, p0}, Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;->sessionOpened(Lorg/apache/mina/protocol/ProtocolSession;)V

    return-void

    :catchall_1
    move-exception p1

    .line 71
    iget-object p2, p5, Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor$Entry;->acceptor:Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor;

    invoke-virtual {p2}, Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor;->getExceptionMonitor()Lorg/apache/mina/common/ExceptionMonitor;

    move-result-object p2

    iget-object p3, p5, Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor$Entry;->acceptor:Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor;

    invoke-interface {p2, p3, p1}, Lorg/apache/mina/common/ExceptionMonitor;->exceptionCaught(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 72
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Failed to initialize remote session."

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 74
    throw p2
.end method

.method constructor <init>(Lorg/apache/mina/protocol/vmpipe/VmPipeSession;Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor$Entry;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Lorg/apache/mina/common/BaseSession;-><init>()V

    .line 35
    new-instance v0, Lorg/apache/mina/protocol/vmpipe/VmPipeSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/protocol/vmpipe/VmPipeSessionConfig;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->config:Lorg/apache/mina/protocol/vmpipe/VmPipeSessionConfig;

    .line 96
    iget-object v0, p1, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->lock:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->lock:Ljava/lang/Object;

    .line 97
    iget-object v0, p1, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->remoteAddress:Ljava/net/SocketAddress;

    iput-object v0, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->localAddress:Ljava/net/SocketAddress;

    .line 98
    iget-object v0, p1, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->localAddress:Ljava/net/SocketAddress;

    iput-object v0, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->remoteAddress:Ljava/net/SocketAddress;

    .line 99
    iget-object v0, p2, Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor$Entry;->handler:Lorg/apache/mina/protocol/ProtocolHandler;

    iput-object v0, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->handler:Lorg/apache/mina/protocol/ProtocolHandler;

    .line 100
    iget-object v0, p2, Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor$Entry;->managerFilterChain:Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;

    iput-object v0, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->managerFilterChain:Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;

    .line 101
    new-instance v0, Lorg/apache/mina/protocol/ProtocolSessionFilterChain;

    iget-object p2, p2, Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor$Entry;->managerFilterChain:Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;

    invoke-direct {v0, p2}, Lorg/apache/mina/protocol/ProtocolSessionFilterChain;-><init>(Lorg/apache/mina/protocol/ProtocolSessionManagerFilterChain;)V

    iput-object v0, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->filterChain:Lorg/apache/mina/protocol/ProtocolSessionFilterChain;

    .line 102
    iput-object p1, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->remoteSession:Lorg/apache/mina/protocol/vmpipe/VmPipeSession;

    return-void
.end method


# virtual methods
.method public close(Z)V
    .locals 2

    .line 132
    iget-object p1, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 134
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->closed:Z

    if-eqz v0, :cond_0

    .line 135
    monitor-exit p1

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->remoteSession:Lorg/apache/mina/protocol/vmpipe/VmPipeSession;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->closed:Z

    iput-boolean v1, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->closed:Z

    .line 138
    iget-object v0, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->managerFilterChain:Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;

    invoke-virtual {v0, p0}, Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;->sessionClosed(Lorg/apache/mina/protocol/ProtocolSession;)V

    .line 139
    iget-object v0, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->remoteSession:Lorg/apache/mina/protocol/vmpipe/VmPipeSession;

    invoke-virtual {v0}, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->getManagerFilterChain()Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->remoteSession:Lorg/apache/mina/protocol/vmpipe/VmPipeSession;

    invoke-virtual {v0, v1}, Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;->sessionClosed(Lorg/apache/mina/protocol/ProtocolSession;)V

    .line 140
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConfig()Lorg/apache/mina/common/SessionConfig;
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->config:Lorg/apache/mina/protocol/vmpipe/VmPipeSessionConfig;

    return-object v0
.end method

.method public getDecoder()Lorg/apache/mina/protocol/ProtocolDecoder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEncoder()Lorg/apache/mina/protocol/ProtocolEncoder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilterChain()Lorg/apache/mina/protocol/ProtocolFilterChain;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->filterChain:Lorg/apache/mina/protocol/ProtocolSessionFilterChain;

    return-object v0
.end method

.method public getHandler()Lorg/apache/mina/protocol/ProtocolHandler;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->handler:Lorg/apache/mina/protocol/ProtocolHandler;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->localAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method getManagerFilterChain()Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->managerFilterChain:Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->remoteAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public getTransportType()Lorg/apache/mina/common/TransportType;
    .locals 1

    .line 150
    sget-object v0, Lorg/apache/mina/common/TransportType;->VM_PIPE:Lorg/apache/mina/common/TransportType;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public write(Ljava/lang/Object;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;->filterChain:Lorg/apache/mina/protocol/ProtocolSessionFilterChain;

    invoke-virtual {v0, p0, p1}, Lorg/apache/mina/protocol/ProtocolSessionFilterChain;->filterWrite(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    return-void
.end method
