.class public final Lcom/facebook/ads/redexgen/X/O0;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field public static final A04:I

.field public static final A05:I

.field public static final A06:I

.field public static final A07:I

.field public static final A08:I


# instance fields
.field public final A00:I

.field public final A01:Landroid/widget/RelativeLayout;

.field public final A02:Lcom/facebook/ads/redexgen/X/Sa;

.field public final A03:Lcom/facebook/ads/redexgen/X/Nm;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 46765
    sget v0, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v1, 0x42100000    # 36.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/O0;->A06:I

    .line 46766
    sget v0, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/O0;->A07:I

    .line 46767
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41b80000    # 23.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/O0;->A04:I

    .line 46768
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/O0;->A05:I

    .line 46769
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/O0;->A08:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nm;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1L;Lcom/facebook/ads/redexgen/X/NH;)V
    .locals 13

    .line 46770
    move-object v2, p0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46771
    iput-object p1, v2, Lcom/facebook/ads/redexgen/X/O0;->A03:Lcom/facebook/ads/redexgen/X/Nm;

    .line 46772
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/1L;->A08(Z)I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/O0;->A00:I

    .line 46773
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/O0;->A01:Landroid/widget/RelativeLayout;

    .line 46774
    const/4 v3, -0x1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 46775
    .local v4, "containerParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/O0;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/O0;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46776
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/O0;->A01:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 46777
    move-object v0, p2

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/O0;->A01(Ljava/lang/String;)V

    .line 46778
    new-instance v5, Lcom/facebook/ads/redexgen/X/Sa;

    .line 46779
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v6

    .line 46780
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A04()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0G()Ljava/lang/String;

    move-result-object v7

    .line 46781
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A06()Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v9

    .line 46782
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A09()Lcom/facebook/ads/redexgen/X/Lj;

    move-result-object v10

    .line 46783
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A0B()Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v11

    .line 46784
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A07()Lcom/facebook/ads/redexgen/X/LD;

    move-result-object v12

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/facebook/ads/redexgen/X/Sa;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1L;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/LD;)V

    iput-object v5, v2, Lcom/facebook/ads/redexgen/X/O0;->A02:Lcom/facebook/ads/redexgen/X/Sa;

    .line 46785
    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/O0;->A02:Lcom/facebook/ads/redexgen/X/Sa;

    .line 46786
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A04()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0F()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v5

    .line 46787
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A04()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46788
    move-object/from16 v7, p4

    invoke-virtual {v6, v5, v1, v0, v7}, Lcom/facebook/ads/redexgen/X/Sa;->setCta(Lcom/facebook/ads/redexgen/X/1M;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/NH;)V

    .line 46789
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/O0;->A02:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Sa;->setIsInAppBrowser(Z)V

    .line 46790
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 46791
    .local v2, "ctaButtonParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/O0;->A02:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/O0;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46792
    return-void
.end method

.method private A00(Landroid/view/View;)V
    .locals 4

    .line 46793
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A03:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 46794
    .local v0, "arrowButton":Landroid/widget/ImageView;
    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A0N:Lcom/facebook/ads/redexgen/X/LT;

    .line 46795
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LU;->A01(Lcom/facebook/ads/redexgen/X/LT;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 46796
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 46797
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 46798
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 46799
    iget v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A00:I

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 46800
    sget v0, Lcom/facebook/ads/redexgen/X/O0;->A04:I

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46801
    .local v1, "arrowParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/O0;->A05:I

    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 46802
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v0, 0x2

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 46803
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 46804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46805
    return-void
.end method

.method private A01(Ljava/lang/String;)V
    .locals 4

    .line 46806
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A03:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 46807
    .local v0, "innerCta":Landroid/widget/TextView;
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 46808
    sget v1, Lcom/facebook/ads/redexgen/X/O0;->A07:I

    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 46809
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46810
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 46811
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 46812
    iget v1, p0, Lcom/facebook/ads/redexgen/X/O0;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/O0;->A08:I

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0O(Landroid/view/View;II)V

    .line 46813
    const/high16 v0, -0x1000000

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46814
    sget v2, Lcom/facebook/ads/redexgen/X/O0;->A06:I

    const/4 v0, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46815
    .local v1, "ctaParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 46816
    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 46817
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46818
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/O0;->A00(Landroid/view/View;)V

    .line 46819
    return-void
.end method


# virtual methods
.method public final A02(Ljava/lang/String;)V
    .locals 1

    .line 46820
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A02:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Sa;->A09(Ljava/lang/String;)V

    .line 46821
    return-void
.end method

.method public final performClick()Z
    .locals 1

    .line 46822
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A02:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sa;->performClick()Z

    move-result v0

    return v0
.end method

.method public setAutoClickTime(Lcom/facebook/ads/redexgen/X/Zs;Lcom/facebook/ads/redexgen/X/Li;)V
    .locals 1
    .param p2    # Lcom/facebook/ads/redexgen/X/Li;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 46823
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A02:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Sa;->A0A(Lcom/facebook/ads/redexgen/X/Zs;Lcom/facebook/ads/redexgen/X/Li;)Z

    .line 46824
    return-void
.end method
