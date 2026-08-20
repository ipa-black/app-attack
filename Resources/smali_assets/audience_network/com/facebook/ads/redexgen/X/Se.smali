.class public final Lcom/facebook/ads/redexgen/X/Se;
.super Lcom/facebook/ads/redexgen/X/2P;
.source ""


# static fields
.field public static A07:[B

.field public static final A08:I

.field public static final A09:I

.field public static final A0A:I

.field public static final A0B:I

.field public static final A0C:I


# instance fields
.field public final A00:Landroid/widget/LinearLayout;

.field public final A01:Landroid/widget/RelativeLayout;

.field public final A02:Lcom/facebook/ads/redexgen/X/Zs;

.field public final A03:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A04:Lcom/facebook/ads/redexgen/X/Ia;

.field public final A05:Lcom/facebook/ads/redexgen/X/LD;

.field public final A06:Lcom/facebook/ads/redexgen/X/Lj;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 52740
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Se;->A06()V

    sget v1, Lcom/facebook/ads/redexgen/X/2P;->A08:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Se;->A0B:I

    .line 52741
    sget v1, Lcom/facebook/ads/redexgen/X/2P;->A08:F

    const/high16 v0, 0x42a80000    # 84.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Se;->A0C:I

    .line 52742
    sget v1, Lcom/facebook/ads/redexgen/X/2P;->A08:F

    const/high16 v0, 0x41600000    # 14.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Se;->A0A:I

    .line 52743
    sget v1, Lcom/facebook/ads/redexgen/X/2P;->A08:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Se;->A08:I

    .line 52744
    const/4 v1, -0x1

    const/16 v0, 0x4d

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2a;->A01(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Se;->A09:I

    .line 52745
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Zs;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;)V
    .locals 4

    .line 52746
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2P;-><init>(Landroid/content/Context;)V

    .line 52747
    new-instance v0, Lcom/facebook/ads/redexgen/X/LD;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/LD;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A05:Lcom/facebook/ads/redexgen/X/LD;

    .line 52748
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Se;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    .line 52749
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Se;->A02:Lcom/facebook/ads/redexgen/X/Zs;

    .line 52750
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Se;->A04:Lcom/facebook/ads/redexgen/X/Ia;

    .line 52751
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Se;->A06:Lcom/facebook/ads/redexgen/X/Lj;

    .line 52752
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A05:Lcom/facebook/ads/redexgen/X/LD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LD;->A05()V

    .line 52753
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/2P;->setRadius(F)V

    .line 52754
    const/high16 v0, 0x42960000    # 75.0f

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/2P;->setMaxCardElevation(F)V

    .line 52755
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A01:Landroid/widget/RelativeLayout;

    .line 52756
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Se;->A01:Landroid/widget/RelativeLayout;

    .line 52757
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1F;->A07()Ljava/lang/String;

    move-result-object v0

    .line 52758
    invoke-static {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Ne;->A00(Lcom/facebook/ads/redexgen/X/Xc;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 52759
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Se;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Landroid/widget/LinearLayout;

    .line 52760
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52761
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Se;->A05()V

    .line 52762
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Se;->A04()V

    .line 52763
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Se;->A01:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52764
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Se;->A01:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Se;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52765
    return-void
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Se;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x32

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .locals 13

    .line 52766
    new-instance v4, Lcom/facebook/ads/redexgen/X/Sa;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Se;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    sget-object v0, Lcom/facebook/ads/redexgen/X/PN;->A04:Lcom/facebook/ads/redexgen/X/PN;

    .line 52767
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PN;->A02()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A02:Lcom/facebook/ads/redexgen/X/Zs;

    .line 52768
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0g()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A01()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A02:Lcom/facebook/ads/redexgen/X/Zs;

    .line 52769
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0F()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1M;->A06()Z

    move-result v8

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/Se;->A04:Lcom/facebook/ads/redexgen/X/Ia;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/Se;->A06:Lcom/facebook/ads/redexgen/X/Lj;

    iget-object v12, p0, Lcom/facebook/ads/redexgen/X/Se;->A05:Lcom/facebook/ads/redexgen/X/LD;

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/facebook/ads/redexgen/X/Sa;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1L;ZLcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/LD;)V

    .line 52770
    .local v0, "mCTAButton":Lcom/facebook/ads/redexgen/X/Sa;
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/NM;->setViewShowsOverMedia(Z)V

    .line 52771
    const/16 v0, 0x3e9

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/LL;->A0G(ILandroid/view/View;)V

    .line 52772
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A02:Lcom/facebook/ads/redexgen/X/Zs;

    .line 52773
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0F()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A02:Lcom/facebook/ads/redexgen/X/Zs;

    .line 52774
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 52775
    const/4 v0, 0x0

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sa;->setCta(Lcom/facebook/ads/redexgen/X/1M;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/NH;)V

    .line 52776
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52777
    .local v1, "ctaParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Se;->A0B:I

    invoke-virtual {v4, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/Sa;->setPadding(IIII)V

    .line 52778
    sget v1, Lcom/facebook/ads/redexgen/X/Se;->A0B:I

    mul-int/lit8 v0, v1, 0x2

    invoke-virtual {v2, v1, v1, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 52779
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52780
    return-void
.end method

.method private A05()V
    .locals 16

    .line 52781
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Se;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 52782
    .local v1, "iconAndDetailsContainer":Landroid/widget/RelativeLayout;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Se;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v10, Lcom/facebook/ads/redexgen/X/NU;

    invoke-direct {v10, v0}, Lcom/facebook/ads/redexgen/X/NU;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 52783
    .local v2, "iconView":Lcom/facebook/ads/redexgen/X/NU;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Se;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Sf;

    invoke-direct {v1, v10, v0}, Lcom/facebook/ads/redexgen/X/Sf;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Xc;)V

    sget v0, Lcom/facebook/ads/redexgen/X/Se;->A0C:I

    .line 52784
    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A05(II)Lcom/facebook/ads/redexgen/X/Sf;

    move-result-object v1

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Se;->A02:Lcom/facebook/ads/redexgen/X/Zs;

    .line 52785
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0k()Lcom/facebook/ads/redexgen/X/1V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1V;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A07(Ljava/lang/String;)V

    .line 52786
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Lcom/facebook/ads/redexgen/X/NU;->setFullCircleCorners(Z)V

    .line 52787
    const/4 v1, 0x0

    invoke-static {v10, v1}, Lcom/facebook/ads/redexgen/X/LL;->A0M(Landroid/view/View;I)V

    .line 52788
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 52789
    sget v0, Lcom/facebook/ads/redexgen/X/Se;->A0C:I

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52790
    .local v5, "iconParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Se;->A0B:I

    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 52791
    const/16 v2, 0xe

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52792
    invoke-virtual {v5, v10, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52793
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Se;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 52794
    .local v7, "titleView":Landroid/widget/TextView;
    invoke-static {v11}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 52795
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Se;->A02:Lcom/facebook/ads/redexgen/X/Zs;

    .line 52796
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0g()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A01()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/1L;->A06(Z)I

    move-result v0

    .line 52797
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52798
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Se;->A02:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0E()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A06()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52799
    const/16 v9, 0x11

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 52800
    const/4 v7, -0x2

    const/4 v8, -0x1

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52801
    .local v9, "titleParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52802
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/NU;->getId()I

    move-result v0

    const/4 v10, 0x3

    invoke-virtual {v3, v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 52803
    invoke-virtual {v5, v11, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52804
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Se;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52805
    .local v12, "ratingInfoContainer":Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 52806
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52807
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 52808
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52809
    .local v14, "ratingInfoContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Se;->A0B:I

    invoke-virtual {v9, v0, v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 52810
    invoke-virtual {v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52811
    invoke-virtual {v11}, Landroid/widget/TextView;->getId()I

    move-result v0

    invoke-virtual {v9, v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 52812
    invoke-virtual {v5, v3, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52813
    new-instance v10, Lcom/facebook/ads/redexgen/X/NW;

    iget-object v11, v6, Lcom/facebook/ads/redexgen/X/Se;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    sget v12, Lcom/facebook/ads/redexgen/X/Se;->A0A:I

    sget v14, Lcom/facebook/ads/redexgen/X/Se;->A09:I

    const/4 v13, 0x5

    const/4 v15, -0x1

    invoke-direct/range {v10 .. v15}, Lcom/facebook/ads/redexgen/X/NW;-><init>(Lcom/facebook/ads/redexgen/X/Xc;IIII)V

    .line 52814
    .local v13, "starRatingContainer":Lcom/facebook/ads/redexgen/X/NW;
    const/16 v9, 0x10

    invoke-virtual {v10, v9}, Lcom/facebook/ads/redexgen/X/NW;->setGravity(I)V

    .line 52815
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52816
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Se;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 52817
    .local v8, "ratingCountView":Landroid/widget/TextView;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Se;->A02:Lcom/facebook/ads/redexgen/X/Zs;

    .line 52818
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0g()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A01()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/1L;->A06(Z)I

    move-result v0

    .line 52819
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52820
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 52821
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 52822
    invoke-static {v7, v1, v2}, Lcom/facebook/ads/redexgen/X/LL;->A0X(Landroid/widget/TextView;ZI)V

    .line 52823
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52824
    .local v10, "ratingCountParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Se;->A08:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 52825
    invoke-virtual {v3, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52826
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Se;->A02:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0E()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52827
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 52828
    .end local v12    # "ratingInfoContainer":Landroid/widget/LinearLayout;
    .restart local p4
    :cond_0
    :goto_0
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Se;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 52829
    .local v4, "descriptionView":Landroid/widget/TextView;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Se;->A02:Lcom/facebook/ads/redexgen/X/Zs;

    .line 52830
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0g()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A01()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/1L;->A06(Z)I

    move-result v0

    .line 52831
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52832
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Se;->A02:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0E()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52833
    const/16 v0, 0x11

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 52834
    sget v0, Lcom/facebook/ads/redexgen/X/Se;->A0B:I

    invoke-virtual {v7, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 52835
    const/4 v0, -0x2

    const/4 v4, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52836
    .local v3, "descParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52837
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 52838
    invoke-virtual {v5, v7, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52839
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52840
    .local v6, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v0, 0x4

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 52841
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 52842
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Se;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52843
    return-void

    .line 52844
    :cond_1
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 52845
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Se;->A02:Lcom/facebook/ads/redexgen/X/Zs;

    .line 52846
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0E()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 52847
    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/NW;->setRating(F)V

    .line 52848
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Se;->A02:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0E()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A02()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52849
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Se;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52850
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Se;->A02:Lcom/facebook/ads/redexgen/X/Zs;

    .line 52851
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0E()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A02()Ljava/lang/String;

    move-result-object v0

    .line 52852
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .end local v12
    .local p4, "ratingInfoContainer":Landroid/widget/LinearLayout;
    int-to-long v0, v0

    .line 52853
    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Se;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52854
    .local v4, "ratingCount":Ljava/lang/String;
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public static A06()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Se;->A07:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x6et
        -0x7ct
    .end array-data
.end method
