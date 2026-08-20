.class public Lcom/facebook/ads/redexgen/X/Yz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/2R;


# instance fields
.field public final A00:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69612
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yz;->A00:Landroid/graphics/RectF;

    return-void
.end method

.method private A00(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Lcom/facebook/ads/redexgen/X/2U;
    .locals 6

    .line 69613
    new-instance v0, Lcom/facebook/ads/redexgen/X/2U;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/2U;-><init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V

    return-object v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/2Q;)Lcom/facebook/ads/redexgen/X/2U;
    .locals 1

    .line 69614
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/2Q;->A62()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/2U;

    return-object v0
.end method


# virtual methods
.method public final A02(Lcom/facebook/ads/redexgen/X/2Q;)V
    .locals 5

    .line 69615
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 69616
    .local v0, "shadowPadding":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yz;->A01(Lcom/facebook/ads/redexgen/X/2Q;)Lcom/facebook/ads/redexgen/X/2U;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/2U;->A0K(Landroid/graphics/Rect;)V

    .line 69617
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Yz;->A79(Lcom/facebook/ads/redexgen/X/2Q;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v3, v0

    .line 69618
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Yz;->A78(Lcom/facebook/ads/redexgen/X/2Q;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 69619
    invoke-interface {p1, v3, v0}, Lcom/facebook/ads/redexgen/X/2Q;->AF1(II)V

    .line 69620
    iget v3, v4, Landroid/graphics/Rect;->left:I

    iget v2, v4, Landroid/graphics/Rect;->top:I

    iget v1, v4, Landroid/graphics/Rect;->right:I

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2Q;->AF8(IIII)V

    .line 69621
    return-void
.end method

.method public final A5p(Lcom/facebook/ads/redexgen/X/2Q;)Landroid/content/res/ColorStateList;
    .locals 1

    .line 69622
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yz;->A01(Lcom/facebook/ads/redexgen/X/2Q;)Lcom/facebook/ads/redexgen/X/2U;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2U;->A0F()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public final A6a(Lcom/facebook/ads/redexgen/X/2Q;)F
    .locals 1

    .line 69623
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yz;->A01(Lcom/facebook/ads/redexgen/X/2Q;)Lcom/facebook/ads/redexgen/X/2U;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2U;->A0E()F

    move-result v0

    return v0
.end method

.method public final A73(Lcom/facebook/ads/redexgen/X/2Q;)F
    .locals 1

    .line 69624
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yz;->A01(Lcom/facebook/ads/redexgen/X/2Q;)Lcom/facebook/ads/redexgen/X/2U;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2U;->A0B()F

    move-result v0

    return v0
.end method

.method public final A78(Lcom/facebook/ads/redexgen/X/2Q;)F
    .locals 1

    .line 69625
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yz;->A01(Lcom/facebook/ads/redexgen/X/2Q;)Lcom/facebook/ads/redexgen/X/2U;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2U;->A0C()F

    move-result v0

    return v0
.end method

.method public final A79(Lcom/facebook/ads/redexgen/X/2Q;)F
    .locals 1

    .line 69626
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yz;->A01(Lcom/facebook/ads/redexgen/X/2Q;)Lcom/facebook/ads/redexgen/X/2U;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2U;->A0D()F

    move-result v0

    return v0
.end method

.method public final A7T(Lcom/facebook/ads/redexgen/X/2Q;)F
    .locals 1

    .line 69627
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yz;->A01(Lcom/facebook/ads/redexgen/X/2Q;)Lcom/facebook/ads/redexgen/X/2U;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2U;->A0A()F

    move-result v0

    return v0
.end method

.method public A8Y()V
    .locals 1

    .line 69628
    new-instance v0, Lcom/facebook/ads/redexgen/X/Z0;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Z0;-><init>(Lcom/facebook/ads/redexgen/X/Yz;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/2U;->A0G:Lcom/facebook/ads/redexgen/X/2T;

    .line 69629
    return-void
.end method

.method public final A8Z(Lcom/facebook/ads/redexgen/X/2Q;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 6

    .line 69630
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Yz;->A00(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Lcom/facebook/ads/redexgen/X/2U;

    move-result-object v1

    .line 69631
    .local v0, "background":Lcom/facebook/ads/redexgen/X/2U;
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/2Q;->A7S()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2U;->A0L(Z)V

    .line 69632
    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/2Q;->AEq(Landroid/graphics/drawable/Drawable;)V

    .line 69633
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Yz;->A02(Lcom/facebook/ads/redexgen/X/2Q;)V

    .line 69634
    return-void
.end method

.method public final AAX(Lcom/facebook/ads/redexgen/X/2Q;)V
    .locals 0

    .line 69635
    return-void
.end method

.method public final ACA(Lcom/facebook/ads/redexgen/X/2Q;)V
    .locals 2

    .line 69636
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yz;->A01(Lcom/facebook/ads/redexgen/X/2Q;)Lcom/facebook/ads/redexgen/X/2U;

    move-result-object v1

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/2Q;->A7S()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2U;->A0L(Z)V

    .line 69637
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Yz;->A02(Lcom/facebook/ads/redexgen/X/2Q;)V

    .line 69638
    return-void
.end method

.method public final AEp(Lcom/facebook/ads/redexgen/X/2Q;Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p2    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 69639
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yz;->A01(Lcom/facebook/ads/redexgen/X/2Q;)Lcom/facebook/ads/redexgen/X/2U;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/2U;->A0J(Landroid/content/res/ColorStateList;)V

    .line 69640
    return-void
.end method

.method public final AEu(Lcom/facebook/ads/redexgen/X/2Q;F)V
    .locals 1

    .line 69641
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yz;->A01(Lcom/facebook/ads/redexgen/X/2Q;)Lcom/facebook/ads/redexgen/X/2U;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/2U;->A0I(F)V

    .line 69642
    return-void
.end method

.method public final AF0(Lcom/facebook/ads/redexgen/X/2Q;F)V
    .locals 1

    .line 69643
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yz;->A01(Lcom/facebook/ads/redexgen/X/2Q;)Lcom/facebook/ads/redexgen/X/2U;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/2U;->A0H(F)V

    .line 69644
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Yz;->A02(Lcom/facebook/ads/redexgen/X/2Q;)V

    .line 69645
    return-void
.end method

.method public final AF6(Lcom/facebook/ads/redexgen/X/2Q;F)V
    .locals 1

    .line 69646
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yz;->A01(Lcom/facebook/ads/redexgen/X/2Q;)Lcom/facebook/ads/redexgen/X/2U;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/2U;->A0G(F)V

    .line 69647
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Yz;->A02(Lcom/facebook/ads/redexgen/X/2Q;)V

    .line 69648
    return-void
.end method
