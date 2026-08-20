.class Lorg/apache/mina/io/handler/StreamIoHandler$ServiceOutputStream;
.super Ljava/io/OutputStream;
.source "StreamIoHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/io/handler/StreamIoHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceOutputStream"
.end annotation


# instance fields
.field private final session:Lorg/apache/mina/io/IoSession;


# direct methods
.method public constructor <init>(Lorg/apache/mina/io/IoSession;)V
    .locals 0

    .line 246
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 247
    iput-object p1, p0, Lorg/apache/mina/io/handler/StreamIoHandler$ServiceOutputStream;->session:Lorg/apache/mina/io/IoSession;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 252
    iget-object v0, p0, Lorg/apache/mina/io/handler/StreamIoHandler$ServiceOutputStream;->session:Lorg/apache/mina/io/IoSession;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/apache/mina/io/IoSession;->close(Z)V

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public write(I)V
    .locals 2

    const/4 v0, 0x1

    .line 275
    invoke-static {v0}, Lorg/apache/mina/common/ByteBuffer;->allocate(I)Lorg/apache/mina/common/ByteBuffer;

    move-result-object v0

    int-to-byte p1, p1

    .line 276
    invoke-virtual {v0, p1}, Lorg/apache/mina/common/ByteBuffer;->put(B)Lorg/apache/mina/common/ByteBuffer;

    .line 277
    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->flip()Lorg/apache/mina/common/ByteBuffer;

    .line 278
    iget-object p1, p0, Lorg/apache/mina/io/handler/StreamIoHandler$ServiceOutputStream;->session:Lorg/apache/mina/io/IoSession;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/apache/mina/io/IoSession;->write(Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method public write([B)V
    .locals 2

    .line 268
    invoke-static {p1}, Lorg/apache/mina/common/ByteBuffer;->wrap([B)Lorg/apache/mina/common/ByteBuffer;

    move-result-object p1

    .line 269
    invoke-virtual {p1}, Lorg/apache/mina/common/ByteBuffer;->acquire()V

    .line 270
    iget-object v0, p0, Lorg/apache/mina/io/handler/StreamIoHandler$ServiceOutputStream;->session:Lorg/apache/mina/io/IoSession;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/apache/mina/io/IoSession;->write(Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method public write([BII)V
    .locals 0

    .line 261
    invoke-static {p1, p2, p3}, Lorg/apache/mina/common/ByteBuffer;->wrap([BII)Lorg/apache/mina/common/ByteBuffer;

    move-result-object p1

    .line 262
    invoke-virtual {p1}, Lorg/apache/mina/common/ByteBuffer;->acquire()V

    .line 263
    iget-object p2, p0, Lorg/apache/mina/io/handler/StreamIoHandler$ServiceOutputStream;->session:Lorg/apache/mina/io/IoSession;

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3}, Lorg/apache/mina/io/IoSession;->write(Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V

    return-void
.end method
