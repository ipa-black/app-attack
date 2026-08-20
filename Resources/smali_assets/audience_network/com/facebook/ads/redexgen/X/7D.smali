.class public final Lcom/facebook/ads/redexgen/X/7D;
.super Lcom/facebook/ads/redexgen/X/Sk;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Oy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Oy;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Oy;)V
    .locals 0

    .line 16269
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7D;->A00:Lcom/facebook/ads/redexgen/X/Oy;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sk;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAF()V
    .locals 0

    .line 16270
    return-void
.end method

.method public final AB0(ILjava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A00:Lcom/facebook/ads/redexgen/X/Oy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oy;->A07(Lcom/facebook/ads/redexgen/X/Oy;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16272
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A00:Lcom/facebook/ads/redexgen/X/Oy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oy;->A05(Lcom/facebook/ads/redexgen/X/Oy;)Lcom/facebook/ads/redexgen/X/Ow;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ow;->ABX()V

    .line 16273
    return-void
.end method

.method public final ABC()V
    .locals 3

    .line 16274
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A00:Lcom/facebook/ads/redexgen/X/Oy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oy;->A07(Lcom/facebook/ads/redexgen/X/Oy;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A00:Lcom/facebook/ads/redexgen/X/Oy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oy;->A08(Lcom/facebook/ads/redexgen/X/Oy;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16275
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A00:Lcom/facebook/ads/redexgen/X/Oy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oy;->A05(Lcom/facebook/ads/redexgen/X/Oy;)Lcom/facebook/ads/redexgen/X/Ow;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ow;->ABC()V

    .line 16276
    :cond_0
    return-void
.end method

.method public final ADD()V
    .locals 1

    .line 16277
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A00:Lcom/facebook/ads/redexgen/X/Oy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oy;->A05(Lcom/facebook/ads/redexgen/X/Oy;)Lcom/facebook/ads/redexgen/X/Ow;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ow;->ADD()V

    .line 16278
    return-void
.end method
