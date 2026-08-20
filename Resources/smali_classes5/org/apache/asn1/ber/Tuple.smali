.class public Lorg/apache/asn1/ber/Tuple;
.super Ljava/lang/Object;
.source "Tuple.java"


# static fields
.field private static final BIT_13:I = 0x4000

.field private static final BIT_15:I = 0x10000

.field private static final BIT_20:I = 0x200000

.field private static final BIT_23:I = 0x1000000

.field private static final BIT_27:I = 0x10000000

.field private static final BIT_5:I = 0x20

.field private static final BIT_6:I = 0x40

.field private static final BIT_7:I = 0x80

.field private static final EMPTY_BUFFER:Ljava/nio/ByteBuffer;


# instance fields
.field id:I

.field index:I

.field isPrimitive:Z

.field length:I

.field rawTag:I

.field typeClass:Lorg/apache/asn1/ber/TypeClass;

.field valueChunk:Ljava/nio/ByteBuffer;

.field valueIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lorg/apache/asn1/ber/Tuple;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lorg/apache/asn1/ber/Tuple;->rawTag:I

    .line 62
    iput v0, p0, Lorg/apache/asn1/ber/Tuple;->id:I

    const/4 v1, 0x1

    .line 64
    iput-boolean v1, p0, Lorg/apache/asn1/ber/Tuple;->isPrimitive:Z

    .line 66
    sget-object v1, Lorg/apache/asn1/ber/TypeClass;->APPLICATION:Lorg/apache/asn1/ber/TypeClass;

    iput-object v1, p0, Lorg/apache/asn1/ber/Tuple;->typeClass:Lorg/apache/asn1/ber/TypeClass;

    .line 68
    iput v0, p0, Lorg/apache/asn1/ber/Tuple;->length:I

    .line 70
    sget-object v0, Lorg/apache/asn1/ber/Tuple;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/apache/asn1/ber/Tuple;->valueChunk:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lorg/apache/asn1/ber/Tuple;->index:I

    .line 75
    iput v0, p0, Lorg/apache/asn1/ber/Tuple;->valueIndex:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 102
    sget-object v0, Lorg/apache/asn1/ber/TypeClass;->APPLICATION:Lorg/apache/asn1/ber/TypeClass;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/asn1/ber/Tuple;-><init>(IILorg/apache/asn1/ber/TypeClass;)V

    return-void
.end method

.method public constructor <init>(IILorg/apache/asn1/ber/TypeClass;)V
    .locals 3

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lorg/apache/asn1/ber/Tuple;->rawTag:I

    .line 62
    iput v0, p0, Lorg/apache/asn1/ber/Tuple;->id:I

    const/4 v1, 0x1

    .line 64
    iput-boolean v1, p0, Lorg/apache/asn1/ber/Tuple;->isPrimitive:Z

    .line 66
    sget-object v1, Lorg/apache/asn1/ber/TypeClass;->APPLICATION:Lorg/apache/asn1/ber/TypeClass;

    iput-object v1, p0, Lorg/apache/asn1/ber/Tuple;->typeClass:Lorg/apache/asn1/ber/TypeClass;

    .line 70
    sget-object v1, Lorg/apache/asn1/ber/Tuple;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    const/4 v2, -0x1

    .line 73
    iput v2, p0, Lorg/apache/asn1/ber/Tuple;->index:I

    .line 75
    iput v2, p0, Lorg/apache/asn1/ber/Tuple;->valueIndex:I

    .line 117
    iput p1, p0, Lorg/apache/asn1/ber/Tuple;->id:I

    .line 118
    iput p2, p0, Lorg/apache/asn1/ber/Tuple;->length:I

    .line 119
    iput-object v1, p0, Lorg/apache/asn1/ber/Tuple;->valueChunk:Ljava/nio/ByteBuffer;

    .line 120
    iput-boolean v0, p0, Lorg/apache/asn1/ber/Tuple;->isPrimitive:Z

    if-eqz p3, :cond_0

    .line 124
    iput-object p3, p0, Lorg/apache/asn1/ber/Tuple;->typeClass:Lorg/apache/asn1/ber/TypeClass;

    :cond_0
    return-void
.end method

