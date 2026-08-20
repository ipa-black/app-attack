.class public abstract Lorg/apache/asn1/ber/AbstractDecoderTestCase;
.super Ljunit/framework/TestCase;
.source "AbstractDecoderTestCase.java"

# interfaces
.implements Lorg/apache/asn1/ber/BERDecoderCallback;
.implements Lorg/apache/asn1/codec/stateful/DecoderMonitor;


# instance fields
.field buf:Ljava/nio/ByteBuffer;

.field protected decoder:Lorg/apache/asn1/ber/BERDecoder;

.field protected tlvList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Ljunit/framework/TestCase;-><init>(Ljava/lang/String;)V

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->tlvList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->decoder:Lorg/apache/asn1/ber/BERDecoder;

    const/16 p1, 0x2b67

    .line 48
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->buf:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public callbackOccured(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Lorg/apache/asn1/codec/stateful/DecoderCallback;Ljava/lang/Object;)V
    .locals 0

    .line 377
    invoke-static {p0, p2}, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 378
    iget-object p2, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->decoder:Lorg/apache/asn1/ber/BERDecoder;

    invoke-static {p2, p1}, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 379
    move-object p1, p3

    check-cast p1, Lorg/apache/asn1/ber/Tuple;

    .line 380
    invoke-static {p1}, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 381
    iget-boolean p1, p1, Lorg/apache/asn1/ber/Tuple;->isPrimitive:Z

    if-eqz p1, :cond_0

    .line 383
    iget-object p1, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->decoder:Lorg/apache/asn1/ber/BERDecoder;

    invoke-virtual {p1}, Lorg/apache/asn1/ber/BERDecoder;->getCurrentTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/apache/asn1/ber/Tuple;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->assertTrue(Z)V

    :cond_0
    return-void
.end method

