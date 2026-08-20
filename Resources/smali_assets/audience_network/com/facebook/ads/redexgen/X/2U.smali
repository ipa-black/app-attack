.class public final Lcom/facebook/ads/redexgen/X/2U;
.super Landroid/graphics/drawable/Drawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/2T;
    }
.end annotation


# static fields
.field public static A0G:Lcom/facebook/ads/redexgen/X/2T;

.field public static A0H:[B

.field public static A0I:[Ljava/lang/String;

.field public static final A0J:D


# instance fields
.field public A00:F

.field public A01:F

.field public A02:F

.field public A03:F

.field public A04:Landroid/content/res/ColorStateList;

.field public A05:Landroid/graphics/Paint;

.field public A06:Landroid/graphics/Paint;

.field public A07:Landroid/graphics/Paint;

.field public A08:Landroid/graphics/Path;

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public final A0C:I

.field public final A0D:I

.field public final A0E:I

.field public final A0F:Landroid/graphics/RectF;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 5589
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YEFrjfwCEWu"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GYovhjhdb5Je"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "S1Fz"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "LeiEw92n2EsObareFd"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "xgqXw3gEiUgyln4SIM"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "kGClknFKKNldAaaK4EgXWOsNKvCYjz7L"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "I70UDyBH67pytg1dUxrP2KgAWNh3bG3K"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2U;->A0I:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2U;->A05()V

    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Lcom/facebook/ads/redexgen/X/2U;->A0J:D

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V
    .locals 3

    .line 5590
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 5591
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A0A:Z

    .line 5592
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A09:Z

    .line 5593
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/2U;->A0B:Z

    .line 5594
    const/high16 v0, 0x37000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A0E:I

    .line 5595
    const/high16 v0, 0x3000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A0D:I

    .line 5596
    sget v0, Lcom/facebook/ads/redexgen/X/2P;->A09:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A0C:I

    .line 5597
    const/4 v1, 0x5

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A07:Landroid/graphics/Paint;

    .line 5598
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/2U;->A07(Landroid/content/res/ColorStateList;)V

    .line 5599
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A05:Landroid/graphics/Paint;

    .line 5600
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A05:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5601
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p3

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A00:F

    .line 5602
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A0F:Landroid/graphics/RectF;

    .line 5603
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A05:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A06:Landroid/graphics/Paint;

    .line 5604
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A06:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5605
    invoke-direct {p0, p4, p5}, Lcom/facebook/ads/redexgen/X/2U;->A06(FF)V

    .line 5606
    return-void
.end method

.method public static A00(FFZ)F
    .locals 5

    .line 5607
    if-eqz p2, :cond_1

    .line 5608
    float-to-double v4, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/2U;->A0I:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/2U;->A0I:[Ljava/lang/String;

    const-string v1, "P9aPeBSvznAhF57KLP"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "W3RUpaMuYeMV1XeTAU"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v0, Lcom/facebook/ads/redexgen/X/2U;->A0J:D

    sub-double/2addr v2, v0

    float-to-double v0, p1

    mul-double/2addr v2, v0

    add-double/2addr v4, v2

    double-to-float v0, v4

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 5609
    :cond_1
    return p0
.end method

.method public static A01(FFZ)F
    .locals 5

    .line 5610
    const/high16 v0, 0x3fc00000    # 1.5f

    if-eqz p2, :cond_0

    .line 5611
    mul-float/2addr v0, p0

    float-to-double v4, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v0, Lcom/facebook/ads/redexgen/X/2U;->A0J:D

    sub-double/2addr v2, v0

    float-to-double v0, p1

    mul-double/2addr v2, v0

    add-double/2addr v4, v2

    double-to-float v0, v4

    return v0

    .line 5612
    :cond_0
    mul-float/2addr v0, p0

    return v0
.end method

.method private A02(F)I
    .locals 4

    .line 5613
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int v2, v0

    .line 5614
    .local v0, "i":I
    rem-int/lit8 v1, v2, 0x2

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    .line 5615
    add-int/lit8 v3, v2, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/2U;->A0I:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/2U;->A0I:[Ljava/lang/String;

    const-string v1, "0g5GSSLFt9w"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "EJV6"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 5616
    :cond_1
    return v2
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/2U;->A0H:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/2U;->A0I:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/2U;->A0I:[Ljava/lang/String;

    const-string v1, "Hial5Dc7DTVcebgm6Z"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "T1onITFvXBLfXkfgru"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x45

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .locals 16

    .line 5617
    move-object/from16 v0, p0

    iget v3, v0, Lcom/facebook/ads/redexgen/X/2U;->A00:F

    neg-float v2, v3

    neg-float v1, v3

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v2, v1, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 5618
    .local v1, "innerBounds":Landroid/graphics/RectF;
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 5619
    .local v2, "outerBounds":Landroid/graphics/RectF;
    iget v1, v0, Lcom/facebook/ads/redexgen/X/2U;->A03:F

    neg-float v2, v1

    neg-float v1, v1

    invoke-virtual {v6, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 5620
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/2U;->A08:Landroid/graphics/Path;

    if-nez v1, :cond_0

    .line 5621
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/2U;->A08:Landroid/graphics/Path;

    .line 5622
    :goto_0
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/2U;->A08:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v2, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 5623
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/2U;->A08:Landroid/graphics/Path;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/2U;->A00:F

    neg-float v1, v1

    const/4 v8, 0x0

    invoke-virtual {v2, v1, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 5624
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/2U;->A08:Landroid/graphics/Path;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/2U;->A03:F

    neg-float v1, v1

    invoke-virtual {v2, v1, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 5625
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/2U;->A08:Landroid/graphics/Path;

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v1, 0x0

    invoke-virtual {v4, v6, v3, v2, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 5626
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/2U;->A08:Landroid/graphics/Path;

    const/high16 v3, 0x43870000    # 270.0f

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {v4, v5, v3, v2, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 5627
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/2U;->A08:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 5628
    iget v12, v0, Lcom/facebook/ads/redexgen/X/2U;->A00:F

    iget v3, v0, Lcom/facebook/ads/redexgen/X/2U;->A03:F

    add-float v2, v12, v3

    div-float v5, v12, v2

    .line 5629
    .local v6, "startRatio":F
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/2U;->A05:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/RadialGradient;

    const/4 v10, 0x0

    const/4 v11, 0x0

    add-float/2addr v12, v3

    const/4 v2, 0x3

    new-array v13, v2, [I

    iget v3, v0, Lcom/facebook/ads/redexgen/X/2U;->A0E:I

    aput v3, v13, v1

    const/4 v7, 0x1

    aput v3, v13, v7

    iget v3, v0, Lcom/facebook/ads/redexgen/X/2U;->A0D:I

    const/4 v6, 0x2

    aput v3, v13, v6

    new-array v14, v2, [F

    aput v8, v14, v1

    aput v5, v14, v7

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v14, v6

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v9

    invoke-direct/range {v9 .. v15}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 5630
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/2U;->A06:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/LinearGradient;

    const/4 v9, 0x0

    iget v4, v0, Lcom/facebook/ads/redexgen/X/2U;->A00:F

    neg-float v10, v4

    iget v3, v0, Lcom/facebook/ads/redexgen/X/2U;->A03:F

    add-float/2addr v10, v3

    const/4 v11, 0x0

    neg-float v12, v4

    sub-float/2addr v12, v3

    new-array v13, v2, [I

    iget v3, v0, Lcom/facebook/ads/redexgen/X/2U;->A0E:I

    aput v3, v13, v1

    aput v3, v13, v7

    iget v3, v0, Lcom/facebook/ads/redexgen/X/2U;->A0D:I

    aput v3, v13, v6

    new-array v14, v2, [F

    fill-array-data v14, :array_0

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 5631
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/2U;->A06:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5632
    return-void

    .line 5633
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x49

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2U;->A0H:[B

    return-void

    :array_0
    .array-data 1
        0x72t
        0x7ct
        0x11t
        0x29t
        0x2ft
        0x28t
        0x7ct
        0x3et
        0x39t
        0x7ct
        0x62t
        0x61t
        0x7ct
        0x6ct
        0x73t
        0x54t
        0x4ct
        0x5bt
        0x56t
        0x53t
        0x5et
        0x1at
        0x57t
        0x5bt
        0x42t
        0x1at
        0x49t
        0x52t
        0x5bt
        0x5et
        0x55t
        0x4dt
        0x1at
        0x49t
        0x53t
        0x40t
        0x5ft
        0x1at
        0x8t
        0x2ft
        0x37t
        0x20t
        0x2dt
        0x28t
        0x25t
        0x61t
        0x33t
        0x20t
        0x25t
        0x28t
        0x34t
        0x32t
        0x61t
        0x1t
        0x26t
        0x3et
        0x29t
        0x24t
        0x21t
        0x2ct
        0x68t
        0x3bt
        0x20t
        0x29t
        0x2ct
        0x27t
        0x3ft
        0x68t
        0x3bt
        0x21t
        0x32t
        0x2dt
        0x68t
    .end array-data
.end method

.method private A06(FF)V
    .locals 5

    .line 5634
    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2U;->A03(III)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    cmpg-float v0, p1, v1

    if-ltz v0, :cond_5

    .line 5635
    cmpg-float v3, p2, v1

    sget-object v1, Lcom/facebook/ads/redexgen/X/2U;->A0I:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/2U;->A0I:[Ljava/lang/String;

    const-string v1, "3ZLq2wnsXXEHTe1p9"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ltz v3, :cond_4

    .line 5636
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2U;->A02(F)I

    move-result v0

    int-to-float v2, v0

    .line 5637
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/2U;->A02(F)I

    move-result v0

    int-to-float v1, v0

    .line 5638
    const/4 v4, 0x1

    cmpl-float v0, v2, v1

    if-lez v0, :cond_2

    .line 5639
    move v2, v1

    .line 5640
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A0B:Z

    if-nez v0, :cond_2

    .line 5641
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/2U;->A0B:Z

    .line 5642
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A02:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A01:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 5643
    return-void

    .line 5644
    :cond_3
    iput v2, p0, Lcom/facebook/ads/redexgen/X/2U;->A02:F

    .line 5645
    iput v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A01:F

    .line 5646
    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/2U;->A0I:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/2U;->A0I:[Ljava/lang/String;

    const-string v1, "TJpNel9JPCCGijw6acwFd0iMJz"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A0C:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v3, v0

    float-to-int v0, v3

    int-to-float v0, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A03:F

    .line 5647
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/2U;->A0A:Z

    .line 5648
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2U;->invalidateSelf()V

    .line 5649
    return-void

    .line 5650
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xe

    const/16 v1, 0x18

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2U;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5651
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x35

    const/16 v1, 0x14

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2U;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A07(Landroid/content/res/ColorStateList;)V
    .locals 7

    .line 5652
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2U;->A04:Landroid/content/res/ColorStateList;

    .line 5653
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/2U;->A07:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/2U;->A04:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2U;->getState()[I

    move-result-object v4

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2U;->A04:Landroid/content/res/ColorStateList;

    sget-object v1, Lcom/facebook/ads/redexgen/X/2U;->A0I:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/2U;->A0I:[Ljava/lang/String;

    const-string v1, "VZiE9OVYqDu"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "EWr6"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {v6, v4, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 5654
    return-void

    .line 5655
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A08(Landroid/graphics/Canvas;)V
    .locals 15

    .line 5656
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A00:F

    neg-float v11, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A03:F

    sub-float/2addr v11, v1

    .line 5657
    .local v1, "edgeShadowTop":F
    iget v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A0C:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A02:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v1, v8

    add-float/2addr v0, v1

    .line 5658
    .local v0, "inset":F
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A0F:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v1, v0, v8

    sub-float/2addr v2, v1

    const/4 v7, 0x1

    const/4 v3, 0x0

    cmpl-float v1, v2, v3

    if-lez v1, :cond_5

    const/4 v4, 0x1

    .line 5659
    .local v2, "drawHorizontalEdges":Z
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A0F:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float v1, v0, v8

    sub-float/2addr v2, v1

    cmpl-float v1, v2, v3

    if-lez v1, :cond_4

    .line 5660
    .local v10, "drawVerticalEdges":Z
    :goto_1
    move-object/from16 v9, p1

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 5661
    .local v11, "saved":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A0F:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A0F:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    invoke-virtual {v9, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5662
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2U;->A08:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A05:Landroid/graphics/Paint;

    invoke-virtual {v9, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 5663
    if-eqz v4, :cond_0

    .line 5664
    const/4 v10, 0x0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A0F:Landroid/graphics/RectF;

    .line 5665
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v12

    mul-float v1, v0, v8

    sub-float/2addr v12, v1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A00:F

    neg-float v13, v1

    iget-object v14, p0, Lcom/facebook/ads/redexgen/X/2U;->A06:Landroid/graphics/Paint;

    .line 5666
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 5667
    :cond_0
    invoke-virtual {v9, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5668
    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 5669
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A0F:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A0F:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v0

    invoke-virtual {v9, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5670
    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 5671
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2U;->A08:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A05:Landroid/graphics/Paint;

    invoke-virtual {v9, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 5672
    if-eqz v4, :cond_1

    .line 5673
    const/4 v10, 0x0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A0F:Landroid/graphics/RectF;

    .line 5674
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v12

    mul-float v1, v0, v8

    sub-float/2addr v12, v1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A00:F

    neg-float v13, v1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A03:F

    add-float/2addr v13, v1

    iget-object v14, p0, Lcom/facebook/ads/redexgen/X/2U;->A06:Landroid/graphics/Paint;

    .line 5675
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 5676
    :cond_1
    invoke-virtual {v9, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5677
    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 5678
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A0F:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A0F:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v0

    invoke-virtual {v9, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/2U;->A0I:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x3

    if-eq v2, v1, :cond_6

    .line 5679
    sget-object v4, Lcom/facebook/ads/redexgen/X/2U;->A0I:[Ljava/lang/String;

    const-string v2, "QAUm"

    const/4 v1, 0x2

    aput-object v2, v4, v1

    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 5680
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2U;->A08:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A05:Landroid/graphics/Paint;

    invoke-virtual {v9, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 5681
    if-eqz v7, :cond_2

    .line 5682
    const/4 v10, 0x0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A0F:Landroid/graphics/RectF;

    .line 5683
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v12

    mul-float v1, v0, v8

    sub-float/2addr v12, v1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A00:F

    neg-float v13, v1

    iget-object v14, p0, Lcom/facebook/ads/redexgen/X/2U;->A06:Landroid/graphics/Paint;

    .line 5684
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 5685
    :cond_2
    invoke-virtual {v9, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5686
    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 5687
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A0F:Landroid/graphics/RectF;

    iget v6, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A0F:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->top:F

    sget-object v2, Lcom/facebook/ads/redexgen/X/2U;->A0I:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x3

    if-eq v2, v1, :cond_6

    sget-object v4, Lcom/facebook/ads/redexgen/X/2U;->A0I:[Ljava/lang/String;

    const-string v2, "4hs9knzgsM3vbS2"

    const/4 v1, 0x2

    aput-object v2, v4, v1

    add-float/2addr v5, v0

    invoke-virtual {v9, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5688
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 5689
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2U;->A08:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A05:Landroid/graphics/Paint;

    invoke-virtual {v9, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 5690
    if-eqz v7, :cond_3

    .line 5691
    const/4 v10, 0x0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A0F:Landroid/graphics/RectF;

    .line 5692
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v12

    mul-float/2addr v8, v0

    sub-float/2addr v12, v8

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A00:F

    neg-float v13, v0

    iget-object v14, p0, Lcom/facebook/ads/redexgen/X/2U;->A06:Landroid/graphics/Paint;

    .line 5693
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 5694
    :cond_3
    invoke-virtual {v9, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5695
    return-void

    .line 5696
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 5697
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A09(Landroid/graphics/Rect;)V
    .locals 6

    .line 5698
    iget v5, p0, Lcom/facebook/ads/redexgen/X/2U;->A01:F

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr v5, v0

    .line 5699
    .local v0, "verticalOffset":F
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/2U;->A0F:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A01:F

    add-float/2addr v3, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    add-float/2addr v2, v5

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A01:F

    sub-float/2addr v1, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr v0, v5

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5700
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2U;->A04()V

    .line 5701
    return-void
.end method


# virtual methods
.method public final A0A()F
    .locals 1

    .line 5702
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A00:F

    return v0
.end method

.method public final A0B()F
    .locals 1

    .line 5703
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A01:F

    return v0
.end method

.method public final A0C()F
    .locals 5

    .line 5704
    iget v2, p0, Lcom/facebook/ads/redexgen/X/2U;->A01:F

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A00:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A0C:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float v0, v2, v4

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    add-float/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr v2, v3

    .line 5705
    .local v0, "content":F
    iget v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A01:F

    mul-float/2addr v1, v4

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A0C:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    return v1
.end method

.method public final A0D()F
    .locals 4

    .line 5706
    iget v2, p0, Lcom/facebook/ads/redexgen/X/2U;->A01:F

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A00:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A0C:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v0, v2, v3

    add-float/2addr v1, v0

    .line 5707
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr v2, v3

    .line 5708
    .local v0, "content":F
    iget v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A01:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A0C:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    return v1
.end method

.method public final A0E()F
    .locals 1

    .line 5709
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A02:F

    return v0
.end method

.method public final A0F()Landroid/content/res/ColorStateList;
    .locals 1

    .line 5710
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A04:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final A0G(F)V
    .locals 4

    .line 5711
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 5712
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int v0, v0

    int-to-float v1, v0

    .line 5713
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A00:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 5714
    return-void

    .line 5715
    :cond_0
    iput v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A00:F

    .line 5716
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A0A:Z

    .line 5717
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2U;->invalidateSelf()V

    .line 5718
    return-void

    .line 5719
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x26

    const/16 v1, 0xf

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2U;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2U;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0H(F)V
    .locals 1

    .line 5720
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A02:F

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/2U;->A06(FF)V

    .line 5721
    return-void
.end method

.method public final A0I(F)V
    .locals 1

    .line 5722
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A01:F

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/2U;->A06(FF)V

    .line 5723
    return-void
.end method

.method public final A0J(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5724
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2U;->A07(Landroid/content/res/ColorStateList;)V

    .line 5725
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2U;->invalidateSelf()V

    .line 5726
    return-void
.end method

.method public final A0K(Landroid/graphics/Rect;)V
    .locals 0

    .line 5727
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/2U;->getPadding(Landroid/graphics/Rect;)Z

    .line 5728
    return-void
.end method

.method public final A0L(Z)V
    .locals 0

    .line 5729
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/2U;->A09:Z

    .line 5730
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2U;->invalidateSelf()V

    .line 5731
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5732
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A0A:Z

    if-eqz v0, :cond_0

    .line 5733
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2U;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/2U;->A09(Landroid/graphics/Rect;)V

    .line 5734
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A0A:Z

    .line 5735
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A02:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5736
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2U;->A08(Landroid/graphics/Canvas;)V

    .line 5737
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A02:F

    neg-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5738
    sget-object v3, Lcom/facebook/ads/redexgen/X/2U;->A0G:Lcom/facebook/ads/redexgen/X/2T;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2U;->A0F:Landroid/graphics/RectF;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A00:F

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A07:Landroid/graphics/Paint;

    invoke-interface {v3, p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2T;->A4w(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    .line 5739
    return-void
.end method

.method public final getOpacity()I
    .locals 1

    .line 5740
    const/4 v0, -0x3

    return v0
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 4

    .line 5741
    iget v2, p0, Lcom/facebook/ads/redexgen/X/2U;->A01:F

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A00:F

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A09:Z

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2U;->A01(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v3, v0

    .line 5742
    .local v0, "vOffset":I
    iget v2, p0, Lcom/facebook/ads/redexgen/X/2U;->A01:F

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A00:F

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A09:Z

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2U;->A00(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 5743
    .local v1, "hOffset":I
    invoke-virtual {p1, v0, v3, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 5744
    const/4 v0, 0x1

    return v0
.end method

.method public final isStateful()Z
    .locals 1

    .line 5745
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A04:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 5746
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 5747
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A0A:Z

    .line 5748
    return-void
.end method

.method public final onStateChange([I)Z
    .locals 2

    .line 5749
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2U;->A04:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {v1, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 5750
    .local v0, "newColor":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A07:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 5751
    const/4 v0, 0x0

    return v0

    .line 5752
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A07:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5753
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A0A:Z

    .line 5754
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2U;->invalidateSelf()V

    .line 5755
    return v0
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 5756
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A07:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5757
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A05:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5758
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A06:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5759
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 5760
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A07:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 5761
    return-void
.end method
