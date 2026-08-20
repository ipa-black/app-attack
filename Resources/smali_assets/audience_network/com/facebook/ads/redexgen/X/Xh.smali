.class public final Lcom/facebook/ads/redexgen/X/Xh;
.super Lcom/facebook/ads/redexgen/X/K1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/6M;->A0W(Lcom/facebook/ads/redexgen/X/6E;Lcom/facebook/ads/redexgen/X/6F;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6E;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/6F;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/6M;

.field public final synthetic A03:Ljava/util/ArrayList;

.field public final synthetic A04:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6M;Ljava/util/ArrayList;Lcom/facebook/ads/redexgen/X/6E;Lcom/facebook/ads/redexgen/X/6F;Ljava/util/ArrayList;)V
    .locals 0

    .line 66975
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xh;->A02:Lcom/facebook/ads/redexgen/X/6M;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Xh;->A03:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Xh;->A00:Lcom/facebook/ads/redexgen/X/6E;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Xh;->A01:Lcom/facebook/ads/redexgen/X/6F;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Xh;->A04:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 4

    .line 66976
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xh;->A03:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6M;->A0E(Ljava/util/ArrayList;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    .line 66977
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xh;->A02:Lcom/facebook/ads/redexgen/X/6M;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6M;->A07(Lcom/facebook/ads/redexgen/X/6M;)Lcom/facebook/ads/redexgen/X/7N;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Xc;

    if-eqz v0, :cond_0

    .line 66978
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xh;->A02:Lcom/facebook/ads/redexgen/X/6M;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6M;->A07(Lcom/facebook/ads/redexgen/X/6M;)Lcom/facebook/ads/redexgen/X/7N;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Xc;

    .line 66979
    .local v1, "adContext":Lcom/facebook/ads/redexgen/X/Xc;
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66980
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xh;->A02:Lcom/facebook/ads/redexgen/X/6M;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6M;->A00(Lcom/facebook/ads/redexgen/X/6M;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LC;->A01(J)J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A3x(J)V

    .line 66981
    .end local v1    # "adContext":Lcom/facebook/ads/redexgen/X/Xc;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xh;->A02:Lcom/facebook/ads/redexgen/X/6M;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6M;->A01(Lcom/facebook/ads/redexgen/X/6M;)Landroid/os/Handler;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Xi;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/Xi;-><init>(Lcom/facebook/ads/redexgen/X/Xh;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66982
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xh;->A04:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6M;->A0E(Ljava/util/ArrayList;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66983
    return-void

    .line 66984
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xh;->A02:Lcom/facebook/ads/redexgen/X/6M;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6M;->A00(Lcom/facebook/ads/redexgen/X/6M;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LC;->A01(J)J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A3w(J)V

    goto :goto_0
.end method
