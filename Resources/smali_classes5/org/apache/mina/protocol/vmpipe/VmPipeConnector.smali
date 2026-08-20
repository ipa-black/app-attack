.class public Lorg/apache/mina/protocol/vmpipe/VmPipeConnector;
.super Lorg/apache/mina/common/BaseSessionManager;
.source "VmPipeConnector.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolConnector;


# instance fields
.field private final filterChain:Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 32
    invoke-direct {p0}, Lorg/apache/mina/common/BaseSessionManager;-><init>()V

    .line 25
    new-instance v0, Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;

    invoke-direct {v0, p0}, Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;-><init>(Lorg/apache/mina/protocol/ProtocolSessionManager;)V

    iput-object v0, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeConnector;->filterChain:Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;

    .line 33
    new-instance v1, Lorg/apache/mina/protocol/vmpipe/VmPipeFilter;

    invoke-direct {v1}, Lorg/apache/mina/protocol/vmpipe/VmPipeFilter;-><init>()V

    const-string v2, "VMPipe"

    invoke-virtual {v0, v2, v1}, Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;->addFirst(Ljava/lang/String;Lorg/apache/mina/protocol/ProtocolFilter;)V

    return-void
.end method


# virtual methods
.method public connect(Ljava/net/SocketAddress;ILorg/apache/mina/protocol/ProtocolProvider;)Lorg/apache/mina/protocol/ProtocolSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/apache/mina/protocol/vmpipe/VmPipeConnector;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;ILorg/apache/mina/protocol/ProtocolProvider;)Lorg/apache/mina/protocol/ProtocolSession;

    move-result-object p1

    return-object p1
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;ILorg/apache/mina/protocol/ProtocolProvider;)Lorg/apache/mina/protocol/ProtocolSession;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p4, :cond_2

    .line 62
    instance-of p2, p1, Lorg/apache/mina/protocol/vmpipe/VmPipeAddress;

    if-eqz p2, :cond_1

    .line 66
    sget-object p2, Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor$Entry;

    if-eqz v5, :cond_0

    .line 70
    new-instance p1, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lorg/apache/mina/protocol/vmpipe/AnonymousVmPipeAddress;->INSTANCE:Lorg/apache/mina/protocol/vmpipe/AnonymousVmPipeAddress;

    iget-object v3, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeConnector;->filterChain:Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;

    invoke-interface {p4}, Lorg/apache/mina/protocol/ProtocolProvider;->getHandler()Lorg/apache/mina/protocol/ProtocolHandler;

    move-result-object v4

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/protocol/vmpipe/VmPipeSession;-><init>(Ljava/lang/Object;Ljava/net/SocketAddress;Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;Lorg/apache/mina/protocol/ProtocolHandler;Lorg/apache/mina/protocol/vmpipe/VmPipeAcceptor$Entry;)V

    .line 76
    sget-object p2, Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker;->INSTANCE:Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker;

    invoke-virtual {p2, p1}, Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker;->addSession(Lorg/apache/mina/protocol/vmpipe/VmPipeSession;)V

    return-object p1

    .line 68
    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string p4, "Endpoint unavailable: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 63
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "address must be VmPipeAddress."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "protocolProvider"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "address"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/protocol/ProtocolProvider;)Lorg/apache/mina/protocol/ProtocolSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x7fffffff

    .line 48
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/mina/protocol/vmpipe/VmPipeConnector;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;ILorg/apache/mina/protocol/ProtocolProvider;)Lorg/apache/mina/protocol/ProtocolSession;

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

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 43
    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/mina/protocol/vmpipe/VmPipeConnector;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;ILorg/apache/mina/protocol/ProtocolProvider;)Lorg/apache/mina/protocol/ProtocolSession;

    move-result-object p1

    return-object p1
.end method

.method public getFilterChain()Lorg/apache/mina/protocol/ProtocolFilterChain;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeConnector;->filterChain:Lorg/apache/mina/protocol/vmpipe/VmPipeSessionManagerFilterChain;

    return-object v0
.end method
