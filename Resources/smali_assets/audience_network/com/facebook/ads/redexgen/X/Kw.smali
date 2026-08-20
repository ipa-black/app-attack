.class public final Lcom/facebook/ads/redexgen/X/Kw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Kv;
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Kv;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/Ku;

.field public final A03:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(JLjava/lang/Runnable;)V
    .locals 1

    .line 42750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42751
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ku;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ku;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A02:Lcom/facebook/ads/redexgen/X/Ku;

    .line 42752
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A02:Lcom/facebook/ads/redexgen/X/Ku;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ku;->A02()V

    .line 42753
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Kw;->A03:Ljava/lang/Runnable;

    .line 42754
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A01:Z

    .line 42755
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Kw;)Lcom/facebook/ads/redexgen/X/Ku;
    .locals 0

    .line 42756
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A02:Lcom/facebook/ads/redexgen/X/Ku;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Kw;Lcom/facebook/ads/redexgen/X/Kv;)Lcom/facebook/ads/redexgen/X/Kv;
    .locals 0

    .line 42757
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Kw;->A00:Lcom/facebook/ads/redexgen/X/Kv;

    return-object p1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Kw;)Ljava/lang/Runnable;
    .locals 0

    .line 42758
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A03:Ljava/lang/Runnable;

    return-object p0
.end method

.method private final declared-synchronized A03()V
    .locals 1

    monitor-enter p0

    .line 42759
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A00:Lcom/facebook/ads/redexgen/X/Kv;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A01:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 42760
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Kv;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>(Lcom/facebook/ads/redexgen/X/Kw;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A00:Lcom/facebook/ads/redexgen/X/Kv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42761
    monitor-exit p0

    return-void

    .line 42762
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Kw;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 42763
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final A04()Lcom/facebook/ads/redexgen/X/Ku;
    .locals 1

    .line 42764
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A02:Lcom/facebook/ads/redexgen/X/Ku;

    return-object v0
.end method

.method public final declared-synchronized A05()V
    .locals 1

    monitor-enter p0

    .line 42765
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A01:Z

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42766
    monitor-exit p0

    return-void

    .line 42767
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A00:Lcom/facebook/ads/redexgen/X/Kv;

    if-nez v0, :cond_1

    .line 42768
    new-instance v0, Lcom/facebook/ads/redexgen/X/Kv;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>(Lcom/facebook/ads/redexgen/X/Kw;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A00:Lcom/facebook/ads/redexgen/X/Kv;

    .line 42769
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Kw;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A00:Lcom/facebook/ads/redexgen/X/Kv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kv;->A00()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42770
    monitor-exit p0

    return-void

    .line 42771
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A06()V
    .locals 1

    monitor-enter p0

    .line 42772
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A02:Lcom/facebook/ads/redexgen/X/Ku;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ku;->A05()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A01:Z

    if-nez v0, :cond_0

    .line 42773
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kw;->A03()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42774
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Kw;
    :cond_0
    monitor-exit p0

    return-void

    .line 42775
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42776
    monitor-enter p0

    .line 42777
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A01:Z

    .line 42778
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A00:Lcom/facebook/ads/redexgen/X/Kv;

    .line 42779
    .local v0, "executing":Lcom/facebook/ads/redexgen/X/Kv;
    monitor-exit p0

    .line 42780
    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42781
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kv;->close()V

    .line 42782
    :cond_0
    return-void

    .line 42783
    .end local v0    # "executing":Lcom/facebook/ads/redexgen/X/Kv;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
