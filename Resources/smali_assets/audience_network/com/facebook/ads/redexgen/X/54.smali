.class public final Lcom/facebook/ads/redexgen/X/54;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Landroid/content/Context;)V
    .locals 2

    .line 13422
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5M;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object p0

    new-instance v1, Lcom/facebook/ads/redexgen/X/53;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/53;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/51;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/51;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/53;)V

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/51;->start()V

    .line 13423
    return-void
.end method
