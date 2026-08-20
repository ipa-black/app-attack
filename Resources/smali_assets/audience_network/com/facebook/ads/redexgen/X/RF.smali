.class public final Lcom/facebook/ads/redexgen/X/RF;
.super Lcom/facebook/ads/redexgen/X/K1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/PB;->A0A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/PB;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/PB;)V
    .locals 0

    .line 50369
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RF;->A00:Lcom/facebook/ads/redexgen/X/PB;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 4

    .line 50370
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A00:Lcom/facebook/ads/redexgen/X/PB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PB;->A00(Lcom/facebook/ads/redexgen/X/PB;)Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v0

    .line 50371
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getEventBus()Lcom/facebook/ads/redexgen/X/8U;

    move-result-object v3

    const/4 v0, 0x3

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/8V;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A00:Lcom/facebook/ads/redexgen/X/PB;

    .line 50372
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PB;->A02(Lcom/facebook/ads/redexgen/X/PB;)Lcom/facebook/ads/redexgen/X/Oi;

    move-result-object v1

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A00:Lcom/facebook/ads/redexgen/X/PB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PB;->A03(Lcom/facebook/ads/redexgen/X/PB;)Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v1

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A00:Lcom/facebook/ads/redexgen/X/PB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PB;->A01(Lcom/facebook/ads/redexgen/X/PB;)Lcom/facebook/ads/redexgen/X/PO;

    move-result-object v1

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/8U;->A04([Lcom/facebook/ads/redexgen/X/8V;)V

    .line 50373
    return-void
.end method
