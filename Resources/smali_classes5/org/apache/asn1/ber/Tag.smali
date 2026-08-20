.class public Lorg/apache/asn1/ber/Tag;
.super Ljava/lang/Object;
.source "Tag.java"


# static fields
.field private static final CONSTRUCTED_FLAG:I = 0x20

.field private static final FOUR_OCTET_IDMAX:I = 0x1fffff

.field private static final LONG_FLAG:I = 0x80

.field static final LONG_MASK:I = 0x7f

.field private static final ONE_OCTET_IDMAX:I = 0x1e

.field static final SHORT_MASK:I = 0x1f

.field private static final THREE_OCTET_IDMAX:I = 0x3fff

.field private static final TWO_OCTET_IDMAX:I = 0x7f


# instance fields
.field private final buf:Lorg/apache/asn1/ber/TagOctetCollector;

.field private id:I

.field private isFixated:Z

.field private isPrimitive:Z

.field private typeClass:Lorg/apache/asn1/ber/TypeClass;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lorg/apache/asn1/ber/Tag;->id:I

    const/4 v1, 0x1

    .line 56
    iput-boolean v1, p0, Lorg/apache/asn1/ber/Tag;->isPrimitive:Z

    .line 58
    iput-boolean v0, p0, Lorg/apache/asn1/ber/Tag;->isFixated:Z

    .line 60
    sget-object v0, Lorg/apache/asn1/ber/TypeClass;->APPLICATION:Lorg/apache/asn1/ber/TypeClass;

    iput-object v0, p0, Lorg/apache/asn1/ber/Tag;->typeClass:Lorg/apache/asn1/ber/TypeClass;

    .line 62
    new-instance v0, Lorg/apache/asn1/ber/TagOctetCollector;

    invoke-direct {v0}, Lorg/apache/asn1/ber/TagOctetCollector;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/Tag;->buf:Lorg/apache/asn1/ber/TagOctetCollector;

    return-void
.end method

.method public static final getIntEncodedTag(Lorg/apache/asn1/ber/TypeClass;IZ)I
    .locals 0

    .line 272
    invoke-virtual {p0}, Lorg/apache/asn1/ber/TypeClass;->getValue()I

    move-result p0

    shl-int/lit8 p0, p0, 0x18

    if-eqz p2, :cond_0

    const/high16 p2, 0x20000000

    or-int/2addr p0, p2

    .line 279
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/asn1/ber/Tag;->setIntEncodedId(II)I

    move-result p0

    return p0
.end method

.method public static final getTagId(I)I
    .locals 3

    shr-int/lit8 v0, p0, 0x18

    const/16 v1, 0x1f

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    and-int/lit8 v1, v0, 0x7f

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_1

    return v1

    :cond_1
    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_2

    shl-int/lit8 p0, v1, 0x7

    return p0

    :cond_2
    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_3

    return v1

    :cond_3
    shl-int/lit8 v0, v1, 0x7

    and-int/lit8 p0, p0, 0x7f

    or-int/2addr p0, v0

    return p0
.end method

