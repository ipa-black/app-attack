.class public Lorg/apache/mina/examples/reverser/Main;
.super Ljava/lang/Object;
.source "Main.java"


# static fields
.field private static final PORT:I = 0x1f90


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLogger(Lorg/apache/mina/registry/ServiceRegistry;)V
    .locals 2

    .line 53
    sget-object v0, Lorg/apache/mina/common/TransportType;->SOCKET:Lorg/apache/mina/common/TransportType;

    invoke-interface {p0, v0}, Lorg/apache/mina/registry/ServiceRegistry;->getProtocolAcceptor(Lorg/apache/mina/common/TransportType;)Lorg/apache/mina/protocol/ProtocolAcceptor;

    move-result-object p0

    .line 54
    invoke-interface {p0}, Lorg/apache/mina/protocol/ProtocolAcceptor;->getFilterChain()Lorg/apache/mina/protocol/ProtocolFilterChain;

    move-result-object p0

    new-instance v0, Lorg/apache/mina/protocol/filter/ProtocolLoggingFilter;

    invoke-direct {v0}, Lorg/apache/mina/protocol/filter/ProtocolLoggingFilter;-><init>()V

    const-string v1, "logger"

    invoke-interface {p0, v1, v0}, Lorg/apache/mina/protocol/ProtocolFilterChain;->addLast(Ljava/lang/String;Lorg/apache/mina/protocol/ProtocolFilter;)V

    .line 55
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Logging ON"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    new-instance p0, Lorg/apache/mina/registry/SimpleServiceRegistry;

    invoke-direct {p0}, Lorg/apache/mina/registry/SimpleServiceRegistry;-><init>()V

    .line 43
    invoke-static {p0}, Lorg/apache/mina/examples/reverser/Main;->addLogger(Lorg/apache/mina/registry/ServiceRegistry;)V

    .line 45
    new-instance v0, Lorg/apache/mina/registry/Service;

    sget-object v1, Lorg/apache/mina/common/TransportType;->SOCKET:Lorg/apache/mina/common/TransportType;

    const/16 v2, 0x1f90

    const-string v3, "reverse"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/mina/registry/Service;-><init>(Ljava/lang/String;Lorg/apache/mina/common/TransportType;I)V

    .line 46
    new-instance v1, Lorg/apache/mina/examples/reverser/ReverseProtocolProvider;

    invoke-direct {v1}, Lorg/apache/mina/examples/reverser/ReverseProtocolProvider;-><init>()V

    invoke-interface {p0, v0, v1}, Lorg/apache/mina/registry/ServiceRegistry;->bind(Lorg/apache/mina/registry/Service;Lorg/apache/mina/protocol/ProtocolProvider;)V

    .line 48
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Listening on port 8080"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
