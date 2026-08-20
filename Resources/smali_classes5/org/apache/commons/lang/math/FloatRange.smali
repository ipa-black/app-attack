.class public final Lorg/apache/commons/lang/math/FloatRange;
.super Lorg/apache/commons/lang/math/Range;
.source "FloatRange.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4158bbcfea0eL


# instance fields
.field private transient hashCode:I

.field private final max:F

.field private transient maxObject:Ljava/lang/Float;

.field private final min:F

.field private transient minObject:Ljava/lang/Float;

.field private transient toString:Ljava/lang/String;


# direct methods
.method public constructor <init>(F)V
    .locals 2

    .line 103
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->minObject:Ljava/lang/Float;

    .line 85
    iput-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->maxObject:Ljava/lang/Float;

    const/4 v1, 0x0

    .line 89
    iput v1, p0, Lorg/apache/commons/lang/math/FloatRange;->hashCode:I

    .line 93
    iput-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->toString:Ljava/lang/String;

    .line 104
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iput p1, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    .line 108
    iput p1, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

    return-void

    .line 105
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The number must not be NaN"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(FF)V
    .locals 2

    .line 148
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->minObject:Ljava/lang/Float;

    .line 85
    iput-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->maxObject:Ljava/lang/Float;

    const/4 v1, 0x0

    .line 89
    iput v1, p0, Lorg/apache/commons/lang/math/FloatRange;->hashCode:I

    .line 93
    iput-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->toString:Ljava/lang/String;

    .line 149
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    cmpg-float v0, p2, p1

    if-gez v0, :cond_0

    .line 153
    iput p2, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    .line 154
    iput p1, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

    goto :goto_0

    .line 156
    :cond_0
    iput p1, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    .line 157
    iput p2, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

    :goto_0
    return-void

    .line 150
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The numbers must not be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 2

    .line 121
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->minObject:Ljava/lang/Float;

    .line 85
    iput-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->maxObject:Ljava/lang/Float;

    const/4 v1, 0x0

    .line 89
    iput v1, p0, Lorg/apache/commons/lang/math/FloatRange;->hashCode:I

    .line 93
    iput-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->toString:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 125
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    .line 126
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iput v1, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

    .line 127
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 131
    check-cast p1, Ljava/lang/Float;

    iput-object p1, p0, Lorg/apache/commons/lang/math/FloatRange;->minObject:Ljava/lang/Float;

    .line 132
    iput-object p1, p0, Lorg/apache/commons/lang/math/FloatRange;->maxObject:Ljava/lang/Float;

    :cond_0
    return-void

    .line 128
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The number must not be NaN"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The number must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 3

    .line 174
    invoke-direct {p0}, Lorg/apache/commons/lang/math/Range;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->minObject:Ljava/lang/Float;

    .line 85
    iput-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->maxObject:Ljava/lang/Float;

    const/4 v1, 0x0

    .line 89
    iput v1, p0, Lorg/apache/commons/lang/math/FloatRange;->hashCode:I

    .line 93
    iput-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->toString:Ljava/lang/String;

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 178
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 179
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 180
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_4

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    .line 184
    iput v1, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    .line 185
    iput v0, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

    .line 186
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 187
    check-cast p2, Ljava/lang/Float;

    iput-object p2, p0, Lorg/apache/commons/lang/math/FloatRange;->minObject:Ljava/lang/Float;

    .line 189
    :cond_0
    instance-of p2, p1, Ljava/lang/Float;

    if-eqz p2, :cond_3

    .line 190
    check-cast p1, Ljava/lang/Float;

    iput-object p1, p0, Lorg/apache/commons/lang/math/FloatRange;->maxObject:Ljava/lang/Float;

    goto :goto_0

    .line 193
    :cond_1
    iput v0, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    .line 194
    iput v1, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

    .line 195
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 196
    check-cast p1, Ljava/lang/Float;

    iput-object p1, p0, Lorg/apache/commons/lang/math/FloatRange;->minObject:Ljava/lang/Float;

    .line 198
    :cond_2
    instance-of p1, p2, Ljava/lang/Float;

    if-eqz p1, :cond_3

    .line 199
    check-cast p2, Ljava/lang/Float;

    iput-object p2, p0, Lorg/apache/commons/lang/math/FloatRange;->maxObject:Ljava/lang/Float;

    :cond_3
    :goto_0
    return-void

    .line 181
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The numbers must not be NaN"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 176
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The numbers must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public containsFloat(F)Z
    .locals 1

    .line 342
    iget v0, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsNumber(Ljava/lang/Number;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 327
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/math/FloatRange;->containsFloat(F)Z

    move-result p1

    return p1
.end method

.method public containsRange(Lorg/apache/commons/lang/math/Range;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 362
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/lang/math/Range;->getMinimumFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/math/FloatRange;->containsFloat(F)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/lang/math/Range;->getMaximumFloat()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/math/FloatRange;->containsFloat(F)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 399
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/lang/math/FloatRange;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 402
    :cond_1
    check-cast p1, Lorg/apache/commons/lang/math/FloatRange;

    .line 403
    iget v1, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iget v3, p1, Lorg/apache/commons/lang/math/FloatRange;->min:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iget p1, p1, Lorg/apache/commons/lang/math/FloatRange;->max:F

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getMaximumDouble()D
    .locals 2

    .line 299
    iget v0, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getMaximumFloat()F
    .locals 1

    .line 308
    iget v0, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

    return v0
.end method

.method public getMaximumInteger()I
    .locals 1

    .line 290
    iget v0, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

    float-to-int v0, v0

    return v0
.end method

.method public getMaximumLong()J
    .locals 2

    .line 279
    iget v0, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public getMaximumNumber()Ljava/lang/Number;
    .locals 2

    .line 265
    iget-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->maxObject:Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Ljava/lang/Float;

    iget v1, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->maxObject:Ljava/lang/Float;

    .line 268
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->maxObject:Ljava/lang/Float;

    return-object v0
.end method

.method public getMinimumDouble()D
    .locals 2

    .line 247
    iget v0, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getMinimumFloat()F
    .locals 1

    .line 256
    iget v0, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    return v0
.end method

.method public getMinimumInteger()I
    .locals 1

    .line 238
    iget v0, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    float-to-int v0, v0

    return v0
.end method

.method public getMinimumLong()J
    .locals 2

    .line 227
    iget v0, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public getMinimumNumber()Ljava/lang/Number;
    .locals 2

    .line 213
    iget-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->minObject:Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/Float;

    iget v1, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->minObject:Ljava/lang/Float;

    .line 216
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->minObject:Ljava/lang/Float;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 413
    iget v0, p0, Lorg/apache/commons/lang/math/FloatRange;->hashCode:I

    if-nez v0, :cond_0

    const/16 v0, 0x11

    .line 414
    iput v0, p0, Lorg/apache/commons/lang/math/FloatRange;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    .line 415
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/math/FloatRange;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    .line 416
    iget v1, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/math/FloatRange;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    .line 417
    iget v1, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/math/FloatRange;->hashCode:I

    .line 419
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang/math/FloatRange;->hashCode:I

    return v0
.end method

.method public overlapsRange(Lorg/apache/commons/lang/math/Range;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 379
    :cond_0
    iget v1, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    invoke-virtual {p1, v1}, Lorg/apache/commons/lang/math/Range;->containsFloat(F)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

    invoke-virtual {p1, v1}, Lorg/apache/commons/lang/math/Range;->containsFloat(F)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/lang/math/Range;->getMinimumFloat()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/math/FloatRange;->containsFloat(F)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 430
    iget-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->toString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 431
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 432
    const-string v1, "Range["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    iget v1, p0, Lorg/apache/commons/lang/math/FloatRange;->min:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const/16 v1, 0x2c

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 435
    iget v1, p0, Lorg/apache/commons/lang/math/FloatRange;->max:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const/16 v1, 0x5d

    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 437
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->toString:Ljava/lang/String;

    .line 439
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/math/FloatRange;->toString:Ljava/lang/String;

    return-object v0
.end method
