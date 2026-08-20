.class public final Lcom/facebook/ads/redexgen/X/Fl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/33;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CueBuilder"
.end annotation


# static fields
.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:Z

.field public final A07:Lcom/facebook/ads/redexgen/X/Hc;

.field public final A08:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 33951
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Ae51WtdtbsQ7oHVSUK2kH2lkhYtCD"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "qx7lDBYo1odo5Y55vJBjPuPd0SCIUsyA"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "8Fm6CMM7j8ObWzEih"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Wlrw6QUG7RBgeIlzL5kKGv4h4BsSo73q"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "KMN6ZJtdLdMqvcVUA0dmI7c1fz02SP9b"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "8oEfNfnBPUmBxW5HI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "jCL3JtrXJCo63I6Hw50xrAvVkRQtnXEj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6zRYHFDNSsaLRa7ASpeJIQcC6Xopjreo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Fl;->A09:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33953
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Hc;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fl;->A07:Lcom/facebook/ads/redexgen/X/Hc;

    .line 33954
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fl;->A08:[I

    .line 33955
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Fl;Lcom/facebook/ads/redexgen/X/Hc;I)V
    .locals 0

    .line 33956
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Fl;->A05(Lcom/facebook/ads/redexgen/X/Hc;I)V

    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Fl;Lcom/facebook/ads/redexgen/X/Hc;I)V
    .locals 0

    .line 33957
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Fl;->A03(Lcom/facebook/ads/redexgen/X/Hc;I)V

    return-void
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Fl;Lcom/facebook/ads/redexgen/X/Hc;I)V
    .locals 0

    .line 33958
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Fl;->A04(Lcom/facebook/ads/redexgen/X/Hc;I)V

    return-void
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/Hc;I)V
    .locals 6

    .line 33959
    const/4 v4, 0x4

    if-ge p2, v4, :cond_0

    .line 33960
    return-void

    .line 33961
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 33962
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 33963
    .local v1, "isBaseSection":Z
    :goto_0
    add-int/lit8 v3, p2, -0x4

    .line 33964
    if-eqz v0, :cond_4

    .line 33965
    const/4 v5, 0x7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fl;->A09:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fl;->A09:[Ljava/lang/String;

    const-string v1, "m4TsyqBzkyxUuct48"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "zfIYrv7wq9TBAE9Jz"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge v3, v5, :cond_2

    .line 33966
    return-void

    .line 33967
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0G()I

    move-result v2

    .line 33968
    .local v2, "totalLength":I
    if-ge v2, v4, :cond_3

    .line 33969
    return-void

    .line 33970
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fl;->A01:I

    .line 33971
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fl;->A00:I

    .line 33972
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fl;->A07:Lcom/facebook/ads/redexgen/X/Hc;

    add-int/lit8 v0, v2, -0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0W(I)V

    .line 33973
    add-int/lit8 v3, v3, -0x7

    .line 33974
    .end local v2    # "totalLength":I
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fl;->A07:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A06()I

    move-result v4

    .line 33975
    .local v0, "position":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fl;->A07:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A07()I

    move-result v0

    .line 33976
    .local v2, "limit":I
    if-ge v4, v0, :cond_7

    if-lez v3, :cond_7

    .line 33977
    sub-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 33978
    .local v3, "bytesToRead":I
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Fl;->A07:Lcom/facebook/ads/redexgen/X/Hc;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fl;->A09:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    goto :goto_1

    .line 33979
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 33980
    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fl;->A09:[Ljava/lang/String;

    const-string v1, "1YWr3OwQ0jPjYWbciqj9BosGRiIvHZyi"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    invoke-virtual {p1, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Hc;->A0c([BII)V

    .line 33981
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fl;->A07:Lcom/facebook/ads/redexgen/X/Hc;

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 33982
    .end local v3    # "bytesToRead":I
    :cond_7
    return-void
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/Hc;I)V
    .locals 1

    .line 33983
    const/16 v0, 0x13

    if-ge p2, v0, :cond_0

    .line 33984
    return-void

    .line 33985
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fl;->A05:I

    .line 33986
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fl;->A04:I

    .line 33987
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 33988
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fl;->A02:I

    .line 33989
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fl;->A03:I

    .line 33990
    return-void
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/Hc;I)V
    .locals 16

    .line 33991
    move-object/from16 v5, p0

    rem-int/lit8 v1, p2, 0x5

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    .line 33992
    return-void

    .line 33993
    :cond_0
    move-object/from16 v6, p1

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 33994
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/Fl;->A08:[I

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 33995
    div-int/lit8 v7, p2, 0x5

    .line 33996
    .local v2, "entryCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v7, :cond_1

    .line 33997
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v15

    .line 33998
    .local v5, "index":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v9

    .line 33999
    .local v6, "y":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v12

    .line 34000
    .local v7, "cr":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v14

    .line 34001
    .local v8, "cb":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v13

    .line 34002
    .local v9, "a":I
    int-to-double v0, v9

    const-wide v10, 0x3ff66e978d4fdf3bL    # 1.402

    add-int/lit8 v2, v12, -0x80

    int-to-double v2, v2

    mul-double/2addr v2, v10

    add-double/2addr v0, v2

    double-to-int v8, v0

    .line 34003
    .local v10, "r":I
    int-to-double v2, v9

    const-wide v10, 0x3fd60663c74fb54aL    # 0.34414

    add-int/lit8 v0, v14, -0x80

    .end local v4    # "i":I
    .local p0, "i":I
    int-to-double v0, v0

    mul-double/2addr v0, v10

    sub-double/2addr v2, v0

    const-wide v10, 0x3fe6da3c21187e7cL    # 0.71414

    add-int/lit8 v0, v12, -0x80

    int-to-double v0, v0

    mul-double/2addr v0, v10

    sub-double/2addr v2, v0

    double-to-int v10, v2

    .line 34004
    .local v3, "g":I
    int-to-double v2, v9

    const-wide v11, 0x3ffc5a1cac083127L    # 1.772

    add-int/lit8 v0, v14, -0x80

    .end local v2    # "entryCount":I
    .local v15, "entryCount":I
    int-to-double v0, v0

    mul-double/2addr v0, v11

    add-double/2addr v2, v0

    double-to-int v9, v2

    .line 34005
    .local v1, "b":I
    iget-object v11, v5, Lcom/facebook/ads/redexgen/X/Fl;->A08:[I

    shl-int/lit8 v3, v13, 0x18

    .line 34006
    const/16 v2, 0xff

    const/4 v1, 0x0

    invoke-static {v8, v1, v2}, Lcom/facebook/ads/redexgen/X/Hs;->A06(III)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v3, v0

    .line 34007
    invoke-static {v10, v1, v2}, Lcom/facebook/ads/redexgen/X/Hs;->A06(III)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v3, v0

    .line 34008
    invoke-static {v9, v1, v2}, Lcom/facebook/ads/redexgen/X/Hs;->A06(III)I

    move-result v0

    or-int/2addr v3, v0

    aput v3, v11, v15

    .line 34009
    .end local v1    # "b":I
    .end local v3    # "g":I
    .end local v5    # "index":I
    .end local v6    # "y":I
    .end local v7    # "cr":I
    .end local v8    # "cb":I
    .end local v9    # "a":I
    .end local v10    # "r":I
    add-int/lit8 v4, v4, 0x1

    .end local p0    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 34010
    .end local v4    # "i":I
    .end local v15    # "entryCount":I
    .restart local v2    # "entryCount":I
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/facebook/ads/redexgen/X/Fl;->A06:Z

    .line 34011
    return-void
.end method


# virtual methods
.method public final A06()Lcom/facebook/ads/redexgen/X/FQ;
    .locals 11

    .line 34012
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fl;->A05:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fl;->A04:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fl;->A01:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fl;->A00:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fl;->A07:Lcom/facebook/ads/redexgen/X/Hc;

    .line 34013
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A07()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fl;->A07:Lcom/facebook/ads/redexgen/X/Hc;

    .line 34014
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A06()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fl;->A07:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A07()I

    move-result v0

    if-ne v1, v0, :cond_0

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Fl;->A06:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fl;->A09:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x56

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fl;->A09:[Ljava/lang/String;

    const-string v1, "nq70zeHujM7cnH9A4IhpB5iOObfNW5He"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_1

    .line 34015
    .end local v0
    .end local v1
    .end local v2
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 34016
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fl;->A07:Lcom/facebook/ads/redexgen/X/Hc;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 34017
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Fl;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fl;->A00:I

    mul-int/2addr v1, v0

    new-array v3, v1, [I

    .line 34018
    .local v0, "argbBitmapData":[I
    const/4 v4, 0x0

    .line 34019
    .local v2, "argbBitmapDataIndex":I
    :cond_2
    :goto_0
    array-length v0, v3

    if-ge v4, v0, :cond_6

    .line 34020
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fl;->A07:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v2

    .line 34021
    .local v3, "colorIndex":I
    if-eqz v2, :cond_3

    .line 34022
    add-int/lit8 v1, v4, 0x1

    .end local v2    # "argbBitmapDataIndex":I
    .local v4, "argbBitmapDataIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fl;->A08:[I

    aget v0, v0, v2

    aput v0, v3, v4

    move v4, v1

    goto :goto_0

    .line 34023
    .end local v4    # "argbBitmapDataIndex":I
    .restart local v2    # "argbBitmapDataIndex":I
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fl;->A07:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v2

    .line 34024
    .local v4, "switchBits":I
    if-eqz v2, :cond_2

    .line 34025
    and-int/lit8 v0, v2, 0x40

    if-nez v0, :cond_5

    .line 34026
    and-int/lit8 v1, v2, 0x3f

    .line 34027
    .local v5, "runLength":I
    :goto_1
    and-int/lit16 v0, v2, 0x80

    if-nez v0, :cond_4

    const/4 v2, 0x0

    .line 34028
    .local v6, "color":I
    :goto_2
    add-int v0, v4, v1

    invoke-static {v3, v4, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 34029
    add-int/2addr v4, v1

    goto :goto_0

    .line 34030
    :cond_4
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Fl;->A08:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fl;->A07:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v0

    aget v2, v2, v0

    goto :goto_2

    .line 34031
    :cond_5
    and-int/lit8 v0, v2, 0x3f

    shl-int/lit8 v1, v0, 0x8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fl;->A07:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v0

    or-int/2addr v1, v0

    goto :goto_1

    .line 34032
    :cond_6
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Fl;->A01:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Fl;->A00:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 34033
    invoke-static {v3, v2, v1, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 34034
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Lcom/facebook/ads/redexgen/X/FQ;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fl;->A02:I

    int-to-float v5, v0

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Fl;->A05:I

    int-to-float v0, v2

    div-float/2addr v5, v0

    const/4 v6, 0x0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fl;->A03:I

    int-to-float v7, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Fl;->A04:I

    int-to-float v0, v1

    div-float/2addr v7, v0

    const/4 v8, 0x0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fl;->A01:I

    int-to-float v9, v0

    int-to-float v0, v2

    div-float/2addr v9, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fl;->A00:I

    int-to-float v10, v0

    int-to-float v0, v1

    div-float/2addr v10, v0

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/FQ;-><init>(Landroid/graphics/Bitmap;FIFIFF)V

    return-object v3

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A07()V
    .locals 2

    .line 34035
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Fl;->A05:I

    .line 34036
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Fl;->A04:I

    .line 34037
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Fl;->A02:I

    .line 34038
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Fl;->A03:I

    .line 34039
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Fl;->A01:I

    .line 34040
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Fl;->A00:I

    .line 34041
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fl;->A07:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;->A0W(I)V

    .line 34042
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Fl;->A06:Z

    .line 34043
    return-void
.end method
