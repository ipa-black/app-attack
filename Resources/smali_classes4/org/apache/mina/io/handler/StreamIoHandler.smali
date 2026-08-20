.class public abstract Lorg/apache/mina/io/handler/StreamIoHandler;
.super Lorg/apache/mina/io/IoHandlerAdapter;
.source "StreamIoHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/io/handler/StreamIoHandler$StreamIoException;,
        Lorg/apache/mina/io/handler/StreamIoHandler$ServiceOutputStream;,
        Lorg/apache/mina/io/handler/StreamIoHandler$PipedInputStream;
    }
.end annotation


# static fields
.field private static final KEY_IN:Ljava/lang/String; = "BlockingIoHandler.in"

.field private static final KEY_OUT:Ljava/lang/String; = "BlockingIoHandler.out"

.field private static final KEY_STARTED:Ljava/lang/String; = "BlockingIoHandler.started"


# instance fields
.field private readTimeout:I

.field private writeTimeout:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/apache/mina/io/IoHandlerAdapter;-><init>()V

    return-void
.end method

.method private beginService(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/io/handler/StreamIoHandler$PipedInputStream;)V
    .locals 2

    .line 199
    const-string v0, "BlockingIoHandler.started"

    invoke-interface {p1, v0}, Lorg/apache/mina/io/IoSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 201
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Lorg/apache/mina/io/IoSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    new-instance v0, Lorg/apache/mina/io/handler/StreamIoHandler$ServiceOutputStream;

    invoke-direct {v0, p1}, Lorg/apache/mina/io/handler/StreamIoHandler$ServiceOutputStream;-><init>(Lorg/apache/mina/io/IoSession;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/mina/io/handler/StreamIoHandler;->processStreamIo(Lorg/apache/mina/io/IoSession;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dataRead(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;)V
    .locals 6

    .line 127
    const-string v0, "BlockingIoHandler.in"

    invoke-interface {p1, v0}, Lorg/apache/mina/io/IoSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/io/handler/StreamIoHandler$PipedInputStream;

    .line 128
    const-string v1, "BlockingIoHandler.out"

    invoke-interface {p1, v1}, Lorg/apache/mina/io/IoSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/PipedOutputStream;

    .line 130
    invoke-virtual {p2}, Lorg/apache/mina/common/ByteBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 131
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 132
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    sub-int/2addr v4, v3

    .line 133
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v3, 0x0

    .line 135
    invoke-static {v4, v3}, Lorg/apache/mina/common/ByteBuffer;->allocate(IZ)Lorg/apache/mina/common/ByteBuffer;

    move-result-object v2

    .line 136
    invoke-virtual {v2, p2}, Lorg/apache/mina/common/ByteBuffer;->put(Lorg/apache/mina/common/ByteBuffer;)Lorg/apache/mina/common/ByteBuffer;

    .line 137
    invoke-virtual {v2}, Lorg/apache/mina/common/ByteBuffer;->flip()Lorg/apache/mina/common/ByteBuffer;

    .line 138
    invoke-virtual {v2}, Lorg/apache/mina/common/ByteBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 144
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {v1, p2, v3, v4}, Ljava/io/PipedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/io/handler/StreamIoHandler;->beginService(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/io/handler/StreamIoHandler$PipedInputStream;)V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 148
    :try_start_1
    new-instance v1, Lorg/apache/mina/io/handler/StreamIoHandler$StreamIoException;

    invoke-direct {v1, p2}, Lorg/apache/mina/io/handler/StreamIoHandler$StreamIoException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/io/handler/StreamIoHandler;->beginService(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/io/handler/StreamIoHandler$PipedInputStream;)V

    .line 153
    throw p2
.end method

.method public exceptionCaught(Lorg/apache/mina/io/IoSession;Ljava/lang/Throwable;)V
    .locals 2

    .line 161
    const-string v0, "BlockingIoHandler.in"

    invoke-interface {p1, v0}, Lorg/apache/mina/io/IoSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/io/handler/StreamIoHandler$PipedInputStream;

    .line 164
    instance-of v1, p2, Lorg/apache/mina/io/handler/StreamIoHandler$StreamIoException;

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    goto :goto_0

    .line 168
    :cond_0
    instance-of v1, p2, Ljava/io/IOException;

    if-eqz v1, :cond_1

    .line 170
    move-object v1, p2

    check-cast v1, Ljava/io/IOException;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {v0, v1}, Lorg/apache/mina/io/handler/StreamIoHandler$PipedInputStream;->setException(Ljava/io/IOException;)V

    .line 176
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/io/handler/StreamIoHandler;->beginService(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/io/handler/StreamIoHandler$PipedInputStream;)V

    goto :goto_1

    .line 180
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 181
    invoke-interface {p1}, Lorg/apache/mina/io/IoSession;->close()V

    :goto_1
    return-void
.end method

.method public getReadTimeout()I
    .locals 1

    .line 55
    iget v0, p0, Lorg/apache/mina/io/handler/StreamIoHandler;->readTimeout:I

    return v0
.end method

.method public getWriteTimeout()I
    .locals 1

    .line 73
    iget v0, p0, Lorg/apache/mina/io/handler/StreamIoHandler;->writeTimeout:I

    return v0
.end method

.method protected abstract processStreamIo(Lorg/apache/mina/io/IoSession;Ljava/io/InputStream;Ljava/io/OutputStream;)V
.end method

.method public sessionClosed(Lorg/apache/mina/io/IoSession;)V
    .locals 1

    .line 112
    const-string v0, "BlockingIoHandler.out"

    invoke-interface {p1, v0}, Lorg/apache/mina/io/IoSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/PipedOutputStream;

    .line 114
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PipedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 118
    new-instance v0, Lorg/apache/mina/io/handler/StreamIoHandler$StreamIoException;

    invoke-direct {v0, p1}, Lorg/apache/mina/io/handler/StreamIoHandler$StreamIoException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public sessionIdle(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/IdleStatus;)V
    .locals 1

    .line 190
    sget-object p1, Lorg/apache/mina/common/IdleStatus;->READER_IDLE:Lorg/apache/mina/common/IdleStatus;

    if-eq p2, p1, :cond_0

    return-void

    .line 192
    :cond_0
    new-instance p1, Lorg/apache/mina/io/handler/StreamIoHandler$StreamIoException;

    new-instance p2, Ljava/net/SocketTimeoutException;

    const-string v0, "Read timeout"

    invoke-direct {p2, v0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/apache/mina/io/handler/StreamIoHandler$StreamIoException;-><init>(Ljava/io/IOException;)V

    throw p1
.end method

.method public sessionOpened(Lorg/apache/mina/io/IoSession;)V
    .locals 3

    .line 91
    invoke-interface {p1}, Lorg/apache/mina/io/IoSession;->getConfig()Lorg/apache/mina/common/SessionConfig;

    move-result-object v0

    iget v1, p0, Lorg/apache/mina/io/handler/StreamIoHandler;->writeTimeout:I

    invoke-interface {v0, v1}, Lorg/apache/mina/common/SessionConfig;->setWriteTimeout(I)V

    .line 92
    invoke-interface {p1}, Lorg/apache/mina/io/IoSession;->getConfig()Lorg/apache/mina/common/SessionConfig;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/common/IdleStatus;->READER_IDLE:Lorg/apache/mina/common/IdleStatus;

    iget v2, p0, Lorg/apache/mina/io/handler/StreamIoHandler;->readTimeout:I

    invoke-interface {v0, v1, v2}, Lorg/apache/mina/common/SessionConfig;->setIdleTime(Lorg/apache/mina/common/IdleStatus;I)V

    .line 95
    new-instance v0, Ljava/io/PipedOutputStream;

    invoke-direct {v0}, Ljava/io/PipedOutputStream;-><init>()V

    .line 96
    const-string v1, "BlockingIoHandler.out"

    invoke-interface {p1, v1, v0}, Lorg/apache/mina/io/IoSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :try_start_0
    const-string v1, "BlockingIoHandler.in"

    new-instance v2, Lorg/apache/mina/io/handler/StreamIoHandler$PipedInputStream;

    invoke-direct {v2, v0}, Lorg/apache/mina/io/handler/StreamIoHandler$PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    invoke-interface {p1, v1, v2}, Lorg/apache/mina/io/IoSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 103
    new-instance v0, Lorg/apache/mina/io/handler/StreamIoHandler$StreamIoException;

    invoke-direct {v0, p1}, Lorg/apache/mina/io/handler/StreamIoHandler$StreamIoException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public setReadTimeout(I)V
    .locals 0

    .line 64
    iput p1, p0, Lorg/apache/mina/io/handler/StreamIoHandler;->readTimeout:I

    return-void
.end method

.method public setWriteTimeout(I)V
    .locals 0

    .line 82
    iput p1, p0, Lorg/apache/mina/io/handler/StreamIoHandler;->writeTimeout:I

    return-void
.end method
