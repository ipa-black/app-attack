.class Lorg/apache/mina/io/handler/StreamIoHandler$PipedInputStream;
.super Ljava/io/PipedInputStream;
.source "StreamIoHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/io/handler/StreamIoHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PipedInputStream"
.end annotation


# instance fields
.field private exception:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/io/PipedOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    invoke-direct {p0, p1}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    return-void
.end method

.method private throwException()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lorg/apache/mina/io/handler/StreamIoHandler$PipedInputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    throw v0
.end method


# virtual methods
.method public declared-synchronized read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 222
    :try_start_0
    invoke-direct {p0}, Lorg/apache/mina/io/handler/StreamIoHandler$PipedInputStream;->throwException()V

    .line 223
    invoke-super {p0}, Ljava/io/PipedInputStream;->read()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 228
    :try_start_0
    invoke-direct {p0}, Lorg/apache/mina/io/handler/StreamIoHandler$PipedInputStream;->throwException()V

    .line 229
    invoke-super {p0, p1, p2, p3}, Ljava/io/PipedInputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setException(Ljava/io/IOException;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lorg/apache/mina/io/handler/StreamIoHandler$PipedInputStream;->exception:Ljava/io/IOException;

    return-void
.end method
