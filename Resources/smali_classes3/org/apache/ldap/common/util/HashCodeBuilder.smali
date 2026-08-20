.class public Lorg/apache/ldap/common/util/HashCodeBuilder;
.super Ljava/lang/Object;
.source "HashCodeBuilder.java"


# instance fields
.field private final iConstant:I

.field private iTotal:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x25

    .line 98
    iput v0, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iConstant:I

    const/16 v0, 0x11

    .line 99
    iput v0, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    if-eqz p1, :cond_3

    .line 120
    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 126
    rem-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_0

    .line 129
    iput p2, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iConstant:I

    .line 130
    iput p1, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    return-void

    .line 127
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HashCodeBuilder requires an odd multiplier"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 124
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HashCodeBuilder requires a non zero multiplier"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HashCodeBuilder requires an odd initial value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HashCodeBuilder requires a non zero initial value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ldap/common/util/HashCodeBuilder;Z)V
    .locals 4

    .line 307
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 308
    invoke-static {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    const/4 v0, 0x0

    .line 309
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 310
    aget-object v1, p1, v0

    .line 311
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 315
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/ldap/common/util/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/ldap/common/util/HashCodeBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 319
    :catch_0
    new-instance p0, Ljava/lang/InternalError;

    const-string p1, "Unexpected IllegalAccessException"

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static reflectionHashCode(IILjava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 211
    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/ldap/common/util/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;)I

    move-result p0

    return p0
.end method

.method public static reflectionHashCode(IILjava/lang/Object;Z)I
    .locals 1

    const/4 v0, 0x0

    .line 243
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/ldap/common/util/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;)I

    move-result p0

    return p0
.end method

.method public static reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;)I
    .locals 1

    if-eqz p2, :cond_1

    .line 287
    new-instance v0, Lorg/apache/ldap/common/util/HashCodeBuilder;

    invoke-direct {v0, p0, p1}, Lorg/apache/ldap/common/util/HashCodeBuilder;-><init>(II)V

    .line 288
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 289
    invoke-static {p2, p0, v0, p3}, Lorg/apache/ldap/common/util/HashCodeBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ldap/common/util/HashCodeBuilder;Z)V

    .line 290
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eq p0, p4, :cond_0

    .line 291
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 292
    invoke-static {p2, p0, v0, p3}, Lorg/apache/ldap/common/util/HashCodeBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ldap/common/util/HashCodeBuilder;Z)V

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {v0}, Lorg/apache/ldap/common/util/HashCodeBuilder;->toHashCode()I

    move-result p0

    return p0

    .line 285
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The object to build a hash code for must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static reflectionHashCode(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x11

    const/16 v3, 0x25

    .line 156
    invoke-static {v2, v3, p0, v0, v1}, Lorg/apache/ldap/common/util/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;)I

    move-result p0

    return p0
.end method

.method public static reflectionHashCode(Ljava/lang/Object;Z)I
    .locals 3

    const/16 v0, 0x25

    const/4 v1, 0x0

    const/16 v2, 0x11

    .line 182
    invoke-static {v2, v0, p0, p1, v1}, Lorg/apache/ldap/common/util/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public append(B)Lorg/apache/ldap/common/util/HashCodeBuilder;
    .locals 2

    .line 435
    iget v0, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    return-object p0
.end method

.method public append(C)Lorg/apache/ldap/common/util/HashCodeBuilder;
    .locals 2

    .line 424
    iget v0, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    return-object p0
.end method

.method public append(D)Lorg/apache/ldap/common/util/HashCodeBuilder;
    .locals 0

    .line 446
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/HashCodeBuilder;->append(J)Lorg/apache/ldap/common/util/HashCodeBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(F)Lorg/apache/ldap/common/util/HashCodeBuilder;
    .locals 2

    .line 456
    iget v0, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    return-object p0
.end method

.method public append(I)Lorg/apache/ldap/common/util/HashCodeBuilder;
    .locals 2

    .line 402
    iget v0, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    return-object p0
.end method

