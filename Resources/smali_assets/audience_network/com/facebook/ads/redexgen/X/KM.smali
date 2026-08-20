.class public final Lcom/facebook/ads/redexgen/X/KM;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/KL;
    }
.end annotation


# static fields
.field public static final A04:Lcom/facebook/ads/redexgen/X/KM;


# instance fields
.field public A00:J

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/KL;

.field public final A03:Lcom/facebook/ads/redexgen/X/LB;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 41919
    new-instance v2, Lcom/facebook/ads/redexgen/X/TZ;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/TZ;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/TY;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/TY;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/KM;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/KM;-><init>(Lcom/facebook/ads/redexgen/X/LB;Lcom/facebook/ads/redexgen/X/KL;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/KM;->A04:Lcom/facebook/ads/redexgen/X/KM;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/LB;Lcom/facebook/ads/redexgen/X/KL;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 41920
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41921
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KM;->A03:Lcom/facebook/ads/redexgen/X/LB;

    .line 41922
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/KM;->A02:Lcom/facebook/ads/redexgen/X/KL;

    .line 41923
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A01:Z

    .line 41924
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A00:J

    .line 41925
    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/KM;
    .locals 1

    .line 41926
    sget-object v0, Lcom/facebook/ads/redexgen/X/KM;->A04:Lcom/facebook/ads/redexgen/X/KM;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized A01()V
    .locals 2

    monitor-enter p0

    .line 41927
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A01:Z

    .line 41928
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A03:Lcom/facebook/ads/redexgen/X/LB;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LB;->A4j()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A00:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41929
    monitor-exit p0

    return-void

    .line 41930
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/KM;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A02()V
    .locals 2

    monitor-enter p0

    .line 41931
    const-wide/16 v0, -0x1

    :try_start_0
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A00:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41932
    monitor-exit p0

    return-void

    .line 41933
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/KM;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A03()Z
    .locals 7

    .line 41934
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A02:Lcom/facebook/ads/redexgen/X/KL;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/KL;->A6y()Landroid/app/Activity;

    move-result-object v0

    .line 41935
    .local v0, "lastResumedActivity":Landroid/app/Activity;
    const/4 v6, 0x1

    if-eqz v0, :cond_0

    .line 41936
    return v6

    .line 41937
    :cond_0
    const-class v5, Lcom/facebook/ads/redexgen/X/KM;

    monitor-enter v5

    .line 41938
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A01:Z

    if-eqz v0, :cond_1

    .line 41939
    monitor-exit v5

    return v6

    .line 41940
    :cond_1
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/KM;->A00:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A03:Lcom/facebook/ads/redexgen/X/LB;

    .line 41941
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LB;->A4j()J

    move-result-wide v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A00:J

    sub-long/2addr v3, v0

    const-wide/16 v1, 0x3e8

    cmp-long v0, v3, v1

    if-gez v0, :cond_3

    :cond_2
    :goto_0
    monitor-exit v5

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 41942
    :goto_1
    return v6

    .line 41943
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
