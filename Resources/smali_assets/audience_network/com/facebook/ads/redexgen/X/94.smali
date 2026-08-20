.class public final Lcom/facebook/ads/redexgen/X/94;
.super Lcom/facebook/ads/redexgen/X/SR;
.source ""


# static fields
.field public static final A02:I


# instance fields
.field public final A00:Landroid/view/View;

.field public final A01:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 20053
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/facebook/ads/redexgen/X/94;->A02:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nm;Z)V
    .locals 6

    .line 20054
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/SR;-><init>(Lcom/facebook/ads/redexgen/X/Nm;Z)V

    .line 20055
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/94;->A01:Z

    .line 20056
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A02()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/94;->A00:Landroid/view/View;

    .line 20057
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->A0g()V

    .line 20058
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/94;->A01:Z

    const/4 v5, -0x1

    if-eqz v0, :cond_1

    .line 20059
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A02()Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/94;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20060
    .end local v0
    .end local v1
    .end local v2
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/94;->A00:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A13(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20061
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/94;->A00:Landroid/view/View;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Nn;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Nn;-><init>(Lcom/facebook/ads/redexgen/X/94;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20062
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/ND;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ND;->bringToFront()V

    .line 20063
    return-void

    .line 20064
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20065
    .local v0, "insideContainerLayout":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 20066
    .local v2, "insideContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/ND;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ND;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 20067
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20068
    const/4 v0, -0x2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 20069
    .local v1, "mediaViewParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 20070
    sget v2, Lcom/facebook/ads/redexgen/X/Ni;->A07:I

    sget v1, Lcom/facebook/ads/redexgen/X/Ni;->A07:I

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 20071
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/94;->A00:Landroid/view/View;

    invoke-virtual {v4, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20072
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/94;->addView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public final A02()Z
    .locals 1

    .line 20073
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/94;->A01:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Ni;->A02()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0D()Z
    .locals 1

    .line 20074
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/94;->A01:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Ni;->A02()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0c(Lcom/facebook/ads/redexgen/X/1C;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 4
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 20075
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/SR;->A0c(Lcom/facebook/ads/redexgen/X/1C;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 20076
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/94;->A01:Z

    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    cmpl-double v0, p3, v1

    if-lez v0, :cond_0

    .line 20077
    sget v1, Lcom/facebook/ads/redexgen/X/94;->A02:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ni;->A07:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    .line 20078
    .local v0, "availableWidthPx":I
    int-to-double v2, v1

    div-double/2addr v2, p3

    double-to-int v1, v2

    .line 20079
    .local v1, "mediaHeight":I
    const/4 v0, -0x1

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 20080
    .local v2, "mediaViewParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 20081
    sget v2, Lcom/facebook/ads/redexgen/X/Ni;->A07:I

    sget v1, Lcom/facebook/ads/redexgen/X/Ni;->A07:I

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 20082
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/94;->A00:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20083
    .end local v0    # "availableWidthPx":I
    .end local v1    # "mediaHeight":I
    .end local v2    # "mediaViewParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public final A0d()Z
    .locals 1

    .line 20084
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/94;->A01:Z

    return v0
.end method