.method public static final getTagId(Lorg/apache/asn1/ber/TagOctetCollector;)I
    .locals 4

    const/4 v0, 0x0

    .line 395
    invoke-virtual {p0, v0}, Lorg/apache/asn1/ber/TagOctetCollector;->get(I)B

    move-result v1

    const/16 v2, 0x1f

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    .line 398
    invoke-virtual {p0}, Lorg/apache/asn1/ber/TagOctetCollector;->size()I

    move-result v2

    if-ne v2, v3, :cond_0

    return v1

    .line 407
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/asn1/ber/TagOctetCollector;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    shl-int/lit8 v0, v0, 0x7

    .line 409
    invoke-virtual {p0, v3}, Lorg/apache/asn1/ber/TagOctetCollector;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x7f

    or-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static final getTagId([B)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/asn1/codec/DecoderException;
        }
    .end annotation

    .line 297
    array-length v0, p0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 307
    aget-byte v1, p0, v0

    const/16 v2, 0x1f

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    .line 310
    array-length v2, p0

    if-ne v2, v3, :cond_0

    return v1

    .line 319
    :cond_0
    :goto_0
    array-length v1, p0

    if-ge v3, v1, :cond_1

    shl-int/lit8 v0, v0, 0x7

    .line 321
    aget-byte v1, p0, v3

    and-int/lit8 v1, v1, 0x7f

    or-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0

    .line 304
    :cond_2
    new-instance p0, Lorg/apache/asn1/codec/DecoderException;

    const-string v0, "Tag number is too large."

    invoke-direct {p0, v0}, Lorg/apache/asn1/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final isConstructed(I)Z
    .locals 1

    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isPrimitive(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x20

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRawTagConstructed(I)Z
    .locals 1

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final setIntEncodedId(II)I
    .locals 3

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_0

    shl-int/lit8 p1, p1, 0x18

    :goto_0
    or-int/2addr p0, p1

    goto :goto_1

    :cond_0
    const/high16 v0, 0x1f000000

    const/16 v1, 0x7f

    if-gt p1, v1, :cond_1

    or-int/2addr p0, v0

    and-int/2addr p1, v1

    shl-int/lit8 p1, p1, 0x10

    goto :goto_0

    :cond_1
    const/16 v2, 0x3fff

    if-gt p1, v2, :cond_2

    or-int/2addr p0, v0

    and-int/lit16 v0, p1, 0x3f80

    shl-int/lit8 v0, v0, 0x9

    or-int/2addr p0, v0

    and-int/2addr p1, v1

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    const/high16 p1, 0x800000

    goto :goto_0

    :cond_2
    const v2, 0x1fffff

    if-gt p1, v2, :cond_3

    or-int/2addr p0, v0

    const v0, 0x1fc000

    and-int/2addr v0, p1

    shl-int/lit8 v0, v0, 0x2

    or-int/2addr p0, v0

    and-int/lit16 v0, p1, 0x3f80

    shl-int/lit8 v0, v0, 0x1

    or-int/2addr p0, v0

    and-int/2addr p1, v1

    or-int/2addr p0, p1

    const p1, 0x808000

    goto :goto_0

    :goto_1
    return p0

    .line 250
    :cond_3
    new-instance p0, Ljava/lang/StringBuffer;

    const-string v0, "Id argument value of "

    invoke-direct {p0, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string p1, " was greater than the maximum supported id of 2097151"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 253
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method add(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/asn1/codec/DecoderException;
        }
    .end annotation

    .line 103
    iget-boolean v0, p0, Lorg/apache/asn1/ber/Tag;->isFixated:Z

    if-nez v0, :cond_2

    .line 108
    iget-object v0, p0, Lorg/apache/asn1/ber/Tag;->buf:Lorg/apache/asn1/ber/TagOctetCollector;

    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/TagOctetCollector;->put(B)V

    .line 110
    iget-object v0, p0, Lorg/apache/asn1/ber/Tag;->buf:Lorg/apache/asn1/ber/TagOctetCollector;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/TagOctetCollector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1f

    and-int/2addr p1, v0

    if-eq p1, v0, :cond_1

    .line 115
    invoke-virtual {p0}, Lorg/apache/asn1/ber/Tag;->fixate()V

    goto :goto_0

    :cond_0
    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_1

    .line 127
    invoke-virtual {p0}, Lorg/apache/asn1/ber/Tag;->fixate()V

    :cond_1
    :goto_0
    return-void

    .line 105
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "data added to fixated tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method clear()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lorg/apache/asn1/ber/Tag;->id:I

    .line 72
    iput-boolean v0, p0, Lorg/apache/asn1/ber/Tag;->isFixated:Z

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lorg/apache/asn1/ber/Tag;->isPrimitive:Z

    .line 74
    sget-object v0, Lorg/apache/asn1/ber/TypeClass;->APPLICATION:Lorg/apache/asn1/ber/TypeClass;

    iput-object v0, p0, Lorg/apache/asn1/ber/Tag;->typeClass:Lorg/apache/asn1/ber/TypeClass;

    .line 75
    iget-object v0, p0, Lorg/apache/asn1/ber/Tag;->buf:Lorg/apache/asn1/ber/TagOctetCollector;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/TagOctetCollector;->clear()V

    return-void
.end method

.method fixate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/asn1/codec/DecoderException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lorg/apache/asn1/ber/Tag;->isFixated:Z

    .line 89
    iget-object v0, p0, Lorg/apache/asn1/ber/Tag;->buf:Lorg/apache/asn1/ber/TagOctetCollector;

    invoke-static {v0}, Lorg/apache/asn1/ber/Tag;->getTagId(Lorg/apache/asn1/ber/TagOctetCollector;)I

    move-result v0

    iput v0, p0, Lorg/apache/asn1/ber/Tag;->id:I

    .line 90
    iget-object v0, p0, Lorg/apache/asn1/ber/Tag;->buf:Lorg/apache/asn1/ber/TagOctetCollector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/TagOctetCollector;->get(I)B

    move-result v0

    invoke-static {v0}, Lorg/apache/asn1/ber/Tag;->isPrimitive(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/asn1/ber/Tag;->isPrimitive:Z

    .line 91
    iget-object v0, p0, Lorg/apache/asn1/ber/Tag;->buf:Lorg/apache/asn1/ber/TagOctetCollector;

    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/TagOctetCollector;->get(I)B

    move-result v0

    invoke-static {v0}, Lorg/apache/asn1/ber/TypeClass;->getTypeClass(I)Lorg/apache/asn1/ber/TypeClass;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/asn1/ber/Tag;->typeClass:Lorg/apache/asn1/ber/TypeClass;

    return-void
.end method

.method public getId()I
    .locals 1

    .line 161
    iget v0, p0, Lorg/apache/asn1/ber/Tag;->id:I

    return v0
.end method

.method public getOctets()[B
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/apache/asn1/ber/Tag;->buf:Lorg/apache/asn1/ber/TagOctetCollector;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/TagOctetCollector;->toArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getRawTag()I
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/apache/asn1/ber/Tag;->buf:Lorg/apache/asn1/ber/TagOctetCollector;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/TagOctetCollector;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getTypeClass()Lorg/apache/asn1/ber/TypeClass;
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/apache/asn1/ber/Tag;->typeClass:Lorg/apache/asn1/ber/TypeClass;

    return-object v0
.end method

.method public isFixated()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lorg/apache/asn1/ber/Tag;->isFixated:Z

    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lorg/apache/asn1/ber/Tag;->isPrimitive:Z

    return v0
.end method

.method public size()I
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/apache/asn1/ber/Tag;->buf:Lorg/apache/asn1/ber/TagOctetCollector;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/TagOctetCollector;->size()I

    move-result v0

    return v0
.end method
