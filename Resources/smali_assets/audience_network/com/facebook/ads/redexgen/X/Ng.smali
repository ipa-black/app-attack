.class public final Lcom/facebook/ads/redexgen/X/Ng;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A00:I

.field public static final A01:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 46503
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kk;->A03:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/facebook/ads/redexgen/X/Ng;->A00:I

    .line 46504
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kk;->A03:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/facebook/ads/redexgen/X/Ng;->A01:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/1C;)F
    .locals 2

    .line 46506
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1F;->A01()I

    move-result v1

    .line 46507
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1F;->A00()I

    move-result v0

    .line 46508
    .local v1, "height":I
    if-lez v0, :cond_0

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    :goto_0
    return v1

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method public static A01(D)I
    .locals 3

    .line 46509
    sget v1, Lcom/facebook/ads/redexgen/X/Ng;->A01:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ni;->A07:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    .line 46510
    .local v0, "availableWidth":I
    int-to-double v1, v1

    div-double/2addr v1, p0

    double-to-int v0, v1

    return v0
.end method

.method public static A02(I)I
    .locals 3

    .line 46511
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A01(I)I

    move-result v2

    .line 46512
    .local v0, "ctaTextHeight":I
    sget v0, Lcom/facebook/ads/redexgen/X/NM;->A0A:I

    mul-int/lit8 v1, v0, 0x2

    .line 46513
    .local v1, "ctaSpacing":I
    sget v0, Lcom/facebook/ads/redexgen/X/Ni;->A07:I

    mul-int/lit8 v0, v0, 0x2

    .line 46514
    .local v2, "ctaMargin":I
    add-int/2addr v2, v1

    add-int/2addr v2, v0

    .line 46515
    .local p0, "bottomMargin":I
    sget v0, Lcom/facebook/ads/redexgen/X/Ng;->A00:I

    sub-int/2addr v0, p0

    sub-int/2addr v0, v2

    return v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/Sa;Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 46516
    new-instance v0, Lcom/facebook/ads/redexgen/X/Nf;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Nf;-><init>(Lcom/facebook/ads/redexgen/X/Sa;Ljava/lang/String;)V

    return-object v0
.end method

.method public static A04(D)Z
    .locals 3

    .line 46517
    const-wide v1, 0x3feccccccccccccdL    # 0.9

    cmpg-double v0, p0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A05(DI)Z
    .locals 2

    .line 46518
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Ng;->A02(I)I

    move-result v1

    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Ng;->A01(D)I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A06(IID)Z
    .locals 1

    .line 46519
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    invoke-static {p2, p3, p1}, Lcom/facebook/ads/redexgen/X/Ng;->A05(DI)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
