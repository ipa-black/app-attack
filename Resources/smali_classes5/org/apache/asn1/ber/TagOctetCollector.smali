.class public Lorg/apache/asn1/ber/TagOctetCollector;
.super Ljava/lang/Object;
.source "TagOctetCollector.java"


# instance fields
.field private _size:I

.field private intValue:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lorg/apache/asn1/ber/TagOctetCollector;->intValue:I

    .line 37
    iput v0, p0, Lorg/apache/asn1/ber/TagOctetCollector;->_size:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lorg/apache/asn1/ber/TagOctetCollector;->intValue:I

    .line 77
    iput v0, p0, Lorg/apache/asn1/ber/TagOctetCollector;->_size:I

    return-void
.end method

.method public get(I)B
    .locals 3

    .line 155
    iget v0, p0, Lorg/apache/asn1/ber/TagOctetCollector;->_size:I

    if-ge p1, v0, :cond_4

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 173
    iget p1, p0, Lorg/apache/asn1/ber/TagOctetCollector;->intValue:I

    and-int/lit16 p1, p1, 0xff

    goto :goto_0

    .line 176
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot support more than 4 octets"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 170
    :cond_1
    iget p1, p0, Lorg/apache/asn1/ber/TagOctetCollector;->intValue:I

    const v0, 0xff00

    and-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x8

    goto :goto_0

    .line 167
    :cond_2
    iget p1, p0, Lorg/apache/asn1/ber/TagOctetCollector;->intValue:I

    const/high16 v0, 0xff0000

    and-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x10

    goto :goto_0

    .line 164
    :cond_3
    iget p1, p0, Lorg/apache/asn1/ber/TagOctetCollector;->intValue:I

    const/high16 v0, -0x1000000

    and-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x18

    :goto_0
    int-to-byte p1, p1

    return p1

    .line 157
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "accesing index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, " with a size of "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    iget v1, p0, Lorg/apache/asn1/ber/TagOctetCollector;->_size:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIntValue()I
    .locals 1

    .line 99
    iget v0, p0, Lorg/apache/asn1/ber/TagOctetCollector;->intValue:I

    return v0
.end method

.method public put(B)V
    .locals 3

    .line 47
    iget v0, p0, Lorg/apache/asn1/ber/TagOctetCollector;->_size:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 62
    iget v0, p0, Lorg/apache/asn1/ber/TagOctetCollector;->intValue:I

    or-int/2addr p1, v0

    iput p1, p0, Lorg/apache/asn1/ber/TagOctetCollector;->intValue:I

    const/4 p1, 0x4

    .line 63
    iput p1, p0, Lorg/apache/asn1/ber/TagOctetCollector;->_size:I

    goto :goto_0

    .line 66
    :cond_0
    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p1

    .line 58
    :cond_1
    iget v0, p0, Lorg/apache/asn1/ber/TagOctetCollector;->intValue:I

    shl-int/lit8 p1, p1, 0x8

    const v2, 0xff00

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    iput p1, p0, Lorg/apache/asn1/ber/TagOctetCollector;->intValue:I

    .line 59
    iput v1, p0, Lorg/apache/asn1/ber/TagOctetCollector;->_size:I

    goto :goto_0

    .line 54
    :cond_2
    iget v0, p0, Lorg/apache/asn1/ber/TagOctetCollector;->intValue:I

    shl-int/lit8 p1, p1, 0x10

    const/high16 v1, 0xff0000

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    iput p1, p0, Lorg/apache/asn1/ber/TagOctetCollector;->intValue:I

    .line 55
    iput v2, p0, Lorg/apache/asn1/ber/TagOctetCollector;->_size:I

    goto :goto_0

    :cond_3
    shl-int/lit8 p1, p1, 0x18

    .line 50
    iput p1, p0, Lorg/apache/asn1/ber/TagOctetCollector;->intValue:I

    .line 51
    iput v1, p0, Lorg/apache/asn1/ber/TagOctetCollector;->_size:I

    :goto_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 88
    iget v0, p0, Lorg/apache/asn1/ber/TagOctetCollector;->_size:I

    return v0
.end method

.method public toArray()[B
    .locals 10

    .line 110
    iget v0, p0, Lorg/apache/asn1/ber/TagOctetCollector;->_size:I

    new-array v1, v0, [B

    if-eqz v0, :cond_4

    const/high16 v2, -0x1000000

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    const/high16 v5, 0xff0000

    const/4 v6, 0x2

    if-eq v0, v6, :cond_2

    const v7, 0xff00

    const/4 v8, 0x3

    if-eq v0, v8, :cond_1

    const/4 v9, 0x4

    if-ne v0, v9, :cond_0

    .line 130
    iget v0, p0, Lorg/apache/asn1/ber/TagOctetCollector;->intValue:I

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    and-int v2, v0, v5

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    .line 131
    aput-byte v2, v1, v4

    and-int v2, v0, v7

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    .line 132
    aput-byte v2, v1, v6

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 133
    aput-byte v0, v1, v8

    goto :goto_0

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot support more than 4 octets"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    iget v0, p0, Lorg/apache/asn1/ber/TagOctetCollector;->intValue:I

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    and-int v2, v0, v5

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    .line 126
    aput-byte v2, v1, v4

    and-int/2addr v0, v7

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    .line 127
    aput-byte v0, v1, v6

    goto :goto_0

    .line 121
    :cond_2
    iget v0, p0, Lorg/apache/asn1/ber/TagOctetCollector;->intValue:I

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    and-int/2addr v0, v5

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    .line 122
    aput-byte v0, v1, v4

    goto :goto_0

    .line 118
    :cond_3
    iget v0, p0, Lorg/apache/asn1/ber/TagOctetCollector;->intValue:I

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    goto :goto_0

    .line 115
    :cond_4
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    :goto_0
    return-object v1
.end method
