.class public Lorg/apache/mina/examples/registry/Main;
.super Ljava/lang/Object;
.source "Main.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
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

    .line 26
    new-instance p0, Lorg/apache/mina/registry/SimpleServiceRegistry;

    invoke-direct {p0}, Lorg/apache/mina/registry/SimpleServiceRegistry;-><init>()V

    .line 29
    new-instance v0, Lorg/apache/mina/registry/Service;

    sget-object v1, Lorg/apache/mina/common/TransportType;->SOCKET:Lorg/apache/mina/common/TransportType;

    const-string v2, "echo"

    const/16 v3, 0x1f90

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/mina/registry/Service;-><init>(Ljava/lang/String;Lorg/apache/mina/common/TransportType;I)V

    new-instance v1, Lorg/apache/mina/examples/echoserver/EchoProtocolHandler;

    invoke-direct {v1}, Lorg/apache/mina/examples/echoserver/EchoProtocolHandler;-><init>()V

    invoke-interface {p0, v0, v1}, Lorg/apache/mina/registry/ServiceRegistry;->bind(Lorg/apache/mina/registry/Service;Lorg/apache/mina/io/IoHandler;)V

    .line 31
    new-instance v0, Lorg/apache/mina/registry/Service;

    sget-object v1, Lorg/apache/mina/common/TransportType;->DATAGRAM:Lorg/apache/mina/common/TransportType;

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/mina/registry/Service;-><init>(Ljava/lang/String;Lorg/apache/mina/common/TransportType;I)V

    new-instance v1, Lorg/apache/mina/examples/echoserver/EchoProtocolHandler;

    invoke-direct {v1}, Lorg/apache/mina/examples/echoserver/EchoProtocolHandler;-><init>()V

    invoke-interface {p0, v0, v1}, Lorg/apache/mina/registry/ServiceRegistry;->bind(Lorg/apache/mina/registry/Service;Lorg/apache/mina/io/IoHandler;)V

    .line 35
    new-instance v0, Lorg/apache/mina/registry/Service;

    sget-object v1, Lorg/apache/mina/common/TransportType;->SOCKET:Lorg/apache/mina/common/TransportType;

    const-string v2, "reverse"

    const/16 v3, 0x1f91

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/mina/registry/Service;-><init>(Ljava/lang/String;Lorg/apache/mina/common/TransportType;I)V

    new-instance v1, Lorg/apache/mina/examples/reverser/ReverseProtocolProvider;

    invoke-direct {v1}, Lorg/apache/mina/examples/reverser/ReverseProtocolProvider;-><init>()V

    invoke-interface {p0, v0, v1}, Lorg/apache/mina/registry/ServiceRegistry;->bind(Lorg/apache/mina/registry/Service;Lorg/apache/mina/protocol/ProtocolProvider;)V

    .line 37
    new-instance v0, Lorg/apache/mina/registry/Service;

    sget-object v1, Lorg/apache/mina/common/TransportType;->DATAGRAM:Lorg/apache/mina/common/TransportType;

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/mina/registry/Service;-><init>(Ljava/lang/String;Lorg/apache/mina/common/TransportType;I)V

    new-instance v1, Lorg/apache/mina/examples/reverser/ReverseProtocolProvider;

    invoke-direct {v1}, Lorg/apache/mina/examples/reverser/ReverseProtocolProvider;-><init>()V

    invoke-interface {p0, v0, v1}, Lorg/apache/mina/registry/ServiceRegistry;->bind(Lorg/apache/mina/registry/Service;Lorg/apache/mina/protocol/ProtocolProvider;)V

    .line 40
    new-instance v0, Lorg/apache/mina/registry/Service;

    sget-object v1, Lorg/apache/mina/common/TransportType;->VM_PIPE:Lorg/apache/mina/common/TransportType;

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/mina/registry/Service;-><init>(Ljava/lang/String;Lorg/apache/mina/common/TransportType;I)V

    new-instance v1, Lorg/apache/mina/examples/reverser/ReverseProtocolProvider;

    invoke-direct {v1}, Lorg/apache/mina/examples/reverser/ReverseProtocolProvider;-><init>()V

    invoke-interface {p0, v0, v1}, Lorg/apache/mina/registry/ServiceRegistry;->bind(Lorg/apache/mina/registry/Service;Lorg/apache/mina/protocol/ProtocolProvider;)V

    .line 43
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {p0}, Lorg/apache/mina/registry/ServiceRegistry;->getAllServices()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method
