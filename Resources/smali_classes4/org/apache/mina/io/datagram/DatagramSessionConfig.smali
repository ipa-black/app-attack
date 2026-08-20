.class public Lorg/apache/mina/io/datagram/DatagramSessionConfig;
.super Lorg/apache/mina/common/BaseSessionConfig;
.source "DatagramSessionConfig.java"


# instance fields
.field private final ch:Ljava/nio/channels/DatagramChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/DatagramChannel;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/apache/mina/common/BaseSessionConfig;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/mina/io/datagram/DatagramSessionConfig;->ch:Ljava/nio/channels/DatagramChannel;

    return-void
.end method


# virtual methods
.method public getReuseAddress()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramSessionConfig;->ch:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getReuseAddress()Z

    move-result v0

    return v0
.end method

.method public getTrafficClass()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramSessionConfig;->ch:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getTrafficClass()I

    move-result v0

    return v0
.end method

.method public setReuseAddress(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramSessionConfig;->ch:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    return-void
.end method

.method public setTrafficClass(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/apache/mina/io/datagram/DatagramSessionConfig;->ch:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setTrafficClass(I)V

    return-void
.end method
