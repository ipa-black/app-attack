.class public abstract Lcom/facebook/ads/redexgen/X/Ni;
.super Landroid/widget/RelativeLayout;
.source ""


# static fields
.field public static final A07:I

.field public static final A08:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/1L;

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A03:Lcom/facebook/ads/redexgen/X/Ia;

.field public final A04:Lcom/facebook/ads/redexgen/X/Sa;

.field public final A05:Lcom/facebook/ads/redexgen/X/Na;

.field public final A06:Lcom/facebook/ads/redexgen/X/Nm;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 46524
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Ni;->A07:I

    .line 46525
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41e00000    # 28.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Ni;->A08:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nm;Z)V
    .locals 10

    .line 46526
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 46527
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ni;->A06:Lcom/facebook/ads/redexgen/X/Nm;

    .line 46528
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A02:Lcom/facebook/ads/redexgen/X/Xc;

    .line 46529
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A06()Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A03:Lcom/facebook/ads/redexgen/X/Ia;

    .line 46530
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A00()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 46531
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A04()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0g()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A01()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v0

    .line 46532
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A00:Lcom/facebook/ads/redexgen/X/1L;

    .line 46533
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Ni;->A01:Z

    .line 46534
    new-instance v1, Lcom/facebook/ads/redexgen/X/Sa;

    .line 46535
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v2

    .line 46536
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A04()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0G()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ni;->A00:Lcom/facebook/ads/redexgen/X/1L;

    .line 46537
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A04()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0F()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1M;->A06()Z

    move-result v5

    .line 46538
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A06()Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v6

    .line 46539
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A09()Lcom/facebook/ads/redexgen/X/Lj;

    move-result-object v7

    .line 46540
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A0B()Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v8

    .line 46541
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A07()Lcom/facebook/ads/redexgen/X/LD;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lcom/facebook/ads/redexgen/X/Sa;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1L;ZLcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/LD;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Ni;->A04:Lcom/facebook/ads/redexgen/X/Sa;

    .line 46542
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ni;->A04:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->A00()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NM;->setRoundedCornersEnabled(Z)V

    .line 46543
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ni;->A04:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->A0D()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NM;->setViewShowsOverMedia(Z)V

    .line 46544
    const/16 v1, 0x3e9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A04:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0G(ILandroid/view/View;)V

    .line 46545
    new-instance v0, Lcom/facebook/ads/redexgen/X/Na;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ni;->A02:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ni;->A00:Lcom/facebook/ads/redexgen/X/1L;

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Ni;->A01:Z

    .line 46546
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->A01()Z

    move-result v4

    .line 46547
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->A02()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Na;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/1L;ZZZ)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A05:Lcom/facebook/ads/redexgen/X/Na;

    .line 46548
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A05:Lcom/facebook/ads/redexgen/X/Na;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 46549
    return-void

    .line 46550
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A04()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0g()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A00()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public A00()Z
    .locals 1

    .line 46551
    const/4 v0, 0x1

    return v0
.end method

.method public A01()Z
    .locals 1

    .line 46552
    const/4 v0, 0x1

    return v0
.end method

.method public A02()Z
    .locals 1

    .line 46553
    const/4 v0, 0x1

    return v0
.end method

.method public A0B(Lcom/facebook/ads/redexgen/X/72;)V
    .locals 0

    .line 46554
    return-void
.end method

.method public A0C(Lcom/facebook/ads/redexgen/X/6y;)V
    .locals 0

    .line 46555
    return-void
.end method

.method public A0D()Z
    .locals 1

    .line 46556
    const/4 v0, 0x1

    return v0
.end method

.method public A0X()V
    .locals 0

    .line 46557
    return-void
.end method

.method public A0Y()V
    .locals 0

    .line 46558
    return-void
.end method

.method public A0Z()V
    .locals 0

    .line 46559
    return-void
.end method

.method public A0a()V
    .locals 0

    .line 46560
    return-void
.end method

.method public A0b()V
    .locals 0

    .line 46561
    return-void
.end method

.method public A0c(Lcom/facebook/ads/redexgen/X/1C;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 9
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 46562
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ni;->A05:Lcom/facebook/ads/redexgen/X/Na;

    .line 46563
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1C;->A0E()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A05()Ljava/lang/String;

    move-result-object v4

    .line 46564
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1C;->A0E()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A01()Ljava/lang/String;

    move-result-object v5

    .line 46565
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->A0d()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    cmpl-double v0, p3, v1

    if-lez v0, :cond_0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p3, v1

    if-gez v0, :cond_0

    const/4 v8, 0x1

    .line 46566
    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Na;->A03(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 46567
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ni;->A04:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1C;->A0F()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v1, p2, v0}, Lcom/facebook/ads/redexgen/X/Sa;->setCta(Lcom/facebook/ads/redexgen/X/1M;Ljava/lang/String;Ljava/util/Map;)V

    .line 46568
    return-void

    .line 46569
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public abstract A0d()Z
.end method

.method public A0e(Z)Z
    .locals 1

    .line 46570
    const/4 v0, 0x0

    return v0
.end method

.method public getAdContextWrapper()Lcom/facebook/ads/redexgen/X/Xc;
    .locals 1

    .line 46571
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A02:Lcom/facebook/ads/redexgen/X/Xc;

    return-object v0
.end method

.method public getAdEventManager()Lcom/facebook/ads/redexgen/X/Ia;
    .locals 1

    .line 46572
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A03:Lcom/facebook/ads/redexgen/X/Ia;

    return-object v0
.end method

.method public getCloseButtonStyle()I
    .locals 1
    .annotation build Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
    .end annotation

    .line 46573
    const/4 v0, 0x0

    return v0
.end method

.method public getColors()Lcom/facebook/ads/redexgen/X/1L;
    .locals 1

    .line 46574
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A00:Lcom/facebook/ads/redexgen/X/1L;

    return-object v0
.end method

.method public getCtaButton()Lcom/facebook/ads/redexgen/X/Sa;
    .locals 1

    .line 46575
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A04:Lcom/facebook/ads/redexgen/X/Sa;

    return-object v0
.end method

.method public getTitleDescContainer()Lcom/facebook/ads/redexgen/X/Na;
    .locals 1

    .line 46576
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A05:Lcom/facebook/ads/redexgen/X/Na;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 46577
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 46578
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 46579
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A06:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A04()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0g()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A01()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v0

    .line 46580
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A00:Lcom/facebook/ads/redexgen/X/1L;

    .line 46581
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ni;->A04:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->A0D()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NM;->setViewShowsOverMedia(Z)V

    .line 46582
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ni;->A04:Lcom/facebook/ads/redexgen/X/Sa;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A00:Lcom/facebook/ads/redexgen/X/1L;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NM;->setUpButtonColors(Lcom/facebook/ads/redexgen/X/1L;)V

    .line 46583
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ni;->A05:Lcom/facebook/ads/redexgen/X/Na;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ni;->A00:Lcom/facebook/ads/redexgen/X/1L;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A01:Z

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Na;->A02(Lcom/facebook/ads/redexgen/X/1L;Z)V

    .line 46584
    return-void

    .line 46585
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ni;->A06:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A04()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0g()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A00()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v0

    goto :goto_0
.end method