.method public constructor <init>(IIZLorg/apache/asn1/ber/TypeClass;)V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    .line 60
    iput p3, p0, Lorg/apache/asn1/ber/Tuple;->rawTag:I

    .line 62
    iput p3, p0, Lorg/apache/asn1/ber/Tuple;->id:I

    const/4 p3, 0x1

    .line 64
    iput-boolean p3, p0, Lorg/apache/asn1/ber/Tuple;->isPrimitive:Z

    .line 66
    sget-object p3, Lorg/apache/asn1/ber/TypeClass;->APPLICATION:Lorg/apache/asn1/ber/TypeClass;

    iput-object p3, p0, Lorg/apache/asn1/ber/Tuple;->typeClass:Lorg/apache/asn1/ber/TypeClass;

    .line 70
    sget-object p3, Lorg/apache/asn1/ber/Tuple;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lorg/apache/asn1/ber/Tuple;->index:I

    .line 75
    iput v0, p0, Lorg/apache/asn1/ber/Tuple;->valueIndex:I

    .line 141
    iput p1, p0, Lorg/apache/asn1/ber/Tuple;->id:I

    .line 142
    iput p2, p0, Lorg/apache/asn1/ber/Tuple;->length:I

    .line 143
    iput-object p3, p0, Lorg/apache/asn1/ber/Tuple;->valueChunk:Ljava/nio/ByteBuffer;

    if-eqz p4, :cond_0

    .line 148
    iput-object p4, p0, Lorg/apache/asn1/ber/Tuple;->typeClass:Lorg/apache/asn1/ber/TypeClass;

    :cond_0
    return-void
.end method