.method public callbackSet(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Lorg/apache/asn1/codec/stateful/DecoderCallback;Lorg/apache/asn1/codec/stateful/DecoderCallback;)V
    .locals 0

    .line 397
    invoke-static {p0, p3}, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public decode(B)Lorg/apache/asn1/ber/Tuple;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/asn1/codec/DecoderException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 224
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 225
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 226
    iget-object v1, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->tlvList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 227
    iget-object v2, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->decoder:Lorg/apache/asn1/ber/BERDecoder;

    invoke-virtual {v2, p1}, Lorg/apache/asn1/ber/BERDecoder;->decode(Ljava/lang/Object;)V

    .line 229
    iget-object p1, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->tlvList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->tlvList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    iget-object p1, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->tlvList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/ber/Tuple;

    return-object p1

    .line 231
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->decoder:Lorg/apache/asn1/ber/BERDecoder;

    invoke-virtual {p1}, Lorg/apache/asn1/ber/BERDecoder;->getCurrentTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/lang/String;)Lorg/apache/asn1/ber/Tuple;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/asn1/codec/DecoderException;
        }
    .end annotation

    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/asn1/codec/binary/BinaryCodec;->fromAscii([B)[B

    move-result-object p1

    .line 202
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 203
    iget-object v0, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->tlvList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 204
    iget-object v1, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->decoder:Lorg/apache/asn1/ber/BERDecoder;

    invoke-virtual {v1, p1}, Lorg/apache/asn1/ber/BERDecoder;->decode(Ljava/lang/Object;)V

    .line 206
    iget-object p1, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->tlvList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->tlvList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    iget-object p1, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->tlvList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/ber/Tuple;

    return-object p1

    .line 208
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->decoder:Lorg/apache/asn1/ber/BERDecoder;

    invoke-virtual {p1}, Lorg/apache/asn1/ber/BERDecoder;->getCurrentTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/nio/ByteBuffer;)Lorg/apache/asn1/ber/Tuple;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/asn1/codec/DecoderException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->tlvList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 248
    iget-object v1, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->decoder:Lorg/apache/asn1/ber/BERDecoder;

    invoke-virtual {v1, p1}, Lorg/apache/asn1/ber/BERDecoder;->decode(Ljava/lang/Object;)V

    .line 250
    iget-object p1, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->tlvList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->tlvList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    iget-object p1, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->tlvList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/ber/Tuple;

    return-object p1

    .line 252
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->decoder:Lorg/apache/asn1/ber/BERDecoder;

    invoke-virtual {p1}, Lorg/apache/asn1/ber/BERDecoder;->getCurrentTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/apache/asn1/ber/Tuple;Ljava/nio/ByteBuffer;)Lorg/apache/asn1/ber/Tuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/asn1/codec/DecoderException;
        }
    .end annotation

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-virtual {p1, v0}, Lorg/apache/asn1/ber/Tuple;->toEncodedBuffer(Ljava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 271
    iget-object p2, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->tlvList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 272
    iget-object v0, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->decoder:Lorg/apache/asn1/ber/BERDecoder;

    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/BERDecoder;->decode(Ljava/lang/Object;)V

    .line 274
    iget-object p1, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->tlvList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->tlvList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    iget-object p1, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->tlvList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/ber/Tuple;

    return-object p1

    .line 276
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->decoder:Lorg/apache/asn1/ber/BERDecoder;

    invoke-virtual {p1}, Lorg/apache/asn1/ber/BERDecoder;->getTupleStack()Ljava/util/Stack;

    move-result-object p1

    .line 278
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 280
    iget-object p1, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->decoder:Lorg/apache/asn1/ber/BERDecoder;

    invoke-virtual {p1}, Lorg/apache/asn1/ber/BERDecoder;->getCurrentTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object p1

    return-object p1

    .line 284
    :cond_2
    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/ber/Tuple;

    return-object p1
.end method

.method public decode([B)Lorg/apache/asn1/ber/Tuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/asn1/codec/DecoderException;
        }
    .end annotation

    .line 319
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->decode(Ljava/nio/ByteBuffer;)Lorg/apache/asn1/ber/Tuple;

    .line 320
    iget-object p1, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->tlvList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/ber/Tuple;

    return-object p1
.end method

.method public decode([Lorg/apache/asn1/ber/Tuple;[Ljava/nio/ByteBuffer;)Lorg/apache/asn1/ber/Tuple;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/asn1/codec/DecoderException;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->tlvList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 304
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 306
    aget-object v2, p1, v1

    aget-object v3, p2, v1

    invoke-virtual {p0, v2, v3}, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->decode(Lorg/apache/asn1/ber/Tuple;Ljava/nio/ByteBuffer;)Lorg/apache/asn1/ber/Tuple;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    :cond_0
    iget-object p1, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->tlvList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->tlvList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 314
    :cond_1
    iget-object p1, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->tlvList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/ber/Tuple;

    return-object p1

    .line 311
    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->decoder:Lorg/apache/asn1/ber/BERDecoder;

    invoke-virtual {p1}, Lorg/apache/asn1/ber/BERDecoder;->getCurrentTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object p1

    return-object p1
.end method

.method public decodeOccurred(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Ljava/lang/Object;)V
    .locals 0

    .line 362
    check-cast p2, Lorg/apache/asn1/ber/Tuple;

    .line 363
    iget-object p1, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->tlvList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lorg/apache/asn1/ber/Tuple;->clone()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    sget-object p1, Lorg/apache/asn1/ber/BERDecoderState;->VALUE:Lorg/apache/asn1/ber/BERDecoderState;

    iget-object p2, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->decoder:Lorg/apache/asn1/ber/BERDecoder;

    invoke-virtual {p2}, Lorg/apache/asn1/ber/BERDecoder;->getState()Lorg/apache/asn1/ber/BERDecoderState;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 365
    iget-object p1, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public error(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Ljava/lang/Exception;)V
    .locals 0

    .line 407
    invoke-static {p2}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->fail(Ljava/lang/String;)V

    return-void
.end method

.method public fatalError(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Ljava/lang/Exception;)V
    .locals 0

    .line 417
    invoke-static {p2}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->fail(Ljava/lang/String;)V

    return-void
.end method

.method public fragment(Ljava/nio/ByteBuffer;I)[Ljava/nio/ByteBuffer;
    .locals 5

    .line 151
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    if-lez p2, :cond_3

    .line 160
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    div-int/2addr v0, p2

    .line 161
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    rem-int/2addr v1, p2

    if-nez v1, :cond_0

    .line 168
    new-array v2, v0, [Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 172
    new-array v2, v2, [Ljava/nio/ByteBuffer;

    .line 173
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v2, v0

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    .line 178
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    aput-object v4, v2, v3

    .line 179
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, p2

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    .line 184
    aget-object p2, v2, v0

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 185
    aget-object p1, v2, v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_2
    return-object v2

    .line 156
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "fragment size should be 1 or more but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fragment([BI)[[B
    .locals 7

    const/4 v0, 0x0

    .line 97
    check-cast v0, [[B

    if-lez p2, :cond_3

    .line 105
    array-length v0, p1

    div-int/2addr v0, p2

    .line 106
    array-length v1, p1

    rem-int/2addr v1, p2

    if-nez v1, :cond_0

    .line 113
    new-array v2, v0, [[B

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 117
    new-array v2, v2, [[B

    .line 118
    new-array v3, v1, [B

    aput-object v3, v2, v0

    :goto_0
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_1

    .line 123
    new-array v5, p2, [B

    aput-object v5, v2, v4

    mul-int v6, v4, p2

    .line 124
    invoke-static {p1, v6, v5, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    mul-int/2addr p2, v0

    .line 130
    aget-object v0, v2, v0

    .line 131
    invoke-static {p1, p2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-object v2

    .line 101
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "fragment size should be 1 or more but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lengthDecoded(Lorg/apache/asn1/ber/Tuple;)V
    .locals 1

    .line 340
    iget-object v0, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->decoder:Lorg/apache/asn1/ber/BERDecoder;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/BERDecoder;->getCurrentTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/Tuple;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->assertTrue(Z)V

    .line 341
    sget-object p1, Lorg/apache/asn1/ber/BERDecoderState;->LENGTH:Lorg/apache/asn1/ber/BERDecoderState;

    iget-object v0, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->decoder:Lorg/apache/asn1/ber/BERDecoder;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/BERDecoder;->getState()Lorg/apache/asn1/ber/BERDecoderState;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 342
    iget-object p1, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method public monitorSet(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Lorg/apache/asn1/codec/stateful/DecoderMonitor;)V
    .locals 0

    .line 428
    invoke-static {p0, p2}, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public partialValueDecoded(Lorg/apache/asn1/ber/Tuple;)V
    .locals 1

    .line 352
    iget-object v0, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->buf:Ljava/nio/ByteBuffer;

    iget-object p1, p1, Lorg/apache/asn1/ber/Tuple;->valueChunk:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected setUp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    invoke-super {p0}, Ljunit/framework/TestCase;->setUp()V

    .line 57
    new-instance v0, Lorg/apache/asn1/ber/BERDecoder;

    invoke-direct {v0}, Lorg/apache/asn1/ber/BERDecoder;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->decoder:Lorg/apache/asn1/ber/BERDecoder;

    .line 58
    invoke-virtual {v0, p0}, Lorg/apache/asn1/ber/BERDecoder;->setCallback(Lorg/apache/asn1/codec/stateful/DecoderCallback;)V

    .line 59
    iget-object v0, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->decoder:Lorg/apache/asn1/ber/BERDecoder;

    invoke-virtual {v0, p0}, Lorg/apache/asn1/ber/BERDecoder;->setDecoderMonitor(Lorg/apache/asn1/codec/stateful/DecoderMonitor;)V

    return-void
.end method

.method public tagDecoded(Lorg/apache/asn1/ber/Tuple;)V
    .locals 1

    .line 329
    iget-object v0, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->decoder:Lorg/apache/asn1/ber/BERDecoder;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/BERDecoder;->getCurrentTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/Tuple;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->assertTrue(Z)V

    .line 330
    sget-object p1, Lorg/apache/asn1/ber/BERDecoderState;->TAG:Lorg/apache/asn1/ber/BERDecoderState;

    iget-object v0, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->decoder:Lorg/apache/asn1/ber/BERDecoder;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/BERDecoder;->getState()Lorg/apache/asn1/ber/BERDecoderState;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected tearDown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-super {p0}, Ljunit/framework/TestCase;->tearDown()V

    .line 69
    iget-object v0, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->tlvList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->decoder:Lorg/apache/asn1/ber/BERDecoder;

    return-void
.end method

.method public warning(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Ljava/lang/Exception;)V
    .locals 0

    .line 438
    invoke-static {p2}, Lorg/apache/asn1/ber/AbstractDecoderTestCase;->assertNotNull(Ljava/lang/Object;)V

    return-void
.end method
