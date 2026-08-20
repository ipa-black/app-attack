.class public final Lcom/facebook/ads/redexgen/X/Yb;
.super Lcom/facebook/ads/redexgen/X/4J;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/4J;->A01(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/4J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4Z;)V
    .locals 1

    .line 68219
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4J;-><init>(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/Yc;)V

    return-void
.end method


# virtual methods
.method public final A06()I
    .locals 1

    .line 68220
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0X()I

    move-result v0

    return v0
.end method

.method public final A07()I
    .locals 2

    .line 68221
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0X()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0d()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A08()I
    .locals 1

    .line 68222
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0d()I

    move-result v0

    return v0
.end method

.method public final A09()I
    .locals 1

    .line 68223
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0Y()I

    move-result v0

    return v0
.end method

.method public final A0A()I
    .locals 1

    .line 68224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0g()I

    move-result v0

    return v0
.end method

.method public final A0B()I
    .locals 2

    .line 68225
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0X()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0g()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    .line 68226
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0d()I

    move-result v0

    sub-int/2addr v1, v0

    .line 68227
    return v1
.end method

.method public final A0C(Landroid/view/View;)I
    .locals 3

    .line 68228
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4a;

    .line 68229
    .local v0, "params":Lcom/facebook/ads/redexgen/X/4a;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0j(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4a;->bottomMargin:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0D(Landroid/view/View;)I
    .locals 3

    .line 68230
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4a;

    .line 68231
    .local v0, "params":Lcom/facebook/ads/redexgen/X/4a;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0l(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4a;->topMargin:I

    add-int/2addr v1, v0

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4a;->bottomMargin:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0E(Landroid/view/View;)I
    .locals 3

    .line 68232
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4a;

    .line 68233
    .local v0, "params":Lcom/facebook/ads/redexgen/X/4a;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0m(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4a;->leftMargin:I

    add-int/2addr v1, v0

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4a;->rightMargin:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0F(Landroid/view/View;)I
    .locals 3

    .line 68234
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4a;

    .line 68235
    .local v0, "params":Lcom/facebook/ads/redexgen/X/4a;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0o(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4a;->topMargin:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A0G(Landroid/view/View;)I
    .locals 3

    .line 68236
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:Landroid/graphics/Rect;

    const/4 v0, 0x1

    invoke-virtual {v2, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/4Z;->A1E(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 68237
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public final A0H(Landroid/view/View;)I
    .locals 3

    .line 68238
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:Landroid/graphics/Rect;

    const/4 v0, 0x1

    invoke-virtual {v2, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/4Z;->A1E(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 68239
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public final A0J(I)V
    .locals 1

    .line 68240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A10(I)V

    .line 68241
    return-void
.end method
