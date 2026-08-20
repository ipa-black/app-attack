.class public final Lcom/facebook/ads/redexgen/X/IQ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:Landroid/view/View;

.field public final A01:Lcom/facebook/ads/redexgen/X/Xb;

.field public final A02:Lcom/facebook/ads/redexgen/X/Ia;

.field public final A03:Ljava/lang/String;

.field public final A04:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Z

.field public final A06:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xb;Landroid/view/View;Ljava/lang/String;ZZ)V
    .locals 1

    .line 38560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38561
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/IQ;->A03:Ljava/lang/String;

    .line 38562
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IQ;->A01:Lcom/facebook/ads/redexgen/X/Xb;

    .line 38563
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7N;->A09()Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IQ;->A02:Lcom/facebook/ads/redexgen/X/Ia;

    .line 38564
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/IQ;->A00:Landroid/view/View;

    .line 38565
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/IQ;->A05:Z

    .line 38566
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IQ;->A04:Ljava/util/HashMap;

    .line 38567
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/IQ;->A06:Z

    .line 38568
    return-void
.end method


# virtual methods
.method public final A00()Landroid/view/View;
    .locals 1

    .line 38569
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IQ;->A00:Landroid/view/View;

    return-object v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/Xb;
    .locals 1

    .line 38570
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IQ;->A01:Lcom/facebook/ads/redexgen/X/Xb;

    return-object v0
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/Ia;
    .locals 1

    .line 38571
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IQ;->A02:Lcom/facebook/ads/redexgen/X/Ia;

    return-object v0
.end method

.method public final A03()Ljava/lang/String;
    .locals 1

    .line 38572
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IQ;->A03:Ljava/lang/String;

    return-object v0
.end method

.method public final A04()Ljava/util/Map;
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

    .line 38573
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IQ;->A04:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final A05()Z
    .locals 1

    .line 38574
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/IQ;->A05:Z

    return v0
.end method

.method public final A06()Z
    .locals 1

    .line 38575
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/IQ;->A06:Z

    return v0
.end method
