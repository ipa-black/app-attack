.class public final Lcom/facebook/ads/redexgen/X/F5;
.super Lcom/facebook/ads/redexgen/X/Zt;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A01:Lcom/facebook/ads/redexgen/X/J0;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/19;Ljava/util/List;Lcom/facebook/ads/redexgen/X/J0;)V
    .locals 0
    .param p4    # Lcom/facebook/ads/redexgen/X/J0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Xc;",
            "Lcom/facebook/ads/redexgen/X/19;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Tp;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/J0;",
            ")V"
        }
    .end annotation

    .line 32456
    .local p4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    invoke-direct {p0, p2, p3, p1}, Lcom/facebook/ads/redexgen/X/Zt;-><init>(Lcom/facebook/ads/redexgen/X/19;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 32457
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/F5;->A00:Lcom/facebook/ads/redexgen/X/Xc;

    .line 32458
    if-eqz p4, :cond_0

    :goto_0
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/F5;->A01:Lcom/facebook/ads/redexgen/X/J0;

    .line 32459
    return-void

    .line 32460
    :cond_0
    new-instance p4, Lcom/facebook/ads/redexgen/X/J0;

    invoke-direct {p4}, Lcom/facebook/ads/redexgen/X/J0;-><init>()V

    goto :goto_0
.end method

.method private final A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/TF;
    .locals 3

    .line 32461
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/F5;->A00:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F5;->A01:Lcom/facebook/ads/redexgen/X/J0;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ll;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Ll;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/J0;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/TF;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/TF;-><init>(Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic A0C(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/4r;
    .locals 1

    .line 32462
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/F5;->A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/TF;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0E(Lcom/facebook/ads/redexgen/X/4r;I)V
    .locals 0

    .line 32463
    check-cast p1, Lcom/facebook/ads/redexgen/X/TF;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/F5;->A0H(Lcom/facebook/ads/redexgen/X/TF;I)V

    return-void
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/TF;I)V
    .locals 3

    .line 32464
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Zt;->A0H(Lcom/facebook/ads/redexgen/X/TF;I)V

    .line 32465
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/TF;->A0l()Lcom/facebook/ads/internal/api/AdNativeComponentView;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Ll;

    .line 32466
    .local v0, "cardView":Lcom/facebook/ads/redexgen/X/Ll;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Ll;->getImageCardView()Landroid/widget/ImageView;

    move-result-object v0

    .line 32467
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/Zt;->A0F(Landroid/widget/ImageView;I)V

    .line 32468
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zt;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Tp;

    .line 32469
    .local v2, "mCarouselPosition":Lcom/facebook/ads/redexgen/X/Tp;
    if-eqz v0, :cond_0

    .line 32470
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zt;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Tp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tp;->getAdHeadline()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Ll;->setTitle(Ljava/lang/String;)V

    .line 32471
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zt;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Tp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tp;->getAdLinkDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Ll;->setSubtitle(Ljava/lang/String;)V

    .line 32472
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zt;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Tp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tp;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Ll;->setButtonText(Ljava/lang/String;)V

    .line 32473
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zt;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Tp;

    .line 32474
    .local p0, "childAd":Lcom/facebook/ads/redexgen/X/Tp;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32475
    .local p1, "clickableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32476
    invoke-virtual {v1, v2, v2, v0}, Lcom/facebook/ads/redexgen/X/Tp;->A1O(Landroid/view/View;Lcom/facebook/ads/internal/api/AdNativeComponentView;Ljava/util/List;)V

    .line 32477
    return-void
.end method
