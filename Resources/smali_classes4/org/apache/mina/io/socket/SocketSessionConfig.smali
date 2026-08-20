.class public Lorg/apache/mina/io/socket/SocketSessionConfig;
.super Lorg/apache/mina/common/BaseSessionConfig;
.source "SocketSessionConfig.java"


# static fields
.field private static final DEFAULT_READ_BUFFER_SIZE:I = 0x400


# instance fields
.field private readBufferSize:I

.field private final session:Lorg/apache/mina/io/socket/SocketSession;


# direct methods
.method constructor <init>(Lorg/apache/mina/io/socket/SocketSession;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Lorg/apache/mina/common/BaseSessionConfig;-><init>()V

    const/16 v0, 0x400

    .line 44
    iput v0, p0, Lorg/apache/mina/io/socket/SocketSessionConfig;->readBufferSize:I

    .line 48
    iput-object p1, p0, Lorg/apache/mina/io/socket/SocketSessionConfig;->session:Lorg/apache/mina/io/socket/SocketSession;

    return-void
.end method


# virtual methods
.method public getKeepAlive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketSessionConfig;->session:Lorg/apache/mina/io/socket/SocketSession;

    invoke-virtual {v0}, Lorg/apache/mina/io/socket/SocketSession;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getKeepAlive()Z

    move-result v0

    return v0
.end method

.method public getOOBInline()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketSessionConfig;->session:Lorg/apache/mina/io/socket/SocketSession;

    invoke-virtual {v0}, Lorg/apache/mina/io/socket/SocketSession;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getOOBInline()Z

    move-result v0

    return v0
.end method

.method public getReceiveBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketSessionConfig;->session:Lorg/apache/mina/io/socket/SocketSession;

    invoke-virtual {v0}, Lorg/apache/mina/io/socket/SocketSession;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v0

    return v0
.end method

.method public getReuseAddress()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketSessionConfig;->session:Lorg/apache/mina/io/socket/SocketSession;

    invoke-virtual {v0}, Lorg/apache/mina/io/socket/SocketSession;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getReuseAddress()Z

    move-result v0

    return v0
.end method

.method public getSendBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketSessionConfig;->session:Lorg/apache/mina/io/socket/SocketSession;

    invoke-virtual {v0}, Lorg/apache/mina/io/socket/SocketSession;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v0

    return v0
.end method

.method public getSessionReceiveBufferSize()I
    .locals 1

    .line 133
    iget v0, p0, Lorg/apache/mina/io/socket/SocketSessionConfig;->readBufferSize:I

    return v0
.end method

.method public getSoLinger()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketSessionConfig;->session:Lorg/apache/mina/io/socket/SocketSession;

    invoke-virtual {v0}, Lorg/apache/mina/io/socket/SocketSession;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getSoLinger()I

    move-result v0

    return v0
.end method

.method public getTcpNoDelay()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketSessionConfig;->session:Lorg/apache/mina/io/socket/SocketSession;

    invoke-virtual {v0}, Lorg/apache/mina/io/socket/SocketSession;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getTcpNoDelay()Z

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

    .line 103
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketSessionConfig;->session:Lorg/apache/mina/io/socket/SocketSession;

    invoke-virtual {v0}, Lorg/apache/mina/io/socket/SocketSession;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getTrafficClass()I

    move-result v0

    return v0
.end method

.method public setKeepAlive(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketSessionConfig;->session:Lorg/apache/mina/io/socket/SocketSession;

    invoke-virtual {v0}, Lorg/apache/mina/io/socket/SocketSession;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V

    return-void
.end method

.method public setOOBInline(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketSessionConfig;->session:Lorg/apache/mina/io/socket/SocketSession;

    invoke-virtual {v0}, Lorg/apache/mina/io/socket/SocketSession;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setOOBInline(Z)V

    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketSessionConfig;->session:Lorg/apache/mina/io/socket/SocketSession;

    invoke-virtual {v0}, Lorg/apache/mina/io/socket/SocketSession;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketSessionConfig;->session:Lorg/apache/mina/io/socket/SocketSession;

    invoke-virtual {v0}, Lorg/apache/mina/io/socket/SocketSession;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReuseAddress(Z)V

    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketSessionConfig;->session:Lorg/apache/mina/io/socket/SocketSession;

    invoke-virtual {v0}, Lorg/apache/mina/io/socket/SocketSession;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSendBufferSize(I)V

    return-void
.end method

.method public setSessionReceiveBufferSize(I)V
    .locals 3

    if-lez p1, :cond_0

    .line 143
    iput p1, p0, Lorg/apache/mina/io/socket/SocketSessionConfig;->readBufferSize:I

    return-void

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Invalid session receive buffer size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSoLinger(ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketSessionConfig;->session:Lorg/apache/mina/io/socket/SocketSession;

    invoke-virtual {v0}, Lorg/apache/mina/io/socket/SocketSession;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->setSoLinger(ZI)V

    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketSessionConfig;->session:Lorg/apache/mina/io/socket/SocketSession;

    invoke-virtual {v0}, Lorg/apache/mina/io/socket/SocketSession;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    return-void
.end method

.method public setTrafficClass(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/apache/mina/io/socket/SocketSessionConfig;->session:Lorg/apache/mina/io/socket/SocketSession;

    invoke-virtual {v0}, Lorg/apache/mina/io/socket/SocketSession;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTrafficClass(I)V

    return-void
.end method
