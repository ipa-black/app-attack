.class public final Lcom/facebook/ads/redexgen/X/RM;
.super Lcom/facebook/ads/redexgen/X/4r;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Lm;


# static fields
.field public static A0A:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Q9;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/QA;

.field public A02:Lcom/facebook/ads/redexgen/X/QA;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A03:I

.field public final A04:I

.field public final A05:I

.field public final A06:I

.field public final A07:Landroid/util/SparseBooleanArray;

.field public final A08:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A09:Lcom/facebook/ads/redexgen/X/8x;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 50623
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "av2tITPhYKbVn20ukUfJR25ELbcgjHbj"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "MLeLe181lhP7dC21QqjxU1VDKV9lNkzJ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "XUmY4VBJ2tlJWKlPJ7YkBdCsKtcC"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "bK6oHsXedskfaWsjnVeS6YyvP0sRA20b"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "BhCeFQN4dHt9z3MLE3p7bnIzhrf86Cw8"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "mLW9T0fP2Q5Hob07hRXsv0QUH1fN4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "pNzPXZ5fcby2PvmlRsfUzns43oHDF5Mi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3YktW7BrcDIc4Xw2f2zdWv5xFETbHIAE"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/RM;->A0A:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8x;Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/QA;IIIILcom/facebook/ads/redexgen/X/Xc;)V
    .locals 0

    .line 50624
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4r;-><init>(Landroid/view/View;)V

    .line 50625
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/RM;->A08:Lcom/facebook/ads/redexgen/X/Xc;

    .line 50626
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RM;->A09:Lcom/facebook/ads/redexgen/X/8x;

    .line 50627
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/RM;->A07:Landroid/util/SparseBooleanArray;

    .line 50628
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/RM;->A01:Lcom/facebook/ads/redexgen/X/QA;

    .line 50629
    iput p4, p0, Lcom/facebook/ads/redexgen/X/RM;->A03:I

    .line 50630
    iput p5, p0, Lcom/facebook/ads/redexgen/X/RM;->A04:I

    .line 50631
    iput p6, p0, Lcom/facebook/ads/redexgen/X/RM;->A05:I

    .line 50632
    iput p7, p0, Lcom/facebook/ads/redexgen/X/RM;->A06:I

    .line 50633
    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/RM;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 50634
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/RM;->A07:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/RM;)Lcom/facebook/ads/redexgen/X/QA;
    .locals 0

    .line 50635
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/RM;->A01:Lcom/facebook/ads/redexgen/X/QA;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/RM;)Lcom/facebook/ads/redexgen/X/QA;
    .locals 0

    .line 50636
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/RM;->A02:Lcom/facebook/ads/redexgen/X/QA;

    return-object p0
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/LD;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/On;)V
    .locals 9

    .line 50637
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RM;->A07:Landroid/util/SparseBooleanArray;

    move-object v5, p4

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/On;->A02()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50638
    return-void

    .line 50639
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RM;->A02:Lcom/facebook/ads/redexgen/X/QA;

    if-eqz v0, :cond_2

    .line 50640
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QA;->A0V()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/RM;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x45

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 50641
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/RM;->A0A:[Ljava/lang/String;

    const-string v1, "iteeE4SnfkkyQnEAEqI0za4snrHpWaXy"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RM;->A02:Lcom/facebook/ads/redexgen/X/QA;

    .line 50642
    :cond_2
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/On;->A04()Ljava/util/Map;

    move-result-object v7

    .line 50643
    .local v0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/facebook/ads/redexgen/X/RP;

    move-object v3, p0

    move-object v6, p1

    move-object v8, p2

    move-object v4, p3

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/RP;-><init>(Lcom/facebook/ads/redexgen/X/RM;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/On;Lcom/facebook/ads/redexgen/X/Ia;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/LD;)V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/RM;->A00:Lcom/facebook/ads/redexgen/X/Q9;

    .line 50644
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/RM;->A09:Lcom/facebook/ads/redexgen/X/8x;

    const/16 v3, 0xa

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RM;->A00:Lcom/facebook/ads/redexgen/X/Q9;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RM;->A08:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QA;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/QA;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RM;->A02:Lcom/facebook/ads/redexgen/X/QA;

    .line 50645
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RM;->A02:Lcom/facebook/ads/redexgen/X/QA;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QA;->A0Y(Z)V

    .line 50646
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RM;->A02:Lcom/facebook/ads/redexgen/X/QA;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/QA;->A0W(I)V

    .line 50647
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RM;->A02:Lcom/facebook/ads/redexgen/X/QA;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/QA;->A0X(I)V

    .line 50648
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RM;->A09:Lcom/facebook/ads/redexgen/X/8x;

    new-instance v0, Lcom/facebook/ads/redexgen/X/RN;

    invoke-direct {v0, p0, v5}, Lcom/facebook/ads/redexgen/X/RN;-><init>(Lcom/facebook/ads/redexgen/X/RM;Lcom/facebook/ads/redexgen/X/On;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8x;->setOnAssetsLoadedListener(Lcom/facebook/ads/redexgen/X/O2;)V

    .line 50649
    return-void
.end method


# virtual methods
.method public final A0l(Lcom/facebook/ads/redexgen/X/On;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/LD;Ljava/lang/String;)V
    .locals 5

    .line 50650
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/On;->A02()I

    move-result v4

    .line 50651
    .local v0, "position":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/RM;->A09:Lcom/facebook/ads/redexgen/X/8x;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v0, -0x5f000010

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/8x;->setTag(ILjava/lang/Object;)V

    .line 50652
    iget v1, p0, Lcom/facebook/ads/redexgen/X/RM;->A03:I

    const/4 v0, -0x2

    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 50653
    .local v1, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez v4, :cond_2

    iget v3, p0, Lcom/facebook/ads/redexgen/X/RM;->A04:I

    .line 50654
    .local v2, "leftMargin":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/RM;->A06:I

    add-int/lit8 v0, v0, -0x1

    if-lt v4, v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/RM;->A04:I

    .line 50655
    .local v3, "rightMargin":I
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v2, v3, v0, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 50656
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/On;->A03()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1F;->A07()Ljava/lang/String;

    move-result-object v4

    .line 50657
    .local v4, "imageUrl":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/On;->A03()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1F;->A08()Ljava/lang/String;

    move-result-object v3

    .line 50658
    .local p0, "videoUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RM;->A09:Lcom/facebook/ads/redexgen/X/8x;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8x;->setIsVideo(Z)V

    .line 50659
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RM;->A09:Lcom/facebook/ads/redexgen/X/8x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8x;->A0k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50660
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RM;->A09:Lcom/facebook/ads/redexgen/X/8x;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/8x;->setVideoPlaceholderUrl(Ljava/lang/String;)V

    .line 50661
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RM;->A09:Lcom/facebook/ads/redexgen/X/8x;

    invoke-virtual {p3, v3}, Lcom/facebook/ads/redexgen/X/6M;->A0S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8x;->setVideoUrl(Ljava/lang/String;)V

    .line 50662
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RM;->A09:Lcom/facebook/ads/redexgen/X/8x;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/8x;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50663
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/RM;->A09:Lcom/facebook/ads/redexgen/X/8x;

    .line 50664
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/On;->A03()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0E()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A06()Ljava/lang/String;

    move-result-object v1

    .line 50665
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/On;->A03()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0E()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A01()Ljava/lang/String;

    move-result-object v0

    .line 50666
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8x;->setAdTitleAndDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 50667
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/RM;->A09:Lcom/facebook/ads/redexgen/X/8x;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/On;->A03()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0F()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/On;->A04()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8x;->setCTAInfo(Lcom/facebook/ads/redexgen/X/1M;Ljava/util/Map;)V

    .line 50668
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RM;->A09:Lcom/facebook/ads/redexgen/X/8x;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/On;->A04()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8x;->A0m(Ljava/util/Map;)V

    .line 50669
    invoke-direct {p0, p2, p4, p5, p1}, Lcom/facebook/ads/redexgen/X/RM;->A08(Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/LD;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/On;)V

    .line 50670
    return-void

    .line 50671
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RM;->A09:Lcom/facebook/ads/redexgen/X/8x;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/8x;->setImageUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 50672
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/RM;->A05:I

    goto/16 :goto_1

    .line 50673
    :cond_2
    iget v3, p0, Lcom/facebook/ads/redexgen/X/RM;->A05:I

    goto/16 :goto_0
.end method

.method public final AEl(Lcom/facebook/ads/redexgen/X/ND;)V
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/ND;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 50674
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RM;->A09:Lcom/facebook/ads/redexgen/X/8x;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/SF;->setAdDetailsClickListener(Lcom/facebook/ads/redexgen/X/ND;)V

    .line 50675
    return-void
.end method

.method public final AEn()V
    .locals 1

    .line 50676
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RM;->A09:Lcom/facebook/ads/redexgen/X/8x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SF;->A0f()V

    .line 50677
    return-void
.end method
