.class public Lcom/facebook/ads/redexgen/X/2P;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field public static A07:[Ljava/lang/String;

.field public static final A08:F

.field public static final A09:I

.field public static final A0A:Lcom/facebook/ads/redexgen/X/2R;

.field public static final A0B:[I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Z

.field public A03:Z

.field public final A04:Landroid/graphics/Rect;

.field public final A05:Landroid/graphics/Rect;

.field public final A06:Lcom/facebook/ads/redexgen/X/2Q;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 5407
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jVZ1Tu881vaZhMQc7G1YnAdrBZwLOzLZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "MIZgMzLB91QWfj9gVmnmcTG9oR84Ntwz"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DCbfL76gOTURmFCUeHCsoybhclYkmTay"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "EMPd0g2FUYEiLKskd4o9XcZgPaWME7KU"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "G2pxhAodnNK6EDlWmu9QTAPYKMlMfLOc"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "qEeDuFDfyNwl7ByTckOuFZ9zHyfaVY7D"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "VB67ht075LyAy5nhvmM9NplNYlVRYF1n"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "i4ARItf07QURagRfhioscqF5iwXVDFyZ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2P;->A07:[Ljava/lang/String;

    const/4 v0, 0x1

    new-array v2, v0, [I

    const/4 v1, 0x0

    const v0, 0x1010031

    aput v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2P;->A0B:[I

    .line 5408
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/facebook/ads/redexgen/X/2P;->A08:F

    .line 5409
    sget v1, Lcom/facebook/ads/redexgen/X/2P;->A08:F

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/2P;->A09:I

    .line 5410
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    .line 5411
    new-instance v0, Lcom/facebook/ads/redexgen/X/Z1;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Z1;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/2P;->A0A:Lcom/facebook/ads/redexgen/X/2R;

    .line 5412
    :goto_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/2P;->A0A:Lcom/facebook/ads/redexgen/X/2R;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/2R;->A8Y()V

    .line 5413
    return-void

    .line 5414
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt v1, v0, :cond_1

    .line 5415
    new-instance v0, Lcom/facebook/ads/redexgen/X/EJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/EJ;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/2P;->A0A:Lcom/facebook/ads/redexgen/X/2R;

    goto :goto_0

    .line 5416
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yz;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Yz;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/2P;->A0A:Lcom/facebook/ads/redexgen/X/2R;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5417
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/2P;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5418
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5419
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/2P;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5420
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5421
    move-object v1, p0

    move-object v4, p1

    invoke-direct {p0, v4, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5422
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/2P;->A04:Landroid/graphics/Rect;

    .line 5423
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/2P;->A05:Landroid/graphics/Rect;

    .line 5424
    new-instance v0, Lcom/facebook/ads/redexgen/X/Z3;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Z3;-><init>(Lcom/facebook/ads/redexgen/X/2P;)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/2P;->A06:Lcom/facebook/ads/redexgen/X/2Q;

    .line 5425
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2P;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v0, Lcom/facebook/ads/redexgen/X/2P;->A0B:[I

    invoke-virtual {v2, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5426
    .local v1, "aa":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 5427
    .local v3, "themeColorBackground":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5428
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 5429
    .local v4, "hsv":[F
    invoke-static {v2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 5430
    const v0, -0x50506

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 5431
    .local v5, "backgroundColor":Landroid/content/res/ColorStateList;
    const/high16 v6, 0x41200000    # 10.0f

    .line 5432
    .local p4, "radius":F
    const/high16 v7, 0x41200000    # 10.0f

    .line 5433
    .local p5, "elevation":F
    const/high16 v8, 0x42480000    # 50.0f

    .line 5434
    .local v6, "maxElevation":F
    iput-boolean v3, v1, Lcom/facebook/ads/redexgen/X/2P;->A02:Z

    .line 5435
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/2P;->A03:Z

    .line 5436
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/2P;->A04:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5437
    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5438
    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5439
    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 5440
    cmpl-float v0, v7, v8

    if-lez v0, :cond_0

    .line 5441
    move v8, v7

    .line 5442
    .end local v6    # "maxElevation":F
    .local p6, "maxElevation":F
    :cond_0
    iput v3, v1, Lcom/facebook/ads/redexgen/X/2P;->A01:I

    .line 5443
    iput v3, v1, Lcom/facebook/ads/redexgen/X/2P;->A00:I

    .line 5444
    sget-object v2, Lcom/facebook/ads/redexgen/X/2P;->A0A:Lcom/facebook/ads/redexgen/X/2R;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/2P;->A06:Lcom/facebook/ads/redexgen/X/2Q;

    invoke-interface/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/2R;->A8Z(Lcom/facebook/ads/redexgen/X/2Q;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V

    .line 5445
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/2P;I)V
    .locals 0

    .line 5446
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/2P;I)V
    .locals 0

    .line 5447
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    return-void
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/2P;IIII)V
    .locals 0

    .line 5448
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 5449
    sget-object v1, Lcom/facebook/ads/redexgen/X/2P;->A0A:Lcom/facebook/ads/redexgen/X/2R;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2P;->A06:Lcom/facebook/ads/redexgen/X/2Q;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/2R;->A5p(Lcom/facebook/ads/redexgen/X/2Q;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getCardElevation()F
    .locals 2

    .line 5450
    sget-object v1, Lcom/facebook/ads/redexgen/X/2P;->A0A:Lcom/facebook/ads/redexgen/X/2R;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2P;->A06:Lcom/facebook/ads/redexgen/X/2Q;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/2R;->A6a(Lcom/facebook/ads/redexgen/X/2Q;)F

    move-result v0

    return v0
.end method

.method public getContentPaddingBottom()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 5451
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2P;->A04:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 5452
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2P;->A04:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 5453
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2P;->A04:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 5454
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2P;->A04:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getMaxCardElevation()F
    .locals 2

    .line 5455
    sget-object v1, Lcom/facebook/ads/redexgen/X/2P;->A0A:Lcom/facebook/ads/redexgen/X/2R;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2P;->A06:Lcom/facebook/ads/redexgen/X/2Q;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/2R;->A73(Lcom/facebook/ads/redexgen/X/2Q;)F

    move-result v0

    return v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    .line 5456
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2P;->A03:Z

    return v0
.end method

.method public getRadius()F
    .locals 2

    .line 5457
    sget-object v1, Lcom/facebook/ads/redexgen/X/2P;->A0A:Lcom/facebook/ads/redexgen/X/2R;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2P;->A06:Lcom/facebook/ads/redexgen/X/2Q;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/2R;->A7T(Lcom/facebook/ads/redexgen/X/2Q;)F

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    .line 5458
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2P;->A02:Z

    return v0
.end method

.method public final onMeasure(II)V
    .locals 7

    .line 5459
    sget-object v0, Lcom/facebook/ads/redexgen/X/2P;->A0A:Lcom/facebook/ads/redexgen/X/2R;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Z1;

    if-nez v0, :cond_2

    .line 5460
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 5461
    .local v0, "widthMode":I
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_1

    if-eq v4, v6, :cond_1

    .line 5462
    .end local v3
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 5463
    .local v3, "heightMode":I
    if-eq v4, v5, :cond_0

    if-eq v4, v6, :cond_0

    .line 5464
    .end local v1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 5465
    .end local v0    # "widthMode":I
    .end local v3    # "heightMode":I
    :goto_2
    return-void

    .line 5466
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/2P;->A0A:Lcom/facebook/ads/redexgen/X/2R;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2P;->A06:Lcom/facebook/ads/redexgen/X/2Q;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/2R;->A78(Lcom/facebook/ads/redexgen/X/2Q;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 5467
    .local v1, "minHeight":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 5468
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 5469
    goto :goto_1

    .line 5470
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/2P;->A0A:Lcom/facebook/ads/redexgen/X/2R;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2P;->A06:Lcom/facebook/ads/redexgen/X/2Q;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/2R;->A79(Lcom/facebook/ads/redexgen/X/2Q;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 5471
    .local v3, "minWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 5472
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 5473
    goto :goto_0

    .line 5474
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_2
.end method

.method public setCardBackgroundColor(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 5475
    sget-object v2, Lcom/facebook/ads/redexgen/X/2P;->A0A:Lcom/facebook/ads/redexgen/X/2R;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2P;->A06:Lcom/facebook/ads/redexgen/X/2Q;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2R;->AEp(Lcom/facebook/ads/redexgen/X/2Q;Landroid/content/res/ColorStateList;)V

    .line 5476
    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5477
    sget-object v1, Lcom/facebook/ads/redexgen/X/2P;->A0A:Lcom/facebook/ads/redexgen/X/2R;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2P;->A06:Lcom/facebook/ads/redexgen/X/2Q;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/2R;->AEp(Lcom/facebook/ads/redexgen/X/2Q;Landroid/content/res/ColorStateList;)V

    .line 5478
    return-void
.end method

.method public setCardElevation(F)V
    .locals 2

    .line 5479
    sget-object v1, Lcom/facebook/ads/redexgen/X/2P;->A0A:Lcom/facebook/ads/redexgen/X/2R;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2P;->A06:Lcom/facebook/ads/redexgen/X/2Q;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/2R;->AEu(Lcom/facebook/ads/redexgen/X/2Q;F)V

    .line 5480
    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 2

    .line 5481
    sget-object v1, Lcom/facebook/ads/redexgen/X/2P;->A0A:Lcom/facebook/ads/redexgen/X/2R;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2P;->A06:Lcom/facebook/ads/redexgen/X/2Q;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/2R;->AF0(Lcom/facebook/ads/redexgen/X/2Q;F)V

    .line 5482
    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0

    .line 5483
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2P;->A00:I

    .line 5484
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 5485
    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0

    .line 5486
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2P;->A01:I

    .line 5487
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 5488
    return-void
.end method

.method public final setPadding(IIII)V
    .locals 0

    .line 5489
    return-void
.end method

.method public final setPaddingRelative(IIII)V
    .locals 0

    .line 5490
    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 3

    .line 5491
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2P;->A03:Z

    if-eq p1, v0, :cond_0

    .line 5492
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/2P;->A03:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/2P;->A07:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 5493
    sget-object v2, Lcom/facebook/ads/redexgen/X/2P;->A07:[Ljava/lang/String;

    const-string v1, "AF11DlndTIGSrqZz8tUh3XTR3YFTmMvs"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "M7b5sm4OMM6QoyOKa0AwC0c4wRmpSBfx"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/2P;->A0A:Lcom/facebook/ads/redexgen/X/2R;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2P;->A06:Lcom/facebook/ads/redexgen/X/2Q;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/2R;->ACA(Lcom/facebook/ads/redexgen/X/2Q;)V

    .line 5494
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public setRadius(F)V
    .locals 2

    .line 5495
    sget-object v1, Lcom/facebook/ads/redexgen/X/2P;->A0A:Lcom/facebook/ads/redexgen/X/2R;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2P;->A06:Lcom/facebook/ads/redexgen/X/2Q;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/2R;->AF6(Lcom/facebook/ads/redexgen/X/2Q;F)V

    .line 5496
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 2

    .line 5497
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2P;->A02:Z

    if-eq v0, p1, :cond_0

    .line 5498
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/2P;->A02:Z

    .line 5499
    sget-object v1, Lcom/facebook/ads/redexgen/X/2P;->A0A:Lcom/facebook/ads/redexgen/X/2R;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2P;->A06:Lcom/facebook/ads/redexgen/X/2Q;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/2R;->AAX(Lcom/facebook/ads/redexgen/X/2Q;)V

    .line 5500
    :cond_0
    return-void
.end method
