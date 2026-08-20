.class public Lorg/apache/mina/examples/sumup/Server;
.super Ljava/lang/Object;
.source "Server.java"


# static fields
.field private static final SERVER_PORT:I = 0x1f90


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 28
    new-instance p0, Lorg/apache/mina/io/filter/IoThreadPoolFilter;

    invoke-direct {p0}, Lorg/apache/mina/io/filter/IoThreadPoolFilter;-><init>()V

    .line 29
    new-instance v0, Lorg/apache/mina/protocol/filter/ProtocolThreadPoolFilter;

    invoke-direct {v0}, Lorg/apache/mina/protocol/filter/ProtocolThreadPoolFilter;-><init>()V

    .line 32
    invoke-virtual {p0}, Lorg/apache/mina/io/filter/IoThreadPoolFilter;->start()V

    .line 33
    invoke-virtual {v0}, Lorg/apache/mina/protocol/filter/ProtocolThreadPoolFilter;->start()V

    .line 35
    new-instance v1, Lorg/apache/mina/protocol/io/IoProtocolAcceptor;

    new-instance v2, Lorg/apache/mina/io/socket/SocketAcceptor;

    invoke-direct {v2}, Lorg/apache/mina/io/socket/SocketAcceptor;-><init>()V

    invoke-direct {v1, v2}, Lorg/apache/mina/protocol/io/IoProtocolAcceptor;-><init>(Lorg/apache/mina/io/IoAcceptor;)V

    .line 38
    invoke-virtual {v1}, Lorg/apache/mina/protocol/io/IoProtocolAcceptor;->getIoAcceptor()Lorg/apache/mina/io/IoAcceptor;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/io/IoAcceptor;->getFilterChain()Lorg/apache/mina/io/IoHandlerFilterChain;

    move-result-object v2

    const-string v3, "threadPool"

    invoke-interface {v2, v3, p0}, Lorg/apache/mina/io/IoHandlerFilterChain;->addFirst(Ljava/lang/String;Lorg/apache/mina/io/IoHandlerFilter;)V

    .line 40
    invoke-virtual {v1}, Lorg/apache/mina/protocol/io/IoProtocolAcceptor;->getFilterChain()Lorg/apache/mina/protocol/ProtocolHandlerFilterChain;

    move-result-object p0

    invoke-interface {p0, v3, v0}, Lorg/apache/mina/protocol/ProtocolHandlerFilterChain;->addFirst(Ljava/lang/String;Lorg/apache/mina/protocol/ProtocolHandlerFilter;)V

    .line 43
    new-instance p0, Ljava/net/InetSocketAddress;

    const/16 v0, 0x1f90

    invoke-direct {p0, v0}, Ljava/net/InetSocketAddress;-><init>(I)V

    new-instance v0, Lorg/apache/mina/examples/sumup/ServerProtocolProvider;

    invoke-direct {v0}, Lorg/apache/mina/examples/sumup/ServerProtocolProvider;-><init>()V

    invoke-virtual {v1, p0, v0}, Lorg/apache/mina/protocol/io/IoProtocolAcceptor;->bind(Ljava/net/SocketAddress;Lorg/apache/mina/protocol/ProtocolProvider;)V

    .line 45
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Listening on port 8080"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
