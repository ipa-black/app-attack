.class public final Lcom/facebook/ads/redexgen/X/F7;
.super Lcom/facebook/ads/redexgen/X/Ze;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/F6;->A0B(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Zq;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/F6;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Zq;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/Eu;

.field public final synthetic A04:Lcom/facebook/ads/redexgen/X/Xc;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/F6;ZLcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Eu;Lcom/facebook/ads/redexgen/X/Zq;I)V
    .locals 0

    .line 32688
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/F7;->A01:Lcom/facebook/ads/redexgen/X/F6;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/F7;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/F7;->A03:Lcom/facebook/ads/redexgen/X/Eu;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/F7;->A02:Lcom/facebook/ads/redexgen/X/Zq;

    iput p6, p0, Lcom/facebook/ads/redexgen/X/F7;->A00:I

    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/Ze;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 3

    .line 32689
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F7;->A01:Lcom/facebook/ads/redexgen/X/F6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F6;->A00(Lcom/facebook/ads/redexgen/X/F6;)Lcom/facebook/ads/redexgen/X/14;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F7;->A01:Lcom/facebook/ads/redexgen/X/F6;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/14;->ACT(Lcom/facebook/ads/redexgen/X/Zw;Lcom/facebook/ads/AdError;)V

    .line 32690
    return-void
.end method

.method public final A01(Z)V
    .locals 5

    .line 32691
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/F6;->A0D:Lcom/facebook/ads/redexgen/X/6M;

    .line 32692
    if-eqz p1, :cond_0

    .line 32693
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F7;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    .line 32694
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A00()Lcom/facebook/ads/redexgen/X/6Q;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F7;->A03:Lcom/facebook/ads/redexgen/X/Eu;

    .line 32695
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F7;->A02:Lcom/facebook/ads/redexgen/X/Zq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zq;->A0f()Ljava/lang/String;

    move-result-object v0

    .line 32696
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6Q;->AEm(Ljava/lang/String;Ljava/lang/String;)V

    .line 32697
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/F7;->A00:I

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 32698
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F7;->A01:Lcom/facebook/ads/redexgen/X/F6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F6;->A05(Lcom/facebook/ads/redexgen/X/F6;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 32699
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F7;->A01:Lcom/facebook/ads/redexgen/X/F6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F6;->A00(Lcom/facebook/ads/redexgen/X/F6;)Lcom/facebook/ads/redexgen/X/14;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F7;->A01:Lcom/facebook/ads/redexgen/X/F6;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/14;->ACQ(Lcom/facebook/ads/redexgen/X/Zw;)V

    .line 32700
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/F7;->A01:Lcom/facebook/ads/redexgen/X/F6;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/F7;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F7;->A02:Lcom/facebook/ads/redexgen/X/Zq;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/F7;->A00:I

    add-int/2addr v0, v4

    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F6;->A0A(Lcom/facebook/ads/redexgen/X/F6;Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Zq;I)V

    .line 32701
    return-void
.end method
