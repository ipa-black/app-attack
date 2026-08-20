.class public Lorg/apache/mina/protocol/io/IoProtocolAcceptor;
.super Ljava/lang/Object;
.source "IoProtocolAcceptor.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolAcceptor;


# instance fields
.field private final acceptor:Lorg/apache/mina/io/IoAcceptor;

.field private final adapter:Lorg/apache/mina/protocol/io/IoAdapter;


# direct methods
.method public constructor <init>(Lorg/apache/mina/io/IoAcceptor;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/apache/mina/protocol/io/IoAdapter;

    new-instance v1, Lorg/apache/mina/protocol/io/IoProtocolSessionManagerFilterChain;

    invoke-direct {v1, p0}, Lorg/apache/mina/protocol/io/IoProtocolSessionManagerFilterChain;-><init>(Lorg/apache/mina/protocol/ProtocolSessionManager;)V

    invoke-direct {v0, v1}, Lorg/apache/mina/protocol/io/IoAdapter;-><init>(Lorg/apache/mina/protocol/io/IoProtocolSessionManagerFilterChain;)V

    iput-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolAcceptor;->adapter:Lorg/apache/mina/protocol/io/IoAdapter;

    if-eqz p1, :cond_0

    .line 41
    iput-object p1, p0, Lorg/apache/mina/protocol/io/IoProtocolAcceptor;->acceptor:Lorg/apache/mina/io/IoAcceptor;

    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "acceptor"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;Lorg/apache/mina/protocol/ProtocolProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolAcceptor;->acceptor:Lorg/apache/mina/io/IoAcceptor;

    iget-object v1, p0, Lorg/apache/mina/protocol/io/IoProtocolAcceptor;->adapter:Lorg/apache/mina/protocol/io/IoAdapter;

    invoke-virtual {v1, p2}, Lorg/apache/mina/protocol/io/IoAdapter;->adapt(Lorg/apache/mina/protocol/ProtocolProvider;)Lorg/apache/mina/io/IoHandler;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/io/IoAcceptor;->bind(Ljava/net/SocketAddress;Lorg/apache/mina/io/IoHandler;)V

    return-void
.end method

.method public getExceptionMonitor()Lorg/apache/mina/common/ExceptionMonitor;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolAcceptor;->acceptor:Lorg/apache/mina/io/IoAcceptor;

    invoke-interface {v0}, Lorg/apache/mina/io/IoAcceptor;->getExceptionMonitor()Lorg/apache/mina/common/ExceptionMonitor;

    move-result-object v0

    return-object v0
.end method

.method public getFilterChain()Lorg/apache/mina/protocol/ProtocolFilterChain;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolAcceptor;->adapter:Lorg/apache/mina/protocol/io/IoAdapter;

    invoke-virtual {v0}, Lorg/apache/mina/protocol/io/IoAdapter;->getFilterChain()Lorg/apache/mina/protocol/ProtocolFilterChain;

    move-result-object v0

    return-object v0
.end method

.method public getIoAcceptor()Lorg/apache/mina/io/IoAcceptor;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolAcceptor;->acceptor:Lorg/apache/mina/io/IoAcceptor;

    return-object v0
.end method

.method public setExceptionMonitor(Lorg/apache/mina/common/ExceptionMonitor;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolAcceptor;->acceptor:Lorg/apache/mina/io/IoAcceptor;

    invoke-interface {v0, p1}, Lorg/apache/mina/io/IoAcceptor;->setExceptionMonitor(Lorg/apache/mina/common/ExceptionMonitor;)V

    return-void
.end method

.method public unbind(Ljava/net/SocketAddress;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolAcceptor;->acceptor:Lorg/apache/mina/io/IoAcceptor;

    invoke-interface {v0, p1}, Lorg/apache/mina/io/IoAcceptor;->unbind(Ljava/net/SocketAddress;)V

    return-void
.end method
