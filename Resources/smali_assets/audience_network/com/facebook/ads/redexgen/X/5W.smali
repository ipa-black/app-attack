.class public final Lcom/facebook/ads/redexgen/X/5W;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeAdsManagerApi;


# static fields
.field public static final A0A:Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/NativeAdsManager$Listener;

.field public A02:Lcom/facebook/ads/redexgen/X/ZU;

.field public A03:Ljava/lang/String;

.field public A04:Z

.field public A05:Z

.field public final A06:I

.field public final A07:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A08:Ljava/lang/String;

.field public final A09:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/NativeAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 14505
    const-class v0, Lcom/facebook/ads/NativeAdsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5W;->A0A:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 14506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14507
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/5M;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5W;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    .line 14508
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/5W;->A08:Ljava/lang/String;

    .line 14509
    const/4 v1, 0x0

    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/5W;->A06:I

    .line 14510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5W;->A09:Ljava/util/List;

    .line 14511
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/5W;->A00:I

    .line 14512
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/5W;->A04:Z

    .line 14513
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/5W;->A05:Z

    .line 14514
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/NativeAdsManager$Listener;
    .locals 1

    .line 14515
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5W;->A01:Lcom/facebook/ads/NativeAdsManager$Listener;

    return-object v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/ZU;
    .locals 1

    .line 14516
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5W;->A02:Lcom/facebook/ads/redexgen/X/ZU;

    return-object v0
.end method

.method public final A02()V
    .locals 1

    .line 14517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5W;->A09:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 14518
    return-void
.end method

.method public final A03(I)V
    .locals 0

    .line 14519
    iput p1, p0, Lcom/facebook/ads/redexgen/X/5W;->A00:I

    .line 14520
    return-void
.end method

.method public final A04(Lcom/facebook/ads/NativeAd;)V
    .locals 1

    .line 14521
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5W;->A09:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14522
    return-void
.end method

.method public final A05(Z)V
    .locals 0

    .line 14523
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/5W;->A04:Z

    .line 14524
    return-void
.end method

.method public final disableAutoRefresh()V
    .locals 1

    .line 14525
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5W;->A05:Z

    .line 14526
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5W;->A02:Lcom/facebook/ads/redexgen/X/ZU;

    if-eqz v0, :cond_0

    .line 14527
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZU;->A06()V

    .line 14528
    :cond_0
    return-void
.end method

.method public final getUniqueNativeAdCount()I
    .locals 1

    .line 14529
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5W;->A09:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final isLoaded()Z
    .locals 1

    .line 14530
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5W;->A04:Z

    return v0
.end method

.method public final loadAds()V
    .locals 1

    .line 14531
    sget-object v0, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->ALL:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/5W;->loadAds(Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)V

    .line 14532
    return-void
.end method

.method public final loadAds(Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)V
    .locals 6

    .line 14533
    sget-object v3, Lcom/facebook/ads/redexgen/X/JF;->A05:Lcom/facebook/ads/redexgen/X/JF;

    .line 14534
    .local p0, "adTemplate":Lcom/facebook/ads/redexgen/X/JF;
    iget v5, p0, Lcom/facebook/ads/redexgen/X/5W;->A06:I

    .line 14535
    .local p1, "numAdRequested":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5W;->A02:Lcom/facebook/ads/redexgen/X/ZU;

    .line 14536
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZU;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5W;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5W;->A08:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/ZU;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JF;Lcom/facebook/ads/AdSize;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5W;->A02:Lcom/facebook/ads/redexgen/X/ZU;

    .line 14537
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5W;->A05:Z

    if-eqz v0, :cond_0

    .line 14538
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5W;->A02:Lcom/facebook/ads/redexgen/X/ZU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZU;->A06()V

    .line 14539
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5W;->A02:Lcom/facebook/ads/redexgen/X/ZU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5W;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ZU;->A09(Ljava/lang/String;)V

    .line 14540
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5W;->A02:Lcom/facebook/ads/redexgen/X/ZU;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5W;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Xz;

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/ads/redexgen/X/Xz;-><init>(Lcom/facebook/ads/redexgen/X/5W;Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/ZU;->A08(Lcom/facebook/ads/redexgen/X/1s;)V

    .line 14541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5W;->A02:Lcom/facebook/ads/redexgen/X/ZU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZU;->A07()V

    .line 14542
    return-void
.end method

.method public final nextNativeAd()Lcom/facebook/ads/NativeAd;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 14543
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/5W;->nextNativeAd(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAd;

    move-result-object v0

    return-object v0
.end method

.method public final nextNativeAd(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAd;
    .locals 4
    .param p1    # Lcom/facebook/ads/NativeAdListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 14544
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5W;->A09:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 14545
    const/4 v0, 0x0

    return-object v0

    .line 14546
    :cond_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/5W;->A00:I

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/5W;->A00:I

    .line 14547
    .local v0, "pos":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5W;->A09:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    rem-int v0, v3, v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/NativeAd;

    .line 14548
    .local v1, "ad":Lcom/facebook/ads/NativeAd;
    if-eqz p1, :cond_1

    .line 14549
    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Tp;

    invoke-virtual {v0, v2, p1}, Lcom/facebook/ads/redexgen/X/Tp;->A1R(Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdListener;)V

    .line 14550
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5W;->A09:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_2

    .line 14551
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5W;->A07:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v0, Lcom/facebook/ads/NativeAd;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;)V

    return-object v0

    .line 14552
    :cond_2
    return-object v2
.end method

.method public final setExtraHints(Ljava/lang/String;)V
    .locals 0

    .line 14553
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5W;->A03:Ljava/lang/String;

    .line 14554
    return-void
.end method

.method public final setListener(Lcom/facebook/ads/NativeAdsManager$Listener;)V
    .locals 0

    .line 14555
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5W;->A01:Lcom/facebook/ads/NativeAdsManager$Listener;

    .line 14556
    return-void
.end method
