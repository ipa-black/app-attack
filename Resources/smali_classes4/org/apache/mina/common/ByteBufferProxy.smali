.class public Lorg/apache/mina/common/ByteBufferProxy;
.super Lorg/apache/mina/common/ByteBuffer;
.source "ByteBufferProxy.java"


# instance fields
.field protected buf:Lorg/apache/mina/common/ByteBuffer;


# direct methods
.method protected constructor <init>(Lorg/apache/mina/common/ByteBuffer;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Lorg/apache/mina/common/ByteBuffer;-><init>()V

    if-eqz p1, :cond_0

    .line 60
    iput-object p1, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    return-void

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "buf"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public acquire()V
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->acquire()V

    return-void
.end method

.method public asCharBuffer()Ljava/nio/CharBuffer;
    .locals 1

    .line 279
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asDoubleBuffer()Ljava/nio/DoubleBuffer;
    .locals 1

    .line 434
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asFloatBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .line 407
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asIntBuffer()Ljava/nio/IntBuffer;
    .locals 1

    .line 353
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asLongBuffer()Ljava/nio/LongBuffer;
    .locals 1

    .line 380
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asShortBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    .line 316
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public buf()Ljava/nio/ByteBuffer;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public clear()Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->clear()Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public compact()Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->compact()Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public compareTo(Lorg/apache/mina/common/ByteBuffer;)I
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/common/ByteBuffer;->compareTo(Lorg/apache/mina/common/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 236
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/common/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public fill(BI)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 477
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/common/ByteBuffer;->fill(BI)Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public fill(I)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 489
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/common/ByteBuffer;->fill(I)Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public fillAndReset(BI)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 483
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/common/ByteBuffer;->fillAndReset(BI)Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public fillAndReset(I)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 495
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/common/ByteBuffer;->fillAndReset(I)Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public flip()Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->flip()Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public get()B
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public get(I)B
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/common/ByteBuffer;->get(I)B

    move-result p1

    return p1
.end method

.method public get([B)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/common/ByteBuffer;->get([B)Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public get([BII)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/mina/common/ByteBuffer;->get([BII)Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public getChar()C
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->getChar()C

    move-result v0

    return v0
.end method

.method public getChar(I)C
    .locals 1

    .line 268
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/common/ByteBuffer;->getChar(I)C

    move-result p1

    return p1
.end method

.method public getDouble()D
    .locals 2

    .line 412
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->getDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(I)D
    .locals 2

    .line 423
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/common/ByteBuffer;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat()F
    .locals 1

    .line 385
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->getFloat()F

    move-result v0

    return v0
.end method

.method public getFloat(I)F
    .locals 1

    .line 396
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/common/ByteBuffer;->getFloat(I)F

    move-result p1

    return p1
.end method

.method public getHexDump()Ljava/lang/String;
    .locals 1

    .line 439
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->getHexDump()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInt()I
    .locals 1

    .line 321
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1

    .line 337
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/common/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getLong()J
    .locals 2

    .line 358
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(I)J
    .locals 2

    .line 369
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/common/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort()S
    .locals 1

    .line 284
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public getShort(I)S
    .locals 1

    .line 300
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/common/ByteBuffer;->getShort(I)S

    move-result p1

    return p1
.end method

.method public getString(ILjava/nio/charset/CharsetDecoder;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/common/ByteBuffer;->getString(ILjava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/common/ByteBuffer;->getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUnsigned()S
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->getUnsigned()S

    move-result v0

    return v0
.end method

.method public getUnsigned(I)S
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/common/ByteBuffer;->getUnsigned(I)S

    move-result p1

    return p1
.end method

.method public getUnsignedInt()J
    .locals 2

    .line 326
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->getUnsignedInt()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUnsignedInt(I)J
    .locals 2

    .line 342
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/common/ByteBuffer;->getUnsignedInt(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUnsignedShort()I
    .locals 1

    .line 289
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->getUnsignedShort()I

    move-result v0

    return v0
.end method

.method public getUnsignedShort(I)I
    .locals 1

    .line 305
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/common/ByteBuffer;->getUnsignedShort(I)I

    move-result p1

    return p1
.end method

.method public hasRemaining()Z
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->hasRemaining()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAutoExpand()Z
    .locals 1

    .line 501
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->isAutoExpand()Z

    move-result v0

    return v0
.end method

.method public isDirect()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public limit()I
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public limit(I)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/common/ByteBuffer;->limit(I)Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public mark()Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->mark()Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .line 246
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public order(Ljava/nio/ByteOrder;)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 251
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/common/ByteBuffer;->order(Ljava/nio/ByteOrder;)Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public position()I
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public position(I)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/common/ByteBuffer;->position(I)Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public put(B)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/common/ByteBuffer;->put(B)Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public put(IB)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/common/ByteBuffer;->put(IB)Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public put(Ljava/nio/ByteBuffer;)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/common/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public put(Lorg/apache/mina/common/ByteBuffer;)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/common/ByteBuffer;->put(Lorg/apache/mina/common/ByteBuffer;)Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public put([B)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/common/ByteBuffer;->put([B)Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public put([BII)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/mina/common/ByteBuffer;->put([BII)Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public putChar(C)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/common/ByteBuffer;->putChar(C)Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public putChar(IC)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 273
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/common/ByteBuffer;->putChar(IC)Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public putDouble(D)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 417
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/common/ByteBuffer;->putDouble(D)Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public putDouble(ID)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 428
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/mina/common/ByteBuffer;->putDouble(ID)Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public putFloat(F)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 390
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/common/ByteBuffer;->putFloat(F)Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public putFloat(IF)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 401
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/common/ByteBuffer;->putFloat(IF)Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public putInt(I)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 331
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/common/ByteBuffer;->putInt(I)Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public putInt(II)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 347
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/common/ByteBuffer;->putInt(II)Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public putLong(IJ)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 374
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/mina/common/ByteBuffer;->putLong(IJ)Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public putLong(J)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 363
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/common/ByteBuffer;->putLong(J)Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public putShort(IS)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 310
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/common/ByteBuffer;->putShort(IS)Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public putShort(S)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 294
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/common/ByteBuffer;->putShort(S)Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public putString(Ljava/lang/CharSequence;ILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/common/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/mina/common/ByteBuffer;->putString(Ljava/lang/CharSequence;ILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public putString(Ljava/lang/CharSequence;Ljava/nio/charset/CharsetEncoder;)Lorg/apache/mina/common/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 465
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/common/ByteBuffer;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/CharsetEncoder;)Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public release()V
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->release()V

    return-void
.end method

.method public remaining()I
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public reset()Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->reset()Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public rewind()Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->rewind()Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public setAutoExpand(Z)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 506
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/common/ByteBuffer;->setAutoExpand(Z)Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public skip(I)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 471
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/common/ByteBuffer;->skip(I)Lorg/apache/mina/common/ByteBuffer;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lorg/apache/mina/common/ByteBufferProxy;->buf:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/common/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
