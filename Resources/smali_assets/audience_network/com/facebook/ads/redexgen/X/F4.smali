.class public final Lcom/facebook/ads/redexgen/X/F4;
.super Lcom/facebook/ads/redexgen/X/Zt;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Xc;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/19;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/19;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Tp;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Xc;",
            ")V"
        }
    .end annotation

    .line 32441
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Zt;-><init>(Lcom/facebook/ads/redexgen/X/19;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 32442
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/F4;->A00:Lcom/facebook/ads/redexgen/X/Xc;

    .line 32443
    return-void
.end method

.method private final A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/TF;
    .locals 2

    .line 32444
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A00:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Lq;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Lq;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/TF;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/TF;-><init>(Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic A0C(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/4r;
    .locals 1

    .line 32445
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/F4;->A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/TF;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0E(Lcom/facebook/ads/redexgen/X/4r;I)V
    .locals 0

    .line 32446
    check-cast p1, Lcom/facebook/ads/redexgen/X/TF;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/F4;->A0H(Lcom/facebook/ads/redexgen/X/TF;I)V

    return-void
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/TF;I)V
    .locals 4

    .line 32447
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Zt;->A0H(Lcom/facebook/ads/redexgen/X/TF;I)V

    .line 32448
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/TF;->A0l()Lcom/facebook/ads/internal/api/AdNativeComponentView;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Lq;

    .line 32449
    .local v0, "cardView":Lcom/facebook/ads/redexgen/X/Lq;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Lq;->getImageCardView()Landroid/widget/ImageView;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/M2;

    .line 32450
    .local v1, "imageView":Lcom/facebook/ads/redexgen/X/M2;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M2;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32451
    invoke-virtual {p0, v1, p2}, Lcom/facebook/ads/redexgen/X/Zt;->A0F(Landroid/widget/ImageView;I)V

    .line 32452
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zt;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Tp;

    .line 32453
    .local v2, "childAd":Lcom/facebook/ads/redexgen/X/Tp;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Tp;->A11()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A00:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0G(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 32454
    invoke-virtual {v2, v3, v3}, Lcom/facebook/ads/redexgen/X/Tp;->A1N(Landroid/view/View;Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

    .line 32455
    return-void
.end method
