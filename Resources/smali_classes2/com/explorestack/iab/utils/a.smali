.class public Lcom/explorestack/iab/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/iab/utils/a$b;
    }
.end annotation


# static fields
.field public static final a:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/explorestack/iab/utils/a;->a:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)I
    .locals 1

    const/high16 v0, -0x80000000

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    if-ge p1, p2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public final a(Lcom/explorestack/iab/utils/a$b;)I
    .locals 1

    iget-object v0, p1, Lcom/explorestack/iab/utils/a$b;->b:[B

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/explorestack/iab/utils/a$b;->c:I

    iget p1, p1, Lcom/explorestack/iab/utils/a$b;->d:I

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/utils/a;->a([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a([B)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/explorestack/iab/utils/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/explorestack/iab/utils/a$b;-><init>(Lcom/explorestack/iab/utils/a$a;)V

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/explorestack/iab/utils/a;->a([BIILcom/explorestack/iab/utils/a$b;)V

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/explorestack/iab/utils/a;->a([BIILcom/explorestack/iab/utils/a$b;)V

    iget p1, v0, Lcom/explorestack/iab/utils/a$b;->c:I

    new-array v1, p1, [B

    invoke-virtual {p0, v1, p1, v0}, Lcom/explorestack/iab/utils/a;->a([BILcom/explorestack/iab/utils/a$b;)V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    return-object p1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public final a([BIILcom/explorestack/iab/utils/a$b;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    iget-boolean v3, v2, Lcom/explorestack/iab/utils/a$b;->e:Z

    if-eqz v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    if-gez v1, :cond_1

    iput-boolean v3, v2, Lcom/explorestack/iab/utils/a$b;->e:Z

    :cond_1
    const/4 v4, 0x0

    move v5, v4

    move/from16 v4, p2

    :goto_0
    const/4 v6, 0x7

    const-wide/16 v7, 0xff

    if-ge v5, v1, :cond_4

    add-int/lit8 v9, v4, 0x1

    aget-byte v4, p1, v4

    const/16 v10, 0x3d

    if-ne v4, v10, :cond_2

    iput-boolean v3, v2, Lcom/explorestack/iab/utils/a$b;->e:Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v6, v2}, Lcom/explorestack/iab/utils/a;->a(ILcom/explorestack/iab/utils/a$b;)[B

    move-result-object v6

    if-ltz v4, :cond_3

    sget-object v10, Lcom/explorestack/iab/utils/a;->a:[B

    array-length v11, v10

    if-ge v4, v11, :cond_3

    aget-byte v4, v10, v4

    if-ltz v4, :cond_3

    iget v10, v2, Lcom/explorestack/iab/utils/a$b;->f:I

    add-int/2addr v10, v3

    const/16 v11, 0x8

    rem-int/2addr v10, v11

    iput v10, v2, Lcom/explorestack/iab/utils/a$b;->f:I

    iget-wide v12, v2, Lcom/explorestack/iab/utils/a$b;->a:J

    const/4 v14, 0x5

    shl-long/2addr v12, v14

    int-to-long v3, v4

    add-long/2addr v12, v3

    iput-wide v12, v2, Lcom/explorestack/iab/utils/a$b;->a:J

    if-nez v10, :cond_3

    iget v3, v2, Lcom/explorestack/iab/utils/a$b;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lcom/explorestack/iab/utils/a$b;->c:I

    const/16 v10, 0x20

    shr-long v16, v12, v10

    and-long v14, v16, v7

    long-to-int v14, v14

    int-to-byte v14, v14

    aput-byte v14, v6, v3

    add-int/lit8 v14, v3, 0x2

    iput v14, v2, Lcom/explorestack/iab/utils/a$b;->c:I

    const/16 v15, 0x18

    shr-long v15, v12, v15

    and-long v10, v15, v7

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v6, v4

    add-int/lit8 v4, v3, 0x3

    iput v4, v2, Lcom/explorestack/iab/utils/a$b;->c:I

    const/16 v10, 0x10

    shr-long v10, v12, v10

    and-long/2addr v10, v7

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v6, v14

    add-int/lit8 v10, v3, 0x4

    iput v10, v2, Lcom/explorestack/iab/utils/a$b;->c:I

    const/16 v11, 0x8

    shr-long v14, v12, v11

    and-long/2addr v14, v7

    long-to-int v11, v14

    int-to-byte v11, v11

    aput-byte v11, v6, v4

    const/4 v4, 0x5

    add-int/2addr v3, v4

    iput v3, v2, Lcom/explorestack/iab/utils/a$b;->c:I

    and-long v3, v12, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v6, v10

    :cond_3
    add-int/lit8 v5, v5, 0x1

    move v4, v9

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-boolean v1, v2, Lcom/explorestack/iab/utils/a$b;->e:Z

    if-eqz v1, :cond_5

    iget v1, v2, Lcom/explorestack/iab/utils/a$b;->f:I

    if-lez v1, :cond_5

    invoke-virtual {v0, v6, v2}, Lcom/explorestack/iab/utils/a;->a(ILcom/explorestack/iab/utils/a$b;)[B

    move-result-object v1

    iget v3, v2, Lcom/explorestack/iab/utils/a$b;->f:I

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v9, 0x2

    packed-switch v3, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Impossible modulus "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Lcom/explorestack/iab/utils/a$b;->f:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-wide v9, v2, Lcom/explorestack/iab/utils/a$b;->a:J

    shr-long v5, v9, v5

    iput-wide v5, v2, Lcom/explorestack/iab/utils/a$b;->a:J

    iget v3, v2, Lcom/explorestack/iab/utils/a$b;->c:I

    add-int/lit8 v11, v3, 0x1

    iput v11, v2, Lcom/explorestack/iab/utils/a$b;->c:I

    const/16 v12, 0x1b

    shr-long v12, v9, v12

    and-long/2addr v12, v7

    long-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    add-int/lit8 v12, v3, 0x2

    iput v12, v2, Lcom/explorestack/iab/utils/a$b;->c:I

    const/16 v13, 0x13

    shr-long v13, v9, v13

    and-long/2addr v13, v7

    long-to-int v13, v13

    int-to-byte v13, v13

    aput-byte v13, v1, v11

    add-int/lit8 v11, v3, 0x3

    iput v11, v2, Lcom/explorestack/iab/utils/a$b;->c:I

    const/16 v13, 0xb

    shr-long/2addr v9, v13

    and-long/2addr v9, v7

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v1, v12

    add-int/2addr v3, v4

    iput v3, v2, Lcom/explorestack/iab/utils/a$b;->c:I

    and-long v2, v5, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    goto/16 :goto_2

    :pswitch_1
    iget-wide v3, v2, Lcom/explorestack/iab/utils/a$b;->a:J

    const/4 v6, 0x6

    shr-long v9, v3, v6

    iput-wide v9, v2, Lcom/explorestack/iab/utils/a$b;->a:J

    iget v6, v2, Lcom/explorestack/iab/utils/a$b;->c:I

    add-int/lit8 v11, v6, 0x1

    iput v11, v2, Lcom/explorestack/iab/utils/a$b;->c:I

    const/16 v12, 0x16

    shr-long v12, v3, v12

    and-long/2addr v12, v7

    long-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, v1, v6

    add-int/lit8 v12, v6, 0x2

    iput v12, v2, Lcom/explorestack/iab/utils/a$b;->c:I

    const/16 v13, 0xe

    shr-long/2addr v3, v13

    and-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v11

    add-int/2addr v6, v5

    iput v6, v2, Lcom/explorestack/iab/utils/a$b;->c:I

    and-long v2, v9, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v12

    goto :goto_2

    :pswitch_2
    iget-wide v3, v2, Lcom/explorestack/iab/utils/a$b;->a:J

    const/4 v6, 0x1

    shr-long v9, v3, v6

    iput-wide v9, v2, Lcom/explorestack/iab/utils/a$b;->a:J

    iget v6, v2, Lcom/explorestack/iab/utils/a$b;->c:I

    add-int/lit8 v11, v6, 0x1

    iput v11, v2, Lcom/explorestack/iab/utils/a$b;->c:I

    const/16 v12, 0x11

    shr-long v12, v3, v12

    and-long/2addr v12, v7

    long-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, v1, v6

    add-int/lit8 v12, v6, 0x2

    iput v12, v2, Lcom/explorestack/iab/utils/a$b;->c:I

    const/16 v13, 0x9

    shr-long/2addr v3, v13

    and-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v11

    add-int/2addr v6, v5

    iput v6, v2, Lcom/explorestack/iab/utils/a$b;->c:I

    and-long v2, v9, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v12

    goto :goto_2

    :pswitch_3
    iget-wide v5, v2, Lcom/explorestack/iab/utils/a$b;->a:J

    shr-long v3, v5, v4

    iput-wide v3, v2, Lcom/explorestack/iab/utils/a$b;->a:J

    iget v10, v2, Lcom/explorestack/iab/utils/a$b;->c:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v2, Lcom/explorestack/iab/utils/a$b;->c:I

    const/16 v12, 0xc

    shr-long/2addr v5, v12

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v1, v10

    add-int/2addr v10, v9

    iput v10, v2, Lcom/explorestack/iab/utils/a$b;->c:I

    and-long v2, v3, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    goto :goto_2

    :pswitch_4
    iget v3, v2, Lcom/explorestack/iab/utils/a$b;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lcom/explorestack/iab/utils/a$b;->c:I

    iget-wide v4, v2, Lcom/explorestack/iab/utils/a$b;->a:J

    shr-long/2addr v4, v6

    and-long/2addr v4, v7

    long-to-int v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    goto :goto_2

    :pswitch_5
    iget v3, v2, Lcom/explorestack/iab/utils/a$b;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lcom/explorestack/iab/utils/a$b;->c:I

    iget-wide v4, v2, Lcom/explorestack/iab/utils/a$b;->a:J

    shr-long/2addr v4, v9

    and-long/2addr v4, v7

    long-to-int v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    :cond_5
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a([BILcom/explorestack/iab/utils/a$b;)V
    .locals 3

    iget-object v0, p3, Lcom/explorestack/iab/utils/a$b;->b:[B

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/explorestack/iab/utils/a;->a(Lcom/explorestack/iab/utils/a$b;)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v0, p3, Lcom/explorestack/iab/utils/a$b;->b:[B

    iget v1, p3, Lcom/explorestack/iab/utils/a$b;->d:I

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p3, Lcom/explorestack/iab/utils/a$b;->d:I

    add-int/2addr p1, p2

    iput p1, p3, Lcom/explorestack/iab/utils/a$b;->d:I

    iget p2, p3, Lcom/explorestack/iab/utils/a$b;->c:I

    if-lt p1, p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p3, Lcom/explorestack/iab/utils/a$b;->b:[B

    :cond_0
    return-void
.end method

.method public final a(ILcom/explorestack/iab/utils/a$b;)[B
    .locals 2

    iget-object v0, p2, Lcom/explorestack/iab/utils/a$b;->b:[B

    if-nez v0, :cond_0

    const/16 v0, 0x2000

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p2, Lcom/explorestack/iab/utils/a$b;->b:[B

    const/4 p1, 0x0

    iput p1, p2, Lcom/explorestack/iab/utils/a$b;->c:I

    iput p1, p2, Lcom/explorestack/iab/utils/a$b;->d:I

    goto :goto_0

    :cond_0
    iget v1, p2, Lcom/explorestack/iab/utils/a$b;->c:I

    add-int/2addr v1, p1

    array-length p1, v0

    sub-int p1, v1, p1

    if-lez p1, :cond_1

    invoke-virtual {p0, p2, v1}, Lcom/explorestack/iab/utils/a;->a(Lcom/explorestack/iab/utils/a$b;I)[B

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    iget-object p1, p2, Lcom/explorestack/iab/utils/a$b;->b:[B

    return-object p1
.end method

.method public final a(Lcom/explorestack/iab/utils/a$b;I)[B
    .locals 3

    iget-object v0, p1, Lcom/explorestack/iab/utils/a$b;->b:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/explorestack/iab/utils/a;->a(II)I

    move-result v1

    if-gez v1, :cond_0

    move v0, p2

    :cond_0
    const v1, 0x7ffffff7

    invoke-virtual {p0, v0, v1}, Lcom/explorestack/iab/utils/a;->a(II)I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    new-array p2, v0, [B

    iget-object v0, p1, Lcom/explorestack/iab/utils/a$b;->b:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p2, p1, Lcom/explorestack/iab/utils/a$b;->b:[B

    return-object p2
.end method
