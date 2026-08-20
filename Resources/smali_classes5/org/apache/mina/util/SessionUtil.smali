.class public Lorg/apache/mina/util/SessionUtil;
.super Ljava/lang/Object;
.source "SessionUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Lorg/apache/mina/common/Session;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 39
    invoke-interface {p0}, Lorg/apache/mina/common/Session;->getConfig()Lorg/apache/mina/common/SessionConfig;

    move-result-object p0

    .line 40
    instance-of v0, p0, Lorg/apache/mina/io/socket/SocketSessionConfig;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 42
    check-cast p0, Lorg/apache/mina/io/socket/SocketSessionConfig;

    .line 43
    invoke-virtual {p0, v1}, Lorg/apache/mina/io/socket/SocketSessionConfig;->setReuseAddress(Z)V

    .line 44
    invoke-virtual {p0, v1}, Lorg/apache/mina/io/socket/SocketSessionConfig;->setKeepAlive(Z)V

    goto :goto_0

    .line 46
    :cond_0
    instance-of v0, p0, Lorg/apache/mina/io/datagram/DatagramSessionConfig;

    if-eqz v0, :cond_1

    .line 48
    check-cast p0, Lorg/apache/mina/io/datagram/DatagramSessionConfig;

    .line 49
    invoke-virtual {p0, v1}, Lorg/apache/mina/io/datagram/DatagramSessionConfig;->setReuseAddress(Z)V

    :cond_1
    :goto_0
    return-void
.end method
