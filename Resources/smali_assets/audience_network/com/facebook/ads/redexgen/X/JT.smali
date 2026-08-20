.class public final Lcom/facebook/ads/redexgen/X/JT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ph;


# instance fields
.field public A00:Landroid/graphics/drawable/TransitionDrawable;

.field public A01:Landroid/graphics/drawable/TransitionDrawable;

.field public A02:Lcom/facebook/ads/redexgen/X/Pg;

.field public final A03:I

.field public final A04:Landroid/graphics/drawable/Drawable;

.field public final A05:Landroid/graphics/drawable/Drawable;

.field public final A06:Landroid/os/Handler;

.field public final A07:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 40273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40274
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A06:Landroid/os/Handler;

    .line 40275
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A05:Lcom/facebook/ads/redexgen/X/Pg;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A02:Lcom/facebook/ads/redexgen/X/Pg;

    .line 40276
    iput p2, p0, Lcom/facebook/ads/redexgen/X/JT;->A03:I

    .line 40277
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JT;->A07:Landroid/view/View;

    .line 40278
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/JT;->A05:Landroid/graphics/drawable/Drawable;

    .line 40279
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/JT;->A04:Landroid/graphics/drawable/Drawable;

    .line 40280
    const/4 v4, 0x2

    new-array v1, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object p3, v1, v3

    const/4 v2, 0x1

    aput-object p4, v1, v2

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A01:Landroid/graphics/drawable/TransitionDrawable;

    .line 40281
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A01:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 40282
    new-array v1, v4, [Landroid/graphics/drawable/Drawable;

    aput-object p4, v1, v3

    aput-object p3, v1, v2

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A00:Landroid/graphics/drawable/TransitionDrawable;

    .line 40283
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A00:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 40284
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JT;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A01:Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 40285
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/JT;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 40286
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/JT;->A04:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/JT;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 40287
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/JT;->A05:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/JT;)Landroid/view/View;
    .locals 0

    .line 40288
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/JT;->A07:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/Pg;)Lcom/facebook/ads/redexgen/X/Pg;
    .locals 0

    .line 40289
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JT;->A02:Lcom/facebook/ads/redexgen/X/Pg;

    return-object p1
.end method

.method private A04(Z)V
    .locals 4

    .line 40290
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JT;->A06:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 40291
    if-eqz p1, :cond_0

    .line 40292
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A06:Lcom/facebook/ads/redexgen/X/Pg;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A02:Lcom/facebook/ads/redexgen/X/Pg;

    .line 40293
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JT;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A00:Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 40294
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JT;->A00:Landroid/graphics/drawable/TransitionDrawable;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A03:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 40295
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/JT;->A06:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/JU;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/JU;-><init>(Lcom/facebook/ads/redexgen/X/JT;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A03:I

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40296
    :goto_0
    return-void

    .line 40297
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JT;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A05:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 40298
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A05:Lcom/facebook/ads/redexgen/X/Pg;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A02:Lcom/facebook/ads/redexgen/X/Pg;

    goto :goto_0
.end method

.method private A05(Z)V
    .locals 4

    .line 40299
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JT;->A06:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 40300
    if-eqz p1, :cond_0

    .line 40301
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A04:Lcom/facebook/ads/redexgen/X/Pg;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A02:Lcom/facebook/ads/redexgen/X/Pg;

    .line 40302
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JT;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A01:Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 40303
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JT;->A01:Landroid/graphics/drawable/TransitionDrawable;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A03:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 40304
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/JT;->A06:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/JV;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/JV;-><init>(Lcom/facebook/ads/redexgen/X/JT;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A03:I

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40305
    :goto_0
    return-void

    .line 40306
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JT;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A04:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 40307
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A03:Lcom/facebook/ads/redexgen/X/Pg;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A02:Lcom/facebook/ads/redexgen/X/Pg;

    goto :goto_0
.end method


# virtual methods
.method public final A3N(ZZ)V
    .locals 0

    .line 40308
    if-eqz p2, :cond_0

    .line 40309
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JT;->A04(Z)V

    .line 40310
    :goto_0
    return-void

    .line 40311
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JT;->A05(Z)V

    goto :goto_0
.end method

.method public final A7j()Lcom/facebook/ads/redexgen/X/Pg;
    .locals 1

    .line 40312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A02:Lcom/facebook/ads/redexgen/X/Pg;

    return-object v0
.end method

.method public final cancel()V
    .locals 2

    .line 40313
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JT;->A06:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 40314
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A01:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 40315
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A00:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 40316
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JT;->A02:Lcom/facebook/ads/redexgen/X/Pg;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A04:Lcom/facebook/ads/redexgen/X/Pg;

    if-ne v1, v0, :cond_0

    .line 40317
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A05:Lcom/facebook/ads/redexgen/X/Pg;

    .line 40318
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A02:Lcom/facebook/ads/redexgen/X/Pg;

    .line 40319
    return-void

    .line 40320
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A03:Lcom/facebook/ads/redexgen/X/Pg;

    goto :goto_0
.end method
