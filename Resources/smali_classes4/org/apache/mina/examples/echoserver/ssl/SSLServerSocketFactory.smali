.class public Lorg/apache/mina/examples/echoserver/ssl/SSLServerSocketFactory;
.super Ljavax/net/ServerSocketFactory;
.source "SSLServerSocketFactory.java"


# static fields
.field private static factory:Ljavax/net/ServerSocketFactory; = null

.field private static sslEnabled:Z = false

.field private static sslFactory:Ljavax/net/ServerSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljavax/net/ServerSocketFactory;-><init>()V

    return-void
.end method

.method public static getServerSocketFactory()Ljavax/net/ServerSocketFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-static {}, Lorg/apache/mina/examples/echoserver/ssl/SSLServerSocketFactory;->isSslEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    sget-object v0, Lorg/apache/mina/examples/echoserver/ssl/SSLServerSocketFactory;->sslFactory:Ljavax/net/ServerSocketFactory;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 74
    :try_start_0
    invoke-static {v0}, Lorg/apache/mina/examples/echoserver/ssl/BogusSSLContextFactory;->getInstance(Z)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/examples/echoserver/ssl/SSLServerSocketFactory;->sslFactory:Ljavax/net/ServerSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 79
    new-instance v1, Ljava/io/IOException;

    const-string v2, "could not create SSL socket"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 82
    throw v1

    .line 85
    :cond_0
    :goto_0
    sget-object v0, Lorg/apache/mina/examples/echoserver/ssl/SSLServerSocketFactory;->sslFactory:Ljavax/net/ServerSocketFactory;

    return-object v0

    .line 89
    :cond_1
    sget-object v0, Lorg/apache/mina/examples/echoserver/ssl/SSLServerSocketFactory;->factory:Ljavax/net/ServerSocketFactory;

    if-nez v0, :cond_2

    .line 91
    new-instance v0, Lorg/apache/mina/examples/echoserver/ssl/SSLServerSocketFactory;

    invoke-direct {v0}, Lorg/apache/mina/examples/echoserver/ssl/SSLServerSocketFactory;-><init>()V

    sput-object v0, Lorg/apache/mina/examples/echoserver/ssl/SSLServerSocketFactory;->factory:Ljavax/net/ServerSocketFactory;

    .line 93
    :cond_2
    sget-object v0, Lorg/apache/mina/examples/echoserver/ssl/SSLServerSocketFactory;->factory:Ljavax/net/ServerSocketFactory;

    return-object v0
.end method

.method public static isSslEnabled()Z
    .locals 1

    .line 100
    sget-boolean v0, Lorg/apache/mina/examples/echoserver/ssl/SSLServerSocketFactory;->sslEnabled:Z

    return v0
.end method

.method public static setSslEnabled(Z)V
    .locals 0

    .line 105
    sput-boolean p0, Lorg/apache/mina/examples/echoserver/ssl/SSLServerSocketFactory;->sslEnabled:Z

    return-void
.end method


# virtual methods
.method public createServerSocket(I)Ljava/net/ServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    return-object v0
.end method

.method public createServerSocket(II)Ljava/net/ServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1, p2}, Ljava/net/ServerSocket;-><init>(II)V

    return-object v0
.end method

.method public createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1, p2, p3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    return-object v0
.end method
