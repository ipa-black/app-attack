.class public final Lcom/appodeal/ads/utils/t;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/utils/t$a;,
        Lcom/appodeal/ads/utils/t$b;
    }
.end annotation


# instance fields
.field public final a:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/utils/t;->a:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method


# virtual methods
.method public final createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/utils/t;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    .line 1
    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_0

    new-instance p2, Lcom/appodeal/ads/utils/t$b;

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 2
    invoke-direct {p2, p1}, Lcom/appodeal/ads/utils/t$b;-><init>(Ljavax/net/ssl/SSLSocket;)V

    move-object p1, p2

    :cond_0
    return-object p1
.end method

.method public final createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/utils/t;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    .line 3
    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_0

    new-instance p2, Lcom/appodeal/ads/utils/t$b;

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 4
    invoke-direct {p2, p1}, Lcom/appodeal/ads/utils/t$b;-><init>(Ljavax/net/ssl/SSLSocket;)V

    move-object p1, p2

    :cond_0
    return-object p1
.end method

.method public final createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/utils/t;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    .line 5
    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_0

    new-instance p2, Lcom/appodeal/ads/utils/t$b;

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 6
    invoke-direct {p2, p1}, Lcom/appodeal/ads/utils/t$b;-><init>(Ljavax/net/ssl/SSLSocket;)V

    move-object p1, p2

    :cond_0
    return-object p1
.end method

.method public final createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/utils/t;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    .line 7
    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_0

    new-instance p2, Lcom/appodeal/ads/utils/t$b;

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 8
    invoke-direct {p2, p1}, Lcom/appodeal/ads/utils/t$b;-><init>(Ljavax/net/ssl/SSLSocket;)V

    move-object p1, p2

    :cond_0
    return-object p1
.end method

.method public final createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/utils/t;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    .line 9
    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_0

    new-instance p2, Lcom/appodeal/ads/utils/t$b;

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 10
    invoke-direct {p2, p1}, Lcom/appodeal/ads/utils/t$b;-><init>(Ljavax/net/ssl/SSLSocket;)V

    move-object p1, p2

    :cond_0
    return-object p1
.end method

.method public final getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/utils/t;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/utils/t;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
