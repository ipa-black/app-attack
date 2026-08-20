.class public final Lcom/facebook/ads/redexgen/X/Yq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/2y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/3S;->A0D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final A00:Landroid/graphics/Rect;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/3S;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3S;)V
    .locals 1

    .line 69533
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yq;->A01:Lcom/facebook/ads/redexgen/X/3S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69534
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yq;->A00:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final AAC(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3V;)Lcom/facebook/ads/redexgen/X/3V;
    .locals 7

    .line 69535
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/3E;->A06(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3V;)Lcom/facebook/ads/redexgen/X/3V;

    move-result-object v4

    .line 69536
    .local v0, "applied":Lcom/facebook/ads/redexgen/X/3V;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/3V;->A07()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69537
    return-object v4

    .line 69538
    :cond_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Yq;->A00:Landroid/graphics/Rect;

    .line 69539
    .local v1, "res":Landroid/graphics/Rect;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/3V;->A03()I

    move-result v0

    iput v0, v5, Landroid/graphics/Rect;->left:I

    .line 69540
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/3V;->A05()I

    move-result v0

    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 69541
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/3V;->A04()I

    move-result v0

    iput v0, v5, Landroid/graphics/Rect;->right:I

    .line 69542
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/3V;->A02()I

    move-result v0

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 69543
    const/4 v3, 0x0

    .local v2, "i":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yq;->A01:Lcom/facebook/ads/redexgen/X/3S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3S;->getChildCount()I

    move-result v2

    .local v3, "count":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 69544
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yq;->A01:Lcom/facebook/ads/redexgen/X/3S;

    .line 69545
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/3S;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/3E;->A05(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3V;)Lcom/facebook/ads/redexgen/X/3V;

    move-result-object v6

    .line 69546
    .local v4, "childInsets":Lcom/facebook/ads/redexgen/X/3V;
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/3V;->A03()I

    move-result v1

    iget v0, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v5, Landroid/graphics/Rect;->left:I

    .line 69547
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/3V;->A05()I

    move-result v1

    iget v0, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 69548
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/3V;->A04()I

    move-result v1

    iget v0, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v5, Landroid/graphics/Rect;->right:I

    .line 69549
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/3V;->A02()I

    move-result v1

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 69550
    .end local v4    # "childInsets":Lcom/facebook/ads/redexgen/X/3V;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69551
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_1
    iget v3, v5, Landroid/graphics/Rect;->left:I

    iget v2, v5, Landroid/graphics/Rect;->top:I

    iget v1, v5, Landroid/graphics/Rect;->right:I

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3V;->A06(IIII)Lcom/facebook/ads/redexgen/X/3V;

    move-result-object v0

    return-object v0
.end method
