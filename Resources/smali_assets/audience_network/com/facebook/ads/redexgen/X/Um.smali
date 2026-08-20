.class public final Lcom/facebook/ads/redexgen/X/Um;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GS;
.implements Lcom/facebook/ads/redexgen/X/Gt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/upstream/DefaultBandwidthMeter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/GS;",
        "Lcom/facebook/ads/redexgen/X/Gt<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public final A06:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A07:Lcom/facebook/ads/redexgen/X/GR;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A08:Lcom/facebook/ads/redexgen/X/HG;

.field public final A09:Lcom/facebook/ads/redexgen/X/Hn;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 57672
    sget-object v6, Lcom/facebook/ads/redexgen/X/HG;->A00:Lcom/facebook/ads/redexgen/X/HG;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/32 v3, 0xf4240

    const/16 v5, 0x7d0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Um;-><init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/GR;JILcom/facebook/ads/redexgen/X/HG;)V

    .line 57673
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/GR;JILcom/facebook/ads/redexgen/X/HG;)V
    .locals 1
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/redexgen/X/GR;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 57674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57675
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Um;->A06:Landroid/os/Handler;

    .line 57676
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Um;->A07:Lcom/facebook/ads/redexgen/X/GR;

    .line 57677
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hn;

    invoke-direct {v0, p5}, Lcom/facebook/ads/redexgen/X/Hn;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Um;->A09:Lcom/facebook/ads/redexgen/X/Hn;

    .line 57678
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Um;->A08:Lcom/facebook/ads/redexgen/X/HG;

    .line 57679
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Um;->A01:J

    .line 57680
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Um;)Lcom/facebook/ads/redexgen/X/GR;
    .locals 0

    .line 57681
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Um;->A07:Lcom/facebook/ads/redexgen/X/GR;

    return-object p0
.end method

.method private A01(IJJ)V
    .locals 9

    .line 57682
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Um;->A06:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Um;->A07:Lcom/facebook/ads/redexgen/X/GR;

    if-eqz v0, :cond_0

    .line 57683
    new-instance v2, Lcom/facebook/ads/redexgen/X/Gc;

    move-object v3, p0

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Gc;-><init>(Lcom/facebook/ads/redexgen/X/Um;IJJ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57684
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized A5q()J
    .locals 2

    monitor-enter p0

    .line 57685
    :try_start_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Um;->A01:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Um;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AAS(Ljava/lang/Object;I)V
    .locals 4

    monitor-enter p0

    .line 57686
    :try_start_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Um;->A02:J

    int-to-long v0, p2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Um;->A02:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57687
    monitor-exit p0

    return-void

    .line 57688
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Um;
    .end local p1    # null:Ljava/lang/Object;
    .end local p2    # null:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ACp(Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v4, p0

    monitor-enter v4

    .line 57689
    :try_start_0
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Um;->A00:I

    const/4 v9, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 57690
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Um;->A08:Lcom/facebook/ads/redexgen/X/HG;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HG;->A5B()J

    move-result-wide v2

    .line 57691
    .local v2, "nowMs":J
    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/Um;->A03:J

    sub-long v0, v2, v5

    long-to-int v11, v0

    .line 57692
    .local v0, "sampleElapsedTimeMs":I
    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/Um;->A05:J

    int-to-long v0, v11

    add-long/2addr v5, v0

    iput-wide v5, v4, Lcom/facebook/ads/redexgen/X/Um;->A05:J

    .line 57693
    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/Um;->A04:J

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/Um;->A02:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Lcom/facebook/ads/redexgen/X/Um;->A04:J

    .line 57694
    if-lez v11, :cond_2

    .line 57695
    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/Um;->A02:J

    const-wide/16 v0, 0x1f40

    mul-long/2addr v5, v0

    int-to-long v0, v11

    div-long/2addr v5, v0

    long-to-float v8, v5

    .line 57696
    .local v4, "bitsPerSecond":F
    iget-object v7, v4, Lcom/facebook/ads/redexgen/X/Um;->A09:Lcom/facebook/ads/redexgen/X/Hn;

    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/Um;->A02:J

    long-to-double v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v0, v5

    invoke-virtual {v7, v0, v8}, Lcom/facebook/ads/redexgen/X/Hn;->A03(IF)V

    .line 57697
    iget-wide v7, v4, Lcom/facebook/ads/redexgen/X/Um;->A05:J

    const-wide/16 v5, 0x7d0

    cmp-long v0, v7, v5

    if-gez v0, :cond_1

    iget-wide v7, v4, Lcom/facebook/ads/redexgen/X/Um;->A04:J

    const-wide/32 v5, 0x80000

    cmp-long v0, v7, v5

    if-ltz v0, :cond_2

    .line 57698
    .end local v12
    :cond_1
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Um;->A09:Lcom/facebook/ads/redexgen/X/Hn;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hn;->A02(F)F

    move-result v0

    float-to-long v0, v0

    iput-wide v0, v4, Lcom/facebook/ads/redexgen/X/Um;->A01:J

    .line 57699
    .end local v4    # "bitsPerSecond":F
    :cond_2
    iget-wide v12, v4, Lcom/facebook/ads/redexgen/X/Um;->A02:J

    iget-wide v14, v4, Lcom/facebook/ads/redexgen/X/Um;->A01:J

    move-object v10, v4

    invoke-direct/range {v10 .. v15}, Lcom/facebook/ads/redexgen/X/Um;->A01(IJJ)V

    .line 57700
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Um;->A00:I

    sub-int/2addr v0, v9

    iput v0, v4, Lcom/facebook/ads/redexgen/X/Um;->A00:I

    if-lez v0, :cond_3

    .line 57701
    iput-wide v2, v4, Lcom/facebook/ads/redexgen/X/Um;->A03:J

    .line 57702
    :cond_3
    const-wide/16 v0, 0x0

    iput-wide v0, v4, Lcom/facebook/ads/redexgen/X/Um;->A02:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57703
    monitor-exit v4

    return-void

    .line 57704
    .end local v0    # "sampleElapsedTimeMs":I
    .end local v2    # "nowMs":J
    .end local v13
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public final declared-synchronized ACq(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/Gb;)V
    .locals 2

    monitor-enter p0

    .line 57705
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Um;->A00:I

    if-nez v0, :cond_0

    .line 57706
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Um;->A08:Lcom/facebook/ads/redexgen/X/HG;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HG;->A5B()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Um;->A03:J

    .line 57707
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Um;
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Um;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Um;->A00:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57708
    monitor-exit p0

    return-void

    .line 57709
    .end local p1    # null:Ljava/lang/Object;
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/Gb;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
