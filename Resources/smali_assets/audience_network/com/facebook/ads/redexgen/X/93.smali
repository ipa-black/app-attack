.class public final Lcom/facebook/ads/redexgen/X/93;
.super Lcom/facebook/ads/redexgen/X/SR;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/M1;


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Landroid/view/View;

.field public A02:Lcom/facebook/ads/redexgen/X/Xc;

.field public A03:Lcom/facebook/ads/redexgen/X/Ke;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/Li;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Lcom/facebook/ads/redexgen/X/P3;

.field public A06:Lcom/facebook/ads/redexgen/X/JP;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A07:Z

.field public A08:Z

.field public final A09:Lcom/facebook/ads/redexgen/X/Lj;

.field public final A0A:Lcom/facebook/ads/redexgen/X/NR;

.field public final A0B:Lcom/facebook/ads/redexgen/X/NS;

.field public final A0C:Lcom/facebook/ads/redexgen/X/RA;

.field public final A0D:Lcom/facebook/ads/redexgen/X/JW;

.field public final A0E:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 19907
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QUFYIN7o4MSHfMbcaqgxGqdg8oING"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Qixa92rp7KQSHPhBId3L5m9SXc6gxNRP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "TUKhftCqFUFv9xNbjbPA3CLhBIkdW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "aNiMBj1VMT3xct4Co4hWzqTsg"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "QYSCqyZ4CS"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "VjIbmM2G6pRRrYhuKIf6SOzC6eQUF7eo"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KFJXOgKoK7JNlCBWMf"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dachHr6cLZKwbIDqTeRsc0FgbmZCJ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/93;->A0G:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/93;->A08()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nm;)V
    .locals 11

    .line 19908
    const/4 v2, 0x0

    move-object v4, p1

    invoke-direct {p0, v4, v2}, Lcom/facebook/ads/redexgen/X/SR;-><init>(Lcom/facebook/ads/redexgen/X/Nm;Z)V

    .line 19909
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0E:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19910
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/93;->A08:Z

    .line 19911
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/93;->A07:Z

    .line 19912
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A02:Lcom/facebook/ads/redexgen/X/Xc;

    .line 19913
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Nm;->A08()Lcom/facebook/ads/redexgen/X/Li;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A04:Lcom/facebook/ads/redexgen/X/Li;

    .line 19914
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/93;->A02:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A01:Landroid/view/View;

    .line 19915
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A01:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 19916
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 19917
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 19918
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A01:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/93;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19919
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/93;->A05()V

    .line 19920
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Nm;->A09()Lcom/facebook/ads/redexgen/X/Lj;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A09:Lcom/facebook/ads/redexgen/X/Lj;

    .line 19921
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->getAdInfo()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1F;->A07()Ljava/lang/String;

    move-result-object v0

    .line 19922
    invoke-static {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Ne;->A00(Lcom/facebook/ads/redexgen/X/Xc;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 19923
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/93;->A01(Lcom/facebook/ads/redexgen/X/Nm;)Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0C:Lcom/facebook/ads/redexgen/X/RA;

    .line 19924
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/ND;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ND;->bringToFront()V

    .line 19925
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/93;->A02(Lcom/facebook/ads/redexgen/X/Nm;)Lcom/facebook/ads/redexgen/X/JW;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0D:Lcom/facebook/ads/redexgen/X/JW;

    .line 19926
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/93;->A0g()V

    .line 19927
    nop

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/93;->A02:Lcom/facebook/ads/redexgen/X/Xc;

    .line 19928
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Nm;->A06()Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/P3;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/P3;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Zs;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A05:Lcom/facebook/ads/redexgen/X/P3;

    .line 19929
    new-instance v0, Lcom/facebook/ads/redexgen/X/SP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/SP;-><init>(Lcom/facebook/ads/redexgen/X/93;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0A:Lcom/facebook/ads/redexgen/X/NR;

    .line 19930
    new-instance v3, Lcom/facebook/ads/redexgen/X/NS;

    .line 19931
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/93;->A0C:Lcom/facebook/ads/redexgen/X/RA;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/93;->A0D:Lcom/facebook/ads/redexgen/X/JW;

    .line 19932
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/ND;

    move-result-object v8

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/93;->A09:Lcom/facebook/ads/redexgen/X/Lj;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/93;->A0A:Lcom/facebook/ads/redexgen/X/NR;

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/NS;-><init>(Lcom/facebook/ads/redexgen/X/Nm;Lcom/facebook/ads/redexgen/X/Zs;Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/JW;Lcom/facebook/ads/redexgen/X/ND;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/NR;)V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/93;->A0B:Lcom/facebook/ads/redexgen/X/NS;

    .line 19933
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A14(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19934
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0C:Lcom/facebook/ads/redexgen/X/RA;

    .line 19935
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getVideoImplView()Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/No;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/No;-><init>(Lcom/facebook/ads/redexgen/X/93;)V

    .line 19936
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19937
    :cond_0
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/93;)Lcom/facebook/ads/redexgen/X/Li;
    .locals 0

    .line 19938
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/93;->A04:Lcom/facebook/ads/redexgen/X/Li;

    return-object p0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/Nm;)Lcom/facebook/ads/redexgen/X/RA;
    .locals 7

    .line 19939
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A02()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/RA;

    .line 19940
    .local v0, "videoView":Lcom/facebook/ads/redexgen/X/RA;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A08()Lcom/facebook/ads/redexgen/X/Li;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SR;->A0f(Lcom/facebook/ads/redexgen/X/Li;)I

    move-result v6

    .line 19941
    .local v1, "toolbarHeight":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A03()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 19942
    .local v2, "muteButton":Landroid/widget/ImageView;
    sget v5, Lcom/facebook/ads/redexgen/X/SR;->A0D:I

    sget v2, Lcom/facebook/ads/redexgen/X/SR;->A0D:I

    sget v1, Lcom/facebook/ads/redexgen/X/SR;->A0D:I

    sget v0, Lcom/facebook/ads/redexgen/X/SR;->A0D:I

    invoke-virtual {v3, v5, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 19943
    sget v1, Lcom/facebook/ads/redexgen/X/SR;->A0E:I

    sget v0, Lcom/facebook/ads/redexgen/X/SR;->A0E:I

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 19944
    .local v3, "muteButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/SR;->A0C:I

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v6, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 19945
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 19946
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 19947
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 19948
    .local v4, "videoViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 19949
    invoke-virtual {p0, v4, v1}, Lcom/facebook/ads/redexgen/X/93;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19950
    invoke-virtual {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/RA;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19951
    return-object v4
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/Nm;)Lcom/facebook/ads/redexgen/X/JW;
    .locals 6

    .line 19952
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A0A()Lcom/facebook/ads/redexgen/X/JW;

    move-result-object v5

    .line 19953
    .local v0, "progressBarAnimation":Lcom/facebook/ads/redexgen/X/JW;
    sget v0, Lcom/facebook/ads/redexgen/X/SR;->A09:I

    const/4 v4, -0x1

    invoke-virtual {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/JW;->A06(II)V

    .line 19954
    sget v3, Lcom/facebook/ads/redexgen/X/SR;->A0H:I

    sget v2, Lcom/facebook/ads/redexgen/X/SR;->A0H:I

    sget v1, Lcom/facebook/ads/redexgen/X/SR;->A0H:I

    sget v0, Lcom/facebook/ads/redexgen/X/SR;->A0H:I

    invoke-virtual {v5, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JW;->setPadding(IIII)V

    .line 19955
    sget v0, Lcom/facebook/ads/redexgen/X/SR;->A0G:I

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 19956
    .local v1, "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 19957
    invoke-virtual {p0, v5, v1}, Lcom/facebook/ads/redexgen/X/93;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19958
    return-object v5
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/93;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xd

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
    .locals 2

    .line 19959
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/Jx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19960
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/Jx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jx;->A0E()V

    .line 19961
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/93;->A0C:Lcom/facebook/ads/redexgen/X/RA;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/Jx;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0d(Lcom/facebook/ads/redexgen/X/PL;)V

    .line 19962
    :cond_0
    return-void
.end method

.method private A05()V
    .locals 5

    .line 19963
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/93;->A04:Lcom/facebook/ads/redexgen/X/Li;

    if-nez v4, :cond_0

    .line 19964
    return-void

    .line 19965
    :cond_0
    const/16 v3, 0x190

    .line 19966
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Li;->getToolbarHeight()I

    move-result v0

    neg-int v2, v0

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/JP;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/JP;-><init>(Landroid/view/View;III)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A06:Lcom/facebook/ads/redexgen/X/JP;

    .line 19967
    return-void
.end method

.method private A06()V
    .locals 9

    .line 19968
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getAdEventManager()Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/Ii;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ii;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ia;)V

    .line 19969
    .local v0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/Ii;
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ih;->A0r:Lcom/facebook/ads/redexgen/X/Ih;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ii;->A04(Lcom/facebook/ads/redexgen/X/Ih;Ljava/util/Map;)V

    .line 19970
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->getAdInfo()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0O()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19971
    return-void

    .line 19972
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0E:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 19973
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/LL;->A0T(Landroid/view/ViewGroup;)V

    .line 19974
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0C:Lcom/facebook/ads/redexgen/X/RA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0H(Landroid/view/View;)V

    .line 19975
    const/4 v0, 0x4

    new-array v2, v0, [Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0C:Lcom/facebook/ads/redexgen/X/RA;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0D:Lcom/facebook/ads/redexgen/X/JW;

    aput-object v0, v2, v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0B:Lcom/facebook/ads/redexgen/X/NS;

    const/4 v5, 0x2

    aput-object v0, v2, v5

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A00:Landroid/view/View;

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/LL;->A0Z([Landroid/view/View;)V

    .line 19976
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A04:Lcom/facebook/ads/redexgen/X/Li;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0L(Landroid/view/View;)V

    .line 19977
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/93;->A05:Lcom/facebook/ads/redexgen/X/P3;

    .line 19978
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getCtaButton()Lcom/facebook/ads/redexgen/X/Sa;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/93;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/93;->A0G:[Ljava/lang/String;

    const-string v1, "FxfG3zWETYKhpCEsP1aqGpvXk"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v7, v4}, Lcom/facebook/ads/redexgen/X/P3;->A03(Lcom/facebook/ads/redexgen/X/Sa;)Landroid/util/Pair;

    move-result-object v2

    .line 19979
    .local v1, "endCard":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/ads/internal/view/rewardedvideo/EndCardController$EndCardViewType;Landroid/view/View;>;"
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A00:Landroid/view/View;

    .line 19980
    sget-object v1, Lcom/facebook/ads/redexgen/X/Np;->A00:[I

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/P2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P2;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v2, -0x1

    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_4

    .line 19981
    .end local v3
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->getAdInfo()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0G()Lcom/facebook/ads/redexgen/X/1N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1N;->A00()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-ltz v0, :cond_3

    .line 19982
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/93;->A07:Z

    .line 19983
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A04:Lcom/facebook/ads/redexgen/X/Li;

    if-eqz v0, :cond_2

    .line 19984
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Li;->setToolbarActionMode(I)V

    .line 19985
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/93;->A04:Lcom/facebook/ads/redexgen/X/Li;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Li;->setProgressImmediate(F)V

    .line 19986
    :cond_2
    new-instance v2, Lcom/facebook/ads/redexgen/X/Ke;

    .line 19987
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->getAdInfo()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0G()Lcom/facebook/ads/redexgen/X/1N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1N;->A00()J

    move-result-wide v0

    long-to-int v3, v0

    const/high16 v4, 0x41a00000    # 20.0f

    const-wide/16 v5, 0x14

    .line 19988
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v8, Lcom/facebook/ads/redexgen/X/SO;

    invoke-direct {v8, p0}, Lcom/facebook/ads/redexgen/X/SO;-><init>(Lcom/facebook/ads/redexgen/X/93;)V

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Ke;-><init>(IFJLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/Kd;)V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/93;->A03:Lcom/facebook/ads/redexgen/X/Ke;

    .line 19989
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A03:Lcom/facebook/ads/redexgen/X/Ke;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ke;->A08()Z

    .line 19990
    :cond_3
    return-void

    .line 19991
    :cond_4
    new-array v1, v6, [Landroid/view/View;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/ND;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/LL;->A0Z([Landroid/view/View;)V

    .line 19992
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 19993
    .local v3, "infoParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/SR;->A0F:I

    sget v2, Lcom/facebook/ads/redexgen/X/SR;->A0F:I

    sget v1, Lcom/facebook/ads/redexgen/X/SR;->A0F:I

    sget v0, Lcom/facebook/ads/redexgen/X/SR;->A0F:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 19994
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A00:Landroid/view/View;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/93;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 19995
    .end local v3    # "infoParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/ND;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/ND;->setVisibility(I)V

    .line 19996
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 19997
    .local v3, "screenshotParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A04:Lcom/facebook/ads/redexgen/X/Li;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SR;->A0f(Lcom/facebook/ads/redexgen/X/Li;)I

    move-result v0

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 19998
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/ND;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ND;->getId()I

    move-result v0

    invoke-virtual {v1, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 19999
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A00:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/93;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20000
    goto/16 :goto_0
.end method

.method private A07()V
    .locals 3

    .line 20001
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A06:Lcom/facebook/ads/redexgen/X/JP;

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 20002
    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/JP;->A3N(ZZ)V

    .line 20003
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->getAdDetailsAnimation()Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 20004
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->getAdDetailsAnimation()Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/JP;->A3N(ZZ)V

    .line 20005
    :cond_1
    return-void
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x49

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/93;->A0F:[B

    return-void

    :array_0
    .array-data 1
        -0x35t
        -0x3ct
        -0x27t
        -0x38t
        -0x1et
        -0x2at
        -0x29t
        -0x3ct
        -0x2bt
        -0x29t
        -0x34t
        -0x2ft
        -0x36t
        -0x1et
        -0x3ct
        -0x2ft
        -0x34t
        -0x30t
        -0x3ct
        -0x29t
        -0x34t
        -0x2et
        -0x2ft
        -0x2at
        -0x1et
        -0x2dt
        -0x31t
        -0x3ct
        -0x24t
        -0x38t
        -0x39t
        -0x33t
        -0x30t
        -0x2ct
        -0x3at
        -0x20t
        -0x2dt
        -0x3at
        -0x28t
        -0x3et
        -0x2dt
        -0x3bt
        -0x20t
        -0x2ct
        -0x3ct
        -0x2dt
        -0x3at
        -0x3at
        -0x31t
        -0x20t
        -0x2ct
        -0x37t
        -0x30t
        -0x28t
        -0x31t
        -0x35t
        -0x4bt
        -0x39t
        -0x2dt
        -0x47t
        -0x3et
        -0x48t
        -0x2dt
        -0x49t
        -0x4bt
        -0x3at
        -0x48t
        -0x2dt
        -0x39t
        -0x44t
        -0x3dt
        -0x35t
        -0x3et
    .end array-data
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/93;Z)Z
    .locals 0

    .line 20006
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/93;->A08:Z

    return p1
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/93;Z)Z
    .locals 0

    .line 20007
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/93;->A07:Z

    return p1
.end method


# virtual methods
.method public final A0B(Lcom/facebook/ads/redexgen/X/72;)V
    .locals 0

    .line 20008
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Ni;->A0B(Lcom/facebook/ads/redexgen/X/72;)V

    .line 20009
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/93;->A06()V

    .line 20010
    return-void
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/6y;)V
    .locals 5

    .line 20011
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Ni;->A0C(Lcom/facebook/ads/redexgen/X/6y;)V

    .line 20012
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PP;->A00()I

    move-result v1

    .line 20013
    .local v0, "currentPosMs":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0C:Lcom/facebook/ads/redexgen/X/RA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getDuration()I

    move-result v4

    .line 20014
    .local v1, "videoLengthMs":I
    sub-int/2addr v4, v1

    .line 20015
    .local v2, "remainingVideoTimeInMillis":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/Jx;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v3, 0xbb8

    sget-object v1, Lcom/facebook/ads/redexgen/X/93;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/93;->A0G:[Ljava/lang/String;

    const-string v1, "xiBnzSw2W6K3rvYkwdUGMYXv5m3ZqRWR"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge v4, v3, :cond_1

    .line 20016
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/Jx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jx;->A0J()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20017
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/Jx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jx;->A0F()V

    .line 20018
    :cond_1
    return-void
.end method

.method public final A0X()V
    .locals 1

    .line 20019
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Ni;->A0X()V

    .line 20020
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/93;->A04()V

    .line 20021
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A04:Lcom/facebook/ads/redexgen/X/Li;

    .line 20022
    return-void
.end method

.method public final A0c(Lcom/facebook/ads/redexgen/X/1C;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 4
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 20023
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/SR;->A0c(Lcom/facebook/ads/redexgen/X/1C;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 20024
    if-nez p5, :cond_0

    .line 20025
    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    .line 20026
    :cond_0
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x1f

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/93;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 20027
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/93;->A07()V

    .line 20028
    :cond_1
    const/16 v2, 0x37

    const/16 v1, 0x12

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/93;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20029
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/93;->A06()V

    .line 20030
    :cond_2
    const/16 v2, 0x1f

    const/16 v1, 0x18

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/93;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20031
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/93;->A0B:Lcom/facebook/ads/redexgen/X/NS;

    sget-object v1, Lcom/facebook/ads/redexgen/X/93;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/93;->A0G:[Ljava/lang/String;

    const-string v1, "jjtMTZWEM7Dg1szUnnnmuTjwvMhej"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "cexdZia4vusGbXInA5fVVHDcQrSB4"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3, p0}, Lcom/facebook/ads/redexgen/X/NS;->A07(Landroid/view/ViewGroup;)V

    .line 20032
    :cond_4
    return-void
.end method

.method public final A0d()Z
    .locals 1

    .line 20033
    const/4 v0, 0x1

    return v0
.end method

.method public final A0e(Z)Z
    .locals 5

    .line 20034
    const/4 v4, 0x1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/93;->A08:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0E:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/93;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/93;->A0G:[Ljava/lang/String;

    const-string v1, "IfEmWBIDBUNw5tL7YhS4lNzldGhzw"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "8CoNQoXVMdzgwU1krh95bRLsSKKH4"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    .line 20035
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0B:Lcom/facebook/ads/redexgen/X/NS;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/NS;->A07(Landroid/view/ViewGroup;)V

    .line 20036
    return v4

    .line 20037
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->getAdInfo()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0O()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/93;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/93;->A0G:[Ljava/lang/String;

    const-string v1, "YRUjLZqfjvY5EOxU383ujQcW8j7gUgor"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0E:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 20038
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/93;->A0C:Lcom/facebook/ads/redexgen/X/RA;

    sget-object v0, Lcom/facebook/ads/redexgen/X/PF;->A08:Lcom/facebook/ads/redexgen/X/PF;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0a(Lcom/facebook/ads/redexgen/X/PF;)V

    .line 20039
    return v4

    .line 20040
    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0g()V
    .locals 2

    .line 20041
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/SR;->A0g()V

    .line 20042
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/Jx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20043
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/Jx;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0C:Lcom/facebook/ads/redexgen/X/RA;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jx;->A93(Lcom/facebook/ads/redexgen/X/RA;)V

    .line 20044
    :cond_0
    return-void
.end method

.method public final A0h()Z
    .locals 1

    .line 20045
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->getAdInfo()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0O()Z

    move-result v0

    return v0
.end method

.method public getCloseButtonStyle()I
    .locals 1
    .annotation build Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
    .end annotation

    .line 20046
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/93;->A07:Z

    if-eqz v0, :cond_0

    .line 20047
    const/4 v0, 0x2

    return v0

    .line 20048
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/93;->A0h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0E:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 20049
    const/4 v0, 0x1

    return v0

    .line 20050
    :cond_1
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getCloseButtonStyle()I

    move-result v0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 20051
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/SR;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 20052
    return-void
.end method
