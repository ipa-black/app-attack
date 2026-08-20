.class public final Lcom/facebook/ads/redexgen/X/Zv;
.super Lcom/facebook/ads/redexgen/X/Q9;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Zt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Zt;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Zt;)V
    .locals 0

    .line 71296
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zv;->A00:Lcom/facebook/ads/redexgen/X/Zt;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q9;-><init>()V

    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 1

    .line 71297
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A00:Lcom/facebook/ads/redexgen/X/Zt;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zt;->A03(Lcom/facebook/ads/redexgen/X/Zt;)Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71298
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A00:Lcom/facebook/ads/redexgen/X/Zt;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zt;->A03(Lcom/facebook/ads/redexgen/X/Zt;)Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/17;->AAU()V

    .line 71299
    :cond_0
    return-void
.end method
