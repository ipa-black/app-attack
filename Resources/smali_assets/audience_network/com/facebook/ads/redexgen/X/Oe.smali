.class public final Lcom/facebook/ads/redexgen/X/Oe;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Oc;,
        Lcom/facebook/ads/redexgen/X/Od;
    }
.end annotation


# static fields
.field public static final A05:I

.field public static final A06:I

.field public static final A07:I

.field public static final A08:I


# instance fields
.field public A00:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A03:Lcom/facebook/ads/redexgen/X/NU;

.field public final A04:Lcom/facebook/ads/redexgen/X/Na;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 47763
    sget v0, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Oe;->A07:I

    .line 47764
    sget v0, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Oe;->A08:I

    .line 47765
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Oe;->A06:I

    .line 47766
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x42900000    # 72.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Oe;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Oc;)V
    .locals 6

    .line 47767
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Oc;->A04(Lcom/facebook/ads/redexgen/X/Oc;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47768
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Oc;->A04(Lcom/facebook/ads/redexgen/X/Oc;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A02:Lcom/facebook/ads/redexgen/X/Xc;

    .line 47769
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oe;->A02:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v0, Lcom/facebook/ads/redexgen/X/NU;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/NU;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A03:Lcom/facebook/ads/redexgen/X/NU;

    .line 47770
    new-instance v0, Lcom/facebook/ads/redexgen/X/Na;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oe;->A02:Lcom/facebook/ads/redexgen/X/Xc;

    .line 47771
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Oc;->A02(Lcom/facebook/ads/redexgen/X/Oc;)Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Na;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/1L;ZZZ)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A04:Lcom/facebook/ads/redexgen/X/Na;

    .line 47772
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Oc;->A00(Lcom/facebook/ads/redexgen/X/Oc;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A01:I

    .line 47773
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Oe;->A03(Lcom/facebook/ads/redexgen/X/Oc;)V

    .line 47774
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Oc;Lcom/facebook/ads/redexgen/X/Rl;)V
    .locals 0

    .line 47775
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Oe;-><init>(Lcom/facebook/ads/redexgen/X/Oc;)V

    return-void
.end method

.method private A00()V
    .locals 2

    .line 47776
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oe;->A03:Lcom/facebook/ads/redexgen/X/NU;

    const/16 v0, 0x96

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Oe;->A01(Landroid/view/View;I)V

    .line 47777
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oe;->A04:Lcom/facebook/ads/redexgen/X/Na;

    const/16 v0, 0xaa

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Oe;->A01(Landroid/view/View;I)V

    .line 47778
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oe;->A00:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 47779
    const/16 v0, 0xbe

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Oe;->A01(Landroid/view/View;I)V

    .line 47780
    :cond_0
    return-void
.end method

.method private A01(Landroid/view/View;I)V
    .locals 3

    .line 47781
    int-to-float v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 47782
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 47783
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 47784
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    neg-int v0, p2

    int-to-float v0, v0

    .line 47785
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 47786
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 47787
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 47788
    const-wide/16 v0, 0x12c

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v1, 0x40000000    # 2.0f

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 47789
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 47790
    return-void
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/Oc;)V
    .locals 7

    .line 47791
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Oc;->A05(Lcom/facebook/ads/redexgen/X/Oc;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47792
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Oe;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A00:Landroid/widget/LinearLayout;

    .line 47793
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oe;->A00:Landroid/widget/LinearLayout;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 47794
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Oe;->A00:Landroid/widget/LinearLayout;

    sget v2, Lcom/facebook/ads/redexgen/X/Oe;->A08:I

    div-int/lit8 v1, v2, 0x2

    div-int/lit8 v0, v2, 0x2

    invoke-virtual {v3, v2, v1, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 47795
    const/4 v1, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47796
    .local v0, "informativeContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Oe;->A08:I

    div-int/lit8 v0, v0, 0x2

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 47797
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Oe;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 47798
    .local v2, "informativeTextView":Landroid/widget/TextView;
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47799
    const/16 v0, 0x10

    invoke-static {v5, v6, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0X(Landroid/widget/TextView;ZI)V

    .line 47800
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Oc;->A05(Lcom/facebook/ads/redexgen/X/Oc;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47801
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47802
    .local v1, "informativeTextViewParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Oe;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 47803
    .local v4, "informativeIconView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oe;->A02:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sf;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/Sf;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 47804
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sf;->A04()Lcom/facebook/ads/redexgen/X/Sf;

    move-result-object v1

    .line 47805
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Oc;->A06(Lcom/facebook/ads/redexgen/X/Oc;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A07(Ljava/lang/String;)V

    .line 47806
    sget v0, Lcom/facebook/ads/redexgen/X/Oe;->A07:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47807
    .local v5, "informativeIconViewParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Oe;->A08:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v6, v6, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 47808
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47809
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47810
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 47811
    .local v3, "bgDrawable":Landroid/graphics/drawable/GradientDrawable;
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 47812
    const v0, 0x1bffffff

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 47813
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A00:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LL;->A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 47814
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/Oe;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47815
    .end local v0    # "informativeContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "informativeTextViewParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "informativeTextView":Landroid/widget/TextView;
    .end local v3    # "bgDrawable":Landroid/graphics/drawable/GradientDrawable;
    .end local v4    # "informativeIconView":Landroid/widget/ImageView;
    .end local v5    # "informativeIconViewParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/Oc;)V
    .locals 10

    .line 47816
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A03:Lcom/facebook/ads/redexgen/X/NU;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/LL;->A0M(Landroid/view/View;I)V

    .line 47817
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oe;->A03:Lcom/facebook/ads/redexgen/X/NU;

    const/16 v0, 0x32

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NU;->setRadius(I)V

    .line 47818
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Oc;->A01(Lcom/facebook/ads/redexgen/X/Oc;)Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A00()Lcom/facebook/ads/redexgen/X/1H;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/1H;->A05:Lcom/facebook/ads/redexgen/X/1H;

    const/4 v3, 0x1

    if-ne v1, v0, :cond_0

    .line 47819
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A03:Lcom/facebook/ads/redexgen/X/NU;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/NU;->setFullCircleCorners(Z)V

    .line 47820
    :goto_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Oe;->A03:Lcom/facebook/ads/redexgen/X/NU;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oe;->A02:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sf;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/Sf;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 47821
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sf;->A04()Lcom/facebook/ads/redexgen/X/Sf;

    move-result-object v1

    .line 47822
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Oc;->A03(Lcom/facebook/ads/redexgen/X/Oc;)Lcom/facebook/ads/redexgen/X/1V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1V;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A07(Ljava/lang/String;)V

    .line 47823
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Oe;->A04:Lcom/facebook/ads/redexgen/X/Na;

    .line 47824
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Oc;->A01(Lcom/facebook/ads/redexgen/X/Oc;)Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A06()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Oc;->A03(Lcom/facebook/ads/redexgen/X/Oc;)Lcom/facebook/ads/redexgen/X/1V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1V;->A03()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 47825
    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Na;->A03(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 47826
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A04:Lcom/facebook/ads/redexgen/X/Na;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Na;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v1

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 47827
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A04:Lcom/facebook/ads/redexgen/X/Na;

    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Na;->setAlignment(I)V

    .line 47828
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47829
    .local v0, "titleAndDescriptionParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/Oe;->A08:I

    div-int/lit8 v0, v1, 0x2

    invoke-virtual {v4, v2, v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 47830
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Oe;->A03:Lcom/facebook/ads/redexgen/X/NU;

    sget v1, Lcom/facebook/ads/redexgen/X/Oe;->A05:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/Oe;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47831
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A04:Lcom/facebook/ads/redexgen/X/Na;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/Oe;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47832
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Oe;->A02(Lcom/facebook/ads/redexgen/X/Oc;)V

    .line 47833
    const v0, -0xdcd8d1

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0M(Landroid/view/View;I)V

    .line 47834
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/Oe;->setGravity(I)V

    .line 47835
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Oe;->setOrientation(I)V

    .line 47836
    return-void

    .line 47837
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oe;->A03:Lcom/facebook/ads/redexgen/X/NU;

    sget v0, Lcom/facebook/ads/redexgen/X/Oe;->A06:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NU;->setRadius(I)V

    goto :goto_0
.end method


# virtual methods
.method public final A04(Lcom/facebook/ads/redexgen/X/Od;)V
    .locals 3

    .line 47838
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Oe;->A00()V

    .line 47839
    new-instance v2, Lcom/facebook/ads/redexgen/X/Rl;

    invoke-direct {v2, p0, p1}, Lcom/facebook/ads/redexgen/X/Rl;-><init>(Lcom/facebook/ads/redexgen/X/Oe;Lcom/facebook/ads/redexgen/X/Od;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A01:I

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Oe;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47840
    return-void
.end method
