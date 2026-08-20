.class public Lorg/apache/mina/protocol/io/IoProtocolSession;
.super Ljava/lang/Object;
.source "IoProtocolSession.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolSession;


# instance fields
.field final decOut:Lorg/apache/mina/protocol/SimpleProtocolDecoderOutput;

.field final decoder:Lorg/apache/mina/protocol/ProtocolDecoder;

.field final encOut:Lorg/apache/mina/protocol/SimpleProtocolEncoderOutput;

.field final encoder:Lorg/apache/mina/protocol/ProtocolEncoder;

.field private final filterChain:Lorg/apache/mina/protocol/ProtocolSessionFilterChain;

.field final session:Lorg/apache/mina/io/IoSession;

.field final shAdapter:Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;

.field final writeQueue:Lorg/apache/mina/util/Queue;


# direct methods
.method constructor <init>(Lorg/apache/mina/protocol/ProtocolSessionManagerFilterChain;Lorg/apache/mina/io/IoSession;Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/apache/mina/util/Queue;

    invoke-direct {v0}, Lorg/apache/mina/util/Queue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->writeQueue:Lorg/apache/mina/util/Queue;

    .line 52
    new-instance v0, Lorg/apache/mina/protocol/ProtocolSessionFilterChain;

    invoke-direct {v0, p1}, Lorg/apache/mina/protocol/ProtocolSessionFilterChain;-><init>(Lorg/apache/mina/protocol/ProtocolSessionManagerFilterChain;)V

    iput-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->filterChain:Lorg/apache/mina/protocol/ProtocolSessionFilterChain;

    .line 53
    iput-object p2, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->session:Lorg/apache/mina/io/IoSession;

    .line 54
    iput-object p3, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->shAdapter:Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;

    .line 55
    iget-object p1, p3, Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;->codecFactory:Lorg/apache/mina/protocol/ProtocolCodecFactory;

    invoke-interface {p1}, Lorg/apache/mina/protocol/ProtocolCodecFactory;->newEncoder()Lorg/apache/mina/protocol/ProtocolEncoder;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->encoder:Lorg/apache/mina/protocol/ProtocolEncoder;

    .line 56
    iget-object p1, p3, Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;->codecFactory:Lorg/apache/mina/protocol/ProtocolCodecFactory;

    invoke-interface {p1}, Lorg/apache/mina/protocol/ProtocolCodecFactory;->newDecoder()Lorg/apache/mina/protocol/ProtocolDecoder;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->decoder:Lorg/apache/mina/protocol/ProtocolDecoder;

    .line 57
    new-instance p1, Lorg/apache/mina/protocol/SimpleProtocolEncoderOutput;

    invoke-direct {p1}, Lorg/apache/mina/protocol/SimpleProtocolEncoderOutput;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->encOut:Lorg/apache/mina/protocol/SimpleProtocolEncoderOutput;

    .line 58
    new-instance p1, Lorg/apache/mina/protocol/SimpleProtocolDecoderOutput;

    invoke-direct {p1}, Lorg/apache/mina/protocol/SimpleProtocolDecoderOutput;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->decOut:Lorg/apache/mina/protocol/SimpleProtocolDecoderOutput;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->session:Lorg/apache/mina/io/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/io/IoSession;->close()V

    return-void
.end method

.method public close(Z)V
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->session:Lorg/apache/mina/io/IoSession;

    invoke-interface {v0, p1}, Lorg/apache/mina/io/IoSession;->close(Z)V

    return-void
.end method

.method public getAttachment()Ljava/lang/Object;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->session:Lorg/apache/mina/io/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/io/IoSession;->getAttachment()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->session:Lorg/apache/mina/io/IoSession;

    invoke-interface {v0, p1}, Lorg/apache/mina/io/IoSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeKeys()Ljava/util/Set;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->session:Lorg/apache/mina/io/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/io/IoSession;->getAttributeKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lorg/apache/mina/common/SessionConfig;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->session:Lorg/apache/mina/io/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/io/IoSession;->getConfig()Lorg/apache/mina/common/SessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDecoder()Lorg/apache/mina/protocol/ProtocolDecoder;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->decoder:Lorg/apache/mina/protocol/ProtocolDecoder;

    return-object v0
.end method

.method public getEncoder()Lorg/apache/mina/protocol/ProtocolEncoder;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->encoder:Lorg/apache/mina/protocol/ProtocolEncoder;

    return-object v0
.end method

.method public getFilterChain()Lorg/apache/mina/protocol/ProtocolFilterChain;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->filterChain:Lorg/apache/mina/protocol/ProtocolSessionFilterChain;

    return-object v0
.end method

.method public getHandler()Lorg/apache/mina/protocol/ProtocolHandler;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->shAdapter:Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;

    iget-object v0, v0, Lorg/apache/mina/protocol/io/IoAdapter$SessionHandlerAdapter;->handler:Lorg/apache/mina/protocol/ProtocolHandler;

    return-object v0
.end method

.method public getIoSession()Lorg/apache/mina/io/IoSession;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->session:Lorg/apache/mina/io/IoSession;

    return-object v0
.end method

.method public getLastIoTime()J
    .locals 2

    .line 171
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->session:Lorg/apache/mina/io/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/io/IoSession;->getLastIoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastReadTime()J
    .locals 2

    .line 176
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->session:Lorg/apache/mina/io/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/io/IoSession;->getLastReadTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastWriteTime()J
    .locals 2

    .line 181
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->session:Lorg/apache/mina/io/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/io/IoSession;->getLastWriteTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->session:Lorg/apache/mina/io/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/io/IoSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getReadBytes()J
    .locals 2

    .line 161
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->session:Lorg/apache/mina/io/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/io/IoSession;->getReadBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->session:Lorg/apache/mina/io/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/io/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getTransportType()Lorg/apache/mina/common/TransportType;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->session:Lorg/apache/mina/io/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/io/IoSession;->getTransportType()Lorg/apache/mina/common/TransportType;

    move-result-object v0

    return-object v0
.end method

.method public getWrittenBytes()J
    .locals 2

    .line 166
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->session:Lorg/apache/mina/io/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/io/IoSession;->getWrittenBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public isConnected()Z
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->session:Lorg/apache/mina/io/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/io/IoSession;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isIdle(Lorg/apache/mina/common/IdleStatus;)Z
    .locals 1

    .line 186
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->session:Lorg/apache/mina/io/IoSession;

    invoke-interface {v0, p1}, Lorg/apache/mina/io/IoSession;->isIdle(Lorg/apache/mina/common/IdleStatus;)Z

    move-result p1

    return p1
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->session:Lorg/apache/mina/io/IoSession;

    invoke-interface {v0, p1}, Lorg/apache/mina/io/IoSession;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setAttachment(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->session:Lorg/apache/mina/io/IoSession;

    invoke-interface {v0, p1}, Lorg/apache/mina/io/IoSession;->setAttachment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->session:Lorg/apache/mina/io/IoSession;

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/io/IoSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public write(Ljava/lang/Object;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/apache/mina/protocol/io/IoProtocolSession;->filterChain:Lorg/apache/mina/protocol/ProtocolSessionFilterChain;

    invoke-virtual {v0, p0, p1}, Lorg/apache/mina/protocol/ProtocolSessionFilterChain;->filterWrite(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V

    return-void
.end method
