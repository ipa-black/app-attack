.class public final Lcom/facebook/ads/redexgen/X/J8;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/J7;,
        Lcom/facebook/ads/redexgen/X/J6;
    }
.end annotation


# instance fields
.field public A00:J

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:I

.field public final A06:I

.field public final A07:I

.field public final A08:I

.field public final A09:I

.field public final A0A:I

.field public final A0B:Lcom/facebook/ads/redexgen/X/J6;

.field public final A0C:Ljava/lang/String;

.field public final A0D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/J7;",
            ">;"
        }
    .end annotation
.end field

.field public final A0E:Z

.field public final A0F:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7N;Lcom/facebook/ads/redexgen/X/J6;)V
    .locals 7

    .line 39549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39550
    const-class v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A0C:Ljava/lang/String;

    .line 39551
    const/16 v0, 0x65

    iput v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A07:I

    .line 39552
    const/16 v0, 0x66

    iput v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A0A:I

    .line 39553
    const/16 v0, 0x67

    iput v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A08:I

    .line 39554
    const/16 v0, 0x68

    iput v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A03:I

    .line 39555
    const/16 v0, 0x69

    iput v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A09:I

    .line 39556
    const/16 v0, 0x6a

    iput v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A02:I

    .line 39557
    const/16 v0, 0x6b

    iput v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A04:I

    .line 39558
    const/16 v0, 0x6c

    iput v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A05:I

    .line 39559
    const/16 v0, 0x6d

    iput v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A06:I

    .line 39560
    const/16 v0, 0x6e

    iput v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A01:I

    .line 39561
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/J8;->A0E:Z

    .line 39562
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:J

    .line 39563
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A0D:Ljava/util/List;

    .line 39564
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0D(Landroid/content/Context;)I

    move-result v1

    .line 39565
    .local v1, "nativeViewabilityHistorySamplingRate":I
    const/4 v0, 0x1

    if-ge v1, v0, :cond_0

    .line 39566
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/J8;->A0F:Z

    .line 39567
    .end local v3
    :goto_0
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/J8;->A0B:Lcom/facebook/ads/redexgen/X/J6;

    .line 39568
    return-void

    .line 39569
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7N;->A08()Lcom/facebook/ads/redexgen/X/8I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8I;->A00()D

    move-result-wide v4

    .line 39570
    .local v3, "sessionRandom":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v1

    div-double/2addr v2, v0

    cmpg-double v0, v4, v2

    if-gez v0, :cond_1

    const/4 v6, 0x1

    :cond_1
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/J8;->A0F:Z

    goto :goto_0
.end method

.method private A00()I
    .locals 1

    .line 39571
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A0B:Lcom/facebook/ads/redexgen/X/J6;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/J6;->A6K()I

    move-result v0

    return v0
.end method

.method private A01()I
    .locals 5

    .line 39572
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 39573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:J

    sub-long/2addr v2, v0

    long-to-int v0, v2

    return v0

    .line 39574
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/J8;)Ljava/util/List;
    .locals 0

    .line 39575
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/J8;->A0D:Ljava/util/List;

    return-object p0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/J7;)V
    .locals 2

    .line 39576
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/J8;->A0D:Ljava/util/List;

    monitor-enter v1

    .line 39577
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A0D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39578
    monitor-exit v1

    .line 39579
    return-void

    .line 39580
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final A04()V
    .locals 5

    .line 39581
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A0F:Z

    if-nez v0, :cond_0

    .line 39582
    return-void

    .line 39583
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/J8;->A01()I

    move-result v4

    const/16 v3, 0x6e

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/J8;->A00()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/J7;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/J7;-><init>(IIILcom/facebook/ads/redexgen/X/J5;)V

    .line 39584
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Lcom/facebook/ads/redexgen/X/J7;)V

    .line 39585
    return-void
.end method

