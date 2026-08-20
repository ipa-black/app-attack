.class public Lorg/apache/ldap/common/util/EqualsBuilder;
.super Ljava/lang/Object;
.source "EqualsBuilder.java"


# instance fields
.field private isEquals:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    return-void
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ldap/common/util/EqualsBuilder;Z)V
    .locals 4

    .line 234
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p2

    const/4 v0, 0x1

    .line 235
    invoke-static {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    const/4 v0, 0x0

    .line 236
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    iget-boolean v1, p3, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_2

    .line 237
    aget-object v1, p2, v0

    .line 238
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    if-nez p4, :cond_0

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

    .line 242
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v2, v1}, Lorg/apache/ldap/common/util/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ldap/common/util/EqualsBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 246
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

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 118
    invoke-static {p0, p1, v0, v1}, Lorg/apache/ldap/common/util/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 142
    invoke-static {p0, p1, p2, v0}, Lorg/apache/ldap/common/util/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_1

    goto :goto_3

    .line 181
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 184
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 186
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 192
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    move-object v1, v2

    .line 200
    :cond_4
    :goto_1
    new-instance v2, Lorg/apache/ldap/common/util/EqualsBuilder;

    invoke-direct {v2}, Lorg/apache/ldap/common/util/EqualsBuilder;-><init>()V

    .line 202
    :try_start_0
    invoke-static {p0, p1, v1, v2, p2}, Lorg/apache/ldap/common/util/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ldap/common/util/EqualsBuilder;Z)V

    .line 203
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_5

    if-eq v1, p3, :cond_5

    .line 204
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 205
    invoke-static {p0, p1, v1, v2, p2}, Lorg/apache/ldap/common/util/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ldap/common/util/EqualsBuilder;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 215
    :cond_5
    invoke-virtual {v2}, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals()Z

    move-result p0

    return p0

    :catch_0
    :cond_6
    :goto_3
    return v0
.end method


