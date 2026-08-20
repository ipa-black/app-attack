.class public final Lcom/facebook/ads/redexgen/X/QO;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/QN;
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/QE;

.field public A04:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:I

.field public final A06:I


# direct methods
.method public constructor <init>(IIIIILjava/util/Map;Lcom/facebook/ads/redexgen/X/QE;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/QE;",
            ")V"
        }
    .end annotation

    .line 49633
    .local p6, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49634
    iput p1, p0, Lcom/facebook/ads/redexgen/X/QO;->A06:I

    .line 49635
    iput p2, p0, Lcom/facebook/ads/redexgen/X/QO;->A00:I

    .line 49636
    iput p3, p0, Lcom/facebook/ads/redexgen/X/QO;->A02:I

    .line 49637
    iput p4, p0, Lcom/facebook/ads/redexgen/X/QO;->A05:I

    .line 49638
    iput p5, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:I

    .line 49639
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/QO;->A04:Ljava/util/Map;

    .line 49640
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/QE;

    .line 49641
    return-void
.end method

.method public synthetic constructor <init>(IIIIILjava/util/Map;Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/QM;)V
    .locals 0

    .line 49642
    invoke-direct/range {p0 .. p7}, Lcom/facebook/ads/redexgen/X/QO;-><init>(IIIIILjava/util/Map;Lcom/facebook/ads/redexgen/X/QE;)V

    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 49643
    iget v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 49644
    iget v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:I

    return v0
.end method

.method public final A02()I
    .locals 1

    .line 49645
    iget v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A02:I

    return v0
.end method

.method public final A03()I
    .locals 1

    .line 49646
    iget v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A05:I

    return v0
.end method

.method public final A04()I
    .locals 1

    .line 49647
    iget v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A06:I

    return v0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/QE;
    .locals 1

    .line 49648
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/QE;

    return-object v0
.end method

.method public final A06()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49649
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A04:Ljava/util/Map;

    return-object v0
.end method
