.class public Lorg/apache/mina/examples/echoserver/ssl/SSLSocketFactory;
.super Ljavax/net/SocketFactory;
.source "SSLSocketFactory.java"


# static fields
.field private static factory:Ljavax/net/SocketFactory; = null

.field private static sslEnabled:Z = false

.field private static sslFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    return-void
.end method

.method private getSSLFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    .line 112
    sget-object v0, Lorg/apache/mina/examples/echoserver/ssl/SSLSocketFactory;->sslFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 116
    :try_start_0
    invoke-static {v0}, Lorg/apache/mina/examples/echoserver/ssl/BogusSSLContextFactory;->getInstance(Z)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/examples/echoserver/ssl/SSLSocketFactory;->sslFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 121
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "could not create SSL socket"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 124
    :cond_0
    :goto_0
    sget-object v0, Lorg/apache/mina/examples/echoserver/ssl/SSLSocketFactory;->sslFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public static getSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .line 103
    sget-object v0, Lorg/apache/mina/examples/echoserver/ssl/SSLSocketFactory;->factory:Ljavax/net/SocketFactory;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lorg/apache/mina/examples/echoserver/ssl/SSLSocketFactory;

    invoke-direct {v0}, Lorg/apache/mina/examples/echoserver/ssl/SSLSocketFactory;-><init>()V

    sput-object v0, Lorg/apache/mina/examples/echoserver/ssl/SSLSocketFactory;->factory:Ljavax/net/SocketFactory;

    .line 107
    :cond_0
    sget-object v0, Lorg/apache/mina/examples/echoserver/ssl/SSLSocketFactory;->factory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public static isSslEnabled()Z
    .locals 1

    .line 129
    sget-boolean v0, Lorg/apache/mina/examples/echoserver/ssl/SSLSocketFactory;->sslEnabled:Z

    return v0
.end method

.method public static setSslEnabled(Z)V
    .locals 0

    .line 134
    sput-boolean p0, Lorg/apache/mina/examples/echoserver/ssl/SSLSocketFactory;->sslEnabled:Z

    return-void
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 51
    invoke-static {}, Lorg/apache/mina/examples/echoserver/ssl/SSLSocketFactory;->isSslEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0}, Lorg/apache/mina/examples/echoserver/ssl/SSLSocketFactory;->getSSLFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1

    .line 57
    :cond_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 65
    invoke-static {}, Lorg/apache/mina/examples/echoserver/ssl/SSLSocketFactory;->isSslEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0}, Lorg/apache/mina/examples/echoserver/ssl/SSLSocketFactory;->getSSLFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1

    .line 71
    :cond_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/net/Socket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-static {}, Lorg/apache/mina/examples/echoserver/ssl/SSLSocketFactory;->isSslEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0}, Lorg/apache/mina/examples/echoserver/ssl/SSLSocketFactory;->getSSLFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1

    .line 84
    :cond_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-static {}, Lorg/apache/mina/examples/echoserver/ssl/SSLSocketFactory;->isSslEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0}, Lorg/apache/mina/examples/echoserver/ssl/SSLSocketFactory;->getSSLFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1

    .line 97
    :cond_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    return-object v0
.end method
