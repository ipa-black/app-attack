.class public final Lcom/facebook/ads/redexgen/X/EQ;
.super Lcom/facebook/ads/redexgen/X/ZO;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/21;
    }
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;

.field public static final A03:Lcom/facebook/ads/redexgen/X/21;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/ZI;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/20;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 31811
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Wdifh5HSN4RyvogFUrIVqQJQULlKdEei"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "S34yOHPbjBOZXrhEKXqsFwPvtnd1qciy"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "vu9eRI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "x0OqZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "VYF0eZRg0jpnLcLhIoRoBnoO3djZf6SI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "33GTCt01Ki3rQT8tpwoWMPFpMqFvVQrj"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "pa13jV0ykdfTm6Oo414mEZE7qu5xzGka"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "tj8XsVszyFe6dIsjKXzcwTwgC3z6jHVp"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/EQ;->A02:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZD;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ZD;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/EQ;->A03:Lcom/facebook/ads/redexgen/X/21;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/20;)V
    .locals 2

    .line 31812
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/20;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/EQ;->A03:Lcom/facebook/ads/redexgen/X/21;

    .line 31813
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/21;->A4Q(Lcom/facebook/ads/redexgen/X/20;)Lcom/facebook/ads/redexgen/X/23;

    move-result-object v0

    .line 31814
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/ZO;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/23;)V

    .line 31815
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/EQ;->A01:Lcom/facebook/ads/redexgen/X/20;

    .line 31816
    return-void
.end method


# virtual methods
.method public final A05()V
    .locals 5

    .line 31817
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EQ;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    if-eqz v0, :cond_0

    .line 31818
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZI;->A0F()V

    .line 31819
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ZO;->A00:Lcom/facebook/ads/redexgen/X/1v;

    sget-object v3, Lcom/facebook/ads/redexgen/X/1u;->A04:Lcom/facebook/ads/redexgen/X/1u;

    sget-object v1, Lcom/facebook/ads/redexgen/X/EQ;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/EQ;->A02:[Ljava/lang/String;

    const-string v1, "bjBCaQy28rNQq0pISHtZZouKJ3cbndZJ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-interface {v4, v3}, Lcom/facebook/ads/redexgen/X/1v;->AEr(Lcom/facebook/ads/redexgen/X/1u;)V

    .line 31820
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A07()Lcom/facebook/ads/redexgen/X/ZI;
    .locals 1

    .line 31821
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EQ;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    return-object v0
.end method

.method public final A08()V
    .locals 3

    .line 31822
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/EQ;->A01:Lcom/facebook/ads/redexgen/X/20;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A02:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZI;

    invoke-direct {v0, v2, p0, v1}, Lcom/facebook/ads/redexgen/X/ZI;-><init>(Lcom/facebook/ads/redexgen/X/20;Lcom/facebook/ads/redexgen/X/27;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/EQ;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    .line 31823
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/EQ;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EQ;->A01:Lcom/facebook/ads/redexgen/X/20;

    .line 31824
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/20;->A0A()Ljava/util/EnumSet;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EQ;->A01:Lcom/facebook/ads/redexgen/X/20;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/20;->A06()Ljava/lang/String;

    move-result-object v0

    .line 31825
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZI;->A0I(Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 31826
    return-void
.end method

.method public final A09(Lcom/facebook/ads/InterstitialAd;Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/InterstitialAd;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 31827
    .local p2, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A00:Lcom/facebook/ads/redexgen/X/1v;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1v;->A5M()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31828
    return-void

    .line 31829
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EQ;->A01:Lcom/facebook/ads/redexgen/X/20;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/20;->A0C(Lcom/facebook/ads/InterstitialAd;)V

    .line 31830
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EQ;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    if-eqz v0, :cond_1

    .line 31831
    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/ZI;->A0I(Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 31832
    return-void

    .line 31833
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EQ;->A01:Lcom/facebook/ads/redexgen/X/20;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/20;->A0J(Ljava/util/EnumSet;)V

    .line 31834
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EQ;->A01:Lcom/facebook/ads/redexgen/X/20;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/20;->A0G(Ljava/lang/String;)V

    .line 31835
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EQ;->A08()V

    .line 31836
    return-void
.end method

.method public final A0A()Z
    .locals 6

    .line 31837
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EQ;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    if-eqz v0, :cond_0

    .line 31838
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZI;->A0J()Z

    move-result v0

    return v0

    .line 31839
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EQ;->A01:Lcom/facebook/ads/redexgen/X/20;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/20;->A00()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    .line 31840
    invoke-static {}, Lcom/facebook/ads/redexgen/X/LC;->A00()J

    move-result-wide v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EQ;->A01:Lcom/facebook/ads/redexgen/X/20;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/20;->A00()J

    move-result-wide v0

    cmp-long v3, v4, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/EQ;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x79

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/EQ;->A02:[Ljava/lang/String;

    const-string v1, "spPOKGUnJm6foAMMjUQWH3rPbfiGZlB3"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-lez v3, :cond_1

    const/4 v0, 0x1

    .line 31841
    :goto_0
    return v0

    .line 31842
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0B()Z
    .locals 2

    .line 31843
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EQ;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    if-eqz v0, :cond_0

    .line 31844
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZI;->A0K()Z

    move-result v0

    return v0

    .line 31845
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A00:Lcom/facebook/ads/redexgen/X/1v;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1v;->A5f()Lcom/facebook/ads/redexgen/X/1u;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/1u;->A06:Lcom/facebook/ads/redexgen/X/1u;

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0C(Lcom/facebook/ads/InterstitialAd;Lcom/facebook/ads/InterstitialAd$InterstitialShowAdConfig;)Z
    .locals 4

    .line 31846
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A00:Lcom/facebook/ads/redexgen/X/1v;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1v;->A5N()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 31847
    return v3

    .line 31848
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EQ;->A01:Lcom/facebook/ads/redexgen/X/20;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/20;->A0C(Lcom/facebook/ads/InterstitialAd;)V

    .line 31849
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EQ;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    if-eqz v0, :cond_1

    .line 31850
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZI;->A0L()Z

    move-result v0

    return v0

    .line 31851
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/EQ;->A01:Lcom/facebook/ads/redexgen/X/20;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A02:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZI;

    invoke-direct {v0, v2, p0, v1}, Lcom/facebook/ads/redexgen/X/ZI;-><init>(Lcom/facebook/ads/redexgen/X/20;Lcom/facebook/ads/redexgen/X/27;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/EQ;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    .line 31852
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EQ;->A00:Lcom/facebook/ads/redexgen/X/ZI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZI;->A0L()Z

    .line 31853
    return v3
.end method
