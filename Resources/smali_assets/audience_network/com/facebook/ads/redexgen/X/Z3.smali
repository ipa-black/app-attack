.class public final Lcom/facebook/ads/redexgen/X/Z3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/2Q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/2P;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public A00:Landroid/graphics/drawable/Drawable;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/2P;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2P;)V
    .locals 0

    .line 69718
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Z3;->A01:Lcom/facebook/ads/redexgen/X/2P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A62()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 69719
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z3;->A00:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final A63()Landroid/view/View;
    .locals 1

    .line 69720
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z3;->A01:Lcom/facebook/ads/redexgen/X/2P;

    return-object v0
.end method

.method public final A7S()Z
    .locals 1

    .line 69721
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z3;->A01:Lcom/facebook/ads/redexgen/X/2P;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2P;->getPreventCornerOverlap()Z

    move-result v0

    return v0
.end method

.method public final A7y()Z
    .locals 1

    .line 69722
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z3;->A01:Lcom/facebook/ads/redexgen/X/2P;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2P;->getUseCompatPadding()Z

    move-result v0

    return v0
.end method

.method public final AEq(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 69723
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Z3;->A00:Landroid/graphics/drawable/Drawable;

    .line 69724
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z3;->A01:Lcom/facebook/ads/redexgen/X/2P;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2P;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69725
    return-void
.end method

.method public final AF1(II)V
    .locals 1

    .line 69726
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z3;->A01:Lcom/facebook/ads/redexgen/X/2P;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/2P;->A01:I

    if-le p1, v0, :cond_0

    .line 69727
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z3;->A01:Lcom/facebook/ads/redexgen/X/2P;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/2P;->A00(Lcom/facebook/ads/redexgen/X/2P;I)V

    .line 69728
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z3;->A01:Lcom/facebook/ads/redexgen/X/2P;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/2P;->A00:I

    if-le p2, v0, :cond_1

    .line 69729
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z3;->A01:Lcom/facebook/ads/redexgen/X/2P;

    invoke-static {v0, p2}, Lcom/facebook/ads/redexgen/X/2P;->A01(Lcom/facebook/ads/redexgen/X/2P;I)V

    .line 69730
    :cond_1
    return-void
.end method

.method public final AF8(IIII)V
    .locals 5

    .line 69731
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z3;->A01:Lcom/facebook/ads/redexgen/X/2P;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/2P;->A05:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 69732
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Z3;->A01:Lcom/facebook/ads/redexgen/X/2P;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/2P;->A04:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z3;->A01:Lcom/facebook/ads/redexgen/X/2P;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/2P;->A04:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z3;->A01:Lcom/facebook/ads/redexgen/X/2P;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/2P;->A04:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z3;->A01:Lcom/facebook/ads/redexgen/X/2P;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/2P;->A04:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p4

    invoke-static {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2P;->A02(Lcom/facebook/ads/redexgen/X/2P;IIII)V

    .line 69733
    return-void
.end method
