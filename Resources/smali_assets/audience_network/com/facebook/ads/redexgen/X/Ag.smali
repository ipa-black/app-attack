.class public final Lcom/facebook/ads/redexgen/X/Ag;
.super Lcom/facebook/ads/redexgen/X/Yd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CenterSmoothScroller"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ad;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ad;Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 0

    .line 22081
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ag;->A00:Lcom/facebook/ads/redexgen/X/Ad;

    .line 22082
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/Yd;-><init>(Landroid/content/Context;)V

    .line 22083
    return-void
.end method


# virtual methods
.method public final A0J(Landroid/util/DisplayMetrics;)F
    .locals 2

    .line 22084
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ag;->A00:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ad;->A02(Lcom/facebook/ads/redexgen/X/Ad;)F

    move-result v1

    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1
.end method

.method public final A0K()I
    .locals 1

    .line 22085
    const/4 v0, -0x1

    return v0
.end method

.method public final A0O(Landroid/view/View;I)I
    .locals 8

    .line 22086
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4m;->A08()Lcom/facebook/ads/redexgen/X/4Z;

    move-result-object v2

    .line 22087
    .local v0, "layoutManager":Lcom/facebook/ads/redexgen/X/4Z;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4Z;->A24()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22088
    const/4 v0, 0x0

    return v0

    .line 22089
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4a;

    .line 22090
    .local v1, "params":Lcom/facebook/ads/redexgen/X/4a;
    invoke-virtual {v2, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0k(Landroid/view/View;)I

    move-result v3

    iget v0, v1, Lcom/facebook/ads/redexgen/X/4a;->leftMargin:I

    sub-int/2addr v3, v0

    .line 22091
    .local v2, "left":I
    invoke-virtual {v2, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0n(Landroid/view/View;)I

    move-result v4

    iget v0, v1, Lcom/facebook/ads/redexgen/X/4a;->rightMargin:I

    add-int/2addr v4, v0

    .line 22092
    .local v3, "right":I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4Z;->A0e()I

    move-result v5

    .line 22093
    .local p2, "start":I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4Z;->A0h()I

    move-result v6

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4Z;->A0f()I

    move-result v0

    sub-int/2addr v6, v0

    .line 22094
    .local p3, "end":I
    move-object v2, p0

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Yd;->A0N(IIIII)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ag;->A00:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ad;->A03(Lcom/facebook/ads/redexgen/X/Ad;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0P(I)Landroid/graphics/PointF;
    .locals 1

    .line 22095
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ag;->A00:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ye;->A48(I)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
