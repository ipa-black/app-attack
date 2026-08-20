.class public final Lcom/facebook/ads/redexgen/X/SG;
.super Lcom/facebook/ads/redexgen/X/Ni;
.source ""


# static fields
.field public static A0S:Lcom/facebook/ads/redexgen/X/SG;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static A0T:[B

.field public static A0U:[Ljava/lang/String;

.field public static final A0V:I

.field public static final A0W:I

.field public static final A0X:I

.field public static final A0Y:I

.field public static final A0Z:I


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:Landroid/view/View;

.field public A07:Landroid/widget/LinearLayout;

.field public A08:Landroid/widget/LinearLayout;

.field public A09:Landroid/widget/TextView;

.field public A0A:Lcom/facebook/ads/redexgen/X/Zs;

.field public A0B:Lcom/facebook/ads/redexgen/X/Mm;

.field public A0C:Lcom/facebook/ads/redexgen/X/Mn;

.field public A0D:Lcom/facebook/ads/redexgen/X/Sq;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0E:Lcom/facebook/ads/redexgen/X/Nm;

.field public A0F:Lcom/facebook/ads/redexgen/X/O0;

.field public A0G:Z

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public A0K:Z

.field public A0L:Z

.field public final A0M:Landroid/view/View;

.field public final A0N:Lcom/facebook/ads/redexgen/X/0f;

.field public final A0O:Lcom/facebook/ads/redexgen/X/Ii;

.field public final A0P:Lcom/facebook/ads/redexgen/X/NR;

.field public final A0Q:Lcom/facebook/ads/redexgen/X/NS;

.field public final A0R:Lcom/facebook/ads/redexgen/X/JW;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 51748
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "E7d9V"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "HfiTPdnQE6JsOHdYoOA4lRNnbQ3"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7AVXCU5oRbsgBqmorHmAVCwb6r5tuTQ8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hoWzaZbN7yXesQFa"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "a3ZYa3"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "EXUfJIeYYGyfdCGOPOS2l0on83CPH94Z"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "MYJwByDzw5bCUSkxw6qgTJ7WJbI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "X3l5ZIwYV4"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/SG;->A0U:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/SG;->A0K()V

    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41d00000    # 26.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/SG;->A0X:I

    .line 51749
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/SG;->A0V:I

    .line 51750
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/SG;->A0Z:I

    .line 51751
    const/4 v1, -0x1

    const/16 v0, 0x4d

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2a;->A01(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/SG;->A0W:I

    .line 51752
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/SG;->A0Y:I

    .line 51753
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SG;->A0S:Lcom/facebook/ads/redexgen/X/SG;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nm;)V
    .locals 17

    .line 51754
    const/4 v1, 0x1

    move-object/from16 v2, p0

    move-object/from16 v11, p1

    invoke-direct {v2, v11, v1}, Lcom/facebook/ads/redexgen/X/Ni;-><init>(Lcom/facebook/ads/redexgen/X/Nm;Z)V

    .line 51755
    const/4 v0, 0x0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/SG;->A01:I

    .line 51756
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/SG;->A0G:Z

    .line 51757
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/SG;->A0I:Z

    .line 51758
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/SG;->A0K:Z

    .line 51759
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/SG;->A0J:Z

    .line 51760
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/SG;->A0L:Z

    .line 51761
    iput-object v11, v2, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    .line 51762
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Nm;->A04()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v3

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/SG;->A0A:Lcom/facebook/ads/redexgen/X/Zs;

    .line 51763
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Nm;->A04()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Nm;->A06()Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v4

    new-instance v3, Lcom/facebook/ads/redexgen/X/Ii;

    invoke-direct {v3, v5, v4}, Lcom/facebook/ads/redexgen/X/Ii;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ia;)V

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/SG;->A0O:Lcom/facebook/ads/redexgen/X/Ii;

    .line 51764
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Nm;->A0A()Lcom/facebook/ads/redexgen/X/JW;

    move-result-object v3

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/SG;->A0R:Lcom/facebook/ads/redexgen/X/JW;

    .line 51765
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/SG;->A0R:Lcom/facebook/ads/redexgen/X/JW;

    if-eqz v3, :cond_0

    .line 51766
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 51767
    :cond_0
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Nm;->A03()Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/SG;->A0M:Landroid/view/View;

    .line 51768
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v4

    .line 51769
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Nm;->A06()Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v5

    .line 51770
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Nm;->A04()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v6

    .line 51771
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Nm;->A04()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1C;->A0F()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1M;->A05()Ljava/lang/String;

    move-result-object v3

    .line 51772
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/KT;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 51773
    invoke-static/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/0g;->A01(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;ZZ)Lcom/facebook/ads/redexgen/X/0f;

    move-result-object v3

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/SG;->A0N:Lcom/facebook/ads/redexgen/X/0f;

    .line 51774
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v4

    .line 51775
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Nm;->A04()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1F;->A07()Ljava/lang/String;

    move-result-object v3

    .line 51776
    invoke-static {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/Ne;->A00(Lcom/facebook/ads/redexgen/X/Xc;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 51777
    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/SG;->setupLayoutConfiguration(Z)V

    .line 51778
    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/SG;->A0G()V

    .line 51779
    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/SG;->A0C()V

    .line 51780
    new-instance v5, Lcom/facebook/ads/redexgen/X/SK;

    invoke-direct {v5, v2}, Lcom/facebook/ads/redexgen/X/SK;-><init>(Lcom/facebook/ads/redexgen/X/SG;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/facebook/ads/redexgen/X/SG;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51781
    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/SG;->A0J()V

    .line 51782
    new-instance v3, Lcom/facebook/ads/redexgen/X/SJ;

    invoke-direct {v3, v2}, Lcom/facebook/ads/redexgen/X/SJ;-><init>(Lcom/facebook/ads/redexgen/X/SG;)V

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/SG;->A0P:Lcom/facebook/ads/redexgen/X/NR;

    .line 51783
    const/4 v13, 0x0

    .line 51784
    .local v2, "videoView":Lcom/facebook/ads/redexgen/X/RA;
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Nm;->A02()Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/facebook/ads/redexgen/X/RA;

    if-eqz v3, :cond_1

    .line 51785
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Nm;->A02()Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/facebook/ads/redexgen/X/RA;

    .line 51786
    :cond_1
    new-instance v10, Lcom/facebook/ads/redexgen/X/NS;

    iget-object v12, v2, Lcom/facebook/ads/redexgen/X/SG;->A0A:Lcom/facebook/ads/redexgen/X/Zs;

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    .line 51787
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Nm;->A09()Lcom/facebook/ads/redexgen/X/Lj;

    move-result-object v14

    iget-object v15, v2, Lcom/facebook/ads/redexgen/X/SG;->A0P:Lcom/facebook/ads/redexgen/X/NR;

    const/4 v3, 0x4

    new-array v4, v3, [Landroid/view/View;

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/SG;->A09:Landroid/widget/TextView;

    aput-object v3, v4, v0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/SG;->A0F:Lcom/facebook/ads/redexgen/X/O0;

    aput-object v0, v4, v1

    const/4 v1, 0x2

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/SG;->A0R:Lcom/facebook/ads/redexgen/X/JW;

    aput-object v0, v4, v1

    const/4 v1, 0x3

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/SG;->A0M:Landroid/view/View;

    aput-object v0, v4, v1

    move-object/from16 v16, v4

    invoke-direct/range {v10 .. v16}, Lcom/facebook/ads/redexgen/X/NS;-><init>(Lcom/facebook/ads/redexgen/X/Nm;Lcom/facebook/ads/redexgen/X/Zs;Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/NR;[Landroid/view/View;)V

    iput-object v10, v2, Lcom/facebook/ads/redexgen/X/SG;->A0Q:Lcom/facebook/ads/redexgen/X/NS;

    .line 51788
    if-eqz v13, :cond_3

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Ni;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A14(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51789
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/RA;->getVideoImplView()Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Nt;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/Nt;-><init>(Lcom/facebook/ads/redexgen/X/SG;)V

    .line 51790
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51791
    :cond_2
    :goto_0
    return-void

    .line 51792
    :cond_3
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/SG;->A06:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 51793
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Ni;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A13(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51794
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/SG;->A06:Landroid/view/View;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Nu;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/Nu;-><init>(Lcom/facebook/ads/redexgen/X/SG;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/SG;)F
    .locals 0

    .line 51795
    iget p0, p0, Lcom/facebook/ads/redexgen/X/SG;->A00:F

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/SG;F)F
    .locals 0

    .line 51796
    iput p1, p0, Lcom/facebook/ads/redexgen/X/SG;->A00:F

    return p1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/SG;)Landroid/view/View;
    .locals 0

    .line 51797
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SG;->A06:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/SG;)Lcom/facebook/ads/redexgen/X/0f;
    .locals 0

    .line 51798
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0N:Lcom/facebook/ads/redexgen/X/0f;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/SG;)Lcom/facebook/ads/redexgen/X/Ii;
    .locals 0

    .line 51799
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0O:Lcom/facebook/ads/redexgen/X/Ii;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/SG;)Lcom/facebook/ads/redexgen/X/Mm;
    .locals 0

    .line 51800
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0B:Lcom/facebook/ads/redexgen/X/Mm;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/SG;)Lcom/facebook/ads/redexgen/X/Mn;
    .locals 0

    .line 51801
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0C:Lcom/facebook/ads/redexgen/X/Mn;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/SG;)Lcom/facebook/ads/redexgen/X/Sq;
    .locals 0

    .line 51802
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0D:Lcom/facebook/ads/redexgen/X/Sq;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/SG;)Lcom/facebook/ads/redexgen/X/Nm;
    .locals 0

    .line 51803
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/SG;)Lcom/facebook/ads/redexgen/X/O0;
    .locals 0

    .line 51804
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0F:Lcom/facebook/ads/redexgen/X/O0;

    return-object p0
