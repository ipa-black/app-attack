.class public final Lcom/facebook/ads/redexgen/X/QL;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/QK;
    }
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
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/QO;ZLjava/util/Set;Ljava/util/Set;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/QO;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 49596
    .local p3, "pinnedPublicKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, "pinnedCertificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49597
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QL;->A00:Lcom/facebook/ads/redexgen/X/QO;

    .line 49598
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/QL;->A04:Z

    .line 49599
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/QL;->A02:Ljava/util/Set;

    .line 49600
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/QL;->A01:Ljava/util/Set;

    .line 49601
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/QL;->A03:Z

    .line 49602
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/QO;ZLjava/util/Set;Ljava/util/Set;ZLcom/facebook/ads/redexgen/X/QJ;)V
    .locals 0

    .line 49603
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/QL;-><init>(Lcom/facebook/ads/redexgen/X/QO;ZLjava/util/Set;Ljava/util/Set;Z)V

    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/QO;
    .locals 1

    .line 49604
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QL;->A00:Lcom/facebook/ads/redexgen/X/QO;

    return-object v0
.end method

.method public final A01()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49605
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QL;->A01:Ljava/util/Set;

    return-object v0
.end method

.method public final A02()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49606
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QL;->A02:Ljava/util/Set;

    return-object v0
.end method

.method public final A03()Z
    .locals 1

    .line 49607
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/QL;->A04:Z

    return v0
.end method

.method public final A04()Z
    .locals 1

    .line 49608
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/QL;->A03:Z

    return v0
.end method
