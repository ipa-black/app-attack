.class public final Lcom/facebook/ads/redexgen/X/Dw;
.super Lcom/facebook/ads/redexgen/X/Y5;
.source ""


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/P9;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29368
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Y5;-><init>()V

    return-void
.end method


# virtual methods
.method public final A04(Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/redexgen/X/J0;)V
    .locals 11

    .line 29369
    move-object v2, p0

    new-instance v8, Lcom/facebook/ads/redexgen/X/NU;

    move-object v4, p2

    invoke-direct {v8, v4}, Lcom/facebook/ads/redexgen/X/NU;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 29370
    .local p1, "adIconView":Lcom/facebook/ads/redexgen/X/NU;
    new-instance v9, Lcom/facebook/ads/MediaView;

    invoke-direct {v9, v4}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    .line 29371
    .local p2, "mediaView":Lcom/facebook/ads/MediaView;
    new-instance v10, Lcom/facebook/ads/AdOptionsView;

    invoke-direct {v10, v4, p3, p1}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    .line 29372
    .local p3, "adOptionsView":Lcom/facebook/ads/AdOptionsView;
    const/16 v0, 0x1c

    move-object v6, p4

    invoke-virtual {v6, v10, v0}, Lcom/facebook/ads/redexgen/X/J0;->A09(Lcom/facebook/ads/AdOptionsView;I)V

    .line 29373
    invoke-virtual {p3}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Tp;

    move-result-object v0

    .line 29374
    .local p5, "internalNativeAd":Lcom/facebook/ads/redexgen/X/Tp;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A17()Lcom/facebook/ads/redexgen/X/J1;

    move-result-object v7

    .line 29375
    .local p6, "viewType":Lcom/facebook/ads/redexgen/X/J1;
    new-instance v3, Lcom/facebook/ads/redexgen/X/RG;

    move-object v5, p3

    move-object v0, v3

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/RG;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/redexgen/X/J0;Lcom/facebook/ads/redexgen/X/J1;Lcom/facebook/ads/redexgen/X/NU;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/AdOptionsView;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dw;->A00:Lcom/facebook/ads/redexgen/X/P9;

    .line 29376
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/J0;->A00()I

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0M(Landroid/view/View;I)V

    .line 29377
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dw;->A00:Lcom/facebook/ads/redexgen/X/P9;

    .line 29378
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/P9;->getViewsForInteraction()Ljava/util/ArrayList;

    move-result-object v0

    .line 29379
    invoke-virtual {p3, p1, v9, v8, v0}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Landroid/widget/ImageView;Ljava/util/List;)V

    .line 29380
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 29381
    .local v2, "contentParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 29382
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dw;->A00:Lcom/facebook/ads/redexgen/X/P9;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/P9;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/ads/NativeAdLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29383
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 29384
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/5K;->onDetachedFromWindow()V

    .line 29385
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dw;->A00:Lcom/facebook/ads/redexgen/X/P9;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/P9;->unregisterView()V

    .line 29386
    return-void
.end method
