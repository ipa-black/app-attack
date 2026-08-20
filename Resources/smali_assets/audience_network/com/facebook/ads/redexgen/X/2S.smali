.class public final Lcom/facebook/ads/redexgen/X/2S;
.super Landroid/graphics/drawable/Drawable;
.source ""


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# static fields
.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:F

.field public A02:Landroid/content/res/ColorStateList;

.field public A03:Landroid/content/res/ColorStateList;

.field public A04:Landroid/graphics/PorterDuff$Mode;

.field public A05:Landroid/graphics/PorterDuffColorFilter;

.field public A06:Z

.field public A07:Z

.field public final A08:Landroid/graphics/Paint;

.field public final A09:Landroid/graphics/Rect;

.field public final A0A:Landroid/graphics/RectF;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 5501
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "T9wgumyFZzBjgPRGtDdJxLvchQp6QtpG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xAIRNqL7iCFb3fPQiKZF3NTrJvk1jHZM"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZgdHDniCqFTu42359joO0C6Ag3Vf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "B7cBDxdThu3WyyPp08FnAoyqG101l2nd"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DdfMTEhfrXSGZiDoy5ozadnlnRXF"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "hm2CCp2b2B9ckvgWvW8I2z4A1orNEdGj"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Fmv"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "My1KyA5OUXEJybi78YH1RSZcU6CRiPjd"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2S;->A0B:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/ColorStateList;F)V
    .locals 2

    .line 5502
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 5503
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A06:Z

    .line 5504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A07:Z

    .line 5505
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A04:Landroid/graphics/PorterDuff$Mode;

    .line 5506
    iput p2, p0, Lcom/facebook/ads/redexgen/X/2S;->A01:F

    .line 5507
    const/4 v1, 0x5

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A08:Landroid/graphics/Paint;

    .line 5508
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2S;->A01(Landroid/content/res/ColorStateList;)V

    .line 5509
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A0A:Landroid/graphics/RectF;

    .line 5510
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A09:Landroid/graphics/Rect;

    .line 5511
    return-void
.end method

