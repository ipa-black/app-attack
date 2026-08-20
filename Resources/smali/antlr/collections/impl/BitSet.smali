.class public Lantlr/collections/impl/BitSet;
.super Ljava/lang/Object;
.source "BitSet.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field protected static final BITS:I = 0x40

.field protected static final LOG_BITS:I = 0x6

.field protected static final MOD_MASK:I = 0x3f

.field protected static final NIBBLE:I = 0x4


# instance fields
.field protected bits:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x40

    .line 44
    invoke-direct {p0, v0}, Lantlr/collections/impl/BitSet;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 p1, p1, -0x1

    shr-int/lit8 p1, p1, 0x6

    add-int/lit8 p1, p1, 0x1

    .line 56
    new-array p1, p1, [J

    iput-object p1, p0, Lantlr/collections/impl/BitSet;->bits:[J

    return-void
.end method

.method public constructor <init>([J)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lantlr/collections/impl/BitSet;->bits:[J

    return-void
.end method

.method private static final bitMask(I)J
    .locals 2

    and-int/lit8 p0, p0, 0x3f

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p0

    return-wide v0
.end method

.method public static getRanges([I)Lantlr/collections/impl/Vector;
    .locals 9

    .line 170
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 173
    aget v2, p0, v0

    .line 174
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget v2, p0, v2

    .line 175
    array-length v2, p0

    const/4 v3, 0x2

    if-gt v2, v3, :cond_1

    return-object v1

    .line 180
    :cond_1
    new-instance v1, Lantlr/collections/impl/Vector;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lantlr/collections/impl/Vector;-><init>(I)V

    .line 182
    :goto_0
    array-length v2, p0

    sub-int/2addr v2, v3

    if-lt v0, v2, :cond_2

    return-object v1

    .line 184
    :cond_2
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v4, v0, 0x1

    move v5, v4

    .line 185
    :goto_1
    array-length v6, p0

    if-lt v5, v6, :cond_3

    goto :goto_2

    .line 186
    :cond_3
    aget v6, p0, v5

    add-int/lit8 v7, v5, -0x1

    aget v8, p0, v7

    add-int/lit8 v8, v8, 0x1

    if-eq v6, v8, :cond_5

    move v2, v7

    :goto_2
    sub-int v5, v2, v0

    if-le v5, v3, :cond_4

    .line 193
    new-instance v5, Lantlr/collections/impl/IntRange;

    aget v0, p0, v0

    aget v2, p0, v2

    invoke-direct {v5, v0, v2}, Lantlr/collections/impl/IntRange;-><init>(II)V

    invoke-virtual {v1, v5}, Lantlr/collections/impl/Vector;->appendElement(Ljava/lang/Object;)V

    :cond_4
    move v0, v4

    goto :goto_0

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private final numWordsToHold(I)I
    .locals 0

    shr-int/lit8 p1, p1, 0x6

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public static of(I)Lantlr/collections/impl/BitSet;
    .locals 2

    .line 255
    new-instance v0, Lantlr/collections/impl/BitSet;

    add-int/lit8 v1, p0, 0x1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>(I)V

    .line 256
    invoke-virtual {v0, p0}, Lantlr/collections/impl/BitSet;->add(I)V

    return-object v0
.end method

.method private setSize(I)V
    .locals 3

    .line 292
    new-array v0, p1, [J

    .line 293
    iget-object v1, p0, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 294
    iget-object v1, p0, Lantlr/collections/impl/BitSet;->bits:[J

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    iput-object v0, p0, Lantlr/collections/impl/BitSet;->bits:[J

    return-void
.end method

.method private static final wordNumber(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x6

    return p0
.end method


# virtual methods
.method public add(I)V
    .locals 6

    .line 62
    invoke-static {p1}, Lantlr/collections/impl/BitSet;->wordNumber(I)I

    move-result v0

    .line 65
    iget-object v1, p0, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 66
    invoke-virtual {p0, p1}, Lantlr/collections/impl/BitSet;->growToInclude(I)V

    .line 68
    :cond_0
    iget-object v1, p0, Lantlr/collections/impl/BitSet;->bits:[J

    aget-wide v2, v1, v0

    invoke-static {p1}, Lantlr/collections/impl/BitSet;->bitMask(I)J

    move-result-wide v4

    or-long/2addr v2, v4

    aput-wide v2, v1, v0

    return-void
.end method

.method public and(Lantlr/collections/impl/BitSet;)Lantlr/collections/impl/BitSet;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lantlr/collections/impl/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/collections/impl/BitSet;

    .line 73
    invoke-virtual {v0, p1}, Lantlr/collections/impl/BitSet;->andInPlace(Lantlr/collections/impl/BitSet;)V

    return-object v0
.end method

.method public andInPlace(Lantlr/collections/impl/BitSet;)V
    .locals 8

    .line 78
    iget-object v0, p0, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v0, v0

    iget-object v1, p1, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-gez v1, :cond_1

    .line 83
    :goto_1
    iget-object p1, p0, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    .line 84
    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    :cond_1
    iget-object v2, p0, Lantlr/collections/impl/BitSet;->bits:[J

    aget-wide v3, v2, v1

    iget-object v5, p1, Lantlr/collections/impl/BitSet;->bits:[J

    aget-wide v6, v5, v1

    and-long/2addr v3, v6

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    .line 94
    iget-object v0, p0, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object v1, p0, Lantlr/collections/impl/BitSet;->bits:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public clear(I)V
    .locals 6

    .line 100
    invoke-static {p1}, Lantlr/collections/impl/BitSet;->wordNumber(I)I

    move-result v0

    .line 101
    iget-object v1, p0, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Lantlr/collections/impl/BitSet;->growToInclude(I)V

    .line 104
    :cond_0
    iget-object v1, p0, Lantlr/collections/impl/BitSet;->bits:[J

    aget-wide v2, v1, v0

    invoke-static {p1}, Lantlr/collections/impl/BitSet;->bitMask(I)J

    move-result-wide v4

    not-long v4, v4

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .line 110
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/collections/impl/BitSet;

    .line 111
    iget-object v1, p0, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, v0, Lantlr/collections/impl/BitSet;->bits:[J

    .line 112
    iget-object v2, p0, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 115
    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public degree()I
    .locals 9

    .line 122
    iget-object v0, p0, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gez v0, :cond_0

    return v1

    .line 123
    :cond_0
    iget-object v2, p0, Lantlr/collections/impl/BitSet;->bits:[J

    aget-wide v3, v2, v0

    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-eqz v2, :cond_3

    const/16 v2, 0x3f

    :goto_1
    if-gez v2, :cond_1

    goto :goto_2

    :cond_1
    const-wide/16 v7, 0x1

    shl-long/2addr v7, v2

    and-long/2addr v7, v3

    cmp-long v7, v7, v5

    if-eqz v7, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 137
    instance-of v1, p1, Lantlr/collections/impl/BitSet;

    if-eqz v1, :cond_8

    .line 138
    check-cast p1, Lantlr/collections/impl/BitSet;

    .line 140
    iget-object v1, p0, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v1, v1

    iget-object v2, p1, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-gtz v2, :cond_6

    .line 146
    iget-object v2, p0, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v3, v2

    const-wide/16 v4, 0x0

    if-le v3, v1, :cond_2

    .line 147
    array-length p1, v2

    :goto_1
    add-int/lit8 v2, p1, -0x1

    if-gt p1, v1, :cond_0

    goto :goto_3

    .line 148
    :cond_0
    iget-object p1, p0, Lantlr/collections/impl/BitSet;->bits:[J

    aget-wide v6, p1, v2

    cmp-long p1, v6, v4

    if-eqz p1, :cond_1

    return v0

    :cond_1
    move p1, v2

    goto :goto_1

    .line 153
    :cond_2
    iget-object v2, p1, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v3, v2

    if-le v3, v1, :cond_5

    .line 154
    array-length v2, v2

    :goto_2
    add-int/lit8 v3, v2, -0x1

    if-gt v2, v1, :cond_3

    goto :goto_3

    .line 155
    :cond_3
    iget-object v2, p1, Lantlr/collections/impl/BitSet;->bits:[J

    aget-wide v6, v2, v3

    cmp-long v2, v6, v4

    if-eqz v2, :cond_4

    return v0

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    :goto_3
    const/4 p1, 0x1

    return p1

    .line 142
    :cond_6
    iget-object v2, p0, Lantlr/collections/impl/BitSet;->bits:[J

    aget-wide v4, v2, v3

    iget-object v2, p1, Lantlr/collections/impl/BitSet;->bits:[J

    aget-wide v6, v2, v3

    cmp-long v2, v4, v6

    if-eqz v2, :cond_7

    return v0

    :cond_7
    move v2, v3

    goto :goto_0

    :cond_8
    return v0
.end method

.method public growToInclude(I)V
    .locals 3

    .line 204
    iget-object v0, p0, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1}, Lantlr/collections/impl/BitSet;->numWordsToHold(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 205
    new-array p1, p1, [J

    .line 206
    iget-object v0, p0, Lantlr/collections/impl/BitSet;->bits:[J

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    iput-object p1, p0, Lantlr/collections/impl/BitSet;->bits:[J

    return-void
.end method

.method public lengthInLongWords()I
    .locals 1

    .line 306
    iget-object v0, p0, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v0, v0

    return v0
.end method

.method public member(I)Z
    .locals 6

    .line 211
    invoke-static {p1}, Lantlr/collections/impl/BitSet;->wordNumber(I)I

    move-result v0

    .line 212
    iget-object v1, p0, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v2, v1

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    return v3

    .line 213
    :cond_0
    aget-wide v0, v1, v0

    invoke-static {p1}, Lantlr/collections/impl/BitSet;->bitMask(I)J

    move-result-wide v4

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public nil()Z
    .locals 7

    .line 217
    iget-object v0, p0, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-gez v0, :cond_0

    return v1

    .line 218
    :cond_0
    iget-object v2, p0, Lantlr/collections/impl/BitSet;->bits:[J

    aget-wide v3, v2, v0

    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public not()Lantlr/collections/impl/BitSet;
    .locals 1

    .line 224
    invoke-virtual {p0}, Lantlr/collections/impl/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/collections/impl/BitSet;

    .line 225
    invoke-virtual {v0}, Lantlr/collections/impl/BitSet;->notInPlace()V

    return-object v0
.end method

.method public notInPlace()V
    .locals 4

    .line 230
    iget-object v0, p0, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    .line 231
    :cond_0
    iget-object v1, p0, Lantlr/collections/impl/BitSet;->bits:[J

    aget-wide v2, v1, v0

    not-long v2, v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public notInPlace(I)V
    .locals 1

    const/4 v0, 0x0

    .line 237
    invoke-virtual {p0, v0, p1}, Lantlr/collections/impl/BitSet;->notInPlace(II)V

    return-void
.end method

.method public notInPlace(II)V
    .locals 6

    .line 243
    invoke-virtual {p0, p2}, Lantlr/collections/impl/BitSet;->growToInclude(I)V

    :goto_0
    if-le p1, p2, :cond_0

    return-void

    .line 245
    :cond_0
    invoke-static {p1}, Lantlr/collections/impl/BitSet;->wordNumber(I)I

    move-result v0

    .line 246
    iget-object v1, p0, Lantlr/collections/impl/BitSet;->bits:[J

    aget-wide v2, v1, v0

    invoke-static {p1}, Lantlr/collections/impl/BitSet;->bitMask(I)J

    move-result-wide v4

    xor-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public or(Lantlr/collections/impl/BitSet;)Lantlr/collections/impl/BitSet;
    .locals 1

    .line 262
    invoke-virtual {p0}, Lantlr/collections/impl/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/collections/impl/BitSet;

    .line 263
    invoke-virtual {v0, p1}, Lantlr/collections/impl/BitSet;->orInPlace(Lantlr/collections/impl/BitSet;)V

    return-object v0
.end method

.method public orInPlace(Lantlr/collections/impl/BitSet;)V
    .locals 7

    .line 269
    iget-object v0, p1, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v1, v0

    iget-object v2, p0, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 270
    array-length v0, v0

    invoke-direct {p0, v0}, Lantlr/collections/impl/BitSet;->setSize(I)V

    .line 272
    :cond_0
    iget-object v0, p0, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v0, v0

    iget-object v1, p1, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_1

    return-void

    .line 274
    :cond_1
    iget-object v1, p0, Lantlr/collections/impl/BitSet;->bits:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Lantlr/collections/impl/BitSet;->bits:[J

    aget-wide v5, v4, v0

    or-long/2addr v2, v5

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public remove(I)V
    .locals 6

    .line 280
    invoke-static {p1}, Lantlr/collections/impl/BitSet;->wordNumber(I)I

    move-result v0

    .line 281
    iget-object v1, p0, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 282
    invoke-virtual {p0, p1}, Lantlr/collections/impl/BitSet;->growToInclude(I)V

    .line 284
    :cond_0
    iget-object v1, p0, Lantlr/collections/impl/BitSet;->bits:[J

    aget-wide v2, v1, v0

    invoke-static {p1}, Lantlr/collections/impl/BitSet;->bitMask(I)J

    move-result-wide v4

    not-long v4, v4

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    return-void
.end method

.method public size()I
    .locals 1

    .line 299
    iget-object v0, p0, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public subset(Lantlr/collections/impl/BitSet;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 311
    instance-of v0, p1, Lantlr/collections/impl/BitSet;

    if-nez v0, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/collections/impl/BitSet;->and(Lantlr/collections/impl/BitSet;)Lantlr/collections/impl/BitSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Lantlr/collections/impl/BitSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public subtractInPlace(Lantlr/collections/impl/BitSet;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 321
    :goto_0
    iget-object v1, p0, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v2, v1

    if-ge v0, v2, :cond_2

    iget-object v2, p1, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v3, v2

    if-lt v0, v3, :cond_1

    goto :goto_1

    .line 322
    :cond_1
    aget-wide v3, v1, v0

    aget-wide v5, v2, v0

    not-long v5, v5

    and-long v2, v3, v5

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public toArray()[I
    .locals 4

    .line 327
    invoke-virtual {p0}, Lantlr/collections/impl/BitSet;->degree()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 329
    :goto_0
    iget-object v3, p0, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v3, v3

    shl-int/lit8 v3, v3, 0x6

    if-lt v1, v3, :cond_0

    return-object v0

    .line 330
    :cond_0
    invoke-virtual {p0, v1}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 331
    aput v1, v0, v2

    move v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toPackedArray()[J
    .locals 1

    .line 338
    iget-object v0, p0, Lantlr/collections/impl/BitSet;->bits:[J

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 342
    const-string v0, ","

    invoke-virtual {p0, v0}, Lantlr/collections/impl/BitSet;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 351
    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x6

    if-lt v1, v2, :cond_0

    return-object v0

    .line 352
    :cond_0
    invoke-virtual {p0, v1}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 353
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 354
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toString(Ljava/lang/String;Lantlr/CharFormatter;)Ljava/lang/String;
    .locals 3

    .line 370
    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x6

    if-lt v1, v2, :cond_0

    return-object v0

    .line 371
    :cond_0
    invoke-virtual {p0, v1}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 372
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 373
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-interface {p2, v1}, Lantlr/CharFormatter;->literalChar(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toString(Ljava/lang/String;Lantlr/collections/impl/Vector;)Ljava/lang/String;
    .locals 4

    if-nez p2, :cond_0

    .line 389
    invoke-virtual {p0, p1}, Lantlr/collections/impl/BitSet;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 392
    :cond_0
    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x6

    if-lt v1, v2, :cond_1

    return-object v0

    .line 393
    :cond_1
    invoke-virtual {p0, v1}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 394
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 395
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    :cond_2
    invoke-virtual {p2}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    const-string v3, ">"

    if-lt v1, v2, :cond_3

    .line 398
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "<bad element "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 400
    :cond_3
    invoke-virtual {p2, v1}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 401
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 404
    :cond_4
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p2, v1}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public toStringOfHalfWords()Ljava/lang/String;
    .locals 8

    .line 417
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    const/4 v1, 0x0

    .line 418
    :goto_0
    iget-object v2, p0, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v2, v2

    if-lt v1, v2, :cond_0

    return-object v0

    .line 419
    :cond_0
    const-string v2, ", "

    if-eqz v1, :cond_1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    :cond_1
    iget-object v3, p0, Lantlr/collections/impl/BitSet;->bits:[J

    aget-wide v4, v3, v1

    const-wide v6, 0xffffffffL

    and-long v3, v4, v6

    .line 422
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "UL"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    iget-object v2, p0, Lantlr/collections/impl/BitSet;->bits:[J

    aget-wide v4, v2, v1

    const/16 v2, 0x20

    ushr-long/2addr v4, v2

    and-long/2addr v4, v6

    .line 426
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toStringOfWords()Ljava/lang/String;
    .locals 5

    .line 436
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    const/4 v1, 0x0

    .line 437
    :goto_0
    iget-object v2, p0, Lantlr/collections/impl/BitSet;->bits:[J

    array-length v2, v2

    if-lt v1, v2, :cond_0

    return-object v0

    :cond_0
    if-eqz v1, :cond_1

    .line 438
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lantlr/collections/impl/BitSet;->bits:[J

    aget-wide v3, v2, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "L"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toStringWithRanges(Ljava/lang/String;Lantlr/CharFormatter;)Ljava/lang/String;
    .locals 9

    .line 447
    invoke-virtual {p0}, Lantlr/collections/impl/BitSet;->toArray()[I

    move-result-object v0

    .line 448
    array-length v1, v0

    const-string v2, ""

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x0

    move v3, v1

    .line 453
    :goto_0
    array-length v4, v0

    if-lt v3, v4, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v4, v3, 0x1

    move v5, v1

    .line 456
    :goto_1
    array-length v6, v0

    if-lt v4, v6, :cond_2

    goto :goto_2

    .line 457
    :cond_2
    aget v6, v0, v4

    add-int/lit8 v7, v4, -0x1

    aget v7, v0, v7

    add-int/lit8 v7, v7, 0x1

    if-eq v6, v7, :cond_5

    .line 463
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 464
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    sub-int v4, v5, v3

    const/4 v6, 0x2

    if-lt v4, v6, :cond_4

    .line 467
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget v3, v0, v3

    invoke-interface {p2, v3}, Lantlr/CharFormatter;->literalChar(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 468
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 469
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget v3, v0, v5

    invoke-interface {p2, v3}, Lantlr/CharFormatter;->literalChar(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, v5

    goto :goto_3

    .line 473
    :cond_4
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget v4, v0, v3

    invoke-interface {p2, v4}, Lantlr/CharFormatter;->literalChar(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v5, v4, 0x1

    move v8, v5

    move v5, v4

    move v4, v8

    goto/16 :goto_1
.end method