.end method

.method public static A0A(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/SG;->A0T:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0B()V
    .locals 3

    .line 51805
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A08:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 51806
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A08:Landroid/widget/LinearLayout;

    .line 51807
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SG;->A08:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0R(Landroid/view/View;Landroid/content/Context;)V

    .line 51808
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0G:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A02:I

    div-int/lit8 v2, v0, 0x4

    :goto_0
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51809
    .local v0, "descriptionOverlayParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51810
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A08:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51811
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SG;->A08:Landroid/widget/LinearLayout;

    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/SG;->addView(Landroid/view/View;I)V

    .line 51812
    return-void

    .line 51813
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A02:I

    div-int/lit8 v2, v0, 0x5

    goto :goto_0
.end method

.method private A0C()V
    .locals 2

    .line 51814
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A07:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 51815
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A07:Landroid/widget/LinearLayout;

    .line 51816
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SG;->A07:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 51817
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A07:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 51818
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SG;->A0H()V

    .line 51819
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SG;->A07:Landroid/widget/LinearLayout;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 51820
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A07:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SG;->addView(Landroid/view/View;)V

    .line 51821
    return-void
.end method

.method private A0D()V
    .locals 5

    .line 51822
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0M:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 51823
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 51824
    sget v1, Lcom/facebook/ads/redexgen/X/Ni;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ni;->A08:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51825
    .local v0, "muteParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51826
    const/16 v0, 0xb

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51827
    sget v3, Lcom/facebook/ads/redexgen/X/Ni;->A07:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/SG;->A05:I

    sget v1, Lcom/facebook/ads/redexgen/X/Ni;->A07:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ni;->A07:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 51828
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0M:Landroid/view/View;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/SG;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51829
    .end local v0    # "muteParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private A0E()V
    .locals 5

    .line 51830
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0R:Lcom/facebook/ads/redexgen/X/JW;

    if-eqz v0, :cond_0

    .line 51831
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 51832
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SG;->A0R:Lcom/facebook/ads/redexgen/X/JW;

    sget v0, Lcom/facebook/ads/redexgen/X/SG;->A0Y:I

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/JW;->setPadding(IIII)V

    .line 51833
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SG;->A0R:Lcom/facebook/ads/redexgen/X/JW;

    sget v0, Lcom/facebook/ads/redexgen/X/SG;->A0W:I

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/JW;->A06(II)V

    .line 51834
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SG;->A0R:Lcom/facebook/ads/redexgen/X/JW;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JW;->setTranslationY(F)V

    .line 51835
    sget v0, Lcom/facebook/ads/redexgen/X/SG;->A0X:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51836
    .local v0, "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0H:Z

    if-eqz v0, :cond_1

    .line 51837
    const/16 v1, 0x8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A06:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 51838
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0R:Lcom/facebook/ads/redexgen/X/JW;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/SG;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51839
    .end local v0    # "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 51840
    :cond_1
    const/16 v3, 0xc

    sget-object v2, Lcom/facebook/ads/redexgen/X/SG;->A0U:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/SG;->A0U:[Ljava/lang/String;

    const-string v1, "zjul6o0OG2Ezis8Q"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "LmcEL"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0F()V
    .locals 2

    .line 51841
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A08()Lcom/facebook/ads/redexgen/X/Li;

    move-result-object v1

    .line 51842
    .local v0, "toolbar":Lcom/facebook/ads/redexgen/X/Li;
    if-nez v1, :cond_0

    .line 51843
    return-void

    .line 51844
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0H:Z

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Li;->A05()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Li;->setPageDetailsVisible(Z)V

    .line 51845
    return-void

    .line 51846
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0G()V
    .locals 5

    .line 51847
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A02()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A06:Landroid/view/View;

    .line 51848
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A06:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 51849
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A06:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 51850
    const/4 v4, -0x2

    const/4 v2, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51851
    .local v0, "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51852
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A06:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3, v1}, Lcom/facebook/ads/redexgen/X/SG;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 51853
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A09:Landroid/widget/TextView;

    .line 51854
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A09:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 51855
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SG;->A09:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 51856
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SG;->A09:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getColors()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/1L;->A05(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51857
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SG;->A09:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 51858
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SG;->A09:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 51859
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51860
    .local v1, "descriptionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51861
    sget v2, Lcom/facebook/ads/redexgen/X/SG;->A0Z:I

    div-int/lit8 v1, v2, 0x2

    .line 51862
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0R:Lcom/facebook/ads/redexgen/X/JW;

    if-nez v0, :cond_1

    move v0, v2

    .line 51863
    :goto_0
    invoke-virtual {v3, v2, v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 51864
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A09:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/SG;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51865
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A09:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 51866
    nop

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    .line 51867
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Nm;->A04()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0F()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1M;->A04()Ljava/lang/String;

    move-result-object v3

    .line 51868
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getColors()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/SI;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/SI;-><init>(Lcom/facebook/ads/redexgen/X/SG;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/O0;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/O0;-><init>(Lcom/facebook/ads/redexgen/X/Nm;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1L;Lcom/facebook/ads/redexgen/X/NH;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0F:Lcom/facebook/ads/redexgen/X/O0;

    .line 51869
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SG;->A0F:Lcom/facebook/ads/redexgen/X/O0;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A04()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A08()Lcom/facebook/ads/redexgen/X/Li;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/O0;->setAutoClickTime(Lcom/facebook/ads/redexgen/X/Zs;Lcom/facebook/ads/redexgen/X/Li;)V

    .line 51870
    const/16 v1, 0x3e9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0F:Lcom/facebook/ads/redexgen/X/O0;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0G(ILandroid/view/View;)V

    .line 51871
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0F:Lcom/facebook/ads/redexgen/X/O0;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SG;->addView(Landroid/view/View;)V

    .line 51872
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SG;->A0I()V

    .line 51873
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SG;->A0B()V

    .line 51874
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A0y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51875
    new-instance v1, Lcom/facebook/ads/redexgen/X/Nv;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/Nv;-><init>(Lcom/facebook/ads/redexgen/X/SG;)V

    .line 51876
    .local v2, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A08:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51877
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A08()Lcom/facebook/ads/redexgen/X/Li;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51878
    new-instance v1, Lcom/facebook/ads/redexgen/X/Nw;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/Nw;-><init>(Lcom/facebook/ads/redexgen/X/SG;)V

    .line 51879
    .local v3, "onToolbarClickListener":Landroid/view/View$OnClickListener;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A08()Lcom/facebook/ads/redexgen/X/Li;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Li;->setCTAClickListener(Landroid/view/View$OnClickListener;)V

    .line 51880
    .end local v2    # "onClickListener":Landroid/view/View$OnClickListener;
    .end local v3    # "onToolbarClickListener":Landroid/view/View$OnClickListener;
    :cond_0
    return-void

    .line 51881
    :cond_1
    sget v0, Lcom/facebook/ads/redexgen/X/SG;->A0X:I

    goto/16 :goto_0
.end method

.method private A0H()V
    .locals 5

    .line 51882
    iget v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A03:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v1, v0, 0x5

    const/4 v0, -0x1

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51883
    .local v0, "browserParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SG;->A0f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 51884
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 51885
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51886
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/SG;->A07:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/facebook/ads/redexgen/X/SG;->A0U:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/SG;->A0U:[Ljava/lang/String;

    const-string v1, "mOqhFUC5R4"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "x2rQdK"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51887
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SG;->A07:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 51888
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A07:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51889
    return-void

    .line 51890
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A03:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0I()V
    .locals 3

    .line 51891
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0G:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A02:I

    div-int/lit8 v1, v0, 0x4

    :goto_0
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51892
    .local v0, "ctaButtonLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51893
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A09:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 51894
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 51895
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0F:Lcom/facebook/ads/redexgen/X/O0;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/O0;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51896
    return-void

    .line 51897
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A02:I

    div-int/lit8 v1, v0, 0x5

    goto :goto_0
.end method

.method private A0J()V
    .locals 0

    .line 51898
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SG;->A0E()V

    .line 51899
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SG;->A0D()V

    .line 51900
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SG;->A0F()V

    .line 51901
    return-void
.end method

.method public static A0K()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SG;->A0T:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x24t
    .end array-data
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/SG;)V
    .locals 0

    .line 51902
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SG;->A0H()V

    return-void
.end method

.method public static synthetic A0M(Lcom/facebook/ads/redexgen/X/SG;Ljava/lang/String;)V
    .locals 0

    .line 51903
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/SG;->A0O(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic A0N(Lcom/facebook/ads/redexgen/X/SG;Z)V
    .locals 0

    .line 51904
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/SG;->A0P(Z)V

    return-void
.end method

.method private A0O(Ljava/lang/String;)V
    .locals 4

    .line 51905
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0D:Lcom/facebook/ads/redexgen/X/Sq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 51906
    new-instance v3, Lcom/facebook/ads/redexgen/X/SM;

    invoke-direct {v3, p0}, Lcom/facebook/ads/redexgen/X/SM;-><init>(Lcom/facebook/ads/redexgen/X/SG;)V

    .line 51907
    .local v0, "browserListener":Lcom/facebook/ads/redexgen/X/Mu;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0D()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 51908
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A8L()V

    .line 51909
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    .line 51910
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IL;->A02(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    .line 51911
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0D()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 51912
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/Sq;

    invoke-direct {v2, v0, v3}, Lcom/facebook/ads/redexgen/X/Sq;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Mu;)V

    .line 51913
    :goto_0
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/SG;->A0D:Lcom/facebook/ads/redexgen/X/Sq;

    .line 51914
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0D:Lcom/facebook/ads/redexgen/X/Sq;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/SG;->setUpBrowserControls(Lcom/facebook/ads/redexgen/X/Sq;)V

    .line 51915
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51916
    .local v1, "webViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const v0, 0x3f666666    # 0.9f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 51917
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SG;->A07:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0D:Lcom/facebook/ads/redexgen/X/Sq;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51918
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0D:Lcom/facebook/ads/redexgen/X/Sq;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Sq;->loadUrl(Ljava/lang/String;)V

    .line 51919
    return-void

    .line 51920
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    .line 51921
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0D()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/Sq;

    invoke-direct {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Sq;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/Mu;)V

    goto :goto_0
.end method

.method private A0P(Z)V
    .locals 16

    .line 51922
    move-object/from16 v6, p0

    move/from16 v7, p1

    iput-boolean v7, v6, Lcom/facebook/ads/redexgen/X/SG;->A0H:Z

    .line 51923
    new-instance v2, Lcom/facebook/ads/redexgen/X/SL;

    invoke-direct {v2, v6, v7}, Lcom/facebook/ads/redexgen/X/SL;-><init>(Lcom/facebook/ads/redexgen/X/SG;Z)V

    const-wide/16 v0, 0xfa

    invoke-virtual {v6, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/SG;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51924
    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SG;->A0A(III)Ljava/lang/String;

    move-result-object v10

    const/4 v15, 0x1

    const/4 v9, 0x2

    const/4 v14, 0x0

    if-eqz v7, :cond_6

    .line 51925
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/SG;->A0F:Lcom/facebook/ads/redexgen/X/O0;

    new-array v1, v9, [F

    .line 51926
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/O0;->getY()F

    move-result v0

    aput v0, v1, v14

    iget v0, v6, Lcom/facebook/ads/redexgen/X/SG;->A03:I

    div-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    aput v0, v1, v15

    .line 51927
    invoke-static {v2, v10, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 51928
    .local v7, "ctaTransAnim":Landroid/animation/ObjectAnimator;
    :goto_0
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/SG;->A07:Landroid/widget/LinearLayout;

    new-array v1, v9, [F

    .line 51929
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getY()F

    move-result v0

    aput v0, v1, v14

    .line 51930
    iget v0, v6, Lcom/facebook/ads/redexgen/X/SG;->A03:I

    if-eqz v7, :cond_0

    div-int/lit8 v0, v0, 0x5

    :cond_0
    int-to-float v0, v0

    aput v0, v1, v15

    .line 51931
    invoke-static {v2, v10, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 51932
    .local v8, "browserTransAnim":Landroid/animation/ObjectAnimator;
    const-wide/16 v0, 0x1f4

    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 51933
    iget v12, v6, Lcom/facebook/ads/redexgen/X/SG;->A03:I

    div-int/2addr v12, v9

    iget v2, v6, Lcom/facebook/ads/redexgen/X/SG;->A01:I

    div-int/2addr v2, v9

    sub-int/2addr v12, v2

    .line 51934
    .local v11, "mediaViewTop":I
    iget-object v11, v6, Lcom/facebook/ads/redexgen/X/SG;->A06:Landroid/view/View;

    new-array v4, v9, [F

    .line 51935
    invoke-virtual {v11}, Landroid/view/View;->getY()F

    move-result v2

    aput v2, v4, v14

    if-nez v7, :cond_1

    iget-boolean v2, v6, Lcom/facebook/ads/redexgen/X/SG;->A0G:Z

    if-eqz v2, :cond_5

    :cond_1
    const/4 v2, 0x0

    :goto_1
    aput v2, v4, v15

    .line 51936
    invoke-static {v11, v10, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 51937
    .local v12, "mediaViewTransAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 51938
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/SG;->A0R:Lcom/facebook/ads/redexgen/X/JW;

    if-nez v0, :cond_4

    const/4 v13, 0x0

    .line 51939
    .local v13, "mediaProgressbarHeight":I
    :goto_2
    if-eqz v7, :cond_3

    .line 51940
    iget v11, v6, Lcom/facebook/ads/redexgen/X/SG;->A02:I

    sget-object v4, Lcom/facebook/ads/redexgen/X/SG;->A0U:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v4, v0

    const/4 v0, 0x1

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v4, Lcom/facebook/ads/redexgen/X/SG;->A0U:[Ljava/lang/String;

    const-string v1, "g83HcTndNM"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    const-string v1, "KO02it"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    div-int/lit8 v12, v11, 0x5

    sub-int/2addr v12, v13

    goto :goto_4

    .line 51941
    :cond_3
    iget v12, v6, Lcom/facebook/ads/redexgen/X/SG;->A03:I

    sget v0, Lcom/facebook/ads/redexgen/X/SG;->A0X:I

    sub-int/2addr v12, v0

    sget v0, Lcom/facebook/ads/redexgen/X/SG;->A0Z:I

    sub-int/2addr v12, v0

    .line 51942
    .local v14, "mediaTransAnimToY":I
    :goto_4
    iget-object v11, v6, Lcom/facebook/ads/redexgen/X/SG;->A0R:Lcom/facebook/ads/redexgen/X/JW;

    if-eqz v11, :cond_8

    .line 51943
    new-array v8, v9, [F

    .line 51944
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/JW;->getY()F

    move-result v0

    aput v0, v8, v14

    sget-object v4, Lcom/facebook/ads/redexgen/X/SG;->A0U:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v4, v0

    const/4 v0, 0x1

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    goto :goto_3

    .line 51945
    :cond_4
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JW;->getHeight()I

    move-result v13

    goto :goto_2

    .line 51946
    :cond_5
    int-to-float v2, v12

    goto :goto_1

    .line 51947
    :cond_6
    move-object v5, v8

    goto/16 :goto_0

    :cond_7
    sget-object v4, Lcom/facebook/ads/redexgen/X/SG;->A0U:[Ljava/lang/String;

    const-string v1, "uMAfPHErUq8gYLqYGWwvrPw2H7I5hxcd"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    int-to-float v0, v12

    aput v0, v8, v15

    .line 51948
    invoke-static {v11, v10, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 51949
    .local v2, "mediaProgressbarTransAnim":Landroid/animation/ObjectAnimator;
    :cond_8
    new-array v1, v9, [I

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/SG;->A06:Landroid/view/View;

    .line 51950
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    aput v0, v1, v14

    .line 51951
    if-eqz v7, :cond_b

    iget v0, v6, Lcom/facebook/ads/redexgen/X/SG;->A03:I

    div-int/lit8 v0, v0, 0x5

    :goto_5
    aput v0, v1, v15

    .line 51952
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 51953
    const-wide/16 v0, 0x1f4

    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 51954
    .local v3, "mediaViewScaleAnim":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Nr;

    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/Nr;-><init>(Lcom/facebook/ads/redexgen/X/SG;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 51955
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 51956
    .local v9, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 51957
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v3, v0, v14

    aput-object v2, v0, v15

    aput-object v1, v0, v9

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 51958
    if-eqz v5, :cond_a

    .line 51959
    const-wide/16 v2, 0x1f4

    invoke-virtual {v5, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 51960
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/animation/Animator;

    aput-object v5, v0, v14

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 51961
    :goto_6
    if-eqz v8, :cond_9

    .line 51962
    invoke-virtual {v8, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 51963
    new-array v0, v1, [Landroid/animation/Animator;

    aput-object v8, v0, v14

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 51964
    :cond_9
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ns;

    invoke-direct {v0, v6, v7}, Lcom/facebook/ads/redexgen/X/Ns;-><init>(Lcom/facebook/ads/redexgen/X/SG;Z)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 51965
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 51966
    return-void

    .line 51967
    :cond_a
    const-wide/16 v2, 0x1f4

    const/4 v1, 0x1

    goto :goto_6

    .line 51968
    :cond_b
    iget v0, v6, Lcom/facebook/ads/redexgen/X/SG;->A01:I

    goto :goto_5
.end method

.method private A0Q(Z)V
    .locals 5

    .line 51969
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/SG;->setupLayoutConfiguration(Z)V

    .line 51970
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A06:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 51971
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A02()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A06:Landroid/view/View;

    .line 51972
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A06:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 51973
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0H:Z

    const/4 v4, -0x1

    if-eqz v0, :cond_0

    .line 51974
    iget v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A03:I

    div-int/lit8 v0, v0, 0x5

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51975
    .local v0, "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51976
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51977
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SG;->A06:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    sget-object v3, Lcom/facebook/ads/redexgen/X/SG;->A0U:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v2, v3, v0

    const/4 v0, 0x0

    aget-object v0, v3, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v2, v0, :cond_2

    .line 51978
    sget-object v3, Lcom/facebook/ads/redexgen/X/SG;->A0U:[Ljava/lang/String;

    const-string v2, "FZuJEB1DgE"

    const/4 v0, 0x7

    aput-object v2, v3, v0

    const-string v2, "ioAK5D"

    const/4 v0, 0x4

    aput-object v2, v3, v0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SG;->A06:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/SG;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 51979
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SG;->A0B()V

    .line 51980
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SG;->A0I()V

    .line 51981
    return-void

    .line 51982
    .end local v0    # "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    const/4 v3, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51983
    .restart local v0    # "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A13(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51984
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SG;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A06:Landroid/view/View;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/RA;

    if-nez v0, :cond_1

    .line 51985
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51986
    :cond_1
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51987
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SG;->A0C()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0R()Z
    .locals 4

    .line 51988
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0A:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1F;->A0A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/SG;->A0J:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/SG;->A0U:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/SG;->A0U:[Ljava/lang/String;

    const-string v1, "WvW0Ef6T7c"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "9KXIlI"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0L:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0K:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0S(Lcom/facebook/ads/redexgen/X/SG;)Z
    .locals 0

    .line 51989
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0L:Z

    return p0
.end method

.method public static synthetic A0T(Lcom/facebook/ads/redexgen/X/SG;)Z
    .locals 0

    .line 51990
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0H:Z

    return p0
.end method

.method public static synthetic A0U(Lcom/facebook/ads/redexgen/X/SG;)Z
    .locals 0

    .line 51991
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0I:Z

    return p0
.end method

.method public static synthetic A0V(Lcom/facebook/ads/redexgen/X/SG;Z)Z
    .locals 0

    .line 51992
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/SG;->A0L:Z

    return p1
.end method

.method public static synthetic A0W(Lcom/facebook/ads/redexgen/X/SG;Z)Z
    .locals 0

    .line 51993
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/SG;->A0I:Z

    return p1
.end method

.method private getUrl()Ljava/lang/String;
    .locals 1

    .line 52039
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A04()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0F()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1M;->A05()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setUpBrowserControls(Lcom/facebook/ads/redexgen/X/Sq;)V
    .locals 5

    .line 52046
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0B:Lcom/facebook/ads/redexgen/X/Mm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 52047
    nop

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Mm;

    invoke-direct {v0, v1, p1}, Lcom/facebook/ads/redexgen/X/Mm;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0B:Lcom/facebook/ads/redexgen/X/Mm;

    .line 52048
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0B:Lcom/facebook/ads/redexgen/X/Mm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mm;->getBrowserNavigationListener()Lcom/facebook/ads/redexgen/X/Mv;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Sq;->setBrowserNavigationListener(Lcom/facebook/ads/redexgen/X/Mv;)V

    .line 52049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0B:Lcom/facebook/ads/redexgen/X/Mm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 52050
    const/4 v4, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52051
    .local v0, "controlsViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const v0, 0x3dcccccd    # 0.1f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 52052
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SG;->A0B:Lcom/facebook/ads/redexgen/X/Mm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/SH;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/SH;-><init>(Lcom/facebook/ads/redexgen/X/SG;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mm;->setListener(Lcom/facebook/ads/redexgen/X/Ml;)V

    .line 52053
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SG;->A0B:Lcom/facebook/ads/redexgen/X/Mm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Nx;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Nx;-><init>(Lcom/facebook/ads/redexgen/X/SG;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mm;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 52054
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SG;->A07:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0B:Lcom/facebook/ads/redexgen/X/Mm;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52055
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0C:Lcom/facebook/ads/redexgen/X/Mn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 52056
    nop

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    .line 52057
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v3

    const/4 v2, 0x0

    const v1, 0x1010078

    new-instance v0, Lcom/facebook/ads/redexgen/X/Mn;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Mn;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0C:Lcom/facebook/ads/redexgen/X/Mn;

    .line 52058
    sget v0, Lcom/facebook/ads/redexgen/X/SG;->A0V:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52059
    .local v1, "browserProgressBarParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SG;->A07:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0C:Lcom/facebook/ads/redexgen/X/Mn;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52060
    return-void
.end method

.method private setupLayoutConfiguration(Z)V
    .locals 3

    .line 52061
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SG;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0G:Z

    .line 52062
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A08()Lcom/facebook/ads/redexgen/X/Li;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A05:I

    .line 52063
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/SG;->A0H:Z

    .line 52064
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A02:I

    .line 52065
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A04:I

    .line 52066
    iget v1, p0, Lcom/facebook/ads/redexgen/X/SG;->A02:I

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0G:Z

    if-eqz v0, :cond_0

    :goto_2
    add-int/2addr v1, v2

    iput v1, p0, Lcom/facebook/ads/redexgen/X/SG;->A03:I

    .line 52067
    iget v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A01:I

    .line 52068
    return-void

    .line 52069
    :cond_0
    iget v2, p0, Lcom/facebook/ads/redexgen/X/SG;->A05:I

    goto :goto_2

    .line 52070
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A08()Lcom/facebook/ads/redexgen/X/Li;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Li;->getToolbarHeight()I

    move-result v0

    goto :goto_1

    .line 52071
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0X()V
    .locals 1

    .line 51994
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Ni;->A0X()V

    .line 51995
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SG;->A0S:Lcom/facebook/ads/redexgen/X/SG;

    .line 51996
    return-void
.end method

.method public final A0Y()V
    .locals 3

    .line 51997
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A08()Lcom/facebook/ads/redexgen/X/Li;

    move-result-object v2

    .line 51998
    .local v0, "toolbar":Lcom/facebook/ads/redexgen/X/Li;
    const/4 v1, 0x0

    if-eqz v2, :cond_0

    .line 51999
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SG;->A0f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Li;->A05()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Li;->setPageDetailsVisible(Z)V

    .line 52000
    :cond_0
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/SG;->A0J:Z

    .line 52001
    return-void

    .line 52002
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0Z()V
    .locals 4

    .line 52003
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A08()Lcom/facebook/ads/redexgen/X/Li;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52004
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0E:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A08()Lcom/facebook/ads/redexgen/X/Li;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/SG;->A0U:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/SG;->A0U:[Ljava/lang/String;

    const-string v1, "MMiJw7TNUivh7iTB"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "GEB80"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Li;->setPageDetailsVisible(Z)V

    .line 52005
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0J:Z

    .line 52006
    return-void
.end method

.method public final A0a()V
    .locals 1

    .line 52007
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0K:Z

    .line 52008
    return-void
.end method

.method public final A0b()V
    .locals 1

    .line 52009
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0K:Z

    .line 52010
    return-void
.end method

.method public final A0c(Lcom/facebook/ads/redexgen/X/1C;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 3
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 52011
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Ni;->A0c(Lcom/facebook/ads/redexgen/X/1C;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 52012
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1C;->A0E()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A05()Ljava/lang/String;

    move-result-object v1

    .line 52013
    .local v0, "description":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 52014
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SG;->A08:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0N(Landroid/view/View;I)V

    .line 52015
    :goto_0
    const-wide/16 v1, 0x0

    cmpl-double v0, p3, v1

    if-lez v0, :cond_1

    .line 52016
    iget v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A04:I

    int-to-double v1, v0

    div-double/2addr v1, p3

    double-to-int v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A01:I

    .line 52017
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0G:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A02:I

    :goto_1
    iput v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A01:I

    .line 52018
    return-void

    .line 52019
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A01:I

    goto :goto_1

    .line 52020
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A09:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final A0d()Z
    .locals 1

    .line 52021
    const/4 v0, 0x1

    return v0
.end method

.method public final A0e(Z)Z
    .locals 3

    .line 52022
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SG;->A0f()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 52023
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/SG;->A0P(Z)V

    .line 52024
    return v2

    .line 52025
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SG;->A0R()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52026
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0Q:Lcom/facebook/ads/redexgen/X/NS;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/NS;->A07(Landroid/view/ViewGroup;)V

    .line 52027
    return v2

    .line 52028
    :cond_1
    return v1
.end method

.method public final A0f()Z
    .locals 1

    .line 52029
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0H:Z

    return v0
.end method

.method public getCloseButtonStyle()I
    .locals 4
    .annotation build Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
    .end annotation

    .line 52030
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SG;->A0f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52031
    const/4 v0, 0x3

    return v0

    .line 52032
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0K:Z

    if-eqz v0, :cond_1

    .line 52033
    const/4 v0, 0x2

    return v0

    .line 52034
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0A:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1F;->A0A()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52035
    const/4 v0, 0x1

    return v0

    .line 52036
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A0J:Z

    if-eqz v0, :cond_4

    .line 52037
    const/4 v3, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/SG;->A0U:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/SG;->A0U:[Ljava/lang/String;

    const-string v1, "NhzVRhgvHrOwM64xV2PIAOEbNcq"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "xEzMNY3CkayGfsMDFyAKLsf22gx"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return v3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 52038
    :cond_4
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getCloseButtonStyle()I

    move-result v0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 52040
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Ni;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 52041
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SG;->A0f()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/SG;->A0Q(Z)V

    .line 52042
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SG;->A0J()V

    .line 52043
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SG;->A0f()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/SG;->setupLayoutConfiguration(Z)V

    .line 52044
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SG;->A0H()V

    .line 52045
    return-void
.end method