.method public constructor <init>(ILorg/apache/asn1/ber/TypeClass;)V
    .locals 3

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lorg/apache/asn1/ber/Tuple;->rawTag:I

    .line 62
    iput v0, p0, Lorg/apache/asn1/ber/Tuple;->id:I

    const/4 v1, 0x1

    .line 64
    iput-boolean v1, p0, Lorg/apache/asn1/ber/Tuple;->isPrimitive:Z

    .line 66
    sget-object v1, Lorg/apache/asn1/ber/TypeClass;->APPLICATION:Lorg/apache/asn1/ber/TypeClass;

    iput-object v1, p0, Lorg/apache/asn1/ber/Tuple;->typeClass:Lorg/apache/asn1/ber/TypeClass;

    .line 70
    sget-object v1, Lorg/apache/asn1/ber/Tuple;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    const/4 v2, -0x1

    .line 73
    iput v2, p0, Lorg/apache/asn1/ber/Tuple;->index:I

    .line 75
    iput v2, p0, Lorg/apache/asn1/ber/Tuple;->valueIndex:I

    .line 162
    iput p1, p0, Lorg/apache/asn1/ber/Tuple;->id:I

    .line 163
    iput-boolean v0, p0, Lorg/apache/asn1/ber/Tuple;->isPrimitive:Z

    .line 164
    iput-object v1, p0, Lorg/apache/asn1/ber/Tuple;->valueChunk:Ljava/nio/ByteBuffer;

    const/4 p1, -0x2

    .line 165
    iput p1, p0, Lorg/apache/asn1/ber/Tuple;->length:I

    if-eqz p2, :cond_0

    .line 169
    iput-object p2, p0, Lorg/apache/asn1/ber/Tuple;->typeClass:Lorg/apache/asn1/ber/TypeClass;

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 392
    iput v0, p0, Lorg/apache/asn1/ber/Tuple;->id:I

    .line 393
    iput v0, p0, Lorg/apache/asn1/ber/Tuple;->index:I

    .line 394
    iput v0, p0, Lorg/apache/asn1/ber/Tuple;->rawTag:I

    const/4 v0, 0x1

    .line 395
    iput-boolean v0, p0, Lorg/apache/asn1/ber/Tuple;->isPrimitive:Z

    const/4 v0, -0x1

    .line 396
    iput v0, p0, Lorg/apache/asn1/ber/Tuple;->length:I

    .line 397
    sget-object v1, Lorg/apache/asn1/ber/TypeClass;->APPLICATION:Lorg/apache/asn1/ber/TypeClass;

    iput-object v1, p0, Lorg/apache/asn1/ber/Tuple;->typeClass:Lorg/apache/asn1/ber/TypeClass;

    .line 398
    sget-object v1, Lorg/apache/asn1/ber/Tuple;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lorg/apache/asn1/ber/Tuple;->valueChunk:Ljava/nio/ByteBuffer;

    .line 399
    iput v0, p0, Lorg/apache/asn1/ber/Tuple;->valueIndex:I

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .line 457
    new-instance v0, Lorg/apache/asn1/ber/Tuple;

    invoke-direct {v0}, Lorg/apache/asn1/ber/Tuple;-><init>()V

    .line 458
    iget v1, p0, Lorg/apache/asn1/ber/Tuple;->id:I

    iput v1, v0, Lorg/apache/asn1/ber/Tuple;->id:I

    .line 459
    iget v1, p0, Lorg/apache/asn1/ber/Tuple;->rawTag:I

    iput v1, v0, Lorg/apache/asn1/ber/Tuple;->rawTag:I

    .line 460
    iget-boolean v1, p0, Lorg/apache/asn1/ber/Tuple;->isPrimitive:Z

    iput-boolean v1, v0, Lorg/apache/asn1/ber/Tuple;->isPrimitive:Z

    .line 461
    iget-object v1, p0, Lorg/apache/asn1/ber/Tuple;->typeClass:Lorg/apache/asn1/ber/TypeClass;

    iput-object v1, v0, Lorg/apache/asn1/ber/Tuple;->typeClass:Lorg/apache/asn1/ber/TypeClass;

    .line 462
    iget v1, p0, Lorg/apache/asn1/ber/Tuple;->length:I

    iput v1, v0, Lorg/apache/asn1/ber/Tuple;->length:I

    .line 470
    iget-object v1, p0, Lorg/apache/asn1/ber/Tuple;->valueChunk:Ljava/nio/ByteBuffer;

    .line 471
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 472
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 473
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 474
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 475
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 476
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 477
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 478
    iput-object v2, v0, Lorg/apache/asn1/ber/Tuple;->valueChunk:Ljava/nio/ByteBuffer;

    .line 481
    iget v1, p0, Lorg/apache/asn1/ber/Tuple;->index:I

    iput v1, v0, Lorg/apache/asn1/ber/Tuple;->index:I

    .line 482
    iget v1, p0, Lorg/apache/asn1/ber/Tuple;->valueIndex:I

    iput v1, v0, Lorg/apache/asn1/ber/Tuple;->valueIndex:I

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 420
    :cond_0
    instance-of v1, p1, Lorg/apache/asn1/ber/Tuple;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 422
    check-cast p1, Lorg/apache/asn1/ber/Tuple;

    .line 424
    iget v1, p1, Lorg/apache/asn1/ber/Tuple;->id:I

    iget v3, p0, Lorg/apache/asn1/ber/Tuple;->id:I

    if-eq v1, v3, :cond_1

    return v2

    .line 429
    :cond_1
    iget-boolean v1, p1, Lorg/apache/asn1/ber/Tuple;->isPrimitive:Z

    iget-boolean v3, p0, Lorg/apache/asn1/ber/Tuple;->isPrimitive:Z

    if-eq v1, v3, :cond_2

    return v2

    .line 434
    :cond_2
    iget v1, p1, Lorg/apache/asn1/ber/Tuple;->length:I

    iget v3, p0, Lorg/apache/asn1/ber/Tuple;->length:I

    if-eq v1, v3, :cond_3

    return v2

    .line 439
    :cond_3
    iget-object p1, p1, Lorg/apache/asn1/ber/Tuple;->typeClass:Lorg/apache/asn1/ber/TypeClass;

    iget-object v1, p0, Lorg/apache/asn1/ber/Tuple;->typeClass:Lorg/apache/asn1/ber/TypeClass;

    if-eq p1, v1, :cond_4

    return v2

    :cond_4
    return v0

    :cond_5
    return v2
.end method

.method public getId()I
    .locals 1

    .line 186
    iget v0, p0, Lorg/apache/asn1/ber/Tuple;->id:I

    return v0
.end method

