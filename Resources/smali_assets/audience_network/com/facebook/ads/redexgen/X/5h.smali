.class public final Lcom/facebook/ads/redexgen/X/5h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/RewardedVideoAdApi;
.implements Lcom/facebook/ads/internal/context/Repairable;


# static fields
.field public static A05:[B


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/Ad;

.field public final A02:Lcom/facebook/ads/redexgen/X/24;

.field public final A03:Lcom/facebook/ads/redexgen/X/EK;

.field public final A04:Lcom/facebook/ads/redexgen/X/Xc;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5h;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/Ad;)V
    .locals 3

    .line 14741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14742
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/Ad;

    .line 14743
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/5M;->A05(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    .line 14744
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    .line 14745
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 14746
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p2}, Lcom/facebook/ads/redexgen/X/0R;->A2h(Ljava/lang/String;Ljava/lang/String;)V

    .line 14747
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5h;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/Ad;

    new-instance v0, Lcom/facebook/ads/redexgen/X/24;

    invoke-direct {v0, v2, p2, v1}, Lcom/facebook/ads/redexgen/X/24;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/String;Lcom/facebook/ads/Ad;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/24;

    .line 14748
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Xc;->A0H(Lcom/facebook/ads/internal/context/Repairable;)V

    .line 14749
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/24;

    new-instance v0, Lcom/facebook/ads/redexgen/X/EK;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/EK;-><init>(Lcom/facebook/ads/redexgen/X/24;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A03:Lcom/facebook/ads/redexgen/X/EK;

    .line 14750
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/5h;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4

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
    .locals 1

    const/16 v0, 0x99

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5h;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x73t
        0x74t
        -0x5dt
        -0x5ct
        0x77t
        0x79t
        0x78t
        0x72t
        -0x5ft
        -0x2et
        -0x5bt
        -0x2at
        -0x60t
        -0x5at
        -0x5ft
        -0x2ct
        -0x7dt
        -0x80t
        -0x4ct
        -0x79t
        -0x7at
        -0x4ft
        0x7ft
        -0x50t
        0x4at
        0x4at
        0x4at
        0x7bt
        0x4bt
        0x4bt
        0x48t
        0x49t
        0x52t
        0x77t
        0x7dt
        0x6et
        0x7bt
        0x77t
        0x6at
        0x75t
        0x29t
        0x6et
        0x7bt
        0x7bt
        0x78t
        0x7bt
        0x37t
        0x13t
        -0x33t
        -0x20t
        -0xet
        -0x24t
        -0x13t
        -0x21t
        -0x20t
        -0x21t
        -0x65t
        -0xft
        -0x1ct
        -0x21t
        -0x20t
        -0x16t
        -0x65t
        -0x24t
        -0x21t
        -0x65t
        -0x21t
        -0x20t
        -0x12t
        -0x11t
        -0x13t
        -0x16t
        -0xct
        -0x20t
        -0x21t
        -0x51t
        -0x3et
        -0x2ct
        -0x42t
        -0x31t
        -0x3ft
        -0x3et
        -0x3ft
        0x7dt
        -0x2dt
        -0x3at
        -0x3ft
        -0x3et
        -0x34t
        0x7dt
        -0x42t
        -0x3ft
        0x7dt
        -0x37t
        -0x34t
        -0x42t
        -0x3ft
        0x7dt
        -0x31t
        -0x3et
        -0x32t
        -0x2et
        -0x3et
        -0x30t
        -0x2ft
        -0x3et
        -0x3ft
        -0x3ft
        -0x2ct
        -0x1at
        -0x30t
        -0x1ft
        -0x2dt
        -0x2ct
        -0x2dt
        -0x71t
        -0x1bt
        -0x28t
        -0x2dt
        -0x2ct
        -0x22t
        -0x71t
        -0x30t
        -0x2dt
        -0x71t
        -0x1et
        -0x29t
        -0x22t
        -0x1at
        -0x71t
        -0x2et
        -0x30t
        -0x25t
        -0x25t
        -0x2ct
        -0x2dt
        -0x56t
        -0x55t
        -0x47t
        -0x46t
        -0x48t
        -0x4bt
        -0x41t
        -0x54t
        -0x51t
        -0x5ft
        -0x5ct
        -0x7ft
        -0x5ct
        -0x2bt
        -0x36t
        -0x2ft
        -0x27t
    .end array-data
.end method


# virtual methods
.method public final A02()Lcom/facebook/ads/redexgen/X/5i;
    .locals 1

    .line 14751
    new-instance v0, Lcom/facebook/ads/redexgen/X/5i;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5i;-><init>(Lcom/facebook/ads/redexgen/X/5h;)V

    return-object v0
.end method

.method public final A03()Lcom/facebook/ads/redexgen/X/5j;
    .locals 1

    .line 14752
    new-instance v0, Lcom/facebook/ads/redexgen/X/5j;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/5j;-><init>()V

    return-object v0
.end method

.method public final A04()V
    .locals 1

    .line 14753
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A1h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14754
    return-void

    .line 14755
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A03:Lcom/facebook/ads/redexgen/X/EK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/EK;->A05()V

    .line 14756
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2i()V

    .line 14757
    return-void
.end method

.method public final A05(Lcom/facebook/ads/RewardData;)V
    .locals 1

    .line 14758
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A03:Lcom/facebook/ads/redexgen/X/EK;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/EK;->A0A(Lcom/facebook/ads/RewardData;)V

    .line 14759
    return-void
.end method

.method public final A06(Lcom/facebook/ads/RewardedVideoAdListener;)V
    .locals 2

    .line 14760
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/24;

    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/24;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    .line 14761
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2a(Z)V

    .line 14762
    return-void

    .line 14763
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A07(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;ZZ)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/AdExperienceType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 14764
    if-nez p1, :cond_0

    .line 14765
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2e()V

    .line 14766
    :goto_0
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/5h;->A00:Z

    .line 14767
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A03:Lcom/facebook/ads/redexgen/X/EK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/Ad;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/EK;->A09(Lcom/facebook/ads/Ad;Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V

    .line 14768
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2c()V

    .line 14769
    return-void

    .line 14770
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2d()V

    goto :goto_0
.end method

.method public final A08(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z
    .locals 2

    .line 14771
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2n()V

    .line 14772
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A03:Lcom/facebook/ads/redexgen/X/EK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/Ad;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/EK;->A0D(Lcom/facebook/ads/Ad;Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z

    move-result v1

    .line 14773
    .local v0, "result":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A2m(Z)V

    .line 14774
    return v1
.end method

.method public final bridge synthetic buildLoadAdConfig()Lcom/facebook/ads/Ad$LoadConfigBuilder;
    .locals 1

    .line 14775
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5h;->A02()Lcom/facebook/ads/redexgen/X/5i;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildLoadAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .locals 1

    .line 14776
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5h;->A02()Lcom/facebook/ads/redexgen/X/5i;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildShowAdConfig()Lcom/facebook/ads/FullScreenAd$ShowConfigBuilder;
    .locals 1

    .line 14777
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5h;->A03()Lcom/facebook/ads/redexgen/X/5j;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildShowAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;
    .locals 1

    .line 14778
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5h;->A03()Lcom/facebook/ads/redexgen/X/5j;

    move-result-object v0

    return-object v0
.end method

.method public final destroy()V
    .locals 5

    const/16 v2, 0x88

    const/4 v1, 0x7

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x30

    const/16 v1, 0x1b

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x18

    const/16 v1, 0x8

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/JO;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14779
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5h;->A04()V

    .line 14780
    return-void
.end method

.method public final finalize()V
    .locals 1

    .line 14781
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A03:Lcom/facebook/ads/redexgen/X/EK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZO;->A04()V

    .line 14782
    return-void
.end method

.method public final getPlacementId()Ljava/lang/String;
    .locals 1

    .line 14783
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/24;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/24;->A0C:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoDuration()I
    .locals 1

    .line 14784
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/24;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/24;->A00:I

    return v0
.end method

.method public final isAdInvalidated()Z
    .locals 2

    .line 14785
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A03:Lcom/facebook/ads/redexgen/X/EK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/EK;->A0B()Z

    move-result v1

    .line 14786
    .local v0, "isInvalidated":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A4b(Z)V

    .line 14787
    return v1
.end method

.method public final isAdLoaded()Z
    .locals 1

    .line 14788
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A03:Lcom/facebook/ads/redexgen/X/EK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/EK;->A0C()Z

    move-result v0

    return v0
.end method

.method public final loadAd()V
    .locals 5

    const/16 v2, 0x8f

    const/4 v1, 0x6

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x4b

    const/16 v1, 0x20

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8

    const/16 v1, 0x8

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/JO;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14789
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->A07(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;ZZ)V

    .line 14790
    return-void
.end method

.method public final loadAd(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;)V
    .locals 0

    .line 14791
    check-cast p1, Lcom/facebook/ads/redexgen/X/5i;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5i;->A00()V

    .line 14792
    return-void
.end method

.method public final registerAdCompanionView(Lcom/facebook/ads/internal/api/AdCompanionView;)V
    .locals 1

    .line 14793
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A00:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A03:Lcom/facebook/ads/redexgen/X/EK;

    .line 14794
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/EK;->A07()Lcom/facebook/ads/redexgen/X/ZF;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14795
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A03:Lcom/facebook/ads/redexgen/X/EK;

    .line 14796
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/EK;->A07()Lcom/facebook/ads/redexgen/X/ZF;

    move-result-object v0

    .line 14797
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ZF;->A0K(Lcom/facebook/ads/internal/api/AdCompanionView;)V

    .line 14798
    :cond_0
    return-void
.end method

.method public final repair(Ljava/lang/Throwable;)V
    .locals 7

    .line 14799
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/24;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/24;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    if-eqz v0, :cond_0

    .line 14800
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/24;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/24;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/Ad;

    const/16 v4, 0x7d1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x20

    const/16 v1, 0x10

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/24;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/24;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    .line 14801
    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/L3;->A03(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/AdError;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    .line 14802
    invoke-interface {v6, v5, v0}, Lcom/facebook/ads/RewardedVideoAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 14803
    :cond_0
    return-void
.end method

.method public final setExtraHints(Lcom/facebook/ads/ExtraHints;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14804
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/24;

    invoke-virtual {p1}, Lcom/facebook/ads/ExtraHints;->getHints()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/24;->A06:Ljava/lang/String;

    .line 14805
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/24;

    invoke-virtual {p1}, Lcom/facebook/ads/ExtraHints;->getMediationData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/24;->A07:Ljava/lang/String;

    .line 14806
    return-void
.end method

.method public final show()Z
    .locals 5

    const/16 v2, 0x95

    const/4 v1, 0x4

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x6b

    const/16 v1, 0x1d

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/JO;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14807
    new-instance v1, Lcom/facebook/ads/redexgen/X/5j;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/5j;-><init>()V

    .line 14808
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5j;->withAppOrientation(I)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;

    move-result-object v0

    .line 14809
    invoke-interface {v0}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;->build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;

    move-result-object v0

    .line 14810
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/5h;->A08(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z

    move-result v0

    return v0
.end method

.method public final show(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z
    .locals 5

    const/16 v2, 0x95

    const/4 v1, 0x4

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x6b

    const/16 v1, 0x1d

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x10

    const/16 v1, 0x8

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/JO;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14811
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/5h;->A08(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z

    move-result v0

    return v0
.end method

.method public final unregisterAdCompanionView()V
    .locals 1

    .line 14812
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A00:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A03:Lcom/facebook/ads/redexgen/X/EK;

    .line 14813
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/EK;->A07()Lcom/facebook/ads/redexgen/X/ZF;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14814
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A03:Lcom/facebook/ads/redexgen/X/EK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/EK;->A07()Lcom/facebook/ads/redexgen/X/ZF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A0I()V

    .line 14815
    :cond_0
    return-void
.end method
