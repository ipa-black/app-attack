.class public abstract Lcom/facebook/ads/redexgen/X/Ru;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Lk;


# static fields
.field public static final A0D:Landroid/widget/RelativeLayout$LayoutParams;


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/redexgen/X/Zs;

.field public final A02:Lcom/facebook/ads/redexgen/X/6M;

.field public final A03:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A04:Lcom/facebook/ads/redexgen/X/Ia;

.field public final A05:Lcom/facebook/ads/redexgen/X/Ii;

.field public final A06:Lcom/facebook/ads/redexgen/X/LD;

.field public final A07:Lcom/facebook/ads/redexgen/X/Li;

.field public final A08:Lcom/facebook/ads/redexgen/X/Lj;

.field public final A09:Lcom/facebook/ads/redexgen/X/MC;

.field public final A0A:Lcom/facebook/ads/redexgen/X/QA;

.field public final A0B:Lcom/facebook/ads/redexgen/X/L8;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Q9;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 51464
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ru;->A0D:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/MC;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Zs;Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/Lj;)V
    .locals 4

    .line 51465
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51466
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ry;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ry;-><init>(Lcom/facebook/ads/redexgen/X/Ru;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    .line 51467
    new-instance v0, Lcom/facebook/ads/redexgen/X/LD;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/LD;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A06:Lcom/facebook/ads/redexgen/X/LD;

    .line 51468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A00:Z

    .line 51469
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ru;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    .line 51470
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ru;->A09:Lcom/facebook/ads/redexgen/X/MC;

    .line 51471
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Ru;->A04:Lcom/facebook/ads/redexgen/X/Ia;

    .line 51472
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Ru;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    .line 51473
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Ru;->A02:Lcom/facebook/ads/redexgen/X/6M;

    .line 51474
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Ru;->A08:Lcom/facebook/ads/redexgen/X/Lj;

    .line 51475
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    .line 51476
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ru;->A04:Lcom/facebook/ads/redexgen/X/Ia;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ii;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ii;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ia;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A05:Lcom/facebook/ads/redexgen/X/Ii;

    .line 51477
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ru;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/QA;

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/QA;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A0A:Lcom/facebook/ads/redexgen/X/QA;

    .line 51478
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ru;->A0A:Lcom/facebook/ads/redexgen/X/QA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    .line 51479
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0A()I

    move-result v0

    .line 51480
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QA;->A0W(I)V

    .line 51481
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ru;->A0A:Lcom/facebook/ads/redexgen/X/QA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0B()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QA;->A0X(I)V

    .line 51482
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ru;->A0N()Lcom/facebook/ads/redexgen/X/Li;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A07:Lcom/facebook/ads/redexgen/X/Li;

    .line 51483
    new-instance v0, Lcom/facebook/ads/redexgen/X/L8;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/L8;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A0B:Lcom/facebook/ads/redexgen/X/L8;

    .line 51484
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ru;->A0B:Lcom/facebook/ads/redexgen/X/L8;

    sget-object v0, Lcom/facebook/ads/redexgen/X/L7;->A03:Lcom/facebook/ads/redexgen/X/L7;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A05(Lcom/facebook/ads/redexgen/X/L7;)V

    .line 51485
    return-void
.end method

.method private A0N()Lcom/facebook/ads/redexgen/X/Li;
    .locals 10

    .line 51486
    new-instance v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Ru;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Ru;->A08:Lcom/facebook/ads/redexgen/X/Lj;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Ru;->A05:Lcom/facebook/ads/redexgen/X/Ii;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    .line 51487
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0b()I

    move-result v9

    const/4 v8, 0x1

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/Ii;II)V

    .line 51488
    .local v0, "toolbar":Lcom/facebook/ads/redexgen/X/Li;
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setFullscreen(Z)V

    .line 51489
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1F;->A03()I

    move-result v3

    .line 51490
    .local v1, "unskippableSeconds":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    .line 51491
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0k()Lcom/facebook/ads/redexgen/X/1V;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    .line 51492
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    .line 51493
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0l()Lcom/facebook/ads/redexgen/X/1b;

    move-result-object v0

    .line 51494
    invoke-virtual {v4, v2, v1, v3, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setPageDetails(Lcom/facebook/ads/redexgen/X/1V;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/1b;)V

    .line 51495
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    .line 51496
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0g()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A01()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    .line 51497
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sa;->A08(Lcom/facebook/ads/redexgen/X/Zs;)Z

    move-result v0

    .line 51498
    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A04(Lcom/facebook/ads/redexgen/X/1L;Z)V

    .line 51499
    if-gez v3, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0M()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51500
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setToolbarActionMode(I)V

    .line 51501
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Rv;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Rv;-><init>(Lcom/facebook/ads/redexgen/X/Ru;)V

    invoke-virtual {v4, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setToolbarListener(Lcom/facebook/ads/redexgen/X/Lh;)V

    .line 51502
    return-object v4
.end method

.method private A0O()V
    .locals 4

    .line 51503
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0P()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51504
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ru;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    .line 51505
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0E()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    .line 51506
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0k()Lcom/facebook/ads/redexgen/X/1V;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Oc;

    invoke-direct {v1, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Oc;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/1J;Lcom/facebook/ads/redexgen/X/1V;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    .line 51507
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0g()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A01()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oc;->A08(Lcom/facebook/ads/redexgen/X/1L;)Lcom/facebook/ads/redexgen/X/Oc;

    move-result-object v0

    .line 51508
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oc;->A0B()Lcom/facebook/ads/redexgen/X/Oe;

    move-result-object v2

    .line 51509
    .local v0, "introView":Lcom/facebook/ads/redexgen/X/Oe;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ru;->A05:Lcom/facebook/ads/redexgen/X/Ii;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ih;->A0U:Lcom/facebook/ads/redexgen/X/Ih;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ik;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Ii;Lcom/facebook/ads/redexgen/X/Ih;)V

    .line 51510
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ru;->A0D:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/Ru;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51511
    new-instance v0, Lcom/facebook/ads/redexgen/X/Rw;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Rw;-><init>(Lcom/facebook/ads/redexgen/X/Ru;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Oe;->A04(Lcom/facebook/ads/redexgen/X/Od;)V

    .line 51512
    .end local v0    # "introView":Lcom/facebook/ads/redexgen/X/Oe;
    :goto_0
    return-void

    .line 51513
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ru;->A0Q()V

    goto :goto_0
.end method


# virtual methods
.method public final A0P()V
    .locals 1

    .line 51514
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A00:Z

    if-nez v0, :cond_0

    .line 51515
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A0A:Lcom/facebook/ads/redexgen/X/QA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QA;->A0U()V

    .line 51516
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A00:Z

    .line 51517
    :cond_0
    return-void
.end method

.method public abstract A0Q()V
.end method

.method public final A0R(ILcom/facebook/ads/redexgen/X/K1;)V
    .locals 2

    .line 51518
    new-instance v1, Lcom/facebook/ads/redexgen/X/Rx;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Rx;-><init>(Lcom/facebook/ads/redexgen/X/Ru;ILcom/facebook/ads/redexgen/X/K1;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ke;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Ke;-><init>(ILcom/facebook/ads/redexgen/X/Kd;)V

    .line 51519
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ke;->A08()Z

    .line 51520
    return-void
.end method

.method public abstract A0S(Lcom/facebook/ads/redexgen/X/5F;)V
.end method

.method public abstract A0T()Z
.end method

.method public final A92(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/5F;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 51521
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ru;->A08:Lcom/facebook/ads/redexgen/X/Lj;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ru;->A0D:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A3J(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 51522
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/Ru;->A0S(Lcom/facebook/ads/redexgen/X/5F;)V

    .line 51523
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ru;->A0O()V

    .line 51524
    return-void
.end method

.method public final AEZ(Landroid/os/Bundle;)V
    .locals 0

    .line 51525
    return-void
.end method

.method public getCurrentClientToken()Ljava/lang/String;
    .locals 1

    .line 51526
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 51527
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 51528
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 51529
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 51530
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A0B:Lcom/facebook/ads/redexgen/X/L8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L8;->A03()V

    .line 51531
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51532
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ru;->A04:Lcom/facebook/ads/redexgen/X/Ia;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    .line 51533
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/NA;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/NA;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A0A:Lcom/facebook/ads/redexgen/X/QA;

    .line 51534
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->A03(Lcom/facebook/ads/redexgen/X/QA;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A06:Lcom/facebook/ads/redexgen/X/LD;

    .line 51535
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->A02(Lcom/facebook/ads/redexgen/X/LD;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v0

    .line 51536
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NA;->A05()Ljava/util/Map;

    move-result-object v0

    .line 51537
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Ia;->A99(Ljava/lang/String;Ljava/util/Map;)V

    .line 51538
    :cond_0
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 51539
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ru;->A06:Lcom/facebook/ads/redexgen/X/LD;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v1, v0, p1, p0, p0}, Lcom/facebook/ads/redexgen/X/LD;->A06(Lcom/facebook/ads/redexgen/X/Xc;Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 51540
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/Lj;)V
    .locals 0

    .line 51541
    return-void
.end method

.method public setUpFullscreenMode(Z)V
    .locals 2

    .line 51542
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-ge v1, v0, :cond_0

    .line 51543
    return-void

    .line 51544
    :cond_0
    if-eqz p1, :cond_1

    .line 51545
    sget-object v1, Lcom/facebook/ads/redexgen/X/L7;->A04:Lcom/facebook/ads/redexgen/X/L7;

    .line 51546
    .local v0, "mode":Lcom/facebook/ads/redexgen/X/L7;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A0B:Lcom/facebook/ads/redexgen/X/L8;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/L8;->A05(Lcom/facebook/ads/redexgen/X/L7;)V

    .line 51547
    return-void

    .line 51548
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/L7;->A03:Lcom/facebook/ads/redexgen/X/L7;

    goto :goto_0
.end method
