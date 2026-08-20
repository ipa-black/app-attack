.class public final Lcom/facebook/ads/redexgen/X/87;
.super Lcom/facebook/ads/redexgen/X/Ru;
.source ""


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Ni;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Landroid/widget/ImageView;

.field public final A02:Lcom/facebook/ads/redexgen/X/5D;

.field public final A03:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A04:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A05:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/MC;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Zs;Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/Lj;)V
    .locals 3

    .line 18363
    invoke-direct/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/Ru;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/MC;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Zs;Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/Lj;)V

    .line 18364
    new-instance v0, Lcom/facebook/ads/redexgen/X/Rp;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Rp;-><init>(Lcom/facebook/ads/redexgen/X/87;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/87;->A02:Lcom/facebook/ads/redexgen/X/5D;

    .line 18365
    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/87;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18366
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/87;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18367
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/87;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18368
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/87;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/87;->A01:Landroid/widget/ImageView;

    .line 18369
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/87;->A01:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 18370
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/87;->A01:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 18371
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/87;->A01:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Sf;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Xc;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    .line 18372
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1F;->A00()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    .line 18373
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1F;->A01()I

    move-result v0

    .line 18374
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A05(II)Lcom/facebook/ads/redexgen/X/Sf;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ro;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ro;-><init>(Lcom/facebook/ads/redexgen/X/87;)V

    .line 18375
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A06(Lcom/facebook/ads/redexgen/X/N9;)Lcom/facebook/ads/redexgen/X/Sf;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    .line 18376
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1F;->A07()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A07(Ljava/lang/String;)V

    .line 18377
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/87;)I
    .locals 0

    .line 18378
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/87;->getCloseButtonStyle()I

    move-result p0

    return p0
.end method

.method private A01(I)Lcom/facebook/ads/redexgen/X/Ni;
    .locals 9

    .line 18379
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/87;->A01:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18380
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/87;->A01:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 18381
    :cond_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/Nl;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ru;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ru;->A04:Lcom/facebook/ads/redexgen/X/Ia;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ru;->A08:Lcom/facebook/ads/redexgen/X/Lj;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Ru;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/87;->A01:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Ru;->A0A:Lcom/facebook/ads/redexgen/X/QA;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Ru;->A06:Lcom/facebook/ads/redexgen/X/LD;

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/Nl;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/Zs;Landroid/view/View;Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/LD;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A07:Lcom/facebook/ads/redexgen/X/Li;

    .line 18382
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Li;->getToolbarHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nl;->A0E(I)Lcom/facebook/ads/redexgen/X/Nl;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A07:Lcom/facebook/ads/redexgen/X/Li;

    .line 18383
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nl;->A0H(Lcom/facebook/ads/redexgen/X/Li;)Lcom/facebook/ads/redexgen/X/Nl;

    move-result-object v0

    .line 18384
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Nl;->A0D(I)Lcom/facebook/ads/redexgen/X/Nl;

    move-result-object v0

    .line 18385
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nl;->A0J()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v2

    .line 18386
    .local v0, "params":Lcom/facebook/ads/redexgen/X/Nm;
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nj;->A00(Lcom/facebook/ads/redexgen/X/Nm;Landroid/os/Bundle;Z)Lcom/facebook/ads/redexgen/X/Ni;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/87;)Lcom/facebook/ads/redexgen/X/Ni;
    .locals 0

    .line 18387
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/87;->A00:Lcom/facebook/ads/redexgen/X/Ni;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/87;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 18388
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/87;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/87;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 18389
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/87;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private A05()V
    .locals 1

    .line 18390
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/87;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/87;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18391
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ru;->A0P()V

    .line 18392
    :cond_0
    return-void
.end method

