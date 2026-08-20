.class public final Lcom/facebook/ads/redexgen/X/Yc;
.super Lcom/facebook/ads/redexgen/X/4J;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/4J;->A00(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/4J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4Z;)V
    .locals 1

    .line 68242
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4J;-><init>(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/Yc;)V

    return-void
.end method


# virtual methods
.method public final A06()I
    .locals 1

    .line 68243
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0h()I

    move-result v0

    return v0
.end method

.method public final A07()I
    .locals 2

    .line 68244
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0h()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0f()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A08()I
    .locals 1

    .line 68245
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0f()I

    move-result v0

    return v0
.end method

.method public final A09()I
    .locals 1

    .line 68246
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0i()I

    move-result v0

    return v0
.end method

.method public final A0A()I
    .locals 1

    .line 68247
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0e()I

    move-result v0

    return v0
.end method

.method public final A0B()I
    .locals 2

    .line 68248
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0h()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0e()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    .line 68249
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0f()I

    move-result v0

    sub-int/2addr v1, v0

    .line 68250
    return v1
.end method

.method public final A0C(Landroid/view/View;)I
    .locals 3

    .line 68251
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4a;

    .line 68252
    .local v0, "params":Lcom/facebook/ads/redexgen/X/4a;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0n(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4a;->rightMargin:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0D(Landroid/view/View;)I
    .locals 3

    .line 68253
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4a;

    .line 68254
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

.method public final A0E(Landroid/view/View;)I
    .locals 3

    .line 68255
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4a;

    .line 68256
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

.method public final A0F(Landroid/view/View;)I
    .locals 3

    .line 68257
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4a;

    .line 68258
    .local v0, "params":Lcom/facebook/ads/redexgen/X/4a;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0k(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4a;->leftMargin:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A0G(Landroid/view/View;)I
    .locals 3

    .line 68259
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:Landroid/graphics/Rect;

    const/4 v0, 0x1

    invoke-virtual {v2, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/4Z;->A1E(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 68260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public final A0H(Landroid/view/View;)I
    .locals 3

    .line 68261
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:Landroid/graphics/Rect;

    const/4 v0, 0x1

    invoke-virtual {v2, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/4Z;->A1E(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 68262
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public final A0J(I)V
    .locals 1

    .line 68263
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0z(I)V

    .line 68264
    return-void
.end method
