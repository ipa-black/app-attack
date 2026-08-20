.class public Lorg/apache/mina/examples/echoserver/Main;
.super Ljava/lang/Object;
.source "Main.java"


# static fields
.field private static final PORT:I = 0x1f90

.field private static final USE_SSL:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLogger(Lorg/apache/mina/registry/ServiceRegistry;)V
    .locals 2

    .line 75
    sget-object v0, Lorg/apache/mina/common/TransportType;->SOCKET:Lorg/apache/mina/common/TransportType;

    invoke-interface {p0, v0}, Lorg/apache/mina/registry/ServiceRegistry;->getIoAcceptor(Lorg/apache/mina/common/TransportType;)Lorg/apache/mina/io/IoAcceptor;

    move-result-object p0

    .line 76
    invoke-interface {p0}, Lorg/apache/mina/io/IoAcceptor;->getFilterChain()Lorg/apache/mina/io/IoFilterChain;

    move-result-object p0

    new-instance v0, Lorg/apache/mina/io/filter/IoLoggingFilter;

    invoke-direct {v0}, Lorg/apache/mina/io/filter/IoLoggingFilter;-><init>()V

    const-string v1, "logger"

    invoke-interface {p0, v1, v0}, Lorg/apache/mina/io/IoFilterChain;->addLast(Ljava/lang/String;Lorg/apache/mina/io/IoFilter;)V

    .line 77
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Logging ON"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static addSSLSupport(Lorg/apache/mina/registry/ServiceRegistry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    new-instance v0, Lorg/apache/mina/io/filter/SSLFilter;

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/apache/mina/examples/echoserver/ssl/BogusSSLContextFactory;->getInstance(Z)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/mina/io/filter/SSLFilter;-><init>(Ljavax/net/ssl/SSLContext;)V

    .line 68
    sget-object v1, Lorg/apache/mina/common/TransportType;->SOCKET:Lorg/apache/mina/common/TransportType;

    invoke-interface {p0, v1}, Lorg/apache/mina/registry/ServiceRegistry;->getIoAcceptor(Lorg/apache/mina/common/TransportType;)Lorg/apache/mina/io/IoAcceptor;

    move-result-object p0

    .line 69
    invoke-interface {p0}, Lorg/apache/mina/io/IoAcceptor;->getFilterChain()Lorg/apache/mina/io/IoFilterChain;

    move-result-object p0

    const-string v1, "sslFilter"

    invoke-interface {p0, v1, v0}, Lorg/apache/mina/io/IoFilterChain;->addLast(Ljava/lang/String;Lorg/apache/mina/io/IoFilter;)V

    .line 70
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "SSL ON"

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

    .line 46
    new-instance p0, Lorg/apache/mina/registry/SimpleServiceRegistry;

    invoke-direct {p0}, Lorg/apache/mina/registry/SimpleServiceRegistry;-><init>()V

    .line 54
    invoke-static {p0}, Lorg/apache/mina/examples/echoserver/Main;->addLogger(Lorg/apache/mina/registry/ServiceRegistry;)V

    .line 57
    new-instance v0, Lorg/apache/mina/registry/Service;

    sget-object v1, Lorg/apache/mina/common/TransportType;->SOCKET:Lorg/apache/mina/common/TransportType;

    const/16 v2, 0x1f90

    const-string v3, "echo"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/mina/registry/Service;-><init>(Ljava/lang/String;Lorg/apache/mina/common/TransportType;I)V

    .line 58
    new-instance v1, Lorg/apache/mina/examples/echoserver/EchoProtocolHandler;

    invoke-direct {v1}, Lorg/apache/mina/examples/echoserver/EchoProtocolHandler;-><init>()V

    invoke-interface {p0, v0, v1}, Lorg/apache/mina/registry/ServiceRegistry;->bind(Lorg/apache/mina/registry/Service;Lorg/apache/mina/io/IoHandler;)V

    .line 60
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Listening on port 8080"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
