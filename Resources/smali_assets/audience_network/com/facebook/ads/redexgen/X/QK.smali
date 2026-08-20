.class public final Lcom/facebook/ads/redexgen/X/QK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/QL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/QO;

.field public A01:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A02:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A03:Z

.field public A04:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49583
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/QK;->A04:Z

    .line 49584
    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/QO;)Lcom/facebook/ads/redexgen/X/QK;
    .locals 0

    .line 49585
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QK;->A00:Lcom/facebook/ads/redexgen/X/QO;

    .line 49586
    return-object p0
.end method

.method public final A01(Ljava/util/Set;)Lcom/facebook/ads/redexgen/X/QK;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/QK;"
        }
    .end annotation

    .line 49587
    .local p1, "pinnedCertificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QK;->A01:Ljava/util/Set;

    .line 49588
    return-object p0
.end method

.method public final A02(Ljava/util/Set;)Lcom/facebook/ads/redexgen/X/QK;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/QK;"
        }
    .end annotation

    .line 49589
    .local p1, "pinnedPublicKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QK;->A02:Ljava/util/Set;

    .line 49590
    return-object p0
.end method

.method public final A03(Z)Lcom/facebook/ads/redexgen/X/QK;
    .locals 0

    .line 49591
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/QK;->A04:Z

    .line 49592
    return-object p0
.end method

.method public final A04(Z)Lcom/facebook/ads/redexgen/X/QK;
    .locals 0

    .line 49593
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/QK;->A03:Z

    .line 49594
    return-object p0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/QL;
    .locals 7

    .line 49595
    new-instance v0, Lcom/facebook/ads/redexgen/X/QL;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QK;->A00:Lcom/facebook/ads/redexgen/X/QO;

    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/QK;->A04:Z

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/QK;->A02:Ljava/util/Set;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/QK;->A01:Ljava/util/Set;

    iget-boolean v5, p0, Lcom/facebook/ads/redexgen/X/QK;->A03:Z

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/QL;-><init>(Lcom/facebook/ads/redexgen/X/QO;ZLjava/util/Set;Ljava/util/Set;ZLcom/facebook/ads/redexgen/X/QJ;)V

    return-object v0
.end method
