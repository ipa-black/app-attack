.class public abstract Lcom/facebook/ads/redexgen/X/ND;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;

.field public static final A08:Landroid/widget/LinearLayout$LayoutParams;


# instance fields
.field public final A00:I

.field public final A01:Landroid/view/View$OnClickListener;

.field public final A02:Landroid/widget/RelativeLayout;

.field public final A03:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A04:Lcom/facebook/ads/redexgen/X/Sa;

.field public final A05:Lcom/facebook/ads/redexgen/X/NU;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 45667
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "cmzsI0MqV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "rmZj6bXGr2Mc3k6GGfUNTI8ab"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Oqa2BQOYUIgPEQnUKqUaSgjmS1hAy2aw"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VbR8t651F3u5xAC0yd"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "KwIIB1PdAD0xOvkamO3Meu"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "6KEr"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "QBka00Gf2XeExLF7IYa6e3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ND;->A07:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ND;->A01()V

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/ND;->A08:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;ILcom/facebook/ads/redexgen/X/1L;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/LD;)V
    .locals 14

    .line 45668
    move-object v4, p0

    move-object v6, p1

    invoke-direct {p0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45669
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 45670
    iput-object v6, v4, Lcom/facebook/ads/redexgen/X/ND;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    .line 45671
    move/from16 v0, p2

    iput v0, v4, Lcom/facebook/ads/redexgen/X/ND;->A00:I

    .line 45672
    new-instance v0, Lcom/facebook/ads/redexgen/X/NU;

    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/NU;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/ND;->A05:Lcom/facebook/ads/redexgen/X/NU;

    .line 45673
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/ND;->A05:Lcom/facebook/ads/redexgen/X/NU;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0M(Landroid/view/View;I)V

    .line 45674
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ND;->A05:Lcom/facebook/ads/redexgen/X/NU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 45675
    new-instance v5, Lcom/facebook/ads/redexgen/X/Sa;

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v7, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-direct/range {v5 .. v13}, Lcom/facebook/ads/redexgen/X/Sa;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1L;ZLcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/LD;)V

    iput-object v5, v4, Lcom/facebook/ads/redexgen/X/ND;->A04:Lcom/facebook/ads/redexgen/X/Sa;

    .line 45676
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/ND;->A04:Lcom/facebook/ads/redexgen/X/Sa;

    const/16 v0, 0x3e9

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LL;->A0G(ILandroid/view/View;)V

    .line 45677
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/ND;->A04:Lcom/facebook/ads/redexgen/X/Sa;

    .line 45678
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ND;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Ng;->A03(Lcom/facebook/ads/redexgen/X/Sa;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/ND;->A01:Landroid/view/View$OnClickListener;

    .line 45679
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/ND;->A02:Landroid/widget/RelativeLayout;

    .line 45680
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/ND;->A02:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/facebook/ads/redexgen/X/ND;->A08:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45681
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ND;->A02:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 45682
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ND;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x31

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 4

    const/16 v0, 0x9

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/ND;->A07:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/ND;->A07:[Ljava/lang/String;

    const-string v1, "W8PIFEgMaUlhByfzvyeLgAFdtcDk8ZOz"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/ND;->A06:[B

    return-void

    :array_0
    .array-data 1
        0x9t
        0xct
        0xct
        0xdt
        0x1ct
        0x9t
        0x11t
        0x14t
        0x1bt
    .end array-data
.end method


# virtual methods
.method public A09()V
    .locals 0

    .line 45683
    return-void
.end method

.method public A0A()V
    .locals 0

    .line 45684
    return-void
.end method

.method public A0B()V
    .locals 2

    .line 45685
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ND;->A05:Lcom/facebook/ads/redexgen/X/NU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ND;->A01:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NU;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45686
    return-void
.end method

.method public abstract A0C(I)V
.end method

.method public final getCTAButton()Lcom/facebook/ads/redexgen/X/Sa;
    .locals 1

    .line 45687
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ND;->A04:Lcom/facebook/ads/redexgen/X/Sa;

    return-object v0
.end method

.method public getExpandableLayout()Landroid/view/View;
    .locals 1

    .line 45688
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIconView()Landroid/widget/ImageView;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 45689
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ND;->A05:Lcom/facebook/ads/redexgen/X/NU;

    return-object v0
.end method

.method public setInfo(Lcom/facebook/ads/redexgen/X/1J;Lcom/facebook/ads/redexgen/X/1M;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/NH;)V
    .locals 3
    .param p5    # Lcom/facebook/ads/redexgen/X/NH;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 45690
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ND;->A04:Lcom/facebook/ads/redexgen/X/Sa;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p2, p3, v0, p5}, Lcom/facebook/ads/redexgen/X/Sa;->setCta(Lcom/facebook/ads/redexgen/X/1M;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/NH;)V

    .line 45691
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ND;->A05:Lcom/facebook/ads/redexgen/X/NU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ND;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Sf;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Sf;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Xc;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ND;->A00:I

    .line 45692
    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A05(II)Lcom/facebook/ads/redexgen/X/Sf;

    move-result-object v0

    .line 45693
    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/Sf;->A07(Ljava/lang/String;)V

    .line 45694
    return-void
.end method

.method public setTitleMaxLines(I)V
    .locals 0

    .line 45695
    return-void
.end method