.method public final A05()V
    .locals 5

    .line 39586
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A0F:Z

    if-nez v0, :cond_0

    .line 39587
    return-void

    .line 39588
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/J8;->A01()I

    move-result v4

    const/16 v3, 0x6a

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/J8;->A00()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/J7;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/J7;-><init>(IIILcom/facebook/ads/redexgen/X/J5;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Lcom/facebook/ads/redexgen/X/J7;)V

    .line 39589
    return-void
.end method

.method public final A06()V
    .locals 5

    .line 39590
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A0F:Z

    if-nez v0, :cond_0

    .line 39591
    return-void

    .line 39592
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/J8;->A01()I

    move-result v4

    const/16 v3, 0x68

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/J8;->A00()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/J7;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/J7;-><init>(IIILcom/facebook/ads/redexgen/X/J5;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Lcom/facebook/ads/redexgen/X/J7;)V

    .line 39593
    return-void
.end method

.method public final A07()V
    .locals 5

    .line 39594
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A0F:Z

    if-nez v0, :cond_0

    .line 39595
    return-void

    .line 39596
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/J8;->A01()I

    move-result v4

    const/16 v3, 0x6d

    const/4 v2, -0x1

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/J7;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/J7;-><init>(IIILcom/facebook/ads/redexgen/X/J5;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Lcom/facebook/ads/redexgen/X/J7;)V

    .line 39597
    return-void
.end method

.method public final A08()V
    .locals 5

    .line 39598
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A0F:Z

    if-nez v0, :cond_0

    .line 39599
    return-void

    .line 39600
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/J8;->A01()I

    move-result v4

    const/16 v3, 0x6c

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/J8;->A00()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/J7;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/J7;-><init>(IIILcom/facebook/ads/redexgen/X/J5;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Lcom/facebook/ads/redexgen/X/J7;)V

    .line 39601
    return-void
.end method

.method public final A09()V
    .locals 5

    .line 39602
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A0F:Z

    if-nez v0, :cond_0

    .line 39603
    return-void

    .line 39604
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:J

    .line 39605
    const/4 v4, 0x0

    const/16 v3, 0x65

    const/4 v2, -0x1

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/J7;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/J7;-><init>(IIILcom/facebook/ads/redexgen/X/J5;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Lcom/facebook/ads/redexgen/X/J7;)V

    .line 39606
    return-void
.end method

.method public final A0A()V
    .locals 5

    .line 39607
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A0F:Z

    if-nez v0, :cond_0

    .line 39608
    return-void

    .line 39609
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/J8;->A01()I

    move-result v4

    const/16 v3, 0x69

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/J8;->A00()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/J7;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/J7;-><init>(IIILcom/facebook/ads/redexgen/X/J5;)V

    .line 39610
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Lcom/facebook/ads/redexgen/X/J7;)V

    .line 39611
    return-void
.end method

.method public final A0B()V
    .locals 5

    .line 39612
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A0F:Z

    if-nez v0, :cond_0

    .line 39613
    return-void

    .line 39614
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/J8;->A01()I

    move-result v4

    const/16 v3, 0x66

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/J8;->A00()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/J7;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/J7;-><init>(IIILcom/facebook/ads/redexgen/X/J5;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Lcom/facebook/ads/redexgen/X/J7;)V

    .line 39615
    return-void
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/7N;Ljava/lang/String;)V
    .locals 5

    .line 39616
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A0F:Z

    if-nez v0, :cond_0

    .line 39617
    return-void

    .line 39618
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/J8;->A01()I

    move-result v4

    const/16 v3, 0x67

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/J8;->A00()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/J7;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/J7;-><init>(IIILcom/facebook/ads/redexgen/X/J5;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Lcom/facebook/ads/redexgen/X/J7;)V

    .line 39619
    sget-object v1, Lcom/facebook/ads/redexgen/X/LQ;->A06:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/J5;

    invoke-direct {v0, p0, p2, p1}, Lcom/facebook/ads/redexgen/X/J5;-><init>(Lcom/facebook/ads/redexgen/X/J8;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/7N;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 39620
    return-void
.end method
