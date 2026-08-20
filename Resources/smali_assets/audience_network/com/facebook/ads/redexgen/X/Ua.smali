.class public final Lcom/facebook/ads/redexgen/X/Ua;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Gq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Gn;,
        Lcom/facebook/ads/redexgen/X/Gk;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/upstream/Loader$RetryAction;,
        Lcom/facebook/ads/redexgen/X/Gm;,
        Lcom/facebook/ads/redexgen/X/Gj;,
        Lcom/facebook/ads/redexgen/X/Gl;,
        Lcom/facebook/ads/redexgen/X/Gp;
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Gk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Gk<",
            "+",
            "Lcom/facebook/ads/redexgen/X/Gl;",
            ">;"
        }
    .end annotation
.end field

.field public A01:Ljava/io/IOException;

.field public final A02:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 57492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57493
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Hs;->A0T(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ua;->A02:Ljava/util/concurrent/ExecutorService;

    .line 57494
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Ua;)Lcom/facebook/ads/redexgen/X/Gk;
    .locals 0

    .line 57495
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ua;->A00:Lcom/facebook/ads/redexgen/X/Gk;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/Gk;)Lcom/facebook/ads/redexgen/X/Gk;
    .locals 0

    .line 57496
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ua;->A00:Lcom/facebook/ads/redexgen/X/Gk;

    return-object p1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Ua;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 57497
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ua;->A01:Ljava/io/IOException;

    return-object p1
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Ua;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 57498
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ua;->A02:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method


# virtual methods
.method public final A04(Lcom/facebook/ads/redexgen/X/Gl;Lcom/facebook/ads/redexgen/X/Gj;I)J
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/ads/redexgen/X/Gl;",
            ">(TT;",
            "Lcom/facebook/ads/redexgen/X/Gj<",
            "TT;>;I)J"
        }
    .end annotation

    .line 57499
    .local p3, "loadable":Lcom/facebook/ads/redexgen/X/Gl;, "TT;"
    .local p4, "callback":Lcom/facebook/ads/redexgen/X/Gj;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/upstream/Loader$Callback<TT;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    .line 57500
    .local v8, "looper":Landroid/os/Looper;
    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 57501
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ua;->A01:Ljava/io/IOException;

    .line 57502
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 57503
    .local v9, "startTimeMs":J
    new-instance v2, Lcom/facebook/ads/redexgen/X/Gk;

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/Gk;-><init>(Lcom/facebook/ads/redexgen/X/Ua;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/Gl;Lcom/facebook/ads/redexgen/X/Gj;IJ)V

    const-wide/16 v0, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Gk;->A06(J)V

    .line 57504
    return-wide v8

    .line 57505
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A05()V
    .locals 2

    .line 57506
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ua;->A00:Lcom/facebook/ads/redexgen/X/Gk;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Gk;->A07(Z)V

    .line 57507
    return-void
.end method

.method public final A06(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ua;->A01:Ljava/io/IOException;

    if-nez v0, :cond_2

    .line 57509
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ua;->A00:Lcom/facebook/ads/redexgen/X/Gk;

    if-eqz v1, :cond_1

    .line 57510
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    iget p1, v1, Lcom/facebook/ads/redexgen/X/Gk;->A03:I

    .line 57511
    :cond_0
    invoke-virtual {v1, p1}, Lcom/facebook/ads/redexgen/X/Gk;->A05(I)V

    .line 57512
    :cond_1
    return-void

    .line 57513
    :cond_2
    throw v0
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/Gm;)V
    .locals 2
    .param p1    # Lcom/facebook/ads/redexgen/X/Gm;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 57514
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ua;->A00:Lcom/facebook/ads/redexgen/X/Gk;

    if-eqz v1, :cond_0

    .line 57515
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Gk;->A07(Z)V

    .line 57516
    :cond_0
    if-eqz p1, :cond_1

    .line 57517
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ua;->A02:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Gn;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Gn;-><init>(Lcom/facebook/ads/redexgen/X/Gm;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 57518
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ua;->A02:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 57519
    return-void
.end method

.method public final A08()Z
    .locals 1

    .line 57520
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ua;->A00:Lcom/facebook/ads/redexgen/X/Gk;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
