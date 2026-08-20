.class public final Lcom/facebook/ads/redexgen/X/1p;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:Lcom/facebook/ads/RewardData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/Is;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A06:Z

.field public final A07:Lcom/facebook/ads/redexgen/X/JD;

.field public final A08:Lcom/facebook/ads/redexgen/X/JF;

.field public final A09:Ljava/lang/String;

.field public final A0A:Ljava/util/EnumSet;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;"
        }
    .end annotation
.end field

.field public final A0B:I

.field public final A0C:Lcom/facebook/ads/internal/protocol/AdPlacementType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 4857
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "erlsxJKV5RGKo0fyhsjft4C8myFkBTFD"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xxCOSS58nTJL4g358MAx2boWparhVsnt"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "50HA7KO7TX73z1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "kwTSvTyvqMkAeNvnsZNufhK8xoNKpC5A"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "CvvJJ5wn5WoPjh"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "PJeUG8MSArG13FCqdbuWaTyquTMQa3YW"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KbVXHt7uQSAfPtAdYM2eE220TAgmiqZ3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "QWgxf2msfb1fWKXeTjGnwNJbVHOPLzwf"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1p;->A0D:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JF;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/JD;I)V
    .locals 7

    .line 4858
    sget-object v0, Lcom/facebook/ads/CacheFlag;->NONE:Lcom/facebook/ads/CacheFlag;

    .line 4859
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    .line 4860
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/1p;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JF;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/JD;ILjava/util/EnumSet;)V

    .line 4861
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JF;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/JD;ILjava/util/EnumSet;)V
    .locals 1
    .param p6    # Ljava/util/EnumSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/JF;",
            "Lcom/facebook/ads/internal/protocol/AdPlacementType;",
            "Lcom/facebook/ads/redexgen/X/JD;",
            "I",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;)V"
        }
    .end annotation

    .line 4862
    .local p6, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4863
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1p;->A09:Ljava/lang/String;

    .line 4864
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/1p;->A0C:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 4865
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/1p;->A07:Lcom/facebook/ads/redexgen/X/JD;

    .line 4866
    iput p5, p0, Lcom/facebook/ads/redexgen/X/1p;->A0B:I

    .line 4867
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/1p;->A0A:Ljava/util/EnumSet;

    .line 4868
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/1p;->A08:Lcom/facebook/ads/redexgen/X/JF;

    .line 4869
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1p;->A00:I

    .line 4870
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 2

    .line 4871
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1p;->A0C:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-eqz v0, :cond_0

    .line 4872
    return-object v0

    .line 4873
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1p;->A07:Lcom/facebook/ads/redexgen/X/JD;

    if-nez v1, :cond_1

    .line 4874
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0

    .line 4875
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/JD;->A07:Lcom/facebook/ads/redexgen/X/JD;

    if-ne v1, v0, :cond_2

    .line 4876
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0

    .line 4877
    :cond_2
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

.method public final A01(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/JK;Lcom/facebook/ads/AdExperienceType;)Lcom/facebook/ads/redexgen/X/Ja;
    .locals 16
    .param p3    # Lcom/facebook/ads/AdExperienceType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4878
    move-object/from16 v2, p0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Ja;

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/1p;->A09:Ljava/lang/String;

    .line 4879
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1p;->A07:Lcom/facebook/ads/redexgen/X/JD;

    const/4 v15, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JD;->A03()I

    move-result v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1p;->A07:Lcom/facebook/ads/redexgen/X/JD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JD;->A02()I

    move-result v0

    new-instance v6, Lcom/facebook/ads/redexgen/X/Kx;

    invoke-direct {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Kx;-><init>(II)V

    :goto_0
    iget-object v7, v2, Lcom/facebook/ads/redexgen/X/1p;->A08:Lcom/facebook/ads/redexgen/X/JF;

    .line 4880
    invoke-static {}, Lcom/facebook/ads/AdSettings;->getTestAdType()Lcom/facebook/ads/AdSettings$TestAdType;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->DEFAULT:Lcom/facebook/ads/AdSettings$TestAdType;

    if-eq v1, v0, :cond_1

    .line 4881
    invoke-static {}, Lcom/facebook/ads/AdSettings;->getTestAdType()Lcom/facebook/ads/AdSettings$TestAdType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AdSettings$TestAdType;->getAdTypeString()Ljava/lang/String;

    move-result-object v8

    .line 4882
    :goto_1
    iget v9, v2, Lcom/facebook/ads/redexgen/X/1p;->A0B:I

    .line 4883
    move-object/from16 v4, p1

    invoke-static {v4}, Lcom/facebook/ads/AdSettings;->isTestMode(Landroid/content/Context;)Z

    move-result v10

    .line 4884
    invoke-static {}, Lcom/facebook/ads/AdSettings;->isMixedAudience()Z

    move-result v11

    .line 4885
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/IK;->A0I(Landroid/content/Context;)I

    move-result v0

    .line 4886
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L3;->A01(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v2, Lcom/facebook/ads/redexgen/X/1p;->A04:Ljava/lang/String;

    .line 4887
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/facebook/ads/AdExperienceType;->getAdExperienceType()Ljava/lang/String;

    move-result-object v15

    :cond_0
    move-object/from16 v12, p2

    invoke-direct/range {v3 .. v15}, Lcom/facebook/ads/redexgen/X/Ja;-><init>(Lcom/facebook/ads/redexgen/X/7N;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Kx;Lcom/facebook/ads/redexgen/X/JF;Ljava/lang/String;IZZLcom/facebook/ads/redexgen/X/JK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/1p;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4888
    :cond_1
    move-object v8, v15

    goto :goto_1

    .line 4889
    :cond_2
    move-object v6, v15

    goto :goto_0

    .line 4890
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/1p;->A0D:[Ljava/lang/String;

    const-string v1, "1YKhexqCB6oyofjWexJTrFb8PReFz0lW"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "PDYLpd11u8hpbIrKg4rw9QV8MRNrtAlX"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3
.end method

.method public final A02(I)V
    .locals 0

    .line 4891
    iput p1, p0, Lcom/facebook/ads/redexgen/X/1p;->A00:I

    .line 4892
    return-void
.end method

.method public final A03(J)V
    .locals 0

    .line 4893
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/1p;->A01:J

    .line 4894
    return-void
.end method

.method public final A04(Lcom/facebook/ads/RewardData;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/RewardData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4895
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1p;->A02:Lcom/facebook/ads/RewardData;

    .line 4896
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/Is;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/Is;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4897
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1p;->A03:Lcom/facebook/ads/redexgen/X/Is;

    .line 4898
    return-void
.end method

.method public final A06(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4899
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1p;->A04:Ljava/lang/String;

    .line 4900
    return-void
.end method

.method public final A07(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4901
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1p;->A05:Ljava/lang/String;

    .line 4902
    return-void
.end method

.method public final A08(Z)V
    .locals 0

    .line 4903
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/1p;->A06:Z

    .line 4904
    return-void
.end method