.method private A06(I)V
    .locals 5

    .line 18393
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/87;->A00:Lcom/facebook/ads/redexgen/X/Ni;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 18394
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/87;->A01(I)Lcom/facebook/ads/redexgen/X/Ni;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/87;->A00:Lcom/facebook/ads/redexgen/X/Ni;

    .line 18395
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/87;->A00:Lcom/facebook/ads/redexgen/X/Ni;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ni;->getColors()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v4

    .line 18396
    .local v0, "colors":Lcom/facebook/ads/redexgen/X/1L;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/87;->A00:Lcom/facebook/ads/redexgen/X/Ni;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 18397
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ni;->A0d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/87;->A00:Lcom/facebook/ads/redexgen/X/Ni;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/SR;

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 18398
    .local v1, "fullScreenColors":Z
    :goto_0
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/1L;->A07(Z)I

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0M(Landroid/view/View;I)V

    .line 18399
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ru;->A07:Lcom/facebook/ads/redexgen/X/Li;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/87;->A00:Lcom/facebook/ads/redexgen/X/Ni;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ni;->A0d()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Li;->setFullscreen(Z)V

    .line 18400
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ru;->A07:Lcom/facebook/ads/redexgen/X/Li;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sa;->A08(Lcom/facebook/ads/redexgen/X/Zs;)Z

    move-result v0

    invoke-virtual {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/Li;->A04(Lcom/facebook/ads/redexgen/X/1L;Z)V

    .line 18401
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/87;->A00:Lcom/facebook/ads/redexgen/X/Ni;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ru;->A0D:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/87;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 18402
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/87;->A00:Lcom/facebook/ads/redexgen/X/Ni;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ni;->A0d()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/Ru;->setUpFullscreenMode(Z)V

    .line 18403
    return-void

    .line 18404
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 18405
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/87;)V
    .locals 0

    .line 18406
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/87;->A05()V

    return-void
.end method

.method private getCloseButtonStyle()I
    .locals 1

    .line 18429
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/87;->A00:Lcom/facebook/ads/redexgen/X/Ni;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ni;->getCloseButtonStyle()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0Q()V
    .locals 3

    .line 18407
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/87;->A00:Lcom/facebook/ads/redexgen/X/Ni;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0L(Landroid/view/View;)V

    .line 18408
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A07:Lcom/facebook/ads/redexgen/X/Li;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0L(Landroid/view/View;)V

    .line 18409
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/87;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 18410
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/87;->A05()V

    .line 18411
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1F;->A03()I

    move-result v1

    .line 18412
    .local v0, "unskippableSeconds":I
    if-lez v1, :cond_1

    .line 18413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/87;->A00:Lcom/facebook/ads/redexgen/X/Ni;

    if-eqz v0, :cond_0

    .line 18414
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ni;->A0b()V

    .line 18415
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Rn;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Rn;-><init>(Lcom/facebook/ads/redexgen/X/87;)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ru;->A0R(ILcom/facebook/ads/redexgen/X/K1;)V

    .line 18416
    :goto_0
    return-void

    .line 18417
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/87;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 18418
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ru;->A07:Lcom/facebook/ads/redexgen/X/Li;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/87;->getCloseButtonStyle()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Li;->setToolbarActionMode(I)V

    goto :goto_0
.end method

.method public final A0S(Lcom/facebook/ads/redexgen/X/5F;)V
    .locals 4

    .line 18419
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/87;->A02:Lcom/facebook/ads/redexgen/X/5D;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/5F;->A0K(Lcom/facebook/ads/redexgen/X/5D;)V

    .line 18420
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5F;->A0H()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 18421
    .local v0, "orientation":I
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/87;->A06(I)V

    .line 18422
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ru;->A07:Lcom/facebook/ads/redexgen/X/Li;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A07:Lcom/facebook/ads/redexgen/X/Li;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Li;->getToolbarHeight()I

    move-result v2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/87;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18423
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/87;->A00:Lcom/facebook/ads/redexgen/X/Ni;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0H(Landroid/view/View;)V

    .line 18424
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A07:Lcom/facebook/ads/redexgen/X/Li;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0H(Landroid/view/View;)V

    .line 18425
    return-void
.end method

.method public final A0T()Z
    .locals 2

    .line 18426
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/87;->A00:Lcom/facebook/ads/redexgen/X/Ni;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ni;->A0e(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final ABw(Z)V
    .locals 0

    .line 18427
    return-void
.end method

.method public final ACM(Z)V
    .locals 0

    .line 18428
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 18430
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Ru;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 18431
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0N()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18432
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/87;->A06(I)V

    .line 18433
    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 18434
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A1Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18435
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A0A()Lcom/facebook/ads/redexgen/X/Im;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/87;->A01:Landroid/widget/ImageView;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Im;->AFe(Landroid/view/View;)V

    .line 18436
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/87;->A00:Lcom/facebook/ads/redexgen/X/Ni;

    if-eqz v0, :cond_1

    .line 18437
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ni;->A0X()V

    .line 18438
    :cond_1
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Ru;->onDestroy()V

    .line 18439
    return-void
.end method
