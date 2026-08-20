.class public Lorg/apache/ldap/common/util/ParserPipedInputStream;
.super Ljava/io/PipedInputStream;
.source "ParserPipedInputStream.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/io/PipedInputStream;-><init>()V

    return-void
.end method


# virtual methods
.method protected declared-synchronized receive(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 35
    :goto_0
    :try_start_0
    iget v0, p0, Lorg/apache/ldap/common/util/ParserPipedInputStream;->in:I

    iget v1, p0, Lorg/apache/ldap/common/util/ParserPipedInputStream;->out:I

    if-ne v0, v1, :cond_0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x3e8

    .line 41
    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    :catch_0
    :try_start_2
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 49
    :cond_0
    iget v0, p0, Lorg/apache/ldap/common/util/ParserPipedInputStream;->in:I

    const/4 v1, 0x0

    if-gez v0, :cond_1

    .line 51
    iput v1, p0, Lorg/apache/ldap/common/util/ParserPipedInputStream;->in:I

    .line 52
    iput v1, p0, Lorg/apache/ldap/common/util/ParserPipedInputStream;->out:I

    .line 55
    :cond_1
    iget-object v0, p0, Lorg/apache/ldap/common/util/ParserPipedInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/ldap/common/util/ParserPipedInputStream;->in:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/ldap/common/util/ParserPipedInputStream;->in:I

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    .line 57
    iget p1, p0, Lorg/apache/ldap/common/util/ParserPipedInputStream;->in:I

    iget-object v0, p0, Lorg/apache/ldap/common/util/ParserPipedInputStream;->buffer:[B

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 59
    iput v1, p0, Lorg/apache/ldap/common/util/ParserPipedInputStream;->in:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