.method public append(J)Lorg/apache/ldap/common/util/HashCodeBuilder;
    .locals 3

    .line 391
    iget v0, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    const/16 v1, 0x20

    shr-long v1, p1, v1

    xor-long/2addr p1, v1

    long-to-int p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lorg/apache/ldap/common/util/HashCodeBuilder;
    .locals 2

    if-nez p1, :cond_0

    .line 349
    iget p1, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    iget v0, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iConstant:I

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    goto/16 :goto_0

    .line 352
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    .line 354
    iget v0, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    goto/16 :goto_0

    .line 359
    :cond_1
    instance-of v0, p1, [J

    if-eqz v0, :cond_2

    .line 360
    check-cast p1, [J

    check-cast p1, [J

    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/util/HashCodeBuilder;->append([J)Lorg/apache/ldap/common/util/HashCodeBuilder;

    goto :goto_0

    .line 361
    :cond_2
    instance-of v0, p1, [I

    if-eqz v0, :cond_3

    .line 362
    check-cast p1, [I

    check-cast p1, [I

    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/util/HashCodeBuilder;->append([I)Lorg/apache/ldap/common/util/HashCodeBuilder;

    goto :goto_0

    .line 363
    :cond_3
    instance-of v0, p1, [S

    if-eqz v0, :cond_4

    .line 364
    check-cast p1, [S

    check-cast p1, [S

    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/util/HashCodeBuilder;->append([S)Lorg/apache/ldap/common/util/HashCodeBuilder;

    goto :goto_0

    .line 365
    :cond_4
    instance-of v0, p1, [C

    if-eqz v0, :cond_5

    .line 366
    check-cast p1, [C

    check-cast p1, [C

    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/util/HashCodeBuilder;->append([C)Lorg/apache/ldap/common/util/HashCodeBuilder;

    goto :goto_0

    .line 367
    :cond_5
    instance-of v0, p1, [B

    if-eqz v0, :cond_6

    .line 368
    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/util/HashCodeBuilder;->append([B)Lorg/apache/ldap/common/util/HashCodeBuilder;

    goto :goto_0

    .line 369
    :cond_6
    instance-of v0, p1, [D

    if-eqz v0, :cond_7

    .line 370
    check-cast p1, [D

    check-cast p1, [D

    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/util/HashCodeBuilder;->append([D)Lorg/apache/ldap/common/util/HashCodeBuilder;

    goto :goto_0

    .line 371
    :cond_7
    instance-of v0, p1, [F

    if-eqz v0, :cond_8

    .line 372
    check-cast p1, [F

    check-cast p1, [F

    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/util/HashCodeBuilder;->append([F)Lorg/apache/ldap/common/util/HashCodeBuilder;

    goto :goto_0

    .line 373
    :cond_8
    instance-of v0, p1, [Z

    if-eqz v0, :cond_9

    .line 374
    check-cast p1, [Z

    check-cast p1, [Z

    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/util/HashCodeBuilder;->append([Z)Lorg/apache/ldap/common/util/HashCodeBuilder;

    goto :goto_0

    .line 377
    :cond_9
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/util/HashCodeBuilder;->append([Ljava/lang/Object;)Lorg/apache/ldap/common/util/HashCodeBuilder;

    :goto_0
    return-object p0
.end method

.method public append(S)Lorg/apache/ldap/common/util/HashCodeBuilder;
    .locals 2

    .line 413
    iget v0, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    return-object p0
.end method

.method public append(Z)Lorg/apache/ldap/common/util/HashCodeBuilder;
    .locals 2

    .line 470
    iget v0, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    xor-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    return-object p0
.end method

.method public append([B)Lorg/apache/ldap/common/util/HashCodeBuilder;
    .locals 2

    if-nez p1, :cond_0

    .line 567
    iget p1, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    iget v0, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iConstant:I

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 569
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 570
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/util/HashCodeBuilder;->append(B)Lorg/apache/ldap/common/util/HashCodeBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public append([C)Lorg/apache/ldap/common/util/HashCodeBuilder;
    .locals 2

    if-nez p1, :cond_0

    .line 550
    iget p1, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    iget v0, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iConstant:I

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 552
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 553
    aget-char v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/util/HashCodeBuilder;->append(C)Lorg/apache/ldap/common/util/HashCodeBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public append([D)Lorg/apache/ldap/common/util/HashCodeBuilder;
    .locals 3

    if-nez p1, :cond_0

    .line 584
    iget p1, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    iget v0, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iConstant:I

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 586
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 587
    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/ldap/common/util/HashCodeBuilder;->append(D)Lorg/apache/ldap/common/util/HashCodeBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public append([F)Lorg/apache/ldap/common/util/HashCodeBuilder;
    .locals 2

    if-nez p1, :cond_0

    .line 601
    iget p1, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    iget v0, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iConstant:I

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 603
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 604
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/util/HashCodeBuilder;->append(F)Lorg/apache/ldap/common/util/HashCodeBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public append([I)Lorg/apache/ldap/common/util/HashCodeBuilder;
    .locals 2

    if-nez p1, :cond_0

    .line 516
    iget p1, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    iget v0, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iConstant:I

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 518
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 519
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/util/HashCodeBuilder;->append(I)Lorg/apache/ldap/common/util/HashCodeBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public append([J)Lorg/apache/ldap/common/util/HashCodeBuilder;
    .locals 3

    if-nez p1, :cond_0

    .line 499
    iget p1, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    iget v0, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iConstant:I

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 501
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 502
    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/ldap/common/util/HashCodeBuilder;->append(J)Lorg/apache/ldap/common/util/HashCodeBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public append([Ljava/lang/Object;)Lorg/apache/ldap/common/util/HashCodeBuilder;
    .locals 2

    if-nez p1, :cond_0

    .line 482
    iget p1, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    iget v0, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iConstant:I

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 484
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 485
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/util/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/ldap/common/util/HashCodeBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public append([S)Lorg/apache/ldap/common/util/HashCodeBuilder;
    .locals 2

    if-nez p1, :cond_0

    .line 533
    iget p1, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    iget v0, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iConstant:I

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 535
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 536
    aget-short v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/util/HashCodeBuilder;->append(S)Lorg/apache/ldap/common/util/HashCodeBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public append([Z)Lorg/apache/ldap/common/util/HashCodeBuilder;
    .locals 2

    if-nez p1, :cond_0

    .line 618
    iget p1, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    iget v0, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iConstant:I

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 620
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 621
    aget-boolean v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/util/HashCodeBuilder;->append(Z)Lorg/apache/ldap/common/util/HashCodeBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public appendSuper(I)Lorg/apache/ldap/common/util/HashCodeBuilder;
    .locals 2

    .line 335
    iget v0, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    return-object p0
.end method

.method public toHashCode()I
    .locals 1

    .line 633
    iget v0, p0, Lorg/apache/ldap/common/util/HashCodeBuilder;->iTotal:I

    return v0
.end method
