.class public final Lcom/facebook/ads/redexgen/X/Lq;
.super Lcom/facebook/ads/internal/api/AdNativeComponentView;
.source ""


# static fields
.field public static final A01:I


# instance fields
.field public final A00:Landroid/widget/ImageView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 43936
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Lq;->A01:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 3

    .line 43937
    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/api/AdNativeComponentView;-><init>(Landroid/content/Context;)V

    .line 43938
    new-instance v0, Lcom/facebook/ads/redexgen/X/M2;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/M2;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Lq;->A00:Landroid/widget/ImageView;

    .line 43939
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Lq;->A00:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 43940
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Lq;->A00:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Kp;->A0A:Lcom/facebook/ads/redexgen/X/Kp;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Kp;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Kp;)V

    .line 43941
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Lq;->A00:Landroid/widget/ImageView;

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/Lq;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43942
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Lq;->A00:Landroid/widget/ImageView;

    const v0, -0x7f000001

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0M(Landroid/view/View;I)V

    .line 43943
    sget v0, Lcom/facebook/ads/redexgen/X/Lq;->A01:I

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/Lq;->setPadding(IIII)V

    .line 43944
    return-void
.end method


# virtual methods
.method public getAdContentsView()Landroid/view/View;
    .locals 1

    .line 43945
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lq;->A00:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getImageCardView()Landroid/widget/ImageView;
    .locals 1

    .line 43946
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lq;->A00:Landroid/widget/ImageView;

    return-object v0
.end method
