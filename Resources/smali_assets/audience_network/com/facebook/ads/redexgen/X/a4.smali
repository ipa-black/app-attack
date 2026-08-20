.class public final Lcom/facebook/ads/redexgen/X/a4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/5l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/F6;->A0F(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/F6;

.field public final synthetic A01:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/F6;Z)V
    .locals 0

    .line 71498
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/a4;->A00:Lcom/facebook/ads/redexgen/X/F6;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/a4;->A01:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAD()V
    .locals 5

    .line 71499
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a4;->A00:Lcom/facebook/ads/redexgen/X/F6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F6;->A02(Lcom/facebook/ads/redexgen/X/F6;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A1L(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/a4;->A01:Z

    if-eqz v0, :cond_0

    .line 71500
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/a4;->A00:Lcom/facebook/ads/redexgen/X/F6;

    .line 71501
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/F6;->A02(Lcom/facebook/ads/redexgen/X/F6;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a4;->A00:Lcom/facebook/ads/redexgen/X/F6;

    .line 71502
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F6;->A01(Lcom/facebook/ads/redexgen/X/F6;)Lcom/facebook/ads/redexgen/X/1B;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Eu;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/a5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/a5;-><init>(Lcom/facebook/ads/redexgen/X/a4;)V

    .line 71503
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ON;->A01(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Zs;ILcom/facebook/ads/redexgen/X/OK;)Lcom/facebook/ads/redexgen/X/OM;

    move-result-object v0

    .line 71504
    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/F6;->A03(Lcom/facebook/ads/redexgen/X/F6;Lcom/facebook/ads/redexgen/X/OM;)Lcom/facebook/ads/redexgen/X/OM;

    .line 71505
    :goto_0
    return-void

    .line 71506
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a4;->A00:Lcom/facebook/ads/redexgen/X/F6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F6;->A05(Lcom/facebook/ads/redexgen/X/F6;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 71507
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a4;->A00:Lcom/facebook/ads/redexgen/X/F6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F6;->A00(Lcom/facebook/ads/redexgen/X/F6;)Lcom/facebook/ads/redexgen/X/14;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a4;->A00:Lcom/facebook/ads/redexgen/X/F6;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/14;->ACQ(Lcom/facebook/ads/redexgen/X/Zw;)V

    goto :goto_0
.end method

.method public final AAE()V
    .locals 3

    .line 71508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a4;->A00:Lcom/facebook/ads/redexgen/X/F6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F6;->A00(Lcom/facebook/ads/redexgen/X/F6;)Lcom/facebook/ads/redexgen/X/14;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/a4;->A00:Lcom/facebook/ads/redexgen/X/F6;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/14;->ACT(Lcom/facebook/ads/redexgen/X/Zw;Lcom/facebook/ads/AdError;)V

    .line 71509
    return-void
.end method
