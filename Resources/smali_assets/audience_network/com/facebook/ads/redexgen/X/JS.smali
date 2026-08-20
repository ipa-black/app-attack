.class public final Lcom/facebook/ads/redexgen/X/JS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ph;


# instance fields
.field public A00:I

.field public A01:Landroid/animation/ValueAnimator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/Pg;

.field public final A03:I

.field public final A04:I

.field public final A05:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;III)V
    .locals 1

    .line 40226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40227
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A05:Lcom/facebook/ads/redexgen/X/Pg;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JS;->A02:Lcom/facebook/ads/redexgen/X/Pg;

    .line 40228
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JS;->A05:Landroid/view/View;

    .line 40229
    iput p2, p0, Lcom/facebook/ads/redexgen/X/JS;->A03:I

    .line 40230
    iput p3, p0, Lcom/facebook/ads/redexgen/X/JS;->A00:I

    .line 40231
    iput p4, p0, Lcom/facebook/ads/redexgen/X/JS;->A04:I

    .line 40232
    return-void
.end method

.method private A00(IILandroid/view/View;)Landroid/animation/ValueAnimator;
    .locals 3

    .line 40233
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v0, 0x0

    aput p1, v1, v0

    const/4 v0, 0x1

    aput p2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 40234
    .local v0, "slideAnimator":Landroid/animation/ValueAnimator;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JS;->A03:I

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 40235
    new-instance v0, Lcom/facebook/ads/redexgen/X/Pk;

    invoke-direct {v0, p0, p3}, Lcom/facebook/ads/redexgen/X/Pk;-><init>(Lcom/facebook/ads/redexgen/X/JS;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 40236
    return-object v2
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/JS;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 40237
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/JS;->A01:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/JS;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 40238
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JS;->A01:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/JS;)Landroid/view/View;
    .locals 0

    .line 40239
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/JS;->A05:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/JS;Lcom/facebook/ads/redexgen/X/Pg;)Lcom/facebook/ads/redexgen/X/Pg;
    .locals 0

    .line 40240
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JS;->A02:Lcom/facebook/ads/redexgen/X/Pg;

    return-object p1
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/JS;Z)V
    .locals 0

    .line 40241
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JS;->A07(Z)V

    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/JS;Z)V
    .locals 0

    .line 40242
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JS;->A08(Z)V

    return-void
.end method

.method private A07(Z)V
    .locals 3

    .line 40243
    if-eqz p1, :cond_0

    .line 40244
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A06:Lcom/facebook/ads/redexgen/X/Pg;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JS;->A02:Lcom/facebook/ads/redexgen/X/Pg;

    .line 40245
    iget v2, p0, Lcom/facebook/ads/redexgen/X/JS;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/JS;->A04:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JS;->A05:Landroid/view/View;

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JS;->A00(IILandroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JS;->A01:Landroid/animation/ValueAnimator;

    .line 40246
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JS;->A01:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Pj;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Pj;-><init>(Lcom/facebook/ads/redexgen/X/JS;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 40247
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JS;->A01:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 40248
    .end local v0
    :goto_0
    return-void

    .line 40249
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JS;->A05:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 40250
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JS;->A04:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40251
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JS;->A05:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40252
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JS;->A05:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0H(Landroid/view/View;)V

    .line 40253
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A05:Lcom/facebook/ads/redexgen/X/Pg;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JS;->A02:Lcom/facebook/ads/redexgen/X/Pg;

    goto :goto_0
.end method

.method private A08(Z)V
    .locals 3

    .line 40254
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JS;->A05:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0L(Landroid/view/View;)V

    .line 40255
    if-eqz p1, :cond_0

    .line 40256
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A04:Lcom/facebook/ads/redexgen/X/Pg;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JS;->A02:Lcom/facebook/ads/redexgen/X/Pg;

    .line 40257
    iget v2, p0, Lcom/facebook/ads/redexgen/X/JS;->A04:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/JS;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JS;->A05:Landroid/view/View;

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JS;->A00(IILandroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JS;->A01:Landroid/animation/ValueAnimator;

    .line 40258
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JS;->A01:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Pi;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Pi;-><init>(Lcom/facebook/ads/redexgen/X/JS;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 40259
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JS;->A01:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 40260
    .end local v0
    :goto_0
    return-void

    .line 40261
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JS;->A05:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 40262
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JS;->A00:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40263
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JS;->A05:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40264
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A03:Lcom/facebook/ads/redexgen/X/Pg;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JS;->A02:Lcom/facebook/ads/redexgen/X/Pg;

    goto :goto_0
.end method


# virtual methods
.method public final A3N(ZZ)V
    .locals 0

    .line 40265
    if-eqz p2, :cond_0

    .line 40266
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JS;->A07(Z)V

    .line 40267
    :goto_0
    return-void

    .line 40268
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JS;->A08(Z)V

    goto :goto_0
.end method

.method public final A7j()Lcom/facebook/ads/redexgen/X/Pg;
    .locals 1

    .line 40269
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JS;->A02:Lcom/facebook/ads/redexgen/X/Pg;

    return-object v0
.end method

.method public final cancel()V
    .locals 1

    .line 40270
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JS;->A01:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 40271
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 40272
    :cond_0
    return-void
.end method
