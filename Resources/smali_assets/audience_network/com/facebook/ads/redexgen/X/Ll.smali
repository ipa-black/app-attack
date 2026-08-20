.class public final Lcom/facebook/ads/redexgen/X/Ll;
.super Lcom/facebook/ads/internal/api/AdNativeComponentView;
.source ""


# static fields
.field public static A08:[Ljava/lang/String;

.field public static final A09:I

.field public static final A0A:I

.field public static final A0B:I

.field public static final A0C:I

.field public static final A0D:I

.field public static final A0E:I

.field public static final A0F:I

.field public static final A0G:I

.field public static final A0H:I


# instance fields
.field public final A00:Landroid/widget/LinearLayout;

.field public final A01:Landroid/widget/RelativeLayout;

.field public final A02:Landroid/widget/RelativeLayout;

.field public final A03:Landroid/widget/TextView;

.field public final A04:Landroid/widget/TextView;

.field public final A05:Landroid/widget/TextView;

.field public final A06:Lcom/facebook/ads/redexgen/X/J0;

.field public final A07:Lcom/facebook/ads/redexgen/X/Sz;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 43749
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "uC9D5qmNt6hBQ30WTqHbWjXyd7i1Eya7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "gODvKHA4maP1ueedVTfLSKuHicNhKgsI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CsSG52h0mPiGpGKpZqt1sL51qY2PgKJk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "t8ZdPgNdDyW7PJ5OFmmKGTW0QKkF2iLl"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "957CjoSzFmlmvQzAWdXFvCjH6Z48RGY7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Wj5TDMvsQRhldaVPvD6nNpKwpdYrUsC9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "EcmINfrxIVIGvxUX8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "04S0zAGn7nkSUB63PmP3o85Q9zROVkT0"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ll;->A08:[Ljava/lang/String;

    sget v0, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    float-to-int v0, v0

    mul-int/lit16 v0, v0, 0x1f4

    sput v0, Lcom/facebook/ads/redexgen/X/Ll;->A09:I

    .line 43750
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x43fa0000    # 500.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Ll;->A0H:I

    .line 43751
    sget v0, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Ll;->A0D:I

    .line 43752
    sget v0, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Ll;->A0B:I

    .line 43753
    sget v0, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Ll;->A0G:I

    .line 43754
    sget v0, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Ll;->A0E:I

    .line 43755
    sget v0, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Ll;->A0C:I

    .line 43756
    sget v0, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Ll;->A0F:I

    .line 43757
    sget v0, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    float-to-double v2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v0

    double-to-int v0, v2

    sput v0, Lcom/facebook/ads/redexgen/X/Ll;->A0A:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/J0;)V
    .locals 1

    .line 43758
    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/api/AdNativeComponentView;-><init>(Landroid/content/Context;)V

    .line 43759
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ll;->A06:Lcom/facebook/ads/redexgen/X/J0;

    .line 43760
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A05:Landroid/widget/TextView;

    .line 43761
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A04:Landroid/widget/TextView;

    .line 43762
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A03:Landroid/widget/TextView;

    .line 43763
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A02:Landroid/widget/RelativeLayout;

    .line 43764
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A00:Landroid/widget/LinearLayout;

    .line 43765
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A01:Landroid/widget/RelativeLayout;

    .line 43766
    new-instance v0, Lcom/facebook/ads/redexgen/X/Sz;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Sz;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A07:Lcom/facebook/ads/redexgen/X/Sz;

    .line 43767
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ll;->A09()V

    .line 43768
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ll;->A0D()V

    .line 43769
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ll;->A05()V

    .line 43770
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ll;->A0A()V

    .line 43771
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ll;->A00()V

    .line 43772
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ll;->A0B()V

    .line 43773
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ll;->A03()V

    .line 43774
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ll;->A0A()V

    .line 43775
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ll;->A08()V

    .line 43776
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ll;->A0C()V

    .line 43777
    return-void
.end method

.method private A00()V
    .locals 3

    .line 43778
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43779
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 43780
    const/4 v0, 0x1

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 43781
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ll;->A00:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43782
    return-void
.end method

.method private A01()V
    .locals 4

    .line 43783
    const/4 v3, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 43784
    .local v0, "ctaParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A04:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 43785
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A03:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 43786
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ll;->A02:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A03:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43787
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 43788
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ll;->A02:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43789
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ll;->A02:Landroid/widget/RelativeLayout;

    sget v0, Lcom/facebook/ads/redexgen/X/Ll;->A0G:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 43790
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A02:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 43791
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ll;->A00:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43792
    return-void
.end method

.method private A02()V
    .locals 3

    .line 43793
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43794
    .local v0, "ctaParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/Ll;->A0B:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ll;->A0D:I

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 43795
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A03:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 43796
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ll;->A00:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A03:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43797
    return-void
.end method

.method private A03()V
    .locals 3

    .line 43798
    const/4 v1, -0x2

    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43799
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ll;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A07:Lcom/facebook/ads/redexgen/X/Sz;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43800
    return-void
.end method

.method private A04()V
    .locals 4

    .line 43801
    const/4 v0, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 43802
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A07:Lcom/facebook/ads/redexgen/X/Sz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sz;->getId()I

    move-result v1

    const/16 v0, 0x8

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 43803
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A07:Lcom/facebook/ads/redexgen/X/Sz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sz;->getId()I

    move-result v1

    const/4 v0, 0x5

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 43804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A07:Lcom/facebook/ads/redexgen/X/Sz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sz;->getId()I

    move-result v1

    const/4 v0, 0x7

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 43805
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ll;->A02:Landroid/widget/RelativeLayout;

    sget v1, Lcom/facebook/ads/redexgen/X/Ll;->A0G:I

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 43806
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 43807
    .local v1, "shape":Landroid/graphics/drawable/GradientDrawable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43808
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A02:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 43809
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ll;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43810
    return-void

    :array_0
    .array-data 4
        -0x34000000    # -3.3554432E7f
        0x0
    .end array-data
.end method

.method private A05()V
    .locals 2

    .line 43811
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43812
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Ll;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43813
    return-void
.end method

.method private A06()V
    .locals 2

    .line 43814
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A05:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43815
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43816
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ll;->A03:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A06:Lcom/facebook/ads/redexgen/X/J0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/J0;->A03()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43817
    return-void
.end method

.method private A07()V
    .locals 3

    .line 43818
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ll;->A07:Lcom/facebook/ads/redexgen/X/Sz;

    sget v0, Lcom/facebook/ads/redexgen/X/Ll;->A0H:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sz;->setMaxWidth(I)V

    .line 43819
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ll;->A05:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ll;->A06:Lcom/facebook/ads/redexgen/X/J0;

    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A04(F)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43820
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ll;->A04:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ll;->A06:Lcom/facebook/ads/redexgen/X/J0;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A04(F)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43821
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ll;->A03:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A06:Lcom/facebook/ads/redexgen/X/J0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/J0;->A03()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43822
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x1

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 43823
    return-void
.end method

.method private A08()V
    .locals 2

    .line 43824
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ll;->A03:Landroid/widget/TextView;

    sget v0, Lcom/facebook/ads/redexgen/X/Ll;->A0C:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 43825
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ll;->A03:Landroid/widget/TextView;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 43826
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A03:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 43827
    return-void
.end method

.method private A09()V
    .locals 3

    .line 43828
    const/4 v2, -0x2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ll;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43829
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 43830
    .local v0, "shape":Landroid/graphics/drawable/GradientDrawable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A06:Lcom/facebook/ads/redexgen/X/J0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/J0;->A01()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 43831
    sget v0, Lcom/facebook/ads/redexgen/X/Ll;->A0F:I

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 43832
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A06:Lcom/facebook/ads/redexgen/X/J0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/J0;->A02()I

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 43833
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/Ll;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43834
    sget v0, Lcom/facebook/ads/redexgen/X/Ll;->A0A:I

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/Ll;->setPadding(IIII)V

    .line 43835
    return-void
.end method

.method private A0A()V
    .locals 1

    .line 43836
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A01:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 43837
    return-void
.end method

.method private A0B()V
    .locals 6

    .line 43838
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ll;->A07:Lcom/facebook/ads/redexgen/X/Sz;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sz;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 43839
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ll;->A07:Lcom/facebook/ads/redexgen/X/Sz;

    const/16 v0, 0x8

    new-array v3, v0, [F

    sget v5, Lcom/facebook/ads/redexgen/X/Ll;->A0F:I

    int-to-float v1, v5

    const/4 v0, 0x0

    aput v1, v3, v0

    int-to-float v0, v5

    const/4 v2, 0x1

    aput v0, v3, v2

    int-to-float v1, v5

    const/4 v0, 0x2

    aput v1, v3, v0

    int-to-float v1, v5

    const/4 v0, 0x3

    aput v1, v3, v0

    const/4 v1, 0x0

    const/4 v0, 0x4

    aput v1, v3, v0

    const/4 v0, 0x5

    aput v1, v3, v0

    const/4 v0, 0x6

    aput v1, v3, v0

    const/4 v0, 0x7

    aput v1, v3, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/NU;->setRadius([F)V

    .line 43840
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A07:Lcom/facebook/ads/redexgen/X/Sz;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Sz;->setAdjustViewBounds(Z)V

    .line 43841
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ll;->A07:Lcom/facebook/ads/redexgen/X/Sz;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Kp;->A0A:Lcom/facebook/ads/redexgen/X/Kp;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Kp;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Kp;)V

    .line 43842
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A07:Lcom/facebook/ads/redexgen/X/Sz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 43843
    return-void
.end method

.method private A0C()V
    .locals 6

    .line 43844
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A02:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 43845
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ll;->A05:Landroid/widget/TextView;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 43846
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A05:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 43847
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A05:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 43848
    const/4 v4, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 43849
    .local v0, "titleParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Ll;->A0E:I

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 43850
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ll;->A02:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A05:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43851
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ll;->A04:Landroid/widget/TextView;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 43852
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A04:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 43853
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 43854
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 43855
    .local v1, "subTitleParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A05:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 43856
    sget v0, Lcom/facebook/ads/redexgen/X/Ll;->A0E:I

    invoke-virtual {v2, v3, v3, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 43857
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ll;->A02:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A04:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43858
    return-void
.end method

.method private A0D()V
    .locals 2

    .line 43859
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ll;->A00:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 43860
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A00:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 43861
    return-void
.end method


# virtual methods
.method public getAdContentsView()Landroid/view/View;
    .locals 1

    .line 43862
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A07:Lcom/facebook/ads/redexgen/X/Sz;

    return-object v0
.end method

.method public getImageCardView()Landroid/widget/ImageView;
    .locals 1

    .line 43863
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A07:Lcom/facebook/ads/redexgen/X/Sz;

    return-object v0
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 43864
    sget v0, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    float-to-int v1, v0

    .line 43865
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ll;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A0D(Landroid/content/Context;)I

    move-result v0

    mul-int/2addr v1, v0

    .line 43866
    .local v0, "heightThreshold":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 43867
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ll;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ll;->A08:[Ljava/lang/String;

    const-string v1, "15DEnWMwGzueTnQFE8qATib1q5d5oHj9"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "kyJeuSgnvxhO6LbcYzomu9S0GmVFz9Qa"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v3, :cond_1

    .line 43868
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ll;->A01()V

    .line 43869
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ll;->A07()V

    .line 43870
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/internal/api/AdNativeComponentView;->onMeasure(II)V

    .line 43871
    return-void

    .line 43872
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ll;->A02()V

    .line 43873
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ll;->A04()V

    .line 43874
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ll;->A06()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 4

    .line 43875
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43876
    .end local v0
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ll;->A03:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43877
    return-void

    .line 43878
    :cond_1
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 43879
    .local v0, "spanString":Landroid/text/SpannableString;
    const/4 v0, 0x1

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 43880
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A03:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43881
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 2

    .line 43882
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43883
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ll;->A04:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43884
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43885
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .line 43886
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43887
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ll;->A05:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43888
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ll;->A05:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43889
    return-void
.end method
