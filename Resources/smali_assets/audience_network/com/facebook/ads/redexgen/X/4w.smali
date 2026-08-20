.class public final Lcom/facebook/ads/redexgen/X/4w;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/4u;,
        Lcom/facebook/ads/redexgen/X/4t;,
        Lcom/facebook/ads/internal/androidx/support/v7/widget/ViewBoundsCheck$ViewBounds;
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/4t;

.field public final A01:Lcom/facebook/ads/redexgen/X/4u;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4u;)V
    .locals 1

    .line 13217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13218
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4w;->A01:Lcom/facebook/ads/redexgen/X/4u;

    .line 13219
    new-instance v0, Lcom/facebook/ads/redexgen/X/4t;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4t;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4w;->A00:Lcom/facebook/ads/redexgen/X/4t;

    .line 13220
    return-void
.end method


# virtual methods
.method public final A00(IIII)Landroid/view/View;
    .locals 8

    .line 13221
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4w;->A01:Lcom/facebook/ads/redexgen/X/4u;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/4u;->A7I()I

    move-result v3

    .line 13222
    .local v0, "start":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4w;->A01:Lcom/facebook/ads/redexgen/X/4u;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/4u;->A7H()I

    move-result v2

    .line 13223
    .local v1, "end":I
    if-le p2, p1, :cond_2

    const/4 v7, 0x1

    .line 13224
    .local v2, "next":I
    :goto_0
    const/4 v6, 0x0

    .line 13225
    .local v3, "acceptableMatch":Landroid/view/View;
    .local v4, "i":I
    :goto_1
    if-eq p1, p2, :cond_3

    .line 13226
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4w;->A01:Lcom/facebook/ads/redexgen/X/4u;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/4u;->A65(I)Landroid/view/View;

    move-result-object v1

    .line 13227
    .local v5, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4w;->A01:Lcom/facebook/ads/redexgen/X/4u;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;->A68(Landroid/view/View;)I

    move-result v5

    .line 13228
    .local v6, "childStart":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4w;->A01:Lcom/facebook/ads/redexgen/X/4u;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;->A67(Landroid/view/View;)I

    move-result v4

    .line 13229
    .local v7, "childEnd":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4w;->A00:Lcom/facebook/ads/redexgen/X/4t;

    invoke-virtual {v0, v3, v2, v5, v4}, Lcom/facebook/ads/redexgen/X/4t;->A03(IIII)V

    .line 13230
    if-eqz p3, :cond_0

    .line 13231
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4w;->A00:Lcom/facebook/ads/redexgen/X/4t;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4t;->A01()V

    .line 13232
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4w;->A00:Lcom/facebook/ads/redexgen/X/4t;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/4t;->A02(I)V

    .line 13233
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4w;->A00:Lcom/facebook/ads/redexgen/X/4t;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4t;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13234
    return-object v1

    .line 13235
    :cond_0
    if-eqz p4, :cond_1

    .line 13236
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4w;->A00:Lcom/facebook/ads/redexgen/X/4t;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4t;->A01()V

    .line 13237
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4w;->A00:Lcom/facebook/ads/redexgen/X/4t;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/4t;->A02(I)V

    .line 13238
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4w;->A00:Lcom/facebook/ads/redexgen/X/4t;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4t;->A04()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13239
    move-object v6, v1

    .line 13240
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childStart":I
    .end local v7    # "childEnd":I
    :cond_1
    add-int/2addr p1, v7

    goto :goto_1

    .line 13241
    :cond_2
    const/4 v7, -0x1

    goto :goto_0

    .line 13242
    .end local v4    # "i":I
    :cond_3
    return-object v6
.end method
