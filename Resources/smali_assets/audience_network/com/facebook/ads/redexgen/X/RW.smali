.class public final Lcom/facebook/ads/redexgen/X/RW;
.super Lcom/facebook/ads/redexgen/X/4r;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Lm;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Q9;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/QA;

.field public A02:Lcom/facebook/ads/redexgen/X/QA;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A03:I

.field public final A04:Landroid/util/SparseBooleanArray;

.field public final A05:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A06:Lcom/facebook/ads/redexgen/X/9D;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9D;Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/QA;ILcom/facebook/ads/redexgen/X/Xc;)V
    .locals 0

    .line 50910
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4r;-><init>(Landroid/view/View;)V

    .line 50911
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/RW;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    .line 50912
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RW;->A06:Lcom/facebook/ads/redexgen/X/9D;

    .line 50913
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/RW;->A04:Landroid/util/SparseBooleanArray;

    .line 50914
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/RW;->A01:Lcom/facebook/ads/redexgen/X/QA;

    .line 50915
    iput p4, p0, Lcom/facebook/ads/redexgen/X/RW;->A03:I

    .line 50916
    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/RW;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 50917
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/RW;->A04:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/RW;)Lcom/facebook/ads/redexgen/X/QA;
    .locals 0

    .line 50918
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/RW;->A01:Lcom/facebook/ads/redexgen/X/QA;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/RW;)Lcom/facebook/ads/redexgen/X/QA;
    .locals 0

    .line 50919
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/RW;->A02:Lcom/facebook/ads/redexgen/X/QA;

    return-object p0
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/LD;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/On;)V
    .locals 9

    .line 50920
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RW;->A04:Landroid/util/SparseBooleanArray;

    move-object v5, p4

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/On;->A02()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50921
    return-void

    .line 50922
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RW;->A02:Lcom/facebook/ads/redexgen/X/QA;

    if-eqz v0, :cond_1

    .line 50923
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QA;->A0V()V

    .line 50924
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RW;->A02:Lcom/facebook/ads/redexgen/X/QA;

    .line 50925
    :cond_1
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/On;->A04()Ljava/util/Map;

    move-result-object v7

    .line 50926
    .local v0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/facebook/ads/redexgen/X/RY;

    move-object v3, p0

    move-object v6, p1

    move-object v8, p2

    move-object v4, p3

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/RY;-><init>(Lcom/facebook/ads/redexgen/X/RW;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/On;Lcom/facebook/ads/redexgen/X/Ia;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/LD;)V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/RW;->A00:Lcom/facebook/ads/redexgen/X/Q9;

    .line 50927
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/RW;->A06:Lcom/facebook/ads/redexgen/X/9D;

    const/16 v3, 0xa

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RW;->A00:Lcom/facebook/ads/redexgen/X/Q9;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RW;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QA;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/QA;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RW;->A02:Lcom/facebook/ads/redexgen/X/QA;

    .line 50928
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RW;->A02:Lcom/facebook/ads/redexgen/X/QA;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QA;->A0Y(Z)V

    .line 50929
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RW;->A02:Lcom/facebook/ads/redexgen/X/QA;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/QA;->A0W(I)V

    .line 50930
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RW;->A02:Lcom/facebook/ads/redexgen/X/QA;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/QA;->A0X(I)V

    .line 50931
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RW;->A06:Lcom/facebook/ads/redexgen/X/9D;

    new-instance v0, Lcom/facebook/ads/redexgen/X/RX;

    invoke-direct {v0, p0, v5}, Lcom/facebook/ads/redexgen/X/RX;-><init>(Lcom/facebook/ads/redexgen/X/RW;Lcom/facebook/ads/redexgen/X/On;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9D;->setOnAssetsLoadedListener(Lcom/facebook/ads/redexgen/X/O2;)V

    .line 50932
    return-void
.end method


# virtual methods
.method public final A0l(Lcom/facebook/ads/redexgen/X/On;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/LD;Ljava/lang/String;III)V
    .locals 6

    .line 50933
    move-object v3, p0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/On;->A02()I

    move-result v4

    .line 50934
    .local v2, "position":I
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/RW;->A06:Lcom/facebook/ads/redexgen/X/9D;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v0, -0x5f000010

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/9D;->setTag(ILjava/lang/Object;)V

    .line 50935
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/RW;->A06:Lcom/facebook/ads/redexgen/X/9D;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/SF;->setupNativeCtaExtension(Lcom/facebook/ads/redexgen/X/On;)V

    .line 50936
    const/4 v0, -0x2

    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v2, p6, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 50937
    .local v3, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez v4, :cond_2

    move v1, p8

    .line 50938
    .local v4, "leftMargin":I
    :goto_0
    iget v0, v3, Lcom/facebook/ads/redexgen/X/RW;->A03:I

    add-int/lit8 v0, v0, -0x1

    if-lt v4, v0, :cond_1

    .line 50939
    .local p0, "rightMargin":I
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0, p8, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 50940
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/On;->A03()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1F;->A07()Ljava/lang/String;

    move-result-object v5

    .line 50941
    .local p1, "imageUrl":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/On;->A03()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1F;->A08()Ljava/lang/String;

    move-result-object v4

    .line 50942
    .local p2, "videoUrl":Ljava/lang/String;
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/RW;->A06:Lcom/facebook/ads/redexgen/X/9D;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9D;->setIsVideo(Z)V

    .line 50943
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/RW;->A06:Lcom/facebook/ads/redexgen/X/9D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9D;->A0k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50944
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/RW;->A06:Lcom/facebook/ads/redexgen/X/9D;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/9D;->setVideoPlaceholderUrl(Ljava/lang/String;)V

    .line 50945
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/RW;->A06:Lcom/facebook/ads/redexgen/X/9D;

    invoke-virtual {p3, v4}, Lcom/facebook/ads/redexgen/X/6M;->A0S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9D;->setVideoUrl(Ljava/lang/String;)V

    .line 50946
    :goto_2
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/RW;->A06:Lcom/facebook/ads/redexgen/X/9D;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/9D;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50947
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/RW;->A06:Lcom/facebook/ads/redexgen/X/9D;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/On;->A03()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0F()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/On;->A04()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9D;->setCTAInfo(Lcom/facebook/ads/redexgen/X/1M;Ljava/util/Map;)V

    .line 50948
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/RW;->A06:Lcom/facebook/ads/redexgen/X/9D;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/On;->A04()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9D;->A0l(Ljava/util/Map;)V

    .line 50949
    invoke-direct {p0, p2, p4, p5, p1}, Lcom/facebook/ads/redexgen/X/RW;->A08(Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/LD;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/On;)V

    .line 50950
    return-void

    .line 50951
    :cond_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/RW;->A06:Lcom/facebook/ads/redexgen/X/9D;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/9D;->setImageUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 50952
    :cond_1
    move p8, p7

    goto :goto_1

    .line 50953
    :cond_2
    move v1, p7

    goto :goto_0
.end method

.method public final A0m(Lcom/facebook/ads/redexgen/X/QA;)V
    .locals 0

    .line 50954
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RW;->A01:Lcom/facebook/ads/redexgen/X/QA;

    .line 50955
    return-void
.end method

.method public final AEl(Lcom/facebook/ads/redexgen/X/ND;)V
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/ND;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 50956
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RW;->A06:Lcom/facebook/ads/redexgen/X/9D;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/SF;->setAdDetailsClickListener(Lcom/facebook/ads/redexgen/X/ND;)V

    .line 50957
    return-void
.end method

.method public final AEn()V
    .locals 1

    .line 50958
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RW;->A06:Lcom/facebook/ads/redexgen/X/9D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SF;->A0f()V

    .line 50959
    return-void
.end method
