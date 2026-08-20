.class public Lcom/facebook/ads/redexgen/X/7N;
.super Landroid/content/ContextWrapper;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/7P;

.field public final A01:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/7P;)V
    .locals 1

    .line 16962
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 16963
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7N;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16964
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/7N;->A00:Lcom/facebook/ads/redexgen/X/7P;

    .line 16965
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/6Q;
    .locals 1

    .line 16966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7N;->A00:Lcom/facebook/ads/redexgen/X/7P;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7P;->A64()Lcom/facebook/ads/redexgen/X/6Q;

    move-result-object v0

    return-object v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/Xb;
    .locals 1

    .line 16967
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7N;->A00:Lcom/facebook/ads/redexgen/X/7P;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/7P;->A7Y(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Xb;

    move-result-object v0

    return-object v0
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/7O;
    .locals 1

    .line 16968
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7N;->A00:Lcom/facebook/ads/redexgen/X/7P;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/7P;->A5t(Lcom/facebook/ads/redexgen/X/7N;)Lcom/facebook/ads/redexgen/X/7O;

    move-result-object v0

    return-object v0
.end method

.method public final A03()Lcom/facebook/ads/redexgen/X/7Q;
    .locals 1

    .line 16969
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7N;->A00:Lcom/facebook/ads/redexgen/X/7P;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/7P;->A6c(Lcom/facebook/ads/redexgen/X/7N;)Lcom/facebook/ads/redexgen/X/7Q;

    move-result-object v0

    return-object v0
.end method

.method public final A04()Lcom/facebook/ads/redexgen/X/7S;
    .locals 1

    .line 16970
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7N;->A00:Lcom/facebook/ads/redexgen/X/7P;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/7P;->A7X(Lcom/facebook/ads/redexgen/X/7N;)Lcom/facebook/ads/redexgen/X/7S;

    move-result-object v0

    return-object v0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/7T;
    .locals 1

    .line 16971
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7N;->A00:Lcom/facebook/ads/redexgen/X/7P;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7P;->A7p()Lcom/facebook/ads/redexgen/X/7T;

    move-result-object v0

    return-object v0
.end method

.method public final A06()Lcom/facebook/ads/redexgen/X/7e;
    .locals 1

    .line 16972
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7N;->A00:Lcom/facebook/ads/redexgen/X/7P;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/7P;->A6R(Lcom/facebook/ads/redexgen/X/7N;)Lcom/facebook/ads/redexgen/X/7e;

    move-result-object v0

    return-object v0
.end method

.method public final A07()Lcom/facebook/ads/redexgen/X/7r;
    .locals 1

    .line 16973
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7N;->A00:Lcom/facebook/ads/redexgen/X/7P;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/7P;->A6S(Lcom/facebook/ads/redexgen/X/7N;)Lcom/facebook/ads/redexgen/X/7r;

    move-result-object v0

    return-object v0
.end method

.method public final A08()Lcom/facebook/ads/redexgen/X/8I;
    .locals 1

    .line 16974
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7N;->A00:Lcom/facebook/ads/redexgen/X/7P;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7P;->A7f()Lcom/facebook/ads/redexgen/X/8I;

    move-result-object v0

    return-object v0
.end method

.method public final A09()Lcom/facebook/ads/redexgen/X/Ia;
    .locals 2

    .line 16975
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7N;->A00:Lcom/facebook/ads/redexgen/X/7P;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7N;->A01()Lcom/facebook/ads/redexgen/X/Xb;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/7P;->A5e(Lcom/facebook/ads/redexgen/X/Xb;)Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v0

    return-object v0
.end method

.method public final A0A()Lcom/facebook/ads/redexgen/X/Im;
    .locals 2

    .line 16976
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7N;->A00:Lcom/facebook/ads/redexgen/X/7P;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7N;->A01()Lcom/facebook/ads/redexgen/X/Xb;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/7P;->A7Z(Lcom/facebook/ads/redexgen/X/Xb;)Lcom/facebook/ads/redexgen/X/Im;

    move-result-object v0

    return-object v0
.end method

.method public final A0B()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 16977
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7N;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final A0C(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16978
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7N;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 16979
    return-void
.end method
