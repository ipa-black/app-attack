.class public final Lcom/facebook/ads/redexgen/X/9l;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/9j;,
        Lcom/facebook/ads/redexgen/X/9k;
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:Landroid/os/Handler;

.field public A04:Ljava/lang/Object;

.field public A05:Z

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public final A0A:Lcom/facebook/ads/redexgen/X/9j;

.field public final A0B:Lcom/facebook/ads/redexgen/X/9k;

.field public final A0C:Lcom/facebook/ads/redexgen/X/9u;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9j;Lcom/facebook/ads/redexgen/X/9k;Lcom/facebook/ads/redexgen/X/9u;ILandroid/os/Handler;)V
    .locals 2

    .line 20942
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20943
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9l;->A0A:Lcom/facebook/ads/redexgen/X/9j;

    .line 20944
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/9l;->A0B:Lcom/facebook/ads/redexgen/X/9k;

    .line 20945
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/9l;->A0C:Lcom/facebook/ads/redexgen/X/9u;

    .line 20946
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/9l;->A03:Landroid/os/Handler;

    .line 20947
    iput p4, p0, Lcom/facebook/ads/redexgen/X/9l;->A01:I

    .line 20948
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/9l;->A02:J

    .line 20949
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9l;->A05:Z

    .line 20950
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 20951
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9l;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 20952
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9l;->A01:I

    return v0
.end method

.method public final A02()J
    .locals 2

    .line 20953
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/9l;->A02:J

    return-wide v0
.end method

.method public final A03()Landroid/os/Handler;
    .locals 1

    .line 20954
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9l;->A03:Landroid/os/Handler;

    return-object v0
.end method

.method public final A04()Lcom/facebook/ads/redexgen/X/9k;
    .locals 1

    .line 20955
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9l;->A0B:Lcom/facebook/ads/redexgen/X/9k;

    return-object v0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/9l;
    .locals 6

    .line 20956
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9l;->A09:Z

    const/4 v5, 0x1

    xor-int/2addr v0, v5

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 20957
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/9l;->A02:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 20958
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9l;->A05:Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A03(Z)V

    .line 20959
    :cond_0
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/9l;->A09:Z

    .line 20960
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9l;->A0A:Lcom/facebook/ads/redexgen/X/9j;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/9j;->AEk(Lcom/facebook/ads/redexgen/X/9l;)V

    .line 20961
    return-object p0
.end method

.method public final A06(I)Lcom/facebook/ads/redexgen/X/9l;
    .locals 1

    .line 20962
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9l;->A09:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 20963
    iput p1, p0, Lcom/facebook/ads/redexgen/X/9l;->A00:I

    .line 20964
    return-object p0
.end method

.method public final A07(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/9l;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 20965
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9l;->A09:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 20966
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9l;->A04:Ljava/lang/Object;

    .line 20967
    return-object p0
.end method

.method public final A08()Lcom/facebook/ads/redexgen/X/9u;
    .locals 1

    .line 20968
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9l;->A0C:Lcom/facebook/ads/redexgen/X/9u;

    return-object v0
.end method

.method public final A09()Ljava/lang/Object;
    .locals 1

    .line 20969
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9l;->A04:Ljava/lang/Object;

    return-object v0
.end method

.method public final declared-synchronized A0A(Z)V
    .locals 1

    monitor-enter p0

    .line 20970
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9l;->A07:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9l;->A07:Z

    .line 20971
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9l;->A08:Z

    .line 20972
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20973
    monitor-exit p0

    return-void

    .line 20974
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/9l;
    .end local p1    # null:Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0B()Z
    .locals 1

    .line 20975
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9l;->A05:Z

    return v0
.end method

.method public final declared-synchronized A0C()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 20976
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9l;->A09:Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 20977
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9l;->A03:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 20978
    :goto_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9l;->A08:Z

    if-nez v0, :cond_1

    .line 20979
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 20980
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/9l;
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9l;->A07:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 20981
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0D()Z
    .locals 1

    monitor-enter p0

    .line 20982
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9l;->A06:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/9l;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
