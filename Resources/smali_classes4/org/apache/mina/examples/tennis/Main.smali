.class public Lorg/apache/mina/examples/tennis/Main;
.super Ljava/lang/Object;
.source "Main.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    new-instance p0, Lorg/apache/mina/registry/SimpleServiceRegistry;

    invoke-direct {p0}, Lorg/apache/mina/registry/SimpleServiceRegistry;-><init>()V

    .line 35
    new-instance v0, Lorg/apache/mina/protocol/vmpipe/VmPipeAddress;

    const/16 v1, 0x1f90

    invoke-direct {v0, v1}, Lorg/apache/mina/protocol/vmpipe/VmPipeAddress;-><init>(I)V

    .line 38
    new-instance v1, Lorg/apache/mina/registry/Service;

    const-string v2, "tennis"

    sget-object v3, Lorg/apache/mina/common/TransportType;->VM_PIPE:Lorg/apache/mina/common/TransportType;

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/mina/registry/Service;-><init>(Ljava/lang/String;Lorg/apache/mina/common/TransportType;Ljava/net/SocketAddress;)V

    .line 39
    new-instance v2, Lorg/apache/mina/examples/tennis/TennisPlayer;

    invoke-direct {v2}, Lorg/apache/mina/examples/tennis/TennisPlayer;-><init>()V

    invoke-interface {p0, v1, v2}, Lorg/apache/mina/registry/ServiceRegistry;->bind(Lorg/apache/mina/registry/Service;Lorg/apache/mina/protocol/ProtocolProvider;)V

    .line 42
    new-instance v2, Lorg/apache/mina/protocol/vmpipe/VmPipeConnector;

    invoke-direct {v2}, Lorg/apache/mina/protocol/vmpipe/VmPipeConnector;-><init>()V

    .line 43
    new-instance v3, Lorg/apache/mina/examples/tennis/TennisPlayer;

    invoke-direct {v3}, Lorg/apache/mina/examples/tennis/TennisPlayer;-><init>()V

    invoke-virtual {v2, v0, v3}, Lorg/apache/mina/protocol/vmpipe/VmPipeConnector;->connect(Ljava/net/SocketAddress;Lorg/apache/mina/protocol/ProtocolProvider;)Lorg/apache/mina/protocol/ProtocolSession;

    move-result-object v0

    .line 47
    new-instance v2, Lorg/apache/mina/examples/tennis/TennisBall;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lorg/apache/mina/examples/tennis/TennisBall;-><init>(I)V

    invoke-interface {v0, v2}, Lorg/apache/mina/protocol/ProtocolSession;->write(Ljava/lang/Object;)V

    .line 50
    :goto_0
    invoke-interface {v0}, Lorg/apache/mina/protocol/ProtocolSession;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x64

    .line 52
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-interface {p0, v1}, Lorg/apache/mina/registry/ServiceRegistry;->unbind(Lorg/apache/mina/registry/Service;)V

    return-void
.end method
