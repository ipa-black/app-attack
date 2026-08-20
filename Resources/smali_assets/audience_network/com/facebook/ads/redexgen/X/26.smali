.class public final Lcom/facebook/ads/redexgen/X/26;
.super Lcom/facebook/ads/redexgen/X/8x;
.source ""


# static fields
.field public static final A00:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 5033
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/26;->A00:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nm;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Rd;)V
    .locals 1

    .line 5034
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/8x;-><init>(Lcom/facebook/ads/redexgen/X/Nm;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/Rd;)V

    .line 5035
    return-void
.end method


# virtual methods
.method public final A00()Z
    .locals 1

    .line 5036
    const/4 v0, 0x0

    return v0
.end method

.method public final A0D()Z
    .locals 1

    .line 5037
    const/4 v0, 0x0

    return v0
.end method

.method public final A0l(Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 7

    .line 5038
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v6

    .line 5039
    .local v0, "titleDescContainer":Lcom/facebook/ads/redexgen/X/Na;
    const/4 v5, 0x3

    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/Na;->setAlignment(I)V

    .line 5040
    const/4 v4, -0x2

    const/4 v3, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5041
    .local v2, "adTitleAndDescriptionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8x;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    const/16 v0, 0x8

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 5042
    invoke-virtual {v6, v2}, Lcom/facebook/ads/redexgen/X/Na;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5043
    sget v0, Lcom/facebook/ads/redexgen/X/26;->A00:I

    invoke-virtual {v6, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/Na;->setPadding(IIII)V

    .line 5044
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0R(Landroid/view/View;Landroid/content/Context;)V

    .line 5045
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5046
    .local v3, "ctaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8x;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v1, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 5047
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getCtaButton()Lcom/facebook/ads/redexgen/X/Sa;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Sa;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5048
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8x;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/26;->addView(Landroid/view/View;)V

    .line 5049
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/26;->addView(Landroid/view/View;)V

    .line 5050
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getCtaButton()Lcom/facebook/ads/redexgen/X/Sa;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/26;->addView(Landroid/view/View;)V

    .line 5051
    return-void
.end method
