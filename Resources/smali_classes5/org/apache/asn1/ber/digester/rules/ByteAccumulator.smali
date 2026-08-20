.class public Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;
.super Ljava/lang/Object;
.source "ByteAccumulator.java"


# static fields
.field private static final DEFAULT_INCREMENT:I = 0x64

.field private static final DEFAULT_INIT_SIZE:I


# instance fields
.field private bs:[B

.field private increment:I

.field private initial:I

.field private pos:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->initial:I

    .line 58
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    iput-object v1, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->bs:[B

    .line 59
    iput v0, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->pos:I

    .line 60
    iput v0, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->initial:I

    const/16 v0, 0x64

    .line 61
    iput v0, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->increment:I

    return-void
.end method

.method constructor <init>(I)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->initial:I

    if-gtz p1, :cond_0

    .line 75
    sget-object p1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    iput-object p1, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->bs:[B

    .line 76
    iput v0, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->initial:I

    goto :goto_0

    .line 80
    :cond_0
    new-array v1, p1, [B

    iput-object v1, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->bs:[B

    .line 81
    iput p1, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->initial:I

    .line 84
    :goto_0
    iput v0, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->pos:I

    const/16 p1, 0x64

    .line 85
    iput p1, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->increment:I

    return-void
.end method


# virtual methods
.method public drain()Ljava/nio/ByteBuffer;
    .locals 4

    .line 153
    iget v0, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->pos:I

    iget-object v1, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->bs:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 155
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_0
    invoke-static {v1, v3, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 162
    :goto_0
    iget v1, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->initial:I

    if-gtz v1, :cond_1

    .line 164
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    iput-object v1, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->bs:[B

    goto :goto_1

    .line 168
    :cond_1
    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->bs:[B

    .line 171
    :goto_1
    iput v3, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->pos:I

    return-object v0
.end method

.method public drain(I)Ljava/nio/ByteBuffer;
    .locals 4

    .line 187
    iget v0, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->pos:I

    iget-object v1, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->bs:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 189
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_0
    invoke-static {v1, v3, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    if-gtz p1, :cond_1

    .line 198
    sget-object p1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    iput-object p1, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->bs:[B

    goto :goto_1

    .line 202
    :cond_1
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->bs:[B

    .line 205
    :goto_1
    iput v3, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->pos:I

    return-object v0
.end method

.method public ensureCapacity(I)V
    .locals 3

    .line 218
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->bs:[B

    array-length v1, v0

    if-ge v1, p1, :cond_1

    .line 220
    new-array p1, p1, [B

    .line 222
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    if-eq v0, v1, :cond_0

    .line 224
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->bs:[B

    iget v1, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->pos:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    :cond_0
    iput-object p1, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->bs:[B

    :cond_1
    return-void
.end method

.method public fill(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 98
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    iget v0, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->pos:I

    iget-object v1, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->bs:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 104
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->increment:I

    if-le v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->bs:[B

    array-length v0, v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    goto :goto_1

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->bs:[B

    array-length v0, v0

    :goto_1
    add-int/2addr v0, v1

    .line 113
    new-array v0, v0, [B

    .line 114
    iget-object v1, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->bs:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    iput-object v0, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->bs:[B

    .line 122
    :cond_1
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->bs:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->pos:I

    sub-int/2addr v0, v1

    .line 123
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v1, v0, :cond_2

    .line 125
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 126
    iget-object v1, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->bs:[B

    iget v2, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->pos:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 127
    iget p1, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->pos:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->pos:I

    return-void

    .line 136
    :cond_2
    iget-object v1, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->bs:[B

    iget v2, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->pos:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 137
    iget v1, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->pos:I

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getCapacity()I
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->bs:[B

    array-length v0, v0

    return v0
.end method

.method public getGrowthIncrement()I
    .locals 1

    .line 239
    iget v0, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->increment:I

    return v0
.end method

.method public getInitialSize()I
    .locals 1

    .line 250
    iget v0, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->initial:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 286
    iget v0, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->pos:I

    return v0
.end method

.method public getRemainingSpace()I
    .locals 2

    .line 274
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->bs:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method
