.class public final Lcom/facebook/ads/redexgen/X/Ny;
.super Landroid/widget/RelativeLayout;
.source ""


# instance fields
.field public final A00:Landroid/view/View;

.field public final A01:Lcom/facebook/ads/redexgen/X/NV;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/view/View;)V
    .locals 1

    .line 46734
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 46735
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ny;->A00:Landroid/view/View;

    .line 46736
    new-instance v0, Lcom/facebook/ads/redexgen/X/NV;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/NV;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ny;->A01:Lcom/facebook/ads/redexgen/X/NV;

    .line 46737
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ny;->A01:Lcom/facebook/ads/redexgen/X/NV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 46738
    return-void
.end method


# virtual methods
.method public final A00(I)V
    .locals 3

    .line 46739
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ny;->A00:Landroid/view/View;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46740
    return-void
.end method

.method public final A01(Lcom/facebook/ads/redexgen/X/Na;Z)V
    .locals 11
    .param p1    # Lcom/facebook/ads/redexgen/X/Na;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 46741
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ny;->A01:Lcom/facebook/ads/redexgen/X/NV;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ny;->A00:Landroid/view/View;

    const/4 v3, -0x2

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/NV;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46742
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ny;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46743
    .local v0, "insideLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 46744
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46745
    .local v1, "insideLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ny;->A00:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const/16 v0, 0x8

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 46746
    if-eqz p1, :cond_0

    .line 46747
    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eqz p2, :cond_1

    .line 46748
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46749
    .local v6, "titleDescParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1, v6}, Lcom/facebook/ads/redexgen/X/Na;->setAlignment(I)V

    .line 46750
    sget v9, Lcom/facebook/ads/redexgen/X/Ni;->A07:I

    const/4 v8, 0x2

    div-int/2addr v9, v8

    sget v6, Lcom/facebook/ads/redexgen/X/Ni;->A07:I

    div-int/2addr v6, v8

    sget v1, Lcom/facebook/ads/redexgen/X/Ni;->A07:I

    div-int/2addr v1, v8

    sget v0, Lcom/facebook/ads/redexgen/X/Ni;->A07:I

    div-int/2addr v0, v8

    invoke-virtual {v10, v9, v6, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 46751
    invoke-virtual {v5, p1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46752
    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v0, v8, [I

    fill-array-data v0, :array_0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v6, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 46753
    .local v2, "gd":Landroid/graphics/drawable/GradientDrawable;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 46754
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 46755
    invoke-static {v5, v1}, Lcom/facebook/ads/redexgen/X/LL;->A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 46756
    .end local v2    # "gd":Landroid/graphics/drawable/GradientDrawable;
    .end local v6    # "titleDescParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ny;->A01:Lcom/facebook/ads/redexgen/X/NV;

    invoke-virtual {v0, v5, v4}, Lcom/facebook/ads/redexgen/X/NV;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46757
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ny;->A01:Lcom/facebook/ads/redexgen/X/NV;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ny;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46758
    return-void

    .line 46759
    :cond_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46760
    .local v6, "titleDescParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ny;->A01:Lcom/facebook/ads/redexgen/X/NV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NV;->getId()I

    move-result v0

    invoke-virtual {v1, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 46761
    sget v0, Lcom/facebook/ads/redexgen/X/Ni;->A07:I

    invoke-virtual {v1, v7, v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 46762
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Na;->setAlignment(I)V

    .line 46763
    invoke-virtual {p0, p1, v1}, Lcom/facebook/ads/redexgen/X/Ny;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :array_0
    .array-data 4
        -0x6a000000
        0x0
    .end array-data
.end method
