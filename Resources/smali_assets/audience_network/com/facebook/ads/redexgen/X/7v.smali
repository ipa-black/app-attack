.class public final Lcom/facebook/ads/redexgen/X/7v;
.super Lcom/facebook/ads/redexgen/X/PO;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7J;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7J;)V
    .locals 0

    .line 18136
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7v;->A00:Lcom/facebook/ads/redexgen/X/7J;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PO;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/72;)V
    .locals 4

    .line 18137
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7v;->A00:Lcom/facebook/ads/redexgen/X/7J;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/7J;->A02(Lcom/facebook/ads/redexgen/X/7J;)Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getState()Lcom/facebook/ads/redexgen/X/Q7;

    move-result-object v2

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A06:Lcom/facebook/ads/redexgen/X/Q7;

    const/4 v1, 0x0

    if-eq v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v3, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/7J;->A09(Lcom/facebook/ads/redexgen/X/7J;Lcom/facebook/ads/redexgen/X/72;ZZ)V

    .line 18138
    return-void

    .line 18139
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 18140
    check-cast p1, Lcom/facebook/ads/redexgen/X/72;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7v;->A00(Lcom/facebook/ads/redexgen/X/72;)V

    return-void
.end method
