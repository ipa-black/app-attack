.class public Lorg/apache/mina/protocol/io/IoProtocolConnector;
.super Ljava/lang/Object;
.source "IoProtocolConnector.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolConnector;


# instance fields
.field private final adapter:Lorg/apache/mina/protocol/io/IoAdapter;

.field private final connector:Lorg/apache/mina/io/IoConnector;


# direct methods
.method public constructor <init>(Lorg/apache/mina/io/IoConnector;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/apache/mina/protocol/io/IoAdapter;

    new-instance v1, Lorg/apache/mina/protocol/io/IoProtocolSessionManagerFilterChain;

    invoke-direct {v1, p0}, Lorg/apache/mina/protocol/io/IoProtocolSessionManagerFilterChain;-><init>(Lorg/apache/mina/protocol/ProtocolSessionManager;)V

    invoke-direct {v0, v1}, Lorg/apache/mina/protocol/io/IoAdapter;-><init>(Lorg/apache/mina/protocol/io/IoProtocolSessionManagerFilterChain;)V

    iput-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolConnector;->adapter:Lorg/apache/mina/protocol/io/IoAdapter;

    if-eqz p1, :cond_0

    .line 40
    iput-object p1, p0, Lorg/apache/mina/protocol/io/IoProtocolConnector;->connector:Lorg/apache/mina/io/IoConnector;

    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "connector"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public connect(Ljava/net/SocketAddress;ILorg/apache/mina/protocol/ProtocolProvider;)Lorg/apache/mina/protocol/ProtocolSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolConnector;->connector:Lorg/apache/mina/io/IoConnector;

    iget-object v1, p0, Lorg/apache/mina/protocol/io/IoProtocolConnector;->adapter:Lorg/apache/mina/protocol/io/IoAdapter;

    invoke-virtual {v1, p3}, Lorg/apache/mina/protocol/io/IoAdapter;->adapt(Lorg/apache/mina/protocol/ProtocolProvider;)Lorg/apache/mina/io/IoHandler;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/mina/io/IoConnector;->connect(Ljava/net/SocketAddress;ILorg/apache/mina/io/IoHandler;)Lorg/apache/mina/io/IoSession;

    move-result-object p1

    .line 73
    iget-object p2, p0, Lorg/apache/mina/protocol/io/IoProtocolConnector;->adapter:Lorg/apache/mina/protocol/io/IoAdapter;

    invoke-virtual {p2, p1}, Lorg/apache/mina/protocol/io/IoAdapter;->toProtocolSession(Lorg/apache/mina/io/IoSession;)Lorg/apache/mina/protocol/ProtocolSession;

    move-result-object p1

    return-object p1
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;ILorg/apache/mina/protocol/ProtocolProvider;)Lorg/apache/mina/protocol/ProtocolSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolConnector;->connector:Lorg/apache/mina/io/IoConnector;

    iget-object v1, p0, Lorg/apache/mina/protocol/io/IoProtocolConnector;->adapter:Lorg/apache/mina/protocol/io/IoAdapter;

    invoke-virtual {v1, p4}, Lorg/apache/mina/protocol/io/IoAdapter;->adapt(Lorg/apache/mina/protocol/ProtocolProvider;)Lorg/apache/mina/io/IoHandler;

    move-result-object p4

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/mina/io/IoConnector;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;ILorg/apache/mina/io/IoHandler;)Lorg/apache/mina/io/IoSession;

    move-result-object p1

    .line 81
    iget-object p2, p0, Lorg/apache/mina/protocol/io/IoProtocolConnector;->adapter:Lorg/apache/mina/protocol/io/IoAdapter;

    invoke-virtual {p2, p1}, Lorg/apache/mina/protocol/io/IoAdapter;->toProtocolSession(Lorg/apache/mina/io/IoSession;)Lorg/apache/mina/protocol/ProtocolSession;

    move-result-object p1

    return-object p1
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/protocol/ProtocolProvider;)Lorg/apache/mina/protocol/ProtocolSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolConnector;->connector:Lorg/apache/mina/io/IoConnector;

    iget-object v1, p0, Lorg/apache/mina/protocol/io/IoProtocolConnector;->adapter:Lorg/apache/mina/protocol/io/IoAdapter;

    invoke-virtual {v1, p3}, Lorg/apache/mina/protocol/io/IoAdapter;->adapt(Lorg/apache/mina/protocol/ProtocolProvider;)Lorg/apache/mina/io/IoHandler;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/mina/io/IoConnector;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/io/IoHandler;)Lorg/apache/mina/io/IoSession;

    move-result-object p1

    .line 65
    iget-object p2, p0, Lorg/apache/mina/protocol/io/IoProtocolConnector;->adapter:Lorg/apache/mina/protocol/io/IoAdapter;

    invoke-virtual {p2, p1}, Lorg/apache/mina/protocol/io/IoAdapter;->toProtocolSession(Lorg/apache/mina/io/IoSession;)Lorg/apache/mina/protocol/ProtocolSession;

    move-result-object p1

    return-object p1
.end method

.method public connect(Ljava/net/SocketAddress;Lorg/apache/mina/protocol/ProtocolProvider;)Lorg/apache/mina/protocol/ProtocolSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolConnector;->connector:Lorg/apache/mina/io/IoConnector;

    iget-object v1, p0, Lorg/apache/mina/protocol/io/IoProtocolConnector;->adapter:Lorg/apache/mina/protocol/io/IoAdapter;

    invoke-virtual {v1, p2}, Lorg/apache/mina/protocol/io/IoAdapter;->adapt(Lorg/apache/mina/protocol/ProtocolProvider;)Lorg/apache/mina/io/IoHandler;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/io/IoConnector;->connect(Ljava/net/SocketAddress;Lorg/apache/mina/io/IoHandler;)Lorg/apache/mina/io/IoSession;

    move-result-object p1

    .line 57
    iget-object p2, p0, Lorg/apache/mina/protocol/io/IoProtocolConnector;->adapter:Lorg/apache/mina/protocol/io/IoAdapter;

    invoke-virtual {p2, p1}, Lorg/apache/mina/protocol/io/IoAdapter;->toProtocolSession(Lorg/apache/mina/io/IoSession;)Lorg/apache/mina/protocol/ProtocolSession;

    move-result-object p1

    return-object p1
.end method

.method public getExceptionMonitor()Lorg/apache/mina/common/ExceptionMonitor;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolConnector;->connector:Lorg/apache/mina/io/IoConnector;

    invoke-interface {v0}, Lorg/apache/mina/io/IoConnector;->getExceptionMonitor()Lorg/apache/mina/common/ExceptionMonitor;

    move-result-object v0

    return-object v0
.end method

.method public getFilterChain()Lorg/apache/mina/protocol/ProtocolFilterChain;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolConnector;->adapter:Lorg/apache/mina/protocol/io/IoAdapter;

    invoke-virtual {v0}, Lorg/apache/mina/protocol/io/IoAdapter;->getFilterChain()Lorg/apache/mina/protocol/ProtocolFilterChain;

    move-result-object v0

    return-object v0
.end method

.method public getIoConnector()Lorg/apache/mina/io/IoConnector;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolConnector;->connector:Lorg/apache/mina/io/IoConnector;

    return-object v0
.end method

.method public setExceptionMonitor(Lorg/apache/mina/common/ExceptionMonitor;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolConnector;->connector:Lorg/apache/mina/io/IoConnector;

    invoke-interface {v0, p1}, Lorg/apache/mina/io/IoConnector;->setExceptionMonitor(Lorg/apache/mina/common/ExceptionMonitor;)V

    return-void
.end method
