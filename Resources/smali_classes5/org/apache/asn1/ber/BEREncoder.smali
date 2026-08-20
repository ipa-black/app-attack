.class public Lorg/apache/asn1/ber/BEREncoder;
.super Lorg/apache/asn1/codec/stateful/AbstractStatefulEncoder;
.source "BEREncoder.java"

# interfaces
.implements Lorg/apache/asn1/ber/TupleEventConsumer;


# static fields
.field private static final DEFAULT_BUFSZ:I = 0x20


# instance fields
.field private buf:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    .line 52
    invoke-direct {p0, v0}, Lorg/apache/asn1/ber/BEREncoder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 62
    invoke-direct {p0}, Lorg/apache/asn1/codec/stateful/AbstractStatefulEncoder;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lorg/apache/asn1/ber/BEREncoder;->buf:Ljava/nio/ByteBuffer;

    .line 63
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/asn1/ber/BEREncoder;->buf:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public chunkedValue(Lorg/apache/asn1/ber/Tuple;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 143
    iget-object p2, p0, Lorg/apache/asn1/ber/BEREncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    if-lez p2, :cond_0

    .line 145
    iget-object p2, p0, Lorg/apache/asn1/ber/BEREncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 146
    iget-object p2, p0, Lorg/apache/asn1/ber/BEREncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p2}, Lorg/apache/asn1/ber/BEREncoder;->encodeOccurred(Ljava/lang/Object;)V

    .line 147
    iget-object p2, p0, Lorg/apache/asn1/ber/BEREncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 150
    :cond_0
    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->getLastValueChunk()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/asn1/ber/BEREncoder;->encodeOccurred(Ljava/lang/Object;)V

    return-void
.end method

.method public encode(Ljava/lang/Object;)V
    .locals 1

    .line 80
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This encoder receives tuples ONLY via callback methods"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public finish(Lorg/apache/asn1/ber/Tuple;)V
    .locals 1

    .line 168
    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->isIndefinite()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 175
    iget-object p1, p0, Lorg/apache/asn1/ber/BEREncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    .line 177
    iget-object p1, p0, Lorg/apache/asn1/ber/BEREncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 178
    iget-object p1, p0, Lorg/apache/asn1/ber/BEREncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lorg/apache/asn1/ber/BEREncoder;->encodeOccurred(Ljava/lang/Object;)V

    .line 179
    iget-object p1, p0, Lorg/apache/asn1/ber/BEREncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 182
    :cond_1
    iget-object p1, p0, Lorg/apache/asn1/ber/BEREncoder;->buf:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 183
    iget-object p1, p0, Lorg/apache/asn1/ber/BEREncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 184
    iget-object p1, p0, Lorg/apache/asn1/ber/BEREncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 185
    iget-object p1, p0, Lorg/apache/asn1/ber/BEREncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lorg/apache/asn1/ber/BEREncoder;->encodeOccurred(Ljava/lang/Object;)V

    .line 186
    iget-object p1, p0, Lorg/apache/asn1/ber/BEREncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_2
    return-void
.end method

.method public length(Lorg/apache/asn1/ber/Tuple;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lorg/apache/asn1/ber/BEREncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->getLengthLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lorg/apache/asn1/ber/BEREncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->getLengthLength()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/Tuple;->setLength(Ljava/nio/ByteBuffer;I)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/apache/asn1/ber/BEREncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 124
    iget-object v0, p0, Lorg/apache/asn1/ber/BEREncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lorg/apache/asn1/ber/BEREncoder;->encodeOccurred(Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lorg/apache/asn1/ber/BEREncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 126
    iget-object v0, p0, Lorg/apache/asn1/ber/BEREncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->getLengthLength()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/Tuple;->setLength(Ljava/nio/ByteBuffer;I)V

    :goto_0
    return-void
.end method

.method public tag(Lorg/apache/asn1/ber/Tuple;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lorg/apache/asn1/ber/BEREncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->getTagLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lorg/apache/asn1/ber/BEREncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->getTagLength()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/Tuple;->setTag(Ljava/nio/ByteBuffer;I)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/apache/asn1/ber/BEREncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 101
    iget-object v0, p0, Lorg/apache/asn1/ber/BEREncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lorg/apache/asn1/ber/BEREncoder;->encodeOccurred(Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lorg/apache/asn1/ber/BEREncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 103
    iget-object v0, p0, Lorg/apache/asn1/ber/BEREncoder;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->getTagLength()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/Tuple;->setTag(Ljava/nio/ByteBuffer;I)V

    :goto_0
    return-void
.end method
