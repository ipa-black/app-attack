.class public Lorg/apache/mina/examples/sumup/Client;
.super Ljava/lang/Object;
.source "Client.java"


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x1e

.field private static final HOSTNAME:Ljava/lang/String; = "localhost"

.field private static final PORT:I = 0x1f90


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 32
    array-length v0, p0

    if-nez v0, :cond_0

    .line 34
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Please specify the list of any integers"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 39
    :cond_0
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 40
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 42
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_1
    new-instance p0, Lorg/apache/mina/io/filter/IoThreadPoolFilter;

    invoke-direct {p0}, Lorg/apache/mina/io/filter/IoThreadPoolFilter;-><init>()V

    .line 49
    new-instance v1, Lorg/apache/mina/protocol/filter/ProtocolThreadPoolFilter;

    invoke-direct {v1}, Lorg/apache/mina/protocol/filter/ProtocolThreadPoolFilter;-><init>()V

    .line 52
    invoke-virtual {p0}, Lorg/apache/mina/io/filter/IoThreadPoolFilter;->start()V

    .line 53
    invoke-virtual {v1}, Lorg/apache/mina/protocol/filter/ProtocolThreadPoolFilter;->start()V

    .line 55
    new-instance v2, Lorg/apache/mina/protocol/io/IoProtocolConnector;

    new-instance v3, Lorg/apache/mina/io/socket/SocketConnector;

    invoke-direct {v3}, Lorg/apache/mina/io/socket/SocketConnector;-><init>()V

    invoke-direct {v2, v3}, Lorg/apache/mina/protocol/io/IoProtocolConnector;-><init>(Lorg/apache/mina/io/IoConnector;)V

    .line 57
    invoke-virtual {v2}, Lorg/apache/mina/protocol/io/IoProtocolConnector;->getIoConnector()Lorg/apache/mina/io/IoConnector;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/mina/io/IoConnector;->getFilterChain()Lorg/apache/mina/io/IoHandlerFilterChain;

    move-result-object v3

    const-string v4, "threadPool"

    invoke-interface {v3, v4, p0}, Lorg/apache/mina/io/IoHandlerFilterChain;->addFirst(Ljava/lang/String;Lorg/apache/mina/io/IoHandlerFilter;)V

    .line 59
    invoke-virtual {v2}, Lorg/apache/mina/protocol/io/IoProtocolConnector;->getFilterChain()Lorg/apache/mina/protocol/ProtocolHandlerFilterChain;

    move-result-object v3

    invoke-interface {v3, v4, v1}, Lorg/apache/mina/protocol/ProtocolHandlerFilterChain;->addFirst(Ljava/lang/String;Lorg/apache/mina/protocol/ProtocolHandlerFilter;)V

    .line 62
    new-instance v3, Lorg/apache/mina/examples/sumup/ClientProtocolProvider;

    invoke-direct {v3, v0}, Lorg/apache/mina/examples/sumup/ClientProtocolProvider;-><init>([I)V

    .line 69
    :goto_1
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    const-string v4, "localhost"

    const/16 v5, 0x1f90

    invoke-direct {v0, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x1e

    invoke-virtual {v2, v0, v4, v3}, Lorg/apache/mina/protocol/io/IoProtocolConnector;->connect(Ljava/net/SocketAddress;ILorg/apache/mina/protocol/ProtocolProvider;)Lorg/apache/mina/protocol/ProtocolSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_2
    invoke-interface {v0}, Lorg/apache/mina/protocol/ProtocolSession;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x64

    .line 84
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_2

    .line 87
    :cond_2
    invoke-virtual {p0}, Lorg/apache/mina/io/filter/IoThreadPoolFilter;->stop()V

    .line 88
    invoke-virtual {v1}, Lorg/apache/mina/protocol/filter/ProtocolThreadPoolFilter;->stop()V

    return-void

    :catch_0
    move-exception v0

    .line 75
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Failed to connect."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-wide/16 v4, 0x1388

    .line 77
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1
.end method
