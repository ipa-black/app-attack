.class public Lorg/apache/mina/examples/netcat/Main;
.super Ljava/lang/Object;
.source "Main.java"


# static fields
.field static synthetic class$org$apache$mina$examples$netcat$Main:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 39
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    array-length v0, p0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 39
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lorg/apache/mina/examples/netcat/Main;->class$org$apache$mina$examples$netcat$Main:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.apache.mina.examples.netcat.Main"

    invoke-static {v1}, Lorg/apache/mina/examples/netcat/Main;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/examples/netcat/Main;->class$org$apache$mina$examples$netcat$Main:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " <hostname> <port>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 44
    :cond_1
    new-instance v0, Lorg/apache/mina/io/socket/SocketConnector;

    invoke-direct {v0}, Lorg/apache/mina/io/socket/SocketConnector;-><init>()V

    .line 47
    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    const/4 v3, 0x1

    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v1, v2, p0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance p0, Lorg/apache/mina/examples/netcat/NetCatProtocolHandler;

    invoke-direct {p0}, Lorg/apache/mina/examples/netcat/NetCatProtocolHandler;-><init>()V

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2, p0}, Lorg/apache/mina/io/socket/SocketConnector;->connect(Ljava/net/SocketAddress;ILorg/apache/mina/io/IoHandler;)Lorg/apache/mina/io/IoSession;

    return-void
.end method
