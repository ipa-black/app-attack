.class public Lorg/apache/mina/examples/echoserver/EchoProtocolHandler;
.super Lorg/apache/mina/io/IoHandlerAdapter;
.source "EchoProtocolHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/apache/mina/io/IoHandlerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public dataRead(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;)V
    .locals 1

    .line 53
    invoke-virtual {p2}, Lorg/apache/mina/common/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Lorg/apache/mina/common/ByteBuffer;->allocate(I)Lorg/apache/mina/common/ByteBuffer;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p2}, Lorg/apache/mina/common/ByteBuffer;->put(Lorg/apache/mina/common/ByteBuffer;)Lorg/apache/mina/common/ByteBuffer;

    .line 55
    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->flip()Lorg/apache/mina/common/ByteBuffer;

    const/4 p2, 0x0

    .line 56
    invoke-interface {p1, v0, p2}, Lorg/apache/mina/io/IoSession;->write(Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method public exceptionCaught(Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V
    .locals 0

    .line 47
    invoke-interface {p1}, Lorg/apache/mina/io/IoSession;->close()V

    return-void
.end method

.method public sessionCreated(Lorg/apache/mina/io/IoSession;)V
    .locals 1

    .line 38
    invoke-interface {p1}, Lorg/apache/mina/io/IoSession;->getConfig()Lorg/apache/mina/common/SessionConfig;

    move-result-object p1

    .line 39
    instance-of v0, p1, Lorg/apache/mina/io/socket/SocketSessionConfig;

    if-eqz v0, :cond_0

    .line 41
    check-cast p1, Lorg/apache/mina/io/socket/SocketSessionConfig;

    const/16 v0, 0x800

    invoke-virtual {p1, v0}, Lorg/apache/mina/io/socket/SocketSessionConfig;->setSessionReceiveBufferSize(I)V

    :cond_0
    return-void
.end method
