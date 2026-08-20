.class public final Lcom/facebook/ads/redexgen/X/6G;
.super Lcom/facebook/ads/redexgen/X/PR;
.source ""


# instance fields
.field public final A00:Landroid/graphics/Paint;

.field public final A01:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A02:Lcom/facebook/ads/redexgen/X/Ii;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/PO;

.field public final A04:Lcom/facebook/ads/redexgen/X/NY;

.field public final A05:Lcom/facebook/ads/redexgen/X/Mt;

.field public final A06:Lcom/facebook/ads/redexgen/X/Pf;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;ZLcom/facebook/ads/redexgen/X/Ii;)V
    .locals 8
    .param p3    # Lcom/facebook/ads/redexgen/X/Ii;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 15243
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/PR;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 15244
    new-instance v0, Lcom/facebook/ads/redexgen/X/6V;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6V;-><init>(Lcom/facebook/ads/redexgen/X/6G;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6G;->A04:Lcom/facebook/ads/redexgen/X/NY;

    .line 15245
    new-instance v0, Lcom/facebook/ads/redexgen/X/6U;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6U;-><init>(Lcom/facebook/ads/redexgen/X/6G;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6G;->A05:Lcom/facebook/ads/redexgen/X/Mt;

    .line 15246
    new-instance v0, Lcom/facebook/ads/redexgen/X/6T;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6T;-><init>(Lcom/facebook/ads/redexgen/X/6G;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6G;->A03:Lcom/facebook/ads/redexgen/X/PO;

    .line 15247
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/6G;->A02:Lcom/facebook/ads/redexgen/X/Ii;

    .line 15248
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6G;->A01:Lcom/facebook/ads/redexgen/X/Xc;

    .line 15249
    new-instance v0, Lcom/facebook/ads/redexgen/X/Pf;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Pf;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6G;->A06:Lcom/facebook/ads/redexgen/X/Pf;

    .line 15250
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6G;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 15251
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    const-wide v6, 0x4037c28f5c28f5c3L    # 23.76

    mul-double/2addr v0, v6

    double-to-int v5, v0

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v3, v0

    mul-double/2addr v3, v6

    double-to-int v0, v3

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 15252
    .local v1, "btnLayout":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xd

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 15253
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6G;->A06:Lcom/facebook/ads/redexgen/X/Pf;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Pf;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15254
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6G;->A06:Lcom/facebook/ads/redexgen/X/Pf;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pf;->setChecked(Z)V

    .line 15255
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6G;->A06:Lcom/facebook/ads/redexgen/X/Pf;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Pf;->setClickable(Z)V

    .line 15256
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6G;->A00:Landroid/graphics/Paint;

    .line 15257
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6G;->A00:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15258
    if-eqz p2, :cond_0

    .line 15259
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6G;->A00:Landroid/graphics/Paint;

    const/high16 v0, -0x67000000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 15260
    :goto_0
    invoke-static {p0, v3}, Lcom/facebook/ads/redexgen/X/LL;->A0M(Landroid/view/View;I)V

    .line 15261
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6G;->A06:Lcom/facebook/ads/redexgen/X/Pf;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/6G;->addView(Landroid/view/View;)V

    .line 15262
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/6G;->setGravity(I)V

    .line 15263
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    const-wide/high16 v5, 0x4052000000000000L    # 72.0

    mul-double/2addr v0, v5

    double-to-int v4, v0

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v0

    mul-double/2addr v2, v5

    double-to-int v1, v2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 15264
    .local v3, "layout":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 15265
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/6G;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15266
    const/16 v0, 0x3ec

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/LL;->A0G(ILandroid/view/View;)V

    .line 15267
    return-void

    .line 15268
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6G;->A00:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 15269
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6G;->A00:Landroid/graphics/Paint;

    const/16 v0, 0xcc

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/6G;)Lcom/facebook/ads/redexgen/X/Xc;
    .locals 0

    .line 15270
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/6G;->A01:Lcom/facebook/ads/redexgen/X/Xc;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/6G;)Lcom/facebook/ads/redexgen/X/Ii;
    .locals 0

    .line 15271
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/6G;->A02:Lcom/facebook/ads/redexgen/X/Ii;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/6G;)Lcom/facebook/ads/redexgen/X/RA;
    .locals 0

    .line 15272
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PR;->getVideoView()Lcom/facebook/ads/redexgen/X/RA;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/6G;)Lcom/facebook/ads/redexgen/X/RA;
    .locals 0

    .line 15273
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PR;->getVideoView()Lcom/facebook/ads/redexgen/X/RA;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/6G;)Lcom/facebook/ads/redexgen/X/RA;
    .locals 0

    .line 15274
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PR;->getVideoView()Lcom/facebook/ads/redexgen/X/RA;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/6G;)Lcom/facebook/ads/redexgen/X/RA;
    .locals 0

    .line 15275
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PR;->getVideoView()Lcom/facebook/ads/redexgen/X/RA;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/6G;)Lcom/facebook/ads/redexgen/X/Pf;
    .locals 0

    .line 15276
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/6G;->A06:Lcom/facebook/ads/redexgen/X/Pf;

    return-object p0
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 15277
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/PR;->A07()V

    .line 15278
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PR;->getVideoView()Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15279
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PR;->getVideoView()Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v0

    .line 15280
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getEventBus()Lcom/facebook/ads/redexgen/X/8U;

    move-result-object v3

    const/4 v0, 0x3

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/8V;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6G;->A04:Lcom/facebook/ads/redexgen/X/NY;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6G;->A05:Lcom/facebook/ads/redexgen/X/Mt;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6G;->A03:Lcom/facebook/ads/redexgen/X/PO;

    aput-object v0, v2, v1

    .line 15281
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/8U;->A03([Lcom/facebook/ads/redexgen/X/8V;)V

    .line 15282
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Pc;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Pc;-><init>(Lcom/facebook/ads/redexgen/X/6G;)V

    .line 15283
    .local v0, "clickListener":Landroid/view/View$OnClickListener;
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/6G;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15284
    return-void
.end method

.method public final A08()V
    .locals 4

    .line 15285
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/6G;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15286
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PR;->getVideoView()Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15287
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PR;->getVideoView()Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v0

    .line 15288
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getEventBus()Lcom/facebook/ads/redexgen/X/8U;

    move-result-object v3

    const/4 v0, 0x3

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/8V;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6G;->A03:Lcom/facebook/ads/redexgen/X/PO;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6G;->A05:Lcom/facebook/ads/redexgen/X/Mt;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6G;->A04:Lcom/facebook/ads/redexgen/X/NY;

    aput-object v0, v2, v1

    .line 15289
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/8U;->A04([Lcom/facebook/ads/redexgen/X/8V;)V

    .line 15290
    :cond_0
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/PR;->A08()V

    .line 15291
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 15292
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6G;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6G;->getPaddingLeft()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6G;->getPaddingRight()I

    move-result v0

    sub-int/2addr v2, v0

    .line 15293
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6G;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6G;->getPaddingTop()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6G;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v1, v0

    .line 15294
    .local v1, "height":I
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 15295
    .local v2, "edgeLength":I
    div-int/lit8 v4, v0, 0x2

    .line 15296
    .local v3, "centerX":I
    div-int/lit8 v1, v0, 0x2

    .line 15297
    .local v4, "centerY":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6G;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, v4

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6G;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v1

    int-to-float v2, v0

    int-to-float v1, v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6G;->A00:Landroid/graphics/Paint;

    .line 15298
    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 15299
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/PR;->onDraw(Landroid/graphics/Canvas;)V

    .line 15300
    return-void
.end method
