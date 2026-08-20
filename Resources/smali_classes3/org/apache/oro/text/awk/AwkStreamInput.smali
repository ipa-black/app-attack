.class public final Lorg/apache/oro/text/awk/AwkStreamInput;
.super Ljava/lang/Object;


# static fields
.field static final _DEFAULT_BUFFER_INCREMENT:I = 0x800


# instance fields
.field private __bufferIncrementUnit:I

.field private __searchStream:Ljava/io/Reader;

.field _buffer:[C

.field _bufferOffset:I

.field _bufferSize:I

.field _currentOffset:I

.field _endOfStreamReached:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/oro/text/awk/AwkStreamInput;->_currentOffset:I

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, p1, v0}, Lorg/apache/oro/text/awk/AwkStreamInput;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/oro/text/awk/AwkStreamInput;->__searchStream:Ljava/io/Reader;

    iput p2, p0, Lorg/apache/oro/text/awk/AwkStreamInput;->__bufferIncrementUnit:I

    new-array p1, p2, [C

    iput-object p1, p0, Lorg/apache/oro/text/awk/AwkStreamInput;->_buffer:[C

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/oro/text/awk/AwkStreamInput;->_currentOffset:I

    iput p1, p0, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferSize:I

    iput p1, p0, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferOffset:I

    iput-boolean p1, p0, Lorg/apache/oro/text/awk/AwkStreamInput;->_endOfStreamReached:Z

    return-void
.end method


# virtual methods
.method _reallocate(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/oro/text/awk/AwkStreamInput;->_endOfStreamReached:Z

    if-eqz v0, :cond_0

    iget p1, p0, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferSize:I

    return p1

    :cond_0
    iget v0, p0, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferSize:I

    sub-int/2addr v0, p1

    iget v1, p0, Lorg/apache/oro/text/awk/AwkStreamInput;->__bufferIncrementUnit:I

    add-int v2, v0, v1

    new-array v2, v2, [C

    iget-object v3, p0, Lorg/apache/oro/text/awk/AwkStreamInput;->__searchStream:Ljava/io/Reader;

    invoke-virtual {v3, v2, v0, v1}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-gtz v1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/oro/text/awk/AwkStreamInput;->_endOfStreamReached:Z

    if-eqz v1, :cond_1

    iget p1, p0, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferSize:I

    return p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "read from input stream returned 0 bytes."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget v3, p0, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferOffset:I

    add-int/2addr v3, p1

    iput v3, p0, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferSize:I

    iget-object v1, p0, Lorg/apache/oro/text/awk/AwkStreamInput;->_buffer:[C

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/apache/oro/text/awk/AwkStreamInput;->_buffer:[C

    return v0
.end method

.method public endOfStream()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/oro/text/awk/AwkStreamInput;->_endOfStreamReached:Z

    return v0
.end method

.method read()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferOffset:I

    iget v1, p0, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferOffset:I

    iget-object v0, p0, Lorg/apache/oro/text/awk/AwkStreamInput;->__searchStream:Ljava/io/Reader;

    iget-object v1, p0, Lorg/apache/oro/text/awk/AwkStreamInput;->_buffer:[C

    invoke-virtual {v0, v1}, Ljava/io/Reader;->read([C)I

    move-result v0

    iput v0, p0, Lorg/apache/oro/text/awk/AwkStreamInput;->_bufferSize:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/oro/text/awk/AwkStreamInput;->_endOfStreamReached:Z

    xor-int/2addr v0, v2

    return v0
.end method