# virtual methods
.method public append(BB)Lorg/apache/ldap/common/util/EqualsBuilder;
    .locals 1

    .line 395
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 398
    :goto_0
    iput-boolean p1, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append(CC)Lorg/apache/ldap/common/util/EqualsBuilder;
    .locals 1

    .line 380
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 383
    :goto_0
    iput-boolean p1, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append(DD)Lorg/apache/ldap/common/util/EqualsBuilder;
    .locals 1

    .line 416
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    .line 419
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/ldap/common/util/EqualsBuilder;->append(JJ)Lorg/apache/ldap/common/util/EqualsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(FF)Lorg/apache/ldap/common/util/EqualsBuilder;
    .locals 1

    .line 436
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    .line 439
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/EqualsBuilder;->append(II)Lorg/apache/ldap/common/util/EqualsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(II)Lorg/apache/ldap/common/util/EqualsBuilder;
    .locals 1

    .line 350
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 353
    :goto_0
    iput-boolean p1, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append(JJ)Lorg/apache/ldap/common/util/EqualsBuilder;
    .locals 1

    .line 335
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    cmp-long p1, p1, p3

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 338
    :goto_0
    iput-boolean p1, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ldap/common/util/EqualsBuilder;
    .locals 3

    .line 280
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_d

    if-nez p2, :cond_2

    goto/16 :goto_1

    .line 290
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 291
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_3

    .line 293
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    goto/16 :goto_0

    .line 294
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_4

    .line 296
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/EqualsBuilder;->setEquals(Z)V

    goto/16 :goto_0

    .line 300
    :cond_4
    instance-of v0, p1, [J

    if-eqz v0, :cond_5

    .line 301
    check-cast p1, [J

    check-cast p1, [J

    check-cast p2, [J

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/EqualsBuilder;->append([J[J)Lorg/apache/ldap/common/util/EqualsBuilder;

    goto/16 :goto_0

    .line 302
    :cond_5
    instance-of v0, p1, [I

    if-eqz v0, :cond_6

    .line 303
    check-cast p1, [I

    check-cast p1, [I

    check-cast p2, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/EqualsBuilder;->append([I[I)Lorg/apache/ldap/common/util/EqualsBuilder;

    goto/16 :goto_0

    .line 304
    :cond_6
    instance-of v0, p1, [S

    if-eqz v0, :cond_7

    .line 305
    check-cast p1, [S

    check-cast p1, [S

    check-cast p2, [S

    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/EqualsBuilder;->append([S[S)Lorg/apache/ldap/common/util/EqualsBuilder;

    goto :goto_0

    .line 306
    :cond_7
    instance-of v0, p1, [C

    if-eqz v0, :cond_8

    .line 307
    check-cast p1, [C

    check-cast p1, [C

    check-cast p2, [C

    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/EqualsBuilder;->append([C[C)Lorg/apache/ldap/common/util/EqualsBuilder;

    goto :goto_0

    .line 308
    :cond_8
    instance-of v0, p1, [B

    if-eqz v0, :cond_9

    .line 309
    check-cast p1, [B

    check-cast p1, [B

    check-cast p2, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/EqualsBuilder;->append([B[B)Lorg/apache/ldap/common/util/EqualsBuilder;

    goto :goto_0

    .line 310
    :cond_9
    instance-of v0, p1, [D

    if-eqz v0, :cond_a

    .line 311
    check-cast p1, [D

    check-cast p1, [D

    check-cast p2, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/EqualsBuilder;->append([D[D)Lorg/apache/ldap/common/util/EqualsBuilder;

    goto :goto_0

    .line 312
    :cond_a
    instance-of v0, p1, [F

    if-eqz v0, :cond_b

    .line 313
    check-cast p1, [F

    check-cast p1, [F

    check-cast p2, [F

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/EqualsBuilder;->append([F[F)Lorg/apache/ldap/common/util/EqualsBuilder;

    goto :goto_0

    .line 314
    :cond_b
    instance-of v0, p1, [Z

    if-eqz v0, :cond_c

    .line 315
    check-cast p1, [Z

    check-cast p1, [Z

    check-cast p2, [Z

    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/EqualsBuilder;->append([Z[Z)Lorg/apache/ldap/common/util/EqualsBuilder;

    goto :goto_0

    .line 318
    :cond_c
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/EqualsBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/ldap/common/util/EqualsBuilder;

    :goto_0
    return-object p0

    .line 287
    :cond_d
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append(SS)Lorg/apache/ldap/common/util/EqualsBuilder;
    .locals 1

    .line 365
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 368
    :goto_0
    iput-boolean p1, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append(ZZ)Lorg/apache/ldap/common/util/EqualsBuilder;
    .locals 1

    .line 450
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 453
    :goto_0
    iput-boolean p1, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append([B[B)Lorg/apache/ldap/common/util/EqualsBuilder;
    .locals 3

    .line 623
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 633
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 634
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 637
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 638
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/ldap/common/util/EqualsBuilder;->append(BB)Lorg/apache/ldap/common/util/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 630
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([C[C)Lorg/apache/ldap/common/util/EqualsBuilder;
    .locals 3

    .line 592
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 602
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 603
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 606
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 607
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/ldap/common/util/EqualsBuilder;->append(CC)Lorg/apache/ldap/common/util/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 599
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([D[D)Lorg/apache/ldap/common/util/EqualsBuilder;
    .locals 5

    .line 654
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 664
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 665
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 668
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 669
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/ldap/common/util/EqualsBuilder;->append(DD)Lorg/apache/ldap/common/util/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 661
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([F[F)Lorg/apache/ldap/common/util/EqualsBuilder;
    .locals 3

    .line 685
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 695
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 696
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 699
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 700
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/ldap/common/util/EqualsBuilder;->append(FF)Lorg/apache/ldap/common/util/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 692
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([I[I)Lorg/apache/ldap/common/util/EqualsBuilder;
    .locals 3

    .line 530
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 540
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 541
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 544
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 545
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/ldap/common/util/EqualsBuilder;->append(II)Lorg/apache/ldap/common/util/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 537
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([J[J)Lorg/apache/ldap/common/util/EqualsBuilder;
    .locals 5

    .line 499
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 509
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 510
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 513
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 514
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/ldap/common/util/EqualsBuilder;->append(JJ)Lorg/apache/ldap/common/util/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 506
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/ldap/common/util/EqualsBuilder;
    .locals 3

    .line 468
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 478
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 479
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 482
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 483
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/ldap/common/util/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ldap/common/util/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 475
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([S[S)Lorg/apache/ldap/common/util/EqualsBuilder;
    .locals 3

    .line 561
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 571
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 572
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 575
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 576
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/ldap/common/util/EqualsBuilder;->append(SS)Lorg/apache/ldap/common/util/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 568
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([Z[Z)Lorg/apache/ldap/common/util/EqualsBuilder;
    .locals 3

    .line 716
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 726
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 727
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 730
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 731
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/ldap/common/util/EqualsBuilder;->append(ZZ)Lorg/apache/ldap/common/util/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 723
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public appendSuper(Z)Lorg/apache/ldap/common/util/EqualsBuilder;
    .locals 1

    .line 262
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    .line 265
    :cond_0
    iput-boolean p1, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public isEquals()Z
    .locals 1

    .line 743
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    return v0
.end method

.method protected setEquals(Z)V
    .locals 0

    .line 752
    iput-boolean p1, p0, Lorg/apache/ldap/common/util/EqualsBuilder;->isEquals:Z

    return-void
.end method
