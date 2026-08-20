.class public final Lcom/facebook/ads/redexgen/X/RK;
.super Lcom/facebook/ads/redexgen/X/NV;
.source ""


# instance fields
.field public final A00:Landroid/widget/ImageView;

.field public final A01:Lcom/facebook/ads/redexgen/X/Xc;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 4

    .line 50589
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/NV;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 50590
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RK;->A01:Lcom/facebook/ads/redexgen/X/Xc;

    .line 50591
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RK;->A00:Landroid/widget/ImageView;

    .line 50592
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RK;->A00:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 50593
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/RK;->A00:Landroid/widget/ImageView;

    const/4 v2, -0x2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/RK;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50594
    return-void
.end method


# virtual methods
.method public final A00(Ljava/lang/String;)V
    .locals 3

    .line 50595
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/RK;->A00:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RK;->A01:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sf;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Sf;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 50596
    .local v0, "downloadImageTask":Lcom/facebook/ads/redexgen/X/Sf;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sf;->A04()Lcom/facebook/ads/redexgen/X/Sf;

    .line 50597
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Sf;->A07(Ljava/lang/String;)V

    .line 50598
    return-void
.end method