.method private A00(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    .line 5512
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 5513
    .end local v0
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 5514
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2S;->getState()[I

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 5515
    .local v0, "color":I
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0
.end method

.method private A01(Landroid/content/res/ColorStateList;)V
    .locals 4

    .line 5516
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2S;->A02:Landroid/content/res/ColorStateList;

    .line 5517
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2S;->A08:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2S;->A02:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2S;->getState()[I

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A02:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 5518
    return-void
.end method

.method private A02(Landroid/graphics/Rect;)V
    .locals 6

    .line 5519
    if-nez p1, :cond_0

    .line 5520
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2S;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 5521
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/2S;->A0A:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5522
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A09:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5523
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A06:Z

    if-eqz v0, :cond_1

    .line 5524
    iget v2, p0, Lcom/facebook/ads/redexgen/X/2S;->A00:F

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2S;->A01:F

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A07:Z

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2U;->A01(FFZ)F

    move-result v5

    .line 5525
    .local v0, "vInset":F
    iget v2, p0, Lcom/facebook/ads/redexgen/X/2S;->A00:F

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2S;->A01:F

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A07:Z

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2U;->A00(FFZ)F

    move-result v0

    .line 5526
    .local v1, "hInset":F
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/2S;->A09:Landroid/graphics/Rect;

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v3, v0

    float-to-double v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    invoke-virtual {v4, v3, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 5527
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2S;->A0A:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A09:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 5528
    .end local v0    # "vInset":F
    .end local v1    # "hInset":F
    :cond_1
    return-void
.end method


# virtual methods
.method public final A03()F
    .locals 1

    .line 5529
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A00:F

    return v0
.end method

.method public final A04()F
    .locals 1

    .line 5530
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A01:F

    return v0
.end method

.method public final A05()Landroid/content/res/ColorStateList;
    .locals 1

    .line 5531
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A02:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final A06(F)V
    .locals 1

    .line 5532
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A01:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 5533
    return-void

    .line 5534
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2S;->A01:F

    .line 5535
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/2S;->A02(Landroid/graphics/Rect;)V

    .line 5536
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2S;->invalidateSelf()V

    .line 5537
    return-void
.end method

.method public final A07(FZZ)V
    .locals 4

    .line 5538
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A00:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/2S;->A06:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/2S;->A0B:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/2S;->A0B:[Ljava/lang/String;

    const-string v1, "53dJ9AIfpWgAiYxHMCG9HZc2BFq1OE7v"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "L0WiXVvsNCgFHVaJqnPv6kv4Mg7dMukq"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ne v3, p2, :cond_2

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/2S;->A07:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/2S;->A0B:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/2S;->A0B:[Ljava/lang/String;

    const-string v1, "oRFcKwA3BVWliQpK"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ne v3, p3, :cond_2

    .line 5539
    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 5540
    :cond_2
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2S;->A00:F

    .line 5541
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/2S;->A06:Z

    .line 5542
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/2S;->A07:Z

    .line 5543
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/2S;->A02(Landroid/graphics/Rect;)V

    .line 5544
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2S;->invalidateSelf()V

    .line 5545
    return-void
.end method

.method public final A08(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5546
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2S;->A01(Landroid/content/res/ColorStateList;)V

    .line 5547
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2S;->invalidateSelf()V

    .line 5548
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5549
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2S;->A08:Landroid/graphics/Paint;

    .line 5550
    .local v0, "paint":Landroid/graphics/Paint;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A05:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5551
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A05:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 5552
    const/4 v2, 0x1

    .line 5553
    .local v1, "clearColorFilter":Z
    .restart local v1    # "clearColorFilter":Z
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2S;->A0A:Landroid/graphics/RectF;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A01:F

    invoke-virtual {p1, v1, v0, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 5554
    if-eqz v2, :cond_0

    .line 5555
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 5556
    :cond_0
    return-void

    .line 5557
    .end local v1    # "clearColorFilter":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final getOpacity()I
    .locals 1

    .line 5558
    const/4 v0, -0x3

    return v0
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 2

    .line 5559
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2S;->A09:Landroid/graphics/Rect;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A01:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 5560
    return-void
.end method

.method public final isStateful()Z
    .locals 1

    .line 5561
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A03:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A02:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 5562
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 5563
    :goto_0
    return v0

    .line 5564
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 5565
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 5566
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2S;->A02(Landroid/graphics/Rect;)V

    .line 5567
    return-void
.end method

.method public final onStateChange([I)Z
    .locals 4

    .line 5568
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2S;->A02:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {v1, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 5569
    .local v0, "newColor":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A08:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/4 v3, 0x1

    if-eq v1, v0, :cond_1

    const/4 v2, 0x1

    .line 5570
    .local v1, "colorChanged":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 5571
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A08:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5572
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2S;->A03:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A04:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_3

    .line 5573
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/2S;->A00(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A05:Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Lcom/facebook/ads/redexgen/X/2S;->A0B:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    .line 5574
    sget-object v2, Lcom/facebook/ads/redexgen/X/2S;->A0B:[Ljava/lang/String;

    const-string v1, "gw8aJamP4c9IyEoweL2kyhEgHCjeuWPe"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "K8VP8qVoNq2cy5DWSBLK7jrCKGtgCHwn"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    .line 5575
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 5576
    :cond_3
    return v2
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 5577
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A08:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5578
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 5579
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A08:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 5580
    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 5581
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2S;->A03:Landroid/content/res/ColorStateList;

    .line 5582
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2S;->A03:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A04:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/2S;->A00(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A05:Landroid/graphics/PorterDuffColorFilter;

    .line 5583
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2S;->invalidateSelf()V

    .line 5584
    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 5585
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2S;->A04:Landroid/graphics/PorterDuff$Mode;

    .line 5586
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2S;->A03:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A04:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/2S;->A00(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A05:Landroid/graphics/PorterDuffColorFilter;

    .line 5587
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2S;->invalidateSelf()V

    .line 5588
    return-void
.end method