.method public getLastValueChunk()Ljava/nio/ByteBuffer;
    .locals 1

    .line 346
    iget-object v0, p0, Lorg/apache/asn1/ber/Tuple;->valueChunk:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 317
    iget v0, p0, Lorg/apache/asn1/ber/Tuple;->length:I

    return v0
.end method

.method public getLengthLength()I
    .locals 3

    .line 749
    iget v0, p0, Lorg/apache/asn1/ber/Tuple;->length:I

    const/4 v1, -0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    if-ltz v0, :cond_5

    const/16 v1, 0x80

    if-ge v0, v1, :cond_1

    return v2

    :cond_1
    const/16 v1, 0x100

    if-ge v0, v1, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_3

    const/4 v0, 0x3

    return v0

    :cond_3
    const/high16 v1, 0x1000000

    if-ge v0, v1, :cond_4

    const/4 v0, 0x4

    return v0

    :cond_4
    const/4 v0, 0x5

    return v0

    .line 756
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "integer overflow makes id negative with a value of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/asn1/ber/Tuple;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " - unless we start using longs for the id there you\'ve hit a limitation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRawPrimitiveTag()I
    .locals 2

    .line 270
    iget v0, p0, Lorg/apache/asn1/ber/Tuple;->rawTag:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    return v0
.end method

.method public getRawTag()I
    .locals 1

    .line 209
    iget v0, p0, Lorg/apache/asn1/ber/Tuple;->rawTag:I

    return v0
.end method

.method public getTagLength()I
    .locals 3

    .line 715
    iget v0, p0, Lorg/apache/asn1/ber/Tuple;->id:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/16 v1, 0x4000

    if-ge v0, v1, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const/high16 v1, 0x200000

    if-ge v0, v1, :cond_3

    const/4 v0, 0x4

    return v0

    :cond_3
    const/high16 v1, 0x10000000

    if-ge v0, v1, :cond_4

    const/4 v0, 0x5

    return v0

    .line 737
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "cannot support id\'s larger than "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/asn1/ber/Tuple;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " unless we start using longs for the id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTypeClass()Lorg/apache/asn1/ber/TypeClass;
    .locals 1

    .line 335
    iget-object v0, p0, Lorg/apache/asn1/ber/Tuple;->typeClass:Lorg/apache/asn1/ber/TypeClass;

    return-object v0
.end method

.method public isIndefinite()Z
    .locals 2

    .line 281
    iget v0, p0, Lorg/apache/asn1/ber/Tuple;->length:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIndefiniteTerminator()Z
    .locals 2

    .line 294
    iget-boolean v0, p0, Lorg/apache/asn1/ber/Tuple;->isPrimitive:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/asn1/ber/Tuple;->id:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/asn1/ber/Tuple;->length:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/apache/asn1/ber/Tuple;->typeClass:Lorg/apache/asn1/ber/TypeClass;

    sget-object v1, Lorg/apache/asn1/ber/TypeClass;->UNIVERSAL:Lorg/apache/asn1/ber/TypeClass;

    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/TypeClass;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    .line 306
    iget-boolean v0, p0, Lorg/apache/asn1/ber/Tuple;->isPrimitive:Z

    return v0
.end method

.method public setId(I)V
    .locals 1

    .line 197
    iput p1, p0, Lorg/apache/asn1/ber/Tuple;->id:I

    .line 198
    iget v0, p0, Lorg/apache/asn1/ber/Tuple;->rawTag:I

    invoke-static {v0, p1}, Lorg/apache/asn1/ber/Tag;->setIntEncodedId(II)I

    move-result p1

    iput p1, p0, Lorg/apache/asn1/ber/Tuple;->rawTag:I

    return-void
.end method

