.class public Lorg/apache/asn1/ber/Length;
.super Ljava/lang/Object;
.source "Length.java"


# static fields
.field public static final END_MASK:I = 0x80

.field public static final INDEFINITE:I = -0x2

.field public static final UNDEFINED:I = -0x1


# instance fields
.field private final buf:Ljava/nio/ByteBuffer;

.field private isFixated:Z

.field private numOctets:I

.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lorg/apache/asn1/ber/Length;->value:I

    .line 44
    iput v0, p0, Lorg/apache/asn1/ber/Length;->numOctets:I

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lorg/apache/asn1/ber/Length;->isFixated:Z

    const/4 v0, 0x5

    .line 48
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/asn1/ber/Length;->buf:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static getLength(Ljava/nio/ByteBuffer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/asn1/codec/DecoderException;
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_3

    .line 186
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    if-nez v0, :cond_1

    const/4 p0, -0x2

    return p0

    .line 201
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    shl-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_2

    .line 203
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v1

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x8

    goto :goto_0

    :cond_2
    return v2

    .line 183
    :cond_3
    new-instance p0, Lorg/apache/asn1/codec/DecoderException;

    const-string v0, "Length number is too large."

    invoke-direct {p0, v0}, Lorg/apache/asn1/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method add(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/asn1/codec/DecoderException;
        }
    .end annotation

    .line 98
    iget-boolean v0, p0, Lorg/apache/asn1/ber/Length;->isFixated:Z

    if-nez v0, :cond_5

    .line 103
    iget-object v0, p0, Lorg/apache/asn1/ber/Length;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 105
    iget-object v0, p0, Lorg/apache/asn1/ber/Length;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v1, v0, :cond_2

    const/16 v0, 0x7f

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    const/4 p1, -0x2

    .line 115
    iput p1, p0, Lorg/apache/asn1/ber/Length;->numOctets:I

    .line 116
    invoke-virtual {p0}, Lorg/apache/asn1/ber/Length;->fixate()V

    goto :goto_0

    :cond_0
    if-eq p1, v0, :cond_1

    .line 125
    iput p1, p0, Lorg/apache/asn1/ber/Length;->numOctets:I

    goto :goto_0

    .line 120
    :cond_1
    new-instance p1, Lorg/apache/asn1/codec/DecoderException;

    const-string v0, "The number of octets must not be 127 (reserved for future extension) "

    invoke-direct {p1, v0}, Lorg/apache/asn1/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_2
    invoke-virtual {p0}, Lorg/apache/asn1/ber/Length;->fixate()V

    goto :goto_0

    .line 138
    :cond_3
    iget-object p1, p0, Lorg/apache/asn1/ber/Length;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iget v0, p0, Lorg/apache/asn1/ber/Length;->numOctets:I

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_4

    .line 140
    invoke-virtual {p0}, Lorg/apache/asn1/ber/Length;->fixate()V

    :cond_4
    :goto_0
    return-void

    .line 100
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "data added to fixated length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method clear()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lorg/apache/asn1/ber/Length;->isFixated:Z

    .line 69
    iput v0, p0, Lorg/apache/asn1/ber/Length;->value:I

    const/4 v0, 0x1

    .line 70
    iput v0, p0, Lorg/apache/asn1/ber/Length;->numOctets:I

    .line 71
    iget-object v0, p0, Lorg/apache/asn1/ber/Length;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method fixate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/asn1/codec/DecoderException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/apache/asn1/ber/Length;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 85
    iget-object v0, p0, Lorg/apache/asn1/ber/Length;->buf:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/apache/asn1/ber/Length;->getLength(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lorg/apache/asn1/ber/Length;->value:I

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lorg/apache/asn1/ber/Length;->isFixated:Z

    return-void
.end method

.method public getLength()I
    .locals 1

    .line 152
    iget v0, p0, Lorg/apache/asn1/ber/Length;->value:I

    return v0
.end method

.method public isFixated()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lorg/apache/asn1/ber/Length;->isFixated:Z

    return v0
.end method

.method public size()I
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/apache/asn1/ber/Length;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
