.class public final Lcom/facebook/ads/redexgen/X/Fk;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Fe;,
        Lcom/facebook/ads/redexgen/X/Fc;,
        Lcom/facebook/ads/redexgen/X/Fi;,
        Lcom/facebook/ads/redexgen/X/Fh;,
        Lcom/facebook/ads/redexgen/X/Fg;,
        Lcom/facebook/ads/redexgen/X/Ff;,
        Lcom/facebook/ads/redexgen/X/Fd;,
        Lcom/facebook/ads/redexgen/X/Fj;
    }
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;

.field public static final A09:[B

.field public static final A0A:[B

.field public static final A0B:[B


# instance fields
.field public A00:Landroid/graphics/Bitmap;

.field public final A01:Landroid/graphics/Canvas;

.field public final A02:Landroid/graphics/Paint;

.field public final A03:Landroid/graphics/Paint;

.field public final A04:Lcom/facebook/ads/redexgen/X/Fc;

.field public final A05:Lcom/facebook/ads/redexgen/X/Fd;

.field public final A06:Lcom/facebook/ads/redexgen/X/Fj;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 33501
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "qcU5l5rVDanZ0IBZnB67EILhI18GgdFe"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "32XpuNghlFeF4zyqPL948gmCUNCGk"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "bftD5DkqR73p2Uf2yBhEF5T9UOvyv9s"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "qryxRa4yOsFNWhLtu25s3YxhDLRy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "tLr9RBWs5E21"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "UeFN6nMF8sjHvHxScJIKm37Ehl9oCVg2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Fk;->A0A()V

    const/4 v1, 0x4

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fk;->A09:[B

    .line 33502
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fk;->A0A:[B

    .line 33503
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fk;->A0B:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x7t
        0x8t
        0xft
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x77t
        -0x78t
        -0x1t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x11t
        0x22t
        0x33t
        0x44t
        0x55t
        0x66t
        0x77t
        -0x78t
        -0x67t
        -0x56t
        -0x45t
        -0x34t
        -0x23t
        -0x12t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 8

    .line 33504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33505
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fk;->A02:Landroid/graphics/Paint;

    .line 33506
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fk;->A02:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33507
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Fk;->A02:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 33508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fk;->A02:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 33509
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fk;->A03:Landroid/graphics/Paint;

    .line 33510
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fk;->A03:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33511
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Fk;->A03:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 33512
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fk;->A03:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 33513
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fk;->A01:Landroid/graphics/Canvas;

    .line 33514
    new-instance v1, Lcom/facebook/ads/redexgen/X/Fd;

    const/16 v2, 0x2cf

    const/16 v3, 0x23f

    const/4 v4, 0x0

    const/16 v5, 0x2cf

    const/4 v6, 0x0

    const/16 v7, 0x23f

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Fd;-><init>(IIIIII)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Fk;->A05:Lcom/facebook/ads/redexgen/X/Fd;

    .line 33515
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Fk;->A0F()[I

    move-result-object v3

    .line 33516
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Fk;->A0G()[I

    move-result-object v2

    .line 33517
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Fk;->A0H()[I

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fc;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Fc;-><init>(I[I[I[I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fk;->A04:Lcom/facebook/ads/redexgen/X/Fc;

    .line 33518
    new-instance v0, Lcom/facebook/ads/redexgen/X/Fj;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Fj;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fk;->A06:Lcom/facebook/ads/redexgen/X/Fj;

    .line 33519
    return-void
.end method

.method public static A00(IIII)I
    .locals 1

    .line 33520
    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 v0, p1, 0x10

    or-int/2addr p0, v0

    shl-int/lit8 v0, p2, 0x8

    or-int/2addr p0, v0

    or-int/2addr p0, p3

    return p0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Hb;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 15

    .line 33521
    move/from16 v1, p3

    const/4 v8, 0x0

    .line 33522
    .end local p2    # null:[B
    .local v2, "endOfPixelCodeString":Z
    .local v9, "column":I
    :cond_0
    const/4 v4, 0x0

    .line 33523
    .local v3, "runLength":I
    const/4 v7, 0x0

    .line 33524
    .local v4, "clutIndex":I
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v6

    .line 33525
    .local v10, "peek":I
    if-eqz v6, :cond_2

    .line 33526
    const/4 v4, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v0, 0x1d

    if-eq v2, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 33527
    :cond_1
    sget-object v3, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const-string v2, "cKDkKJCaTP5Z"

    const/4 v0, 0x6

    aput-object v2, v3, v0

    goto :goto_0

    .line 33528
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hb;->A0F()Z

    move-result v0

    const/4 v3, 0x3

    if-eqz v0, :cond_6

    .line 33529
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    add-int/lit8 v4, v0, 0x3

    .line 33530
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v0, 0x1d

    if-eq v2, v0, :cond_5

    .line 33531
    .end local v2    # "endOfPixelCodeString":Z
    .end local v3    # "runLength":I
    .end local v4    # "clutIndex":I
    .local v11, "runLength":I
    .local v12, "clutIndex":I
    .local v13, "endOfPixelCodeString":Z
    :goto_0
    if-eqz v4, :cond_4

    move-object/from16 v2, p5

    if-eqz v2, :cond_4

    .line 33532
    if-eqz p2, :cond_3

    aget-byte v6, p2, v6

    :cond_3
    aget v0, p1, v6

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 33533
    int-to-float v10, v1

    move/from16 v3, p4

    int-to-float v11, v3

    add-int v0, v1, v4

    int-to-float v12, v0

    add-int/lit8 v0, v3, 0x1

    int-to-float v13, v0

    move-object v14, v2

    move-object/from16 v9, p6

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 33534
    :cond_4
    add-int/2addr v1, v4

    .line 33535
    .end local v10    # "peek":I
    .end local v11    # "runLength":I
    .end local v12    # "clutIndex":I
    if-eqz v8, :cond_0

    .line 33536
    return v1

    .line 33537
    :cond_5
    sget-object v3, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const-string v2, "Xe5wyvwrL1rxQiCfD8ENREY9AaRUH"

    const/4 v0, 0x1

    aput-object v2, v3, v0

    goto :goto_0

    .line 33538
    :cond_6
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hb;->A0F()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 33539
    const/4 v4, 0x1

    move v6, v7

    goto :goto_0

    .line 33540
    :cond_7
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v2

    if-eqz v2, :cond_b

    const/4 v0, 0x1

    if-eq v2, v0, :cond_a

    if-eq v2, v5, :cond_9

    if-eq v2, v3, :cond_8

    move v6, v7

    goto :goto_0

    .line 33541
    :cond_8
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    add-int/lit8 v4, v0, 0x1d

    .line 33542
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v6

    goto :goto_0

    .line 33543
    :cond_9
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    add-int/lit8 v4, v0, 0xc

    .line 33544
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v6

    .line 33545
    goto :goto_0

    .line 33546
    :cond_a
    const/4 v4, 0x2

    .line 33547
    move v6, v7

    goto :goto_0

    .line 33548
    :cond_b
    const/4 v8, 0x1

    .line 33549
    move v6, v7

    goto :goto_0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/Hb;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 15

    .line 33550
    move/from16 v3, p3

    const/4 v8, 0x0

    .line 33551
    .end local p2    # null:[B
    .local v2, "endOfPixelCodeString":Z
    .local v9, "column":I
    :cond_0
    const/4 v6, 0x0

    .line 33552
    .local v3, "runLength":I
    const/4 v7, 0x0

    .line 33553
    .local v4, "clutIndex":I
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    .line 33554
    .local v6, "peek":I
    if-eqz v0, :cond_4

    .line 33555
    const/4 v6, 0x1

    .line 33556
    .end local v2    # "endOfPixelCodeString":Z
    .end local v3    # "runLength":I
    .end local v4    # "clutIndex":I
    .end local v6    # "peek":I
    .local v10, "runLength":I
    .local v11, "clutIndex":I
    .local v12, "endOfPixelCodeString":Z
    .local v13, "peek":I
    :goto_0
    if-eqz v6, :cond_3

    move-object/from16 v4, p5

    if-eqz v4, :cond_3

    .line 33557
    if-eqz p2, :cond_1

    aget-byte v0, p2, v0

    :cond_1
    aget v0, p1, v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 33558
    int-to-float v10, v3

    move/from16 v5, p4

    int-to-float v11, v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const-string v1, "PxagUxU0Gd3Wd2jZQY5J7se2mW8fT"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    add-int v0, v3, v6

    int-to-float v12, v0

    add-int/lit8 v0, v5, 0x1

    int-to-float v13, v0

    move-object v14, v4

    move-object/from16 v9, p6

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 33559
    :cond_3
    add-int/2addr v3, v6

    .line 33560
    .end local v10    # "runLength":I
    .end local v11    # "clutIndex":I
    .end local v13    # "peek":I
    if-eqz v8, :cond_0

    .line 33561
    return v3

    .line 33562
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hb;->A0F()Z

    move-result v0

    const/4 v4, 0x3

    if-nez v0, :cond_6

    .line 33563
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    .line 33564
    if-eqz v0, :cond_5

    .line 33565
    add-int/lit8 v6, v0, 0x2

    .line 33566
    const/4 v0, 0x0

    goto :goto_0

    .line 33567
    :cond_5
    const/4 v8, 0x1

    move v0, v7

    goto :goto_0

    .line 33568
    :cond_6
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hb;->A0F()Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_7

    .line 33569
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    add-int/lit8 v6, v0, 0x4

    .line 33570
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    goto :goto_0

    .line 33571
    :cond_7
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    if-eq v1, v0, :cond_a

    if-eq v1, v2, :cond_9

    if-eq v1, v4, :cond_8

    move v0, v7

    goto :goto_0

    .line 33572
    :cond_8
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    add-int/lit8 v6, v0, 0x19

    .line 33573
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    goto :goto_0

    .line 33574
    :cond_9
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    add-int/lit8 v6, v0, 0x9

    .line 33575
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    .line 33576
    goto/16 :goto_0

    .line 33577
    :cond_a
    const/4 v6, 0x2

    .line 33578
    move v0, v7

    goto/16 :goto_0

    .line 33579
    :cond_b
    const/4 v6, 0x1

    .line 33580
    move v0, v7

    goto/16 :goto_0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/Hb;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 14
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 33581
    move/from16 v3, p3

    const/4 v7, 0x0

    .line 33582
    .end local p3    # null:I
    .local v2, "endOfPixelCodeString":Z
    .local v9, "column":I
    :cond_0
    const/4 v6, 0x0

    .line 33583
    .local v3, "runLength":I
    const/4 v5, 0x0

    .line 33584
    .local v4, "clutIndex":I
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    .line 33585
    .local v6, "peek":I
    if-eqz v0, :cond_3

    .line 33586
    const/4 v4, 0x1

    .line 33587
    .end local v2    # "endOfPixelCodeString":Z
    .end local v3    # "runLength":I
    .end local v4    # "clutIndex":I
    .end local v6    # "peek":I
    .local v10, "runLength":I
    .local v11, "clutIndex":I
    .local v12, "endOfPixelCodeString":Z
    .local v13, "peek":I
    :goto_0
    if-eqz v4, :cond_2

    move-object/from16 v1, p5

    if-eqz v1, :cond_2

    .line 33588
    if-eqz p2, :cond_1

    aget-byte v0, p2, v0

    :cond_1
    aget v0, p1, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 33589
    int-to-float v9, v3

    move/from16 v2, p4

    int-to-float v10, v2

    add-int v0, v3, v4

    int-to-float v11, v0

    add-int/lit8 v0, v2, 0x1

    int-to-float v12, v0

    move-object v13, v1

    move-object/from16 v8, p6

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 33590
    :cond_2
    add-int/2addr v3, v4

    .line 33591
    .end local v10    # "runLength":I
    .end local v11    # "clutIndex":I
    .end local v13    # "peek":I
    if-eqz v7, :cond_0

    .line 33592
    return v3

    .line 33593
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hb;->A0F()Z

    move-result v1

    const/4 v0, 0x7

    if-nez v1, :cond_6

    .line 33594
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 33595
    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const-string v1, "SuejjuLnG0h9t9VMaryqiTg33Oi2Z"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v4, :cond_5

    .line 33596
    const/4 v0, 0x0

    goto :goto_0

    .line 33597
    :cond_5
    const/4 v7, 0x1

    move v4, v6

    move v0, v5

    goto :goto_0

    .line 33598
    :cond_6
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v4

    .line 33599
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    goto :goto_0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/Hb;I)Lcom/facebook/ads/redexgen/X/Fc;
    .locals 17

    .line 33600
    const/16 v1, 0x8

    move-object/from16 v8, p0

    invoke-virtual {v8, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v11

    .line 33601
    .local v2, "clutId":I
    invoke-virtual {v8, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 33602
    add-int/lit8 v16, p1, -0x2

    .line 33603
    .local v3, "remainingLength":I
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Fk;->A0F()[I

    move-result-object v10

    .line 33604
    .local v4, "clutEntries2Bit":[I
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Fk;->A0G()[I

    move-result-object v7

    .line 33605
    .local v5, "clutEntries4Bit":[I
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Fk;->A0H()[I

    move-result-object v6

    .line 33606
    .local v6, "clutEntries8Bit":[I
    :goto_0
    if-lez v16, :cond_4

    .line 33607
    invoke-virtual {v8, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result p1

    .line 33608
    .local v7, "entryId":I
    invoke-virtual {v8, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v3

    .line 33609
    .local v8, "entryFlags":I
    add-int/lit8 v2, v16, -0x2

    .line 33610
    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_2

    .line 33611
    move-object/from16 p0, v10

    .line 33612
    .local v9, "clutEntries":[I
    .restart local v9    # "clutEntries":[I
    :goto_1
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_1

    .line 33613
    invoke-virtual {v8, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v9

    .line 33614
    .local v10, "y":I
    invoke-virtual {v8, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v15

    .line 33615
    .local v11, "cr":I
    invoke-virtual {v8, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v12

    .line 33616
    .local v12, "cb":I
    invoke-virtual {v8, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    .line 33617
    .local v13, "t":I
    add-int/lit8 v16, v2, -0x4

    .line 33618
    .end local v11    # "cr":I
    .local v10, "y":I
    .restart local v12    # "cb":I
    .local v13, "t":I
    :goto_2
    if-nez v9, :cond_0

    .line 33619
    const/4 v15, 0x0

    .line 33620
    const/4 v12, 0x0

    .line 33621
    const/16 v0, 0xff

    .line 33622
    :cond_0
    and-int/lit16 v0, v0, 0xff

    rsub-int v0, v0, 0xff

    int-to-byte v5, v0

    .line 33623
    .local v11, "a":I
    .end local v2    # "clutId":I
    .local v16, "clutId":I
    int-to-double v0, v9

    const-wide v13, 0x3ff66e978d4fdf3bL    # 1.402

    add-int/lit8 v2, v15, -0x80

    .end local v3    # "remainingLength":I
    .end local v4    # "clutEntries2Bit":[I
    .local p2, "clutEntries2Bit":[I
    .local p3, "remainingLength":I
    int-to-double v2, v2

    mul-double/2addr v2, v13

    add-double/2addr v0, v2

    double-to-int v4, v0

    .line 33624
    .local v1, "r":I
    int-to-double v2, v9

    const-wide v13, 0x3fd60663c74fb54aL    # 0.34414

    add-int/lit8 v0, v12, -0x80

    .end local v5    # "clutEntries4Bit":[I
    .local v15, "clutEntries4Bit":[I
    int-to-double v0, v0

    mul-double/2addr v0, v13

    sub-double/2addr v2, v0

    add-int/lit8 v0, v15, -0x80

    int-to-double v0, v0

    const-wide v13, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double/2addr v0, v13

    sub-double/2addr v2, v0

    double-to-int v13, v2

    .line 33625
    .local v2, "g":I
    int-to-double v2, v9

    const-wide v14, 0x3ffc5a1cac083127L    # 1.772

    add-int/lit8 v0, v12, -0x80

    .end local v12    # "cb":I
    .end local v13    # "t":I
    .local p4, "t":I
    .local p5, "cb":I
    int-to-double v0, v0

    mul-double/2addr v0, v14

    add-double/2addr v2, v0

    double-to-int v9, v2

    .line 33626
    .local v3, "b":I
    const/4 v3, 0x0

    const/16 v0, 0xff

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Hs;->A06(III)I

    move-result v2

    .line 33627
    invoke-static {v13, v3, v0}, Lcom/facebook/ads/redexgen/X/Hs;->A06(III)I

    move-result v1

    .line 33628
    invoke-static {v9, v3, v0}, Lcom/facebook/ads/redexgen/X/Hs;->A06(III)I

    move-result v0

    .line 33629
    invoke-static {v5, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fk;->A00(IIII)I

    move-result v0

    aput v0, p0, p1

    .line 33630
    .end local v1    # "r":I
    .end local v2    # "g":I
    .end local v3    # "b":I
    .end local v7    # "entryId":I
    .end local v8    # "entryFlags":I
    .end local v9    # "clutEntries":[I
    .end local v10    # "y":I
    .end local v11    # "a":I
    .end local v14
    .end local p4
    .end local p5
    const/16 v1, 0x8

    goto :goto_0

    .line 33631
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    :cond_1
    const/4 v0, 0x6

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v9

    const/4 v1, 0x2

    shl-int/2addr v9, v1

    .line 33632
    .local v11, "y":I
    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v15

    shl-int/2addr v15, v0

    .line 33633
    .local v14, "cr":I
    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    shl-int/lit8 v12, v0, 0x4

    .line 33634
    .local v13, "cb":I
    invoke-virtual {v8, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x6

    .line 33635
    .local v10, "t":I
    add-int/lit8 v16, v2, -0x2

    goto :goto_2

    .line 33636
    .end local v9
    :cond_2
    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_3

    .line 33637
    move-object/from16 p0, v7

    .restart local v9    # "clutEntries":[I
    goto/16 :goto_1

    .line 33638
    .end local v9    # "clutEntries":[I
    :cond_3
    move-object/from16 p0, v6

    goto/16 :goto_1

    .line 33639
    .end local v15    # "clutEntries4Bit":[I
    .end local v16    # "clutId":I
    .end local p2
    .end local p3
    .local v2, "clutId":I
    .local v3, "remainingLength":I
    .restart local v4    # "clutEntries2Bit":[I
    .restart local v5    # "clutEntries4Bit":[I
    :cond_4
    new-instance v0, Lcom/facebook/ads/redexgen/X/Fc;

    invoke-direct {v0, v11, v10, v7, v6}, Lcom/facebook/ads/redexgen/X/Fc;-><init>(I[I[I[I)V

    return-object v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/Hb;)Lcom/facebook/ads/redexgen/X/Fd;
    .locals 7

    .line 33640
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 33641
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hb;->A0F()Z

    move-result v1

    .line 33642
    .local v0, "displayWindowFlag":Z
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 33643
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v2

    .line 33644
    .local p2, "width":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v3

    .line 33645
    .local p3, "height":I
    if-eqz v1, :cond_0

    .line 33646
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v4

    .line 33647
    .local v2, "horizontalPositionMinimum":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v5

    .line 33648
    .local v3, "horizontalPositionMaximum":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v6

    .line 33649
    .local v4, "verticalPositionMinimum":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result p0

    .line 33650
    .local v1, "verticalPositionMaximum":I
    .end local v2    # "horizontalPositionMinimum":I
    .end local v3    # "horizontalPositionMaximum":I
    .local p4, "horizontalPositionMaximum":I
    .local p5, "verticalPositionMinimum":I
    .local p6, "verticalPositionMaximum":I
    :goto_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/Fd;

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Fd;-><init>(IIIIII)V

    return-object v1

    .line 33651
    .end local v1    # "verticalPositionMaximum":I
    .end local v2
    .end local v3
    .end local v4    # "verticalPositionMinimum":I
    :cond_0
    const/4 v4, 0x0

    .line 33652
    .local v1, "horizontalPositionMinimum":I
    .local v2, "horizontalPositionMaximum":I
    const/4 v6, 0x0

    .line 33653
    .local v3, "verticalPositionMinimum":I
    move v5, v2

    move p0, v3

    goto :goto_0
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/Hb;)Lcom/facebook/ads/redexgen/X/Fe;
    .locals 7

    .line 33654
    const/16 v6, 0x10

    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v5

    .line 33655
    .local v1, "objectId":I
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 33656
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v1

    .line 33657
    .local v2, "objectCodingMethod":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hb;->A0F()Z

    move-result v4

    .line 33658
    .local v3, "nonModifyingColorFlag":Z
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 33659
    const/4 v3, 0x0

    .line 33660
    .local v5, "topFieldData":[B
    const/4 v2, 0x0

    .line 33661
    .local v6, "bottomFieldData":[B
    if-ne v1, v0, :cond_1

    .line 33662
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    .line 33663
    .local v0, "numberOfCodes":I
    mul-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 33664
    .end local v0    # "numberOfCodes":I
    :cond_0
    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Fe;

    invoke-direct {v0, v5, v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Fe;-><init>(IZ[B[B)V

    return-object v0

    .line 33665
    :cond_1
    if-nez v1, :cond_0

    .line 33666
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v2

    .line 33667
    .local v4, "topFieldDataLength":I
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v1

    .line 33668
    .local v0, "bottomFieldDataLength":I
    const/4 v0, 0x0

    if-lez v2, :cond_2

    .line 33669
    new-array v3, v2, [B

    .line 33670
    invoke-virtual {p0, v3, v0, v2}, Lcom/facebook/ads/redexgen/X/Hb;->A0E([BII)V

    .line 33671
    :cond_2
    if-lez v1, :cond_3

    .line 33672
    new-array v2, v1, [B

    .line 33673
    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A0E([BII)V

    goto :goto_0

    .line 33674
    :cond_3
    move-object v2, v3

    goto :goto_0
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/Hb;I)Lcom/facebook/ads/redexgen/X/Ff;
    .locals 10

    .line 33675
    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v8

    .line 33676
    .local v1, "timeoutSecs":I
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v7

    .line 33677
    .local v2, "version":I
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v6

    .line 33678
    .local v4, "state":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 33679
    add-int/lit8 v5, p1, -0x2

    .line 33680
    .local v3, "remainingLength":I
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 33681
    .local v5, "regions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/dvb/DvbParser$PageRegion;>;"
    :goto_0
    if-lez v5, :cond_0

    .line 33682
    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v3

    .line 33683
    .local v6, "regionId":I
    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 33684
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v2

    .line 33685
    .local v8, "regionHorizontalAddress":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v1

    .line 33686
    .local v7, "regionVerticalAddress":I
    add-int/lit8 v5, v5, -0x6

    .line 33687
    new-instance v0, Lcom/facebook/ads/redexgen/X/Fg;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Fg;-><init>(II)V

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33688
    .end local v6    # "regionId":I
    .end local v7    # "regionVerticalAddress":I
    .end local v8    # "regionHorizontalAddress":I
    goto :goto_0

    .line 33689
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ff;

    invoke-direct {v0, v8, v7, v6, v4}, Lcom/facebook/ads/redexgen/X/Ff;-><init>(IIILandroid/util/SparseArray;)V

    return-object v0
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/Hb;I)Lcom/facebook/ads/redexgen/X/Fh;
    .locals 25

    .line 33690
    const/16 v1, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v10

    .line 33691
    .local v14, "id":I
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 33692
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hb;->A0F()Z

    move-result v11

    .line 33693
    .local v15, "fillFlag":Z
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 33694
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v12

    .line 33695
    .local v16, "width":I
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v13

    .line 33696
    .local v17, "height":I
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v14

    .line 33697
    .local v18, "levelOfCompatibility":I
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v15

    .line 33698
    .local v19, "depth":I
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 33699
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v16

    .line 33700
    .local v20, "clutId":I
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v17

    .line 33701
    .local v21, "pixelCode8Bit":I
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v18

    .line 33702
    .local v22, "pixelCode4Bit":I
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v19

    .line 33703
    .local v23, "pixelCode2Bit":I
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 33704
    add-int/lit8 v9, p1, -0xa

    .line 33705
    .local v5, "remainingLength":I
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 33706
    .end local v5    # "remainingLength":I
    .local v13, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/dvb/DvbParser$RegionObject;>;"
    .local v24, "remainingLength":I
    :goto_0
    if-lez v9, :cond_2

    .line 33707
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v7

    .line 33708
    .local v5, "objectId":I
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v6

    .line 33709
    .local v12, "objectType":I
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v22

    .line 33710
    .local p0, "objectProvider":I
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v23

    .line 33711
    .local p1, "objectHorizontalPosition":I
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 33712
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v24

    .line 33713
    .local p2, "objectVerticalPosition":I
    add-int/lit8 v9, v9, -0x6

    .line 33714
    const/16 p0, 0x0

    .line 33715
    .local v6, "foregroundPixelCode":I
    const/16 p1, 0x0

    .line 33716
    .local v7, "backgroundPixelCode":I
    const/4 v5, 0x1

    if-eq v6, v5, :cond_0

    if-ne v6, v2, :cond_1

    .line 33717
    :cond_0
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result p0

    .line 33718
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result p1

    .line 33719
    add-int/lit8 v9, v9, -0x2

    .line 33720
    .end local v6    # "foregroundPixelCode":I
    .end local v7    # "backgroundPixelCode":I
    .local v24, "foregroundPixelCode":I
    .local p3, "backgroundPixelCode":I
    .local p4, "remainingLength":I
    :cond_1
    new-instance v20, Lcom/facebook/ads/redexgen/X/Fi;

    move-object/from16 v1, v20

    .end local v12    # "objectType":I
    .local p5, "objectType":I
    move/from16 v21, v6

    invoke-direct/range {v20 .. v26}, Lcom/facebook/ads/redexgen/X/Fi;-><init>(IIIIII)V

    invoke-virtual {v8, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33721
    .end local v5    # "objectId":I
    .end local v24    # "foregroundPixelCode":I
    .end local p0    # "objectProvider":I
    .end local p1    # "objectHorizontalPosition":I
    .end local p2
    .end local p3
    .end local p5
    const/16 v1, 0x8

    goto :goto_0

    .line 33722
    .end local p4
    .local v24, "remainingLength":I
    :cond_2
    new-instance v9, Lcom/facebook/ads/redexgen/X/Fh;

    .end local v13    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/dvb/DvbParser$RegionObject;>;"
    .local p0, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/dvb/DvbParser$RegionObject;>;"
    move-object/from16 v20, v8

    invoke-direct/range {v9 .. v20}, Lcom/facebook/ads/redexgen/X/Fh;-><init>(IZIIIIIIIILandroid/util/SparseArray;)V

    return-object v9
.end method

.method public static A09(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fk;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x11

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0A()V
    .locals 1

    const/16 v0, 0x28

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fk;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x12t
        0x37t
        0x22t
        0x37t
        0x76t
        0x30t
        0x3ft
        0x33t
        0x3at
        0x32t
        0x76t
        0x3at
        0x33t
        0x38t
        0x31t
        0x22t
        0x3et
        0x76t
        0x33t
        0x2et
        0x35t
        0x33t
        0x33t
        0x32t
        0x25t
        0x76t
        0x3at
        0x3ft
        0x3bt
        0x3ft
        0x22t
        0x6at
        0x58t
        0x4ct
        0x7et
        0x4ft
        0x5ct
        0x5dt
        0x4bt
        0x5ct
    .end array-data
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/Fe;Lcom/facebook/ads/redexgen/X/Fc;IIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 9

    .line 33723
    const/4 v0, 0x3

    move v4, p2

    if-ne v4, v0, :cond_0

    .line 33724
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/Fc;->A03:[I

    .line 33725
    .local v0, "clutEntries":[I
    .restart local v0    # "clutEntries":[I
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Fe;->A03:[B

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-static/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Fk;->A0D([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 33726
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Fe;->A02:[B

    add-int/lit8 v6, v6, 0x1

    invoke-static/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Fk;->A0D([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 33727
    return-void

    .line 33728
    .end local v0    # "clutEntries":[I
    :cond_0
    const/4 v3, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const-string v1, "74G7JuTvJBV0INH1XI3DUfK6d2EWZ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_1

    .line 33729
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/Fc;->A02:[I

    .restart local v0    # "clutEntries":[I
    goto :goto_0

    .line 33730
    .end local v0    # "clutEntries":[I
    :cond_1
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/Fc;->A01:[I

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/Hb;Lcom/facebook/ads/redexgen/X/Fj;)V
    .locals 6

    .line 33731
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v5

    .line 33732
    .local v0, "segmentType":I
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v4

    .line 33733
    .local v2, "pageId":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v2

    .line 33734
    .local v1, "dataFieldLength":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hb;->A02()I

    move-result v3

    add-int/2addr v3, v2

    .line 33735
    .local v3, "dataFieldLimit":I
    mul-int/lit8 v1, v2, 0x8

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hb;->A01()I

    move-result v0

    if-le v1, v0, :cond_0

    .line 33736
    const/16 v2, 0x1f

    const/16 v1, 0x9

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fk;->A09(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x1f

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fk;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33737
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hb;->A01()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 33738
    return-void

    .line 33739
    :cond_0
    packed-switch v5, :pswitch_data_0

    .line 33740
    .end local v4
    .end local v5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hb;->A02()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Hb;->A09(I)V

    .line 33741
    return-void

    .line 33742
    .end local v4
    :pswitch_0
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Fj;->A03:I

    if-ne v4, v0, :cond_1

    .line 33743
    iget-object v5, p1, Lcom/facebook/ads/redexgen/X/Fj;->A01:Lcom/facebook/ads/redexgen/X/Ff;

    .line 33744
    .local v4, "current":Lcom/facebook/ads/redexgen/X/Ff;
    invoke-static {p0, v2}, Lcom/facebook/ads/redexgen/X/Fk;->A07(Lcom/facebook/ads/redexgen/X/Hb;I)Lcom/facebook/ads/redexgen/X/Ff;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_2

    .line 33745
    .local v5, "pageComposition":Lcom/facebook/ads/redexgen/X/Ff;
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const-string v1, "SOWWurFjCTsQ5JKY9OnGZdezCI3KtXYI"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "V4dNvY88haURe4qy074bHXOdfnJc7iQY"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Ff;->A00:I

    if-eqz v0, :cond_3

    .line 33746
    :goto_1
    iput-object v4, p1, Lcom/facebook/ads/redexgen/X/Fj;->A01:Lcom/facebook/ads/redexgen/X/Ff;

    .line 33747
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Fj;->A08:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 33748
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Fj;->A06:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 33749
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Fj;->A07:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_0

    .line 33750
    .local v5, "pageComposition":Lcom/facebook/ads/redexgen/X/Ff;
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const-string v1, "eHaCLq5ayPLh"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Ff;->A00:I

    if-eqz v0, :cond_3

    goto :goto_1

    .line 33751
    :cond_3
    if-eqz v5, :cond_1

    iget v1, v5, Lcom/facebook/ads/redexgen/X/Ff;->A02:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Ff;->A02:I

    if-eq v1, v0, :cond_1

    .line 33752
    iput-object v4, p1, Lcom/facebook/ads/redexgen/X/Fj;->A01:Lcom/facebook/ads/redexgen/X/Ff;

    goto :goto_0

    .line 33753
    :pswitch_1
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Fj;->A01:Lcom/facebook/ads/redexgen/X/Ff;

    .line 33754
    .local v4, "pageComposition":Lcom/facebook/ads/redexgen/X/Ff;
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Fj;->A03:I

    if-ne v4, v0, :cond_1

    if-eqz v1, :cond_1

    .line 33755
    invoke-static {p0, v2}, Lcom/facebook/ads/redexgen/X/Fk;->A08(Lcom/facebook/ads/redexgen/X/Hb;I)Lcom/facebook/ads/redexgen/X/Fh;

    move-result-object v5

    .line 33756
    .local v5, "regionComposition":Lcom/facebook/ads/redexgen/X/Fh;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/Ff;->A00:I

    if-nez v0, :cond_4

    .line 33757
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Fj;->A08:Landroid/util/SparseArray;

    iget v0, v5, Lcom/facebook/ads/redexgen/X/Fh;->A03:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Fh;

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Fh;->A00(Lcom/facebook/ads/redexgen/X/Fh;)V

    .line 33758
    :cond_4
    iget-object v4, p1, Lcom/facebook/ads/redexgen/X/Fj;->A08:Landroid/util/SparseArray;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const-string v1, "mahKYWCII7kQ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget v0, v5, Lcom/facebook/ads/redexgen/X/Fh;->A03:I

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33759
    .end local v5    # "regionComposition":Lcom/facebook/ads/redexgen/X/Fh;
    goto/16 :goto_0

    .line 33760
    :pswitch_2
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Fj;->A03:I

    if-ne v4, v0, :cond_5

    .line 33761
    invoke-static {p0, v2}, Lcom/facebook/ads/redexgen/X/Fk;->A04(Lcom/facebook/ads/redexgen/X/Hb;I)Lcom/facebook/ads/redexgen/X/Fc;

    move-result-object v2

    .line 33762
    .local v4, "clutDefinition":Lcom/facebook/ads/redexgen/X/Fc;
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Fj;->A06:Landroid/util/SparseArray;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Fc;->A00:I

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v4    # "clutDefinition":Lcom/facebook/ads/redexgen/X/Fc;
    goto/16 :goto_0

    .line 33763
    :cond_5
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Fj;->A02:I

    if-ne v4, v0, :cond_1

    .line 33764
    invoke-static {p0, v2}, Lcom/facebook/ads/redexgen/X/Fk;->A04(Lcom/facebook/ads/redexgen/X/Hb;I)Lcom/facebook/ads/redexgen/X/Fc;

    move-result-object v2

    .line 33765
    .restart local v4    # "clutDefinition":Lcom/facebook/ads/redexgen/X/Fc;
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Fj;->A04:Landroid/util/SparseArray;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Fc;->A00:I

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33766
    .end local v4    # "clutDefinition":Lcom/facebook/ads/redexgen/X/Fc;
    goto/16 :goto_0

    .line 33767
    :pswitch_3
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Fj;->A03:I

    if-ne v4, v0, :cond_6

    .line 33768
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Fk;->A06(Lcom/facebook/ads/redexgen/X/Hb;)Lcom/facebook/ads/redexgen/X/Fe;

    move-result-object v2

    .line 33769
    .local v4, "objectData":Lcom/facebook/ads/redexgen/X/Fe;
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Fj;->A07:Landroid/util/SparseArray;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Fe;->A00:I

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v4    # "objectData":Lcom/facebook/ads/redexgen/X/Fe;
    goto/16 :goto_0

    .line 33770
    :cond_6
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Fj;->A02:I

    if-ne v4, v0, :cond_1

    .line 33771
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Fk;->A06(Lcom/facebook/ads/redexgen/X/Hb;)Lcom/facebook/ads/redexgen/X/Fe;

    move-result-object v2

    .line 33772
    .restart local v4    # "objectData":Lcom/facebook/ads/redexgen/X/Fe;
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Fj;->A05:Landroid/util/SparseArray;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Fe;->A00:I

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33773
    .end local v4    # "objectData":Lcom/facebook/ads/redexgen/X/Fe;
    goto/16 :goto_0

    .line 33774
    :pswitch_4
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Fj;->A03:I

    if-ne v4, v0, :cond_1

    .line 33775
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Fk;->A05(Lcom/facebook/ads/redexgen/X/Hb;)Lcom/facebook/ads/redexgen/X/Fd;

    move-result-object v0

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/Fj;->A00:Lcom/facebook/ads/redexgen/X/Fd;

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static A0D([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 12

    .line 33776
    move/from16 v10, p4

    new-instance v6, Lcom/facebook/ads/redexgen/X/Hb;

    invoke-direct {v6, p0}, Lcom/facebook/ads/redexgen/X/Hb;-><init>([B)V

    .line 33777
    .local v1, "data":Lcom/facebook/ads/redexgen/X/Hb;
    .local v3, "column":I
    .local v4, "line":I
    const/4 v5, 0x0

    .line 33778
    .local v5, "clutMapTable2To4":[B
    const/4 v4, 0x0

    .line 33779
    .local v6, "clutMapTable2To8":[B
    const/4 v3, 0x0

    move v9, p3

    .line 33780
    .end local v3    # "column":I
    .end local v4    # "line":I
    .end local v5    # "clutMapTable2To4":[B
    .end local v6    # "clutMapTable2To8":[B
    .local v10, "clutMapTable4To8":[B
    .local v11, "clutMapTable2To4":[B
    .local p0, "clutMapTable2To8":[B
    .local p1, "column":I
    .local p2, "line":I
    :goto_0
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hb;->A01()I

    move-result v0

    if-eqz v0, :cond_9

    .line 33781
    const/16 v2, 0x8

    invoke-virtual {v6, v2}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v1

    .line 33782
    .local p3, "dataType":I
    const/16 v0, 0xf0

    if-eq v1, v0, :cond_7

    const/4 v0, 0x3

    move-object v7, p1

    move-object/from16 v11, p5

    move-object/from16 p0, p6

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x4

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 33783
    .end local v3
    .restart local p0    # "clutMapTable2To8":[B
    :pswitch_0
    invoke-static {v0, v0, v6}, Lcom/facebook/ads/redexgen/X/Fk;->A0E(IILcom/facebook/ads/redexgen/X/Hb;)[B

    move-result-object v5

    .line 33784
    .end local v11    # "clutMapTable2To4":[B
    .local v3, "clutMapTable2To4":[B
    goto :goto_0

    .line 33785
    .end local v3    # "clutMapTable2To4":[B
    .restart local p0    # "clutMapTable2To8":[B
    :pswitch_1
    invoke-static {v0, v2, v6}, Lcom/facebook/ads/redexgen/X/Fk;->A0E(IILcom/facebook/ads/redexgen/X/Hb;)[B

    move-result-object v4

    .line 33786
    .end local p0    # "clutMapTable2To8":[B
    .restart local v3    # "clutMapTable2To4":[B
    goto :goto_0

    .line 33787
    :pswitch_2
    const/16 v0, 0x10

    invoke-static {v0, v2, v6}, Lcom/facebook/ads/redexgen/X/Fk;->A0E(IILcom/facebook/ads/redexgen/X/Hb;)[B

    move-result-object v4

    .line 33788
    .end local p0
    .local v3, "clutMapTable2To8":[B
    goto :goto_0

    .line 33789
    .end local p4    # null:I
    :pswitch_3
    if-ne p2, v0, :cond_1

    .line 33790
    if-nez v4, :cond_0

    sget-object v8, Lcom/facebook/ads/redexgen/X/Fk;->A0A:[B

    .line 33791
    .local p4, "clutMapTable2ToX":[B
    :goto_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 33792
    :cond_0
    move-object v8, v4

    goto :goto_1

    .line 33793
    .end local v3    # "clutMapTable2To8":[B
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 33794
    if-nez v5, :cond_2

    sget-object v8, Lcom/facebook/ads/redexgen/X/Fk;->A09:[B

    goto :goto_1

    :cond_2
    move-object v8, v5

    goto :goto_1

    .line 33795
    .end local v3
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const-string v1, "xwfPuAvCy0meNXm9qprXKFgJpDmZE"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static/range {v6 .. v12}, Lcom/facebook/ads/redexgen/X/Fk;->A01(Lcom/facebook/ads/redexgen/X/Hb;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v9

    .line 33796
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hb;->A05()V

    .line 33797
    goto :goto_0

    .line 33798
    :pswitch_4
    if-ne p2, v0, :cond_6

    .line 33799
    if-nez v3, :cond_5

    sget-object v8, Lcom/facebook/ads/redexgen/X/Fk;->A0B:[B

    .line 33800
    .local p4, "clutMapTable4ToX":[B
    :goto_2
    invoke-static/range {v6 .. v12}, Lcom/facebook/ads/redexgen/X/Fk;->A02(Lcom/facebook/ads/redexgen/X/Hb;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v9

    .line 33801
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hb;->A05()V

    .line 33802
    goto :goto_0

    .line 33803
    :cond_5
    move-object v8, v3

    goto :goto_2

    .line 33804
    .end local v3
    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    .line 33805
    .end local v3
    .restart local v11    # "clutMapTable2To4":[B
    :pswitch_5
    const/4 v8, 0x0

    invoke-static/range {v6 .. v12}, Lcom/facebook/ads/redexgen/X/Fk;->A03(Lcom/facebook/ads/redexgen/X/Hb;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v9

    .line 33806
    goto :goto_0

    .line 33807
    .end local p4    # "clutMapTable4ToX":[B
    :cond_7
    move v9, p3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_8

    .line 33808
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const-string v1, "Q"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "dDxqS2bkmSWw219FL9FrVELNlGxj"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    add-int/lit8 v10, v10, 0x2

    .line 33809
    goto/16 :goto_0

    .line 33810
    :cond_8
    add-int/lit8 v10, v10, 0x2

    .line 33811
    goto/16 :goto_0

    .line 33812
    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static A0E(IILcom/facebook/ads/redexgen/X/Hb;)[B
    .locals 3

    .line 33813
    new-array v2, p0, [B

    .line 33814
    .local v0, "clutMapTable":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 33815
    invoke-virtual {p2, p1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    .line 33816
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33817
    .end local v1    # "i":I
    :cond_0
    return-object v2
.end method

.method public static A0F()[I
    .locals 3

    .line 33818
    const/4 v0, 0x4

    new-array v2, v0, [I

    .line 33819
    .local v0, "entries":[I
    const/4 v0, 0x0

    aput v0, v2, v0

    .line 33820
    const/4 v1, 0x1

    const/4 v0, -0x1

    aput v0, v2, v1

    .line 33821
    const/4 v1, 0x2

    const/high16 v0, -0x1000000

    aput v0, v2, v1

    .line 33822
    const/4 v1, 0x3

    const v0, -0x808081

    aput v0, v2, v1

    .line 33823
    return-object v2
.end method

.method public static A0G()[I
    .locals 7

    .line 33824
    const/16 v0, 0x10

    new-array v5, v0, [I

    .line 33825
    .local v0, "entries":[I
    const/4 v0, 0x0

    aput v0, v5, v0

    .line 33826
    const/4 v4, 0x1

    .local v2, "i":I
    :goto_0
    array-length v0, v5

    if-ge v4, v0, :cond_8

    .line 33827
    const/16 v0, 0x8

    const/16 v6, 0xff

    if-ge v4, v0, :cond_4

    .line 33828
    and-int/lit8 v3, v4, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const-string v1, "OBOqbcJ5TVgi"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    const/16 v2, 0xff

    .line 33829
    :goto_1
    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_2

    const/16 v1, 0xff

    .line 33830
    :goto_2
    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_1

    const/16 v0, 0xff

    .line 33831
    :goto_3
    invoke-static {v6, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fk;->A00(IIII)I

    move-result v0

    aput v0, v5, v4

    goto :goto_7

    .line 33832
    :cond_1
    const/4 v0, 0x0

    goto :goto_3

    .line 33833
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 33834
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 33835
    :cond_4
    and-int/lit8 v0, v4, 0x1

    const/16 v3, 0x7f

    if-eqz v0, :cond_7

    const/16 v2, 0x7f

    .line 33836
    :goto_4
    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_6

    const/16 v1, 0x7f

    .line 33837
    :goto_5
    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_5

    .line 33838
    :goto_6
    invoke-static {v6, v2, v1, v3}, Lcom/facebook/ads/redexgen/X/Fk;->A00(IIII)I

    move-result v0

    aput v0, v5, v4

    .line 33839
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 33840
    :cond_5
    const/4 v3, 0x0

    goto :goto_6

    .line 33841
    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    .line 33842
    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    .line 33843
    .end local v2    # "i":I
    :cond_8
    return-object v5
.end method

.method public static A0H()[I
    .locals 11

    .line 33844
    const/16 v0, 0x100

    new-array v4, v0, [I

    .line 33845
    .local v0, "entries":[I
    const/4 v0, 0x0

    aput v0, v4, v0

    .line 33846
    const/4 v3, 0x0

    .local v2, "i":I
    :goto_0
    array-length v0, v4

    if-ge v3, v0, :cond_25

    .line 33847
    const/16 v9, 0x8

    const/16 v7, 0xff

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_24

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const-string v1, "yMmopDV0PROTT6iUygdI9MoWuRB"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge v3, v9, :cond_3

    .line 33848
    const/16 v5, 0x3f

    .line 33849
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_2

    const/16 v2, 0xff

    .line 33850
    :goto_1
    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_1

    const/16 v1, 0xff

    .line 33851
    :goto_2
    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_0

    .line 33852
    :goto_3
    invoke-static {v5, v2, v1, v7}, Lcom/facebook/ads/redexgen/X/Fk;->A00(IIII)I

    move-result v0

    aput v0, v4, v3

    .line 33853
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 33854
    :cond_0
    const/4 v7, 0x0

    goto :goto_3

    .line 33855
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 33856
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 33857
    :cond_3
    and-int/lit16 v1, v3, 0x88

    const/16 v8, 0xaa

    const/16 v5, 0x55

    if-eqz v1, :cond_1c

    const/16 v6, 0x7f

    if-eq v1, v9, :cond_14

    const/16 v0, 0x80

    const/16 v10, 0x2b

    if-eq v1, v0, :cond_c

    const/16 v0, 0x88

    if-eq v1, v0, :cond_4

    goto :goto_4

    .line 33858
    :cond_4
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_b

    const/16 v8, 0x2b

    :goto_5
    and-int/lit8 v0, v3, 0x10

    if-eqz v0, :cond_a

    const/16 v0, 0x55

    :goto_6
    add-int/2addr v8, v0

    .line 33859
    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_9

    const/16 v6, 0x2b

    :goto_7
    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_8

    const/16 v0, 0x55

    :goto_8
    add-int/2addr v6, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    .line 33860
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const-string v1, "UXJnsqi5hk1W"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_7

    :goto_9
    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_5

    :goto_a
    add-int/2addr v10, v5

    .line 33861
    invoke-static {v7, v8, v6, v10}, Lcom/facebook/ads/redexgen/X/Fk;->A00(IIII)I

    move-result v0

    aput v0, v4, v3

    goto :goto_4

    .line 33862
    :cond_5
    const/4 v5, 0x0

    goto :goto_a

    :cond_6
    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v10, 0x0

    goto :goto_9

    .line 33863
    :cond_8
    const/4 v0, 0x0

    goto :goto_8

    :cond_9
    const/4 v6, 0x0

    goto :goto_7

    .line 33864
    :cond_a
    const/4 v0, 0x0

    goto :goto_6

    :cond_b
    const/4 v8, 0x0

    goto :goto_5

    .line 33865
    :cond_c
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_13

    const/16 v9, 0x2b

    :goto_b
    add-int/2addr v9, v6

    and-int/lit8 v8, v3, 0x10

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_23

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const-string v1, "B"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "qhusYeSDH3rkmMFjx13RVeSrZB6J"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v8, :cond_12

    const/16 v0, 0x55

    :goto_c
    add-int/2addr v9, v0

    .line 33866
    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_11

    const/16 v8, 0x2b

    :goto_d
    add-int/2addr v8, v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_f

    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_10

    :goto_e
    const/16 v0, 0x55

    :goto_f
    add-int/2addr v8, v0

    .line 33867
    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_e

    :goto_10
    add-int/2addr v10, v6

    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_d

    :goto_11
    add-int/2addr v10, v5

    .line 33868
    invoke-static {v7, v9, v8, v10}, Lcom/facebook/ads/redexgen/X/Fk;->A00(IIII)I

    move-result v0

    aput v0, v4, v3

    .line 33869
    goto/16 :goto_4

    .line 33870
    :cond_d
    const/4 v5, 0x0

    goto :goto_11

    :cond_e
    const/4 v10, 0x0

    goto :goto_10

    :cond_f
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const-string v1, "aMCLMX5"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_10

    goto :goto_e

    .line 33871
    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :cond_11
    const/4 v8, 0x0

    goto :goto_d

    .line 33872
    :cond_12
    const/4 v0, 0x0

    goto :goto_c

    :cond_13
    const/4 v9, 0x0

    goto :goto_b

    .line 33873
    :cond_14
    and-int/lit8 v7, v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1a

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const-string v1, "krKRrFgj4kBQ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v7, :cond_1b

    :goto_12
    const/16 v2, 0x55

    :goto_13
    and-int/lit8 v0, v3, 0x10

    if-eqz v0, :cond_19

    const/16 v0, 0xaa

    :goto_14
    add-int/2addr v2, v0

    .line 33874
    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_18

    const/16 v1, 0x55

    :goto_15
    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_17

    const/16 v0, 0xaa

    :goto_16
    add-int/2addr v1, v0

    .line 33875
    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_16

    :goto_17
    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_15

    :goto_18
    add-int/2addr v5, v8

    .line 33876
    invoke-static {v6, v2, v1, v5}, Lcom/facebook/ads/redexgen/X/Fk;->A00(IIII)I

    move-result v0

    aput v0, v4, v3

    .line 33877
    goto/16 :goto_4

    .line 33878
    :cond_15
    const/4 v8, 0x0

    goto :goto_18

    :cond_16
    const/4 v5, 0x0

    goto :goto_17

    .line 33879
    :cond_17
    const/4 v0, 0x0

    goto :goto_16

    :cond_18
    const/4 v1, 0x0

    goto :goto_15

    .line 33880
    :cond_19
    const/4 v0, 0x0

    goto :goto_14

    :cond_1a
    if-eqz v7, :cond_1b

    goto :goto_12

    :cond_1b
    const/4 v2, 0x0

    goto :goto_13

    .line 33881
    :cond_1c
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_22

    const/16 v2, 0x55

    :goto_19
    and-int/lit8 v0, v3, 0x10

    if-eqz v0, :cond_21

    const/16 v0, 0xaa

    :goto_1a
    add-int/2addr v2, v0

    .line 33882
    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_20

    const/16 v1, 0x55

    :goto_1b
    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_1f

    const/16 v0, 0xaa

    :goto_1c
    add-int/2addr v1, v0

    .line 33883
    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_1e

    :goto_1d
    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_1d

    :goto_1e
    add-int/2addr v5, v8

    .line 33884
    invoke-static {v7, v2, v1, v5}, Lcom/facebook/ads/redexgen/X/Fk;->A00(IIII)I

    move-result v0

    aput v0, v4, v3

    .line 33885
    goto/16 :goto_4

    .line 33886
    :cond_1d
    const/4 v8, 0x0

    goto :goto_1e

    :cond_1e
    const/4 v5, 0x0

    goto :goto_1d

    .line 33887
    :cond_1f
    const/4 v0, 0x0

    goto :goto_1c

    :cond_20
    const/4 v1, 0x0

    goto :goto_1b

    .line 33888
    :cond_21
    const/4 v0, 0x0

    goto :goto_1a

    :cond_22
    const/4 v2, 0x0

    goto :goto_19

    :cond_23
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_24
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 33889
    .end local v2    # "i":I
    :cond_25
    return-object v4
.end method


# virtual methods
.method public final A0I([BI)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/FQ;",
            ">;"
        }
    .end annotation

    .line 33890
    move-object/from16 v3, p0

    new-instance v2, Lcom/facebook/ads/redexgen/X/Hb;

    move-object/from16 v1, p1

    move/from16 v0, p2

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;-><init>([BI)V

    .line 33891
    .local v1, "dataBitArray":Lcom/facebook/ads/redexgen/X/Hb;
    :goto_0
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hb;->A01()I

    move-result v1

    const/16 v0, 0x30

    if-lt v1, v0, :cond_0

    const/16 v0, 0x8

    .line 33892
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v1

    const/16 v0, 0xf

    if-ne v1, v0, :cond_0

    .line 33893
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Fk;->A06:Lcom/facebook/ads/redexgen/X/Fj;

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/Fk;->A0C(Lcom/facebook/ads/redexgen/X/Hb;Lcom/facebook/ads/redexgen/X/Fj;)V

    goto :goto_0

    .line 33894
    :cond_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Fk;->A06:Lcom/facebook/ads/redexgen/X/Fj;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Fj;->A01:Lcom/facebook/ads/redexgen/X/Ff;

    if-nez v0, :cond_1

    .line 33895
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 33896
    :cond_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Fk;->A06:Lcom/facebook/ads/redexgen/X/Fj;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Fj;->A00:Lcom/facebook/ads/redexgen/X/Fd;

    if-eqz v0, :cond_c

    .line 33897
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Fk;->A06:Lcom/facebook/ads/redexgen/X/Fj;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Fj;->A00:Lcom/facebook/ads/redexgen/X/Fd;

    .line 33898
    .local v4, "displayDefinition":Lcom/facebook/ads/redexgen/X/Fd;
    :goto_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Fk;->A00:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Fd;->A05:I

    add-int/lit8 v1, v0, 0x1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Fk;->A00:Landroid/graphics/Bitmap;

    .line 33899
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v1, v0, :cond_2

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Fd;->A00:I

    add-int/lit8 v1, v0, 0x1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Fk;->A00:Landroid/graphics/Bitmap;

    .line 33900
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 33901
    :cond_2
    iget v0, v2, Lcom/facebook/ads/redexgen/X/Fd;->A05:I

    add-int/lit8 v4, v0, 0x1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Fd;->A00:I

    add-int/lit8 v1, v0, 0x1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 33902
    invoke-static {v4, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/Fk;->A00:Landroid/graphics/Bitmap;

    .line 33903
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Fk;->A01:Landroid/graphics/Canvas;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Fk;->A00:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 33904
    :cond_3
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 33905
    .local v5, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/Cue;>;"
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Fk;->A06:Lcom/facebook/ads/redexgen/X/Fj;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Fj;->A01:Lcom/facebook/ads/redexgen/X/Ff;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/Ff;->A03:Landroid/util/SparseArray;

    .line 33906
    .local v6, "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/dvb/DvbParser$PageRegion;>;"
    const/4 v1, 0x0

    .local v7, "i":I
    :goto_2
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_e

    .line 33907
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/redexgen/X/Fg;

    .line 33908
    .local v8, "pageRegion":Lcom/facebook/ads/redexgen/X/Fg;
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 33909
    .local v9, "regionId":I
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Fk;->A06:Lcom/facebook/ads/redexgen/X/Fj;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Fj;->A08:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Fh;

    .line 33910
    .local v10, "regionComposition":Lcom/facebook/ads/redexgen/X/Fh;
    iget v5, v7, Lcom/facebook/ads/redexgen/X/Fg;->A00:I

    iget v4, v2, Lcom/facebook/ads/redexgen/X/Fd;->A02:I

    add-int/2addr v5, v4

    .line 33911
    .local v11, "baseHorizontalAddress":I
    iget v4, v7, Lcom/facebook/ads/redexgen/X/Fg;->A01:I

    iget v7, v2, Lcom/facebook/ads/redexgen/X/Fd;->A04:I

    add-int/2addr v4, v7

    .line 33912
    .local v12, "baseVerticalAddress":I
    iget v8, v0, Lcom/facebook/ads/redexgen/X/Fh;->A08:I

    add-int/2addr v8, v5

    iget v7, v2, Lcom/facebook/ads/redexgen/X/Fd;->A01:I

    .line 33913
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 33914
    .local v13, "clipRight":I
    iget v8, v0, Lcom/facebook/ads/redexgen/X/Fh;->A02:I

    add-int/2addr v8, v4

    iget v7, v2, Lcom/facebook/ads/redexgen/X/Fd;->A03:I

    .line 33915
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 33916
    .local v14, "clipBottom":I
    iget-object v11, v3, Lcom/facebook/ads/redexgen/X/Fk;->A01:Landroid/graphics/Canvas;

    .end local v1    # "dataBitArray":Lcom/facebook/ads/redexgen/X/Hb;
    .local v21, "dataBitArray":Lcom/facebook/ads/redexgen/X/Hb;
    int-to-float v10, v5

    int-to-float v9, v4

    int-to-float v8, v12

    .end local v6    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/dvb/DvbParser$PageRegion;>;"
    .local v22, "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/dvb/DvbParser$PageRegion;>;"
    int-to-float v7, v7

    sget-object v22, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move/from16 v18, v10

    move/from16 v19, v9

    move/from16 v20, v8

    move/from16 v21, v7

    move-object/from16 v17, v11

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 33917
    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/Fk;->A06:Lcom/facebook/ads/redexgen/X/Fj;

    iget-object v8, v7, Lcom/facebook/ads/redexgen/X/Fj;->A06:Landroid/util/SparseArray;

    iget v7, v0, Lcom/facebook/ads/redexgen/X/Fh;->A00:I

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/ads/redexgen/X/Fc;

    .line 33918
    .local v1, "clutDefinition":Lcom/facebook/ads/redexgen/X/Fc;
    if-nez v9, :cond_4

    .line 33919
    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/Fk;->A06:Lcom/facebook/ads/redexgen/X/Fj;

    iget-object v8, v7, Lcom/facebook/ads/redexgen/X/Fj;->A04:Landroid/util/SparseArray;

    iget v7, v0, Lcom/facebook/ads/redexgen/X/Fh;->A00:I

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/ads/redexgen/X/Fc;

    .line 33920
    if-nez v9, :cond_4

    .line 33921
    iget-object v9, v3, Lcom/facebook/ads/redexgen/X/Fk;->A04:Lcom/facebook/ads/redexgen/X/Fc;

    .line 33922
    :cond_4
    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/Fh;->A09:Landroid/util/SparseArray;

    .line 33923
    .local v2, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/dvb/DvbParser$RegionObject;>;"
    const/4 v12, 0x0

    .local v3, "j":I
    :goto_3
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v12, v7, :cond_8

    .line 33924
    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 33925
    .local v6, "objectId":I
    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/facebook/ads/redexgen/X/Fi;

    .line 33926
    .local v15, "regionObject":Lcom/facebook/ads/redexgen/X/Fi;
    .end local v2    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/dvb/DvbParser$RegionObject;>;"
    .local v16, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/dvb/DvbParser$RegionObject;>;"
    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/Fk;->A06:Lcom/facebook/ads/redexgen/X/Fj;

    iget-object v7, v7, Lcom/facebook/ads/redexgen/X/Fj;->A07:Landroid/util/SparseArray;

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/ads/redexgen/X/Fe;

    sget-object v15, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v10, v15, v7

    const/4 v7, 0x7

    aget-object v15, v15, v7

    const/16 v7, 0x18

    invoke-virtual {v10, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v15, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v10, v7, :cond_d

    .line 33927
    .local v2, "objectData":Lcom/facebook/ads/redexgen/X/Fe;
    sget-object v15, Lcom/facebook/ads/redexgen/X/Fk;->A08:[Ljava/lang/String;

    const-string v10, "0wDldquZfVkccfOmGfzJ1HL0d6oT0"

    const/4 v7, 0x1

    aput-object v10, v15, v7

    if-nez v11, :cond_5

    .line 33928
    .end local v2    # "objectData":Lcom/facebook/ads/redexgen/X/Fe;
    .local v17, "objectData":Lcom/facebook/ads/redexgen/X/Fe;
    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/Fk;->A06:Lcom/facebook/ads/redexgen/X/Fj;

    iget-object v7, v7, Lcom/facebook/ads/redexgen/X/Fj;->A05:Landroid/util/SparseArray;

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/ads/redexgen/X/Fe;

    .line 33929
    .end local v17    # "objectData":Lcom/facebook/ads/redexgen/X/Fe;
    .restart local v2    # "objectData":Lcom/facebook/ads/redexgen/X/Fe;
    :cond_5
    if-eqz v11, :cond_6

    .line 33930
    .end local v6    # "objectId":I
    .local v17, "objectId":I
    iget-boolean v7, v11, Lcom/facebook/ads/redexgen/X/Fe;->A01:Z

    if-eqz v7, :cond_7

    const/4 v10, 0x0

    .line 33931
    .local p3, "paint":Landroid/graphics/Paint;
    :goto_4
    iget v8, v0, Lcom/facebook/ads/redexgen/X/Fh;->A01:I

    .end local v8    # "pageRegion":Lcom/facebook/ads/redexgen/X/Fg;
    .local v18, "pageRegion":Lcom/facebook/ads/redexgen/X/Fg;
    iget v7, v14, Lcom/facebook/ads/redexgen/X/Fi;->A02:I

    add-int v20, v5, v7

    iget v7, v14, Lcom/facebook/ads/redexgen/X/Fi;->A05:I

    add-int v21, v4, v7

    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/Fk;->A01:Landroid/graphics/Canvas;

    move-object/from16 v18, v9

    move/from16 v19, v8

    move-object/from16 v22, v10

    move-object/from16 v23, v7

    move-object/from16 v17, v11

    invoke-static/range {v17 .. v23}, Lcom/facebook/ads/redexgen/X/Fk;->A0B(Lcom/facebook/ads/redexgen/X/Fe;Lcom/facebook/ads/redexgen/X/Fc;IIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 33932
    .end local v2    # "objectData":Lcom/facebook/ads/redexgen/X/Fe;
    .end local v6
    .end local v8
    .end local v15    # "regionObject":Lcom/facebook/ads/redexgen/X/Fi;
    .restart local v18    # "pageRegion":Lcom/facebook/ads/redexgen/X/Fg;
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 33933
    :cond_7
    iget-object v10, v3, Lcom/facebook/ads/redexgen/X/Fk;->A02:Landroid/graphics/Paint;

    goto :goto_4

    .line 33934
    .end local v16    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/dvb/DvbParser$RegionObject;>;"
    .end local v18    # "pageRegion":Lcom/facebook/ads/redexgen/X/Fg;
    .local v2, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/dvb/DvbParser$RegionObject;>;"
    .restart local v8    # "pageRegion":Lcom/facebook/ads/redexgen/X/Fg;
    .end local v2    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/dvb/DvbParser$RegionObject;>;"
    .end local v3    # "j":I
    .end local v8    # "pageRegion":Lcom/facebook/ads/redexgen/X/Fg;
    .restart local v16    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/dvb/DvbParser$RegionObject;>;"
    .restart local v18    # "pageRegion":Lcom/facebook/ads/redexgen/X/Fg;
    :cond_8
    iget-boolean v7, v0, Lcom/facebook/ads/redexgen/X/Fh;->A0A:Z

    if-eqz v7, :cond_9

    .line 33935
    iget v8, v0, Lcom/facebook/ads/redexgen/X/Fh;->A01:I

    const/4 v7, 0x3

    if-ne v8, v7, :cond_a

    .line 33936
    iget-object v8, v9, Lcom/facebook/ads/redexgen/X/Fc;->A03:[I

    iget v7, v0, Lcom/facebook/ads/redexgen/X/Fh;->A07:I

    aget v8, v8, v7

    .line 33937
    .local v2, "color":I
    .restart local v2    # "color":I
    :goto_5
    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/Fk;->A03:Landroid/graphics/Paint;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 33938
    iget-object v8, v3, Lcom/facebook/ads/redexgen/X/Fk;->A01:Landroid/graphics/Canvas;

    int-to-float v9, v5

    int-to-float v10, v4

    iget v7, v0, Lcom/facebook/ads/redexgen/X/Fh;->A08:I

    add-int/2addr v7, v5

    int-to-float v11, v7

    .end local v1    # "clutDefinition":Lcom/facebook/ads/redexgen/X/Fc;
    .local v17, "clutDefinition":Lcom/facebook/ads/redexgen/X/Fc;
    iget v7, v0, Lcom/facebook/ads/redexgen/X/Fh;->A02:I

    add-int/2addr v7, v4

    int-to-float v12, v7

    .end local v2    # "color":I
    .local v19, "color":I
    iget-object v13, v3, Lcom/facebook/ads/redexgen/X/Fk;->A03:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 33939
    .end local v1
    .restart local v17    # "clutDefinition":Lcom/facebook/ads/redexgen/X/Fc;
    :cond_9
    iget-object v9, v3, Lcom/facebook/ads/redexgen/X/Fk;->A00:Landroid/graphics/Bitmap;

    iget v8, v0, Lcom/facebook/ads/redexgen/X/Fh;->A08:I

    iget v7, v0, Lcom/facebook/ads/redexgen/X/Fh;->A02:I

    .line 33940
    invoke-static {v9, v5, v4, v8, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 33941
    .local v1, "cueBitmap":Landroid/graphics/Bitmap;
    new-instance v7, Lcom/facebook/ads/redexgen/X/FQ;

    int-to-float v8, v5

    iget v5, v2, Lcom/facebook/ads/redexgen/X/Fd;->A05:I

    int-to-float v5, v5

    div-float/2addr v8, v5

    const/16 v20, 0x0

    int-to-float v9, v4

    iget v4, v2, Lcom/facebook/ads/redexgen/X/Fd;->A00:I

    int-to-float v4, v4

    div-float/2addr v9, v4

    const/16 v22, 0x0

    iget v4, v0, Lcom/facebook/ads/redexgen/X/Fh;->A08:I

    int-to-float v5, v4

    iget v4, v2, Lcom/facebook/ads/redexgen/X/Fd;->A05:I

    int-to-float v4, v4

    div-float/2addr v5, v4

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Fh;->A02:I

    int-to-float v4, v0

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Fd;->A00:I

    int-to-float v0, v0

    div-float/2addr v4, v0

    move/from16 v19, v8

    move/from16 v21, v9

    move/from16 v23, v5

    move/from16 v24, v4

    move-object/from16 v17, v7

    invoke-direct/range {v17 .. v24}, Lcom/facebook/ads/redexgen/X/FQ;-><init>(Landroid/graphics/Bitmap;FIFIFF)V

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33942
    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/Fk;->A01:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v4, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 33943
    .end local v1    # "cueBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "regionId":I
    .end local v10    # "regionComposition":Lcom/facebook/ads/redexgen/X/Fh;
    .end local v11    # "baseHorizontalAddress":I
    .end local v12    # "baseVerticalAddress":I
    .end local v13    # "clipRight":I
    .end local v14    # "clipBottom":I
    .end local v16    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/dvb/DvbParser$RegionObject;>;"
    .end local v17    # "clutDefinition":Lcom/facebook/ads/redexgen/X/Fc;
    .end local v18    # "pageRegion":Lcom/facebook/ads/redexgen/X/Fg;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 33944
    .end local v2
    :cond_a
    iget v8, v0, Lcom/facebook/ads/redexgen/X/Fh;->A01:I

    const/4 v7, 0x2

    if-ne v8, v7, :cond_b

    .line 33945
    iget-object v8, v9, Lcom/facebook/ads/redexgen/X/Fc;->A02:[I

    iget v7, v0, Lcom/facebook/ads/redexgen/X/Fh;->A06:I

    aget v8, v8, v7

    .restart local v2    # "color":I
    goto :goto_5

    .line 33946
    .end local v2    # "color":I
    :cond_b
    iget-object v8, v9, Lcom/facebook/ads/redexgen/X/Fc;->A01:[I

    iget v7, v0, Lcom/facebook/ads/redexgen/X/Fh;->A05:I

    aget v8, v8, v7

    goto :goto_5

    .line 33947
    :cond_c
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/Fk;->A05:Lcom/facebook/ads/redexgen/X/Fd;

    goto/16 :goto_1

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 33948
    .end local v7    # "i":I
    .end local v21    # "dataBitArray":Lcom/facebook/ads/redexgen/X/Hb;
    .end local v22    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/dvb/DvbParser$PageRegion;>;"
    .local v1, "dataBitArray":Lcom/facebook/ads/redexgen/X/Hb;
    .local v6, "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/dvb/DvbParser$PageRegion;>;"
    :cond_e
    return-object v16
.end method

.method public final A0J()V
    .locals 1

    .line 33949
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fk;->A06:Lcom/facebook/ads/redexgen/X/Fj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fj;->A00()V

    .line 33950
    return-void
.end method
