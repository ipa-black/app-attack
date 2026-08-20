.class public final Lcom/facebook/ads/redexgen/X/IN;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Xb;Lcom/facebook/ads/redexgen/X/Ga;)V
    .locals 2

    .line 38555
    sget-object v0, Lcom/facebook/ads/redexgen/X/Qg;->A07:Lcom/facebook/ads/redexgen/X/Qg;

    .line 38556
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Ga;->A4R(Lcom/facebook/ads/redexgen/X/Qg;)Lcom/facebook/ads/redexgen/X/Qf;

    move-result-object v1

    .line 38557
    .local v0, "syncBundle":Lcom/facebook/ads/redexgen/X/Qf;
    new-instance v0, Lcom/facebook/ads/redexgen/X/UL;

    invoke-direct {v0, v1, p0}, Lcom/facebook/ads/redexgen/X/UL;-><init>(Lcom/facebook/ads/redexgen/X/Qf;Lcom/facebook/ads/redexgen/X/Xb;)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Qf;->A3G(Lcom/facebook/ads/redexgen/X/Qh;)V

    .line 38558
    return-void
.end method