.method public setLastValueChunk(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lorg/apache/asn1/ber/Tuple;->valueChunk:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setLength(I)V
    .locals 0

    .line 324
    iput p1, p0, Lorg/apache/asn1/ber/Tuple;->length:I

    return-void
.end method

.method public setLength(Ljava/nio/ByteBuffer;I)V
    .locals 7

    const/4 v0, 0x6

    if-ge p2, v0, :cond_3

    .line 627
    iget v0, p0, Lorg/apache/asn1/ber/Tuple;->length:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/16 p2, -0x80

    .line 629
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    int-to-byte p2, v0

    .line 634
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    :cond_1
    add-int/lit8 v0, p2, -0x1

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 657
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, p2, -0x2

    shl-int/lit8 v2, v0, 0x3

    const/4 v3, 0x0

    :goto_0
    if-gt v3, v0, :cond_2

    .line 664
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v3

    const/16 v5, 0xff

    shl-int/2addr v5, v2

    iget v6, p0, Lorg/apache/asn1/ber/Tuple;->length:I

    and-int/2addr v5, v6

    shr-int/2addr v5, v2

    int-to-byte v5, v5

    invoke-virtual {p1, v4, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, -0x8

    goto :goto_0

    .line 667
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p2

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 621
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "cannot support lengths larger than a max integer using "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, " bytes unless we start using longs or BigIntegers for the length"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRawTag(I)V
    .locals 1

    .line 221
    iput p1, p0, Lorg/apache/asn1/ber/Tuple;->rawTag:I

    .line 222
    invoke-static {p1}, Lorg/apache/asn1/ber/Tag;->getTagId(I)I

    move-result v0

    iput v0, p0, Lorg/apache/asn1/ber/Tuple;->id:I

    .line 223
    invoke-static {p1}, Lorg/apache/asn1/ber/Tag;->isRawTagConstructed(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/apache/asn1/ber/Tuple;->isPrimitive:Z

    shr-int/lit8 p1, p1, 0x18

    .line 224
    invoke-static {p1}, Lorg/apache/asn1/ber/TypeClass;->getTypeClass(I)Lorg/apache/asn1/ber/TypeClass;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/asn1/ber/Tuple;->typeClass:Lorg/apache/asn1/ber/TypeClass;

    return-void
.end method

.method public setTag(Ljava/nio/ByteBuffer;I)V
    .locals 3

    const/4 v0, 0x6

    if-ge p2, v0, :cond_7

    .line 548
    iget-object v0, p0, Lorg/apache/asn1/ber/Tuple;->typeClass:Lorg/apache/asn1/ber/TypeClass;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/TypeClass;->getValue()I

    move-result v0

    int-to-byte v0, v0

    .line 549
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    .line 551
    iget-boolean v1, p0, Lorg/apache/asn1/ber/Tuple;->isPrimitive:Z

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    .line 556
    :cond_0
    iget v1, p0, Lorg/apache/asn1/ber/Tuple;->id:I

    const/16 v2, 0x1f

    if-ge v1, v2, :cond_1

    and-int/lit8 p2, v1, 0x1f

    or-int/2addr p2, v0

    int-to-byte p2, p2

    .line 558
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    :cond_1
    or-int/2addr v0, v2

    int-to-byte v0, v0

    .line 564
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    if-eq p2, v0, :cond_6

    const/4 v0, 0x2

    if-eq p2, v0, :cond_5

    const/4 v0, 0x3

    if-eq p2, v0, :cond_4

    const/4 v0, 0x4

    if-eq p2, v0, :cond_3

    const/4 v0, 0x5

    if-eq p2, v0, :cond_2

    goto :goto_0

    .line 570
    :cond_2
    iget p2, p0, Lorg/apache/asn1/ber/Tuple;->id:I

    shr-int/lit8 p2, p2, 0x15

    and-int/lit8 p2, p2, 0x7f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 575
    :cond_3
    iget p2, p0, Lorg/apache/asn1/ber/Tuple;->id:I

    shr-int/lit8 p2, p2, 0x15

    and-int/lit8 p2, p2, 0x7f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 580
    :cond_4
    iget p2, p0, Lorg/apache/asn1/ber/Tuple;->id:I

    shr-int/lit8 p2, p2, 0xe

    and-int/lit8 p2, p2, 0x7f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 585
    :cond_5
    iget p2, p0, Lorg/apache/asn1/ber/Tuple;->id:I

    shr-int/lit8 p2, p2, 0x7

    and-int/lit8 p2, p2, 0x7f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 590
    :cond_6
    iget p2, p0, Lorg/apache/asn1/ber/Tuple;->id:I

    and-int/lit8 p2, p2, 0x7f

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_0
    return-void

    .line 544
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "cannot support id\'s as large as "

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/asn1/ber/Tuple;->id:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, " unless we start using longs for the id"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTag(Lorg/apache/asn1/ber/TagEnum;)V
    .locals 1

    .line 236
    invoke-virtual {p1}, Lorg/apache/asn1/ber/TagEnum;->getValue()I

    move-result v0

    iput v0, p0, Lorg/apache/asn1/ber/Tuple;->rawTag:I

    .line 237
    invoke-virtual {p1}, Lorg/apache/asn1/ber/TagEnum;->getTagId()I

    move-result v0

    iput v0, p0, Lorg/apache/asn1/ber/Tuple;->id:I

    .line 238
    invoke-virtual {p1}, Lorg/apache/asn1/ber/TagEnum;->getValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/asn1/ber/Tag;->isRawTagConstructed(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/apache/asn1/ber/Tuple;->isPrimitive:Z

    .line 239
    invoke-virtual {p1}, Lorg/apache/asn1/ber/TagEnum;->getTypeClass()Lorg/apache/asn1/ber/TypeClass;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/asn1/ber/Tuple;->typeClass:Lorg/apache/asn1/ber/TypeClass;

    return-void
.end method

.method public setTag(Lorg/apache/asn1/ber/TagEnum;Z)V
    .locals 1

    .line 253
    invoke-virtual {p1}, Lorg/apache/asn1/ber/TagEnum;->getValue()I

    move-result v0

    iput v0, p0, Lorg/apache/asn1/ber/Tuple;->rawTag:I

    .line 254
    invoke-virtual {p1}, Lorg/apache/asn1/ber/TagEnum;->getTagId()I

    move-result v0

    iput v0, p0, Lorg/apache/asn1/ber/Tuple;->id:I

    .line 255
    iput-boolean p2, p0, Lorg/apache/asn1/ber/Tuple;->isPrimitive:Z

    .line 256
    invoke-virtual {p1}, Lorg/apache/asn1/ber/TagEnum;->getTypeClass()Lorg/apache/asn1/ber/TypeClass;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/asn1/ber/Tuple;->typeClass:Lorg/apache/asn1/ber/TypeClass;

    return-void
.end method

.method public setValueLength(I)V
    .locals 0

    .line 607
    iput p1, p0, Lorg/apache/asn1/ber/Tuple;->length:I

    return-void
.end method

.method public size()I
    .locals 2

    .line 371
    iget v0, p0, Lorg/apache/asn1/ber/Tuple;->length:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 373
    invoke-virtual {p0}, Lorg/apache/asn1/ber/Tuple;->getTagLength()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/asn1/ber/Tuple;->getLengthLength()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 377
    :cond_0
    invoke-virtual {p0}, Lorg/apache/asn1/ber/Tuple;->getTagLength()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/asn1/ber/Tuple;->getLengthLength()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/apache/asn1/ber/Tuple;->length:I

    goto :goto_0
.end method

.method public toEncodedBuffer(Ljava/util/List;)Ljava/nio/ByteBuffer;
    .locals 4

    .line 509
    invoke-virtual {p0}, Lorg/apache/asn1/ber/Tuple;->getTagLength()I

    move-result v0

    .line 510
    invoke-virtual {p0}, Lorg/apache/asn1/ber/Tuple;->getLengthLength()I

    move-result v1

    add-int v2, v0, v1

    .line 513
    iget-boolean v3, p0, Lorg/apache/asn1/ber/Tuple;->isPrimitive:Z

    if-eqz v3, :cond_0

    .line 515
    iget v3, p0, Lorg/apache/asn1/ber/Tuple;->length:I

    add-int/2addr v2, v3

    .line 518
    :cond_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 519
    invoke-virtual {p0, v2, v0}, Lorg/apache/asn1/ber/Tuple;->setTag(Ljava/nio/ByteBuffer;I)V

    .line 520
    invoke-virtual {p0, v2, v1}, Lorg/apache/asn1/ber/Tuple;->setLength(Ljava/nio/ByteBuffer;I)V

    .line 522
    iget-boolean v0, p0, Lorg/apache/asn1/ber/Tuple;->isPrimitive:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 524
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 526
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 530
    :cond_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    return-object p1
.end method
