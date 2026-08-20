.class public final Lcom/facebook/ads/redexgen/X/Z1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/2R;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/2Q;)Lcom/facebook/ads/redexgen/X/2S;
    .locals 1

    .line 69674
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/2Q;->A62()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/2S;

    return-object v0
.end method


# virtual methods
.method public final A01(Lcom/facebook/ads/redexgen/X/2Q;)V
    .locals 5

    .line 69675
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/2Q;->A7y()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69676
    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/2Q;->AF8(IIII)V

    .line 69677
    return-void

    .line 69678
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Z1;->A73(Lcom/facebook/ads/redexgen/X/2Q;)F

    move-result v4

    .line 69679
    .local v0, "elevation":F
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Z1;->A7T(Lcom/facebook/ads/redexgen/X/2Q;)F

    move-result v2

    .line 69680
    .local v1, "radius":F
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/2Q;->A7S()Z

    move-result v0

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/2U;->A00(FFZ)F

    move-result v0

    float-to-double v0, v0

    .line 69681
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v3, v0

    .line 69682
    .local v2, "hPadding":I
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/2Q;->A7S()Z

    move-result v0

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/2U;->A01(FFZ)F

    move-result v0

    float-to-double v0, v0

    .line 69683
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 69684
    .local v3, "vPadding":I
    invoke-interface {p1, v3, v0, v3, v0}, Lcom/facebook/ads/redexgen/X/2Q;->AF8(IIII)V

    .line 69685
    return-void
.end method

.method public final A5p(Lcom/facebook/ads/redexgen/X/2Q;)Landroid/content/res/ColorStateList;
    .locals 1

    .line 69686
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Z1;->A00(Lcom/facebook/ads/redexgen/X/2Q;)Lcom/facebook/ads/redexgen/X/2S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2S;->A05()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public final A6a(Lcom/facebook/ads/redexgen/X/2Q;)F
    .locals 1

    .line 69687
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/2Q;->A63()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result v0

    return v0
.end method

.method public final A73(Lcom/facebook/ads/redexgen/X/2Q;)F
    .locals 1

    .line 69688
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Z1;->A00(Lcom/facebook/ads/redexgen/X/2Q;)Lcom/facebook/ads/redexgen/X/2S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2S;->A03()F

    move-result v0

    return v0
.end method

.method public final A78(Lcom/facebook/ads/redexgen/X/2Q;)F
    .locals 2

    .line 69689
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Z1;->A7T(Lcom/facebook/ads/redexgen/X/2Q;)F

    move-result v1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    return v1
.end method

.method public final A79(Lcom/facebook/ads/redexgen/X/2Q;)F
    .locals 2

    .line 69690
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Z1;->A7T(Lcom/facebook/ads/redexgen/X/2Q;)F

    move-result v1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    return v1
.end method

.method public final A7T(Lcom/facebook/ads/redexgen/X/2Q;)F
    .locals 1

    .line 69691
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Z1;->A00(Lcom/facebook/ads/redexgen/X/2Q;)Lcom/facebook/ads/redexgen/X/2S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2S;->A04()F

    move-result v0

    return v0
.end method

.method public final A8Y()V
    .locals 0

    .line 69692
    return-void
.end method

.method public final A8Z(Lcom/facebook/ads/redexgen/X/2Q;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 2

    .line 69693
    new-instance v0, Lcom/facebook/ads/redexgen/X/2S;

    invoke-direct {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/2S;-><init>(Landroid/content/res/ColorStateList;F)V

    .line 69694
    .local v0, "background":Lcom/facebook/ads/redexgen/X/2S;
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/2Q;->AEq(Landroid/graphics/drawable/Drawable;)V

    .line 69695
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/2Q;->A63()Landroid/view/View;

    move-result-object v1

    .line 69696
    .local v1, "view":Landroid/view/View;
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 69697
    invoke-virtual {v1, p5}, Landroid/view/View;->setElevation(F)V

    .line 69698
    invoke-virtual {p0, p1, p6}, Lcom/facebook/ads/redexgen/X/Z1;->AF0(Lcom/facebook/ads/redexgen/X/2Q;F)V

    .line 69699
    return-void
.end method

.method public final AAX(Lcom/facebook/ads/redexgen/X/2Q;)V
    .locals 1

    .line 69700
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Z1;->A73(Lcom/facebook/ads/redexgen/X/2Q;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Z1;->AF0(Lcom/facebook/ads/redexgen/X/2Q;F)V

    .line 69701
    return-void
.end method

.method public final ACA(Lcom/facebook/ads/redexgen/X/2Q;)V
    .locals 1

    .line 69702
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Z1;->A73(Lcom/facebook/ads/redexgen/X/2Q;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Z1;->AF0(Lcom/facebook/ads/redexgen/X/2Q;F)V

    .line 69703
    return-void
.end method

.method public final AEp(Lcom/facebook/ads/redexgen/X/2Q;Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p2    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 69704
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Z1;->A00(Lcom/facebook/ads/redexgen/X/2Q;)Lcom/facebook/ads/redexgen/X/2S;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/2S;->A08(Landroid/content/res/ColorStateList;)V

    .line 69705
    return-void
.end method

.method public final AEu(Lcom/facebook/ads/redexgen/X/2Q;F)V
    .locals 1

    .line 69706
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/2Q;->A63()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setElevation(F)V

    .line 69707
    return-void
.end method

.method public final AF0(Lcom/facebook/ads/redexgen/X/2Q;F)V
    .locals 3

    .line 69708
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Z1;->A00(Lcom/facebook/ads/redexgen/X/2Q;)Lcom/facebook/ads/redexgen/X/2S;

    move-result-object v2

    .line 69709
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/2Q;->A7y()Z

    move-result v1

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/2Q;->A7S()Z

    move-result v0

    .line 69710
    invoke-virtual {v2, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/2S;->A07(FZZ)V

    .line 69711
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Z1;->A01(Lcom/facebook/ads/redexgen/X/2Q;)V

    .line 69712
    return-void
.end method

.method public final AF6(Lcom/facebook/ads/redexgen/X/2Q;F)V
    .locals 1

    .line 69713
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Z1;->A00(Lcom/facebook/ads/redexgen/X/2Q;)Lcom/facebook/ads/redexgen/X/2S;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/2S;->A06(F)V

    .line 69714
    return-void
.end method
