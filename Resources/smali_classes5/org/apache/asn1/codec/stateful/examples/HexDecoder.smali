.class public Lorg/apache/asn1/codec/stateful/examples/HexDecoder;
.super Lorg/apache/asn1/codec/stateful/AbstractStatefulDecoder;
.source "HexDecoder.java"


# instance fields
.field private decoded:Ljava/nio/ByteBuffer;

.field private expectingMsn:Z

.field private lsn:B

.field private msn:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lorg/apache/asn1/codec/stateful/AbstractStatefulDecoder;-><init>()V

    const/16 v0, 0x80

    .line 32
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/asn1/codec/stateful/examples/HexDecoder;->decoded:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lorg/apache/asn1/codec/stateful/examples/HexDecoder;->expectingMsn:Z

    return-void
.end method

.method private getNibble(B)B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/asn1/codec/DecoderException;
        }
    .end annotation

    const/16 v0, 0x40

    if-le p1, v0, :cond_0

    const/16 v0, 0x5b

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x20

    int-to-byte p1, p1

    :cond_0
    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 136
    new-instance v0, Lorg/apache/asn1/codec/DecoderException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "non-hex character \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    int-to-char p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, "\' encountered"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/asn1/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 p1, 0xf

    return p1

    :pswitch_1
    const/16 p1, 0xe

    return p1

    :pswitch_2
    const/16 p1, 0xd

    return p1

    :pswitch_3
    const/16 p1, 0xc

    return p1

    :pswitch_4
    const/16 p1, 0xb

    return p1

    :pswitch_5
    const/16 p1, 0xa

    return p1

    :pswitch_6
    const/16 p1, 0x9

    return p1

    :pswitch_7
    const/16 p1, 0x8

    return p1

    :pswitch_8
    const/4 p1, 0x7

    return p1

    :pswitch_9
    const/4 p1, 0x6

    return p1

    :pswitch_a
    const/4 p1, 0x5

    return p1

    :pswitch_b
    const/4 p1, 0x4

    return p1

    :pswitch_c
    const/4 p1, 0x3

    return p1

    :pswitch_d
    const/4 p1, 0x2

    return p1

    :pswitch_e
    const/4 p1, 0x1

    return p1

    :pswitch_f
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x61
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/asn1/codec/DecoderException;
        }
    .end annotation

    .line 40
    check-cast p1, Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_4

    .line 42
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 47
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/examples/HexDecoder;->decoded:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/examples/HexDecoder;->decoded:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 52
    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/examples/HexDecoder;->decoded:Ljava/nio/ByteBuffer;

    invoke-super {p0, v0}, Lorg/apache/asn1/codec/stateful/AbstractStatefulDecoder;->decodeOccurred(Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/examples/HexDecoder;->decoded:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 56
    :cond_1
    iget-boolean v0, p0, Lorg/apache/asn1/codec/stateful/examples/HexDecoder;->expectingMsn:Z

    if-eqz v0, :cond_2

    .line 58
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/asn1/codec/stateful/examples/HexDecoder;->msn:B

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lorg/apache/asn1/codec/stateful/examples/HexDecoder;->expectingMsn:Z

    goto :goto_1

    .line 63
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/asn1/codec/stateful/examples/HexDecoder;->lsn:B

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lorg/apache/asn1/codec/stateful/examples/HexDecoder;->expectingMsn:Z

    .line 71
    :goto_1
    iget-boolean v0, p0, Lorg/apache/asn1/codec/stateful/examples/HexDecoder;->expectingMsn:Z

    if-eqz v0, :cond_0

    .line 73
    iget-byte v0, p0, Lorg/apache/asn1/codec/stateful/examples/HexDecoder;->lsn:B

    invoke-direct {p0, v0}, Lorg/apache/asn1/codec/stateful/examples/HexDecoder;->getNibble(B)B

    move-result v0

    .line 74
    iget-byte v1, p0, Lorg/apache/asn1/codec/stateful/examples/HexDecoder;->msn:B

    invoke-direct {p0, v1}, Lorg/apache/asn1/codec/stateful/examples/HexDecoder;->getNibble(B)B

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 75
    iget-object v1, p0, Lorg/apache/asn1/codec/stateful/examples/HexDecoder;->decoded:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 83
    :cond_3
    iget-boolean p1, p0, Lorg/apache/asn1/codec/stateful/examples/HexDecoder;->expectingMsn:Z

    if-eqz p1, :cond_4

    .line 85
    iget-object p1, p0, Lorg/apache/asn1/codec/stateful/examples/HexDecoder;->decoded:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 86
    iget-object p1, p0, Lorg/apache/asn1/codec/stateful/examples/HexDecoder;->decoded:Ljava/nio/ByteBuffer;

    invoke-super {p0, p1}, Lorg/apache/asn1/codec/stateful/AbstractStatefulDecoder;->decodeOccurred(Ljava/lang/Object;)V

    .line 87
    iget-object p1, p0, Lorg/apache/asn1/codec/stateful/examples/HexDecoder;->decoded:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_4
    :goto_2
    return-void
.end method
