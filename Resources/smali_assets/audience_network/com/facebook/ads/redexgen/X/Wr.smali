.class public final Lcom/facebook/ads/redexgen/X/Wr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/9d;
.implements Lcom/facebook/ads/redexgen/X/DC;
.implements Lcom/facebook/ads/redexgen/X/AM;
.implements Lcom/facebook/ads/redexgen/X/IG;
.implements Lcom/facebook/ads/redexgen/X/Eh;
.implements Lcom/facebook/ads/redexgen/X/GR;
.implements Lcom/facebook/ads/redexgen/X/B3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/9x;,
        Lcom/facebook/ads/redexgen/X/9w;,
        Lcom/facebook/ads/redexgen/X/9v;
    }
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/9i;

.field public final A01:Lcom/facebook/ads/redexgen/X/9t;

.field public final A02:Lcom/facebook/ads/redexgen/X/9w;

.field public final A03:Lcom/facebook/ads/redexgen/X/HG;

.field public final A04:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/9z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 65334
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "3ui7943oJKQ0earBMheCpqpPzXrDt0u1"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Y87VavrouiKi9z"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "P6cMiRGLac5hfjC0tRGIGRLUUUjxE7XX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Gp12Iojej9PCs1Iei8EmhswJ2d7MPPra"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "iPLJe15l61uvnh9YTjVALhylcUuC36cq"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "JkCpp1uc3ZLfv8H0X3nexU5u26UQU15j"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "bG94g9DZx4SnKjROolD8g6Osz0P9GRGH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "l5hRkIxgm3MuCDpPoC4K2VrrhVSesDup"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Wr;->A05:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9i;Lcom/facebook/ads/redexgen/X/HG;)V
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/9i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 65335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65336
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Wr;->A00:Lcom/facebook/ads/redexgen/X/9i;

    .line 65337
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/HD;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/HG;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A03:Lcom/facebook/ads/redexgen/X/HG;

    .line 65338
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 65339
    new-instance v0, Lcom/facebook/ads/redexgen/X/9w;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9w;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A02:Lcom/facebook/ads/redexgen/X/9w;

    .line 65340
    new-instance v0, Lcom/facebook/ads/redexgen/X/9t;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9t;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A01:Lcom/facebook/ads/redexgen/X/9t;

    .line 65341
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/9y;
    .locals 1

    .line 65342
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A02:Lcom/facebook/ads/redexgen/X/9w;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9w;->A03()Lcom/facebook/ads/redexgen/X/9x;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Wr;->A05(Lcom/facebook/ads/redexgen/X/9x;)Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v0

    return-object v0
.end method

.method private A01()Lcom/facebook/ads/redexgen/X/9y;
    .locals 1

    .line 65343
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A02:Lcom/facebook/ads/redexgen/X/9w;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9w;->A04()Lcom/facebook/ads/redexgen/X/9x;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Wr;->A05(Lcom/facebook/ads/redexgen/X/9x;)Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v0

    return-object v0
.end method

.method private A02()Lcom/facebook/ads/redexgen/X/9y;
    .locals 1

    .line 65344
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A02:Lcom/facebook/ads/redexgen/X/9w;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9w;->A05()Lcom/facebook/ads/redexgen/X/9x;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Wr;->A05(Lcom/facebook/ads/redexgen/X/9x;)Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v0

    return-object v0
.end method

.method private A03()Lcom/facebook/ads/redexgen/X/9y;
    .locals 1

    .line 65345
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A02:Lcom/facebook/ads/redexgen/X/9w;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9w;->A06()Lcom/facebook/ads/redexgen/X/9x;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Wr;->A05(Lcom/facebook/ads/redexgen/X/9x;)Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v0

    return-object v0
.end method

.method private final A04(ILcom/facebook/ads/redexgen/X/ER;)Lcom/facebook/ads/redexgen/X/9y;
    .locals 15
    .param p2    # Lcom/facebook/ads/redexgen/X/ER;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 65346
    move-object v1, p0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Wr;->A00:Lcom/facebook/ads/redexgen/X/9i;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65347
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Wr;->A03:Lcom/facebook/ads/redexgen/X/HG;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HG;->A5B()J

    move-result-wide v4

    .line 65348
    .local p0, "realtimeMs":J
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Wr;->A00:Lcom/facebook/ads/redexgen/X/9i;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9i;->A6N()Lcom/facebook/ads/redexgen/X/9u;

    move-result-object v6

    .line 65349
    .local v11, "timeline":Lcom/facebook/ads/redexgen/X/9u;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Wr;->A00:Lcom/facebook/ads/redexgen/X/9i;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9i;->A6O()I

    move-result v0

    move/from16 v7, p1

    move-object/from16 v8, p2

    if-ne v7, v0, :cond_2

    .line 65350
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/ER;->A01()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65351
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Wr;->A00:Lcom/facebook/ads/redexgen/X/9i;

    .line 65352
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9i;->A6I()I

    move-result v2

    iget v0, v8, Lcom/facebook/ads/redexgen/X/ER;->A00:I

    if-ne v2, v0, :cond_0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Wr;->A00:Lcom/facebook/ads/redexgen/X/9i;

    .line 65353
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9i;->A6J()I

    move-result v2

    iget v0, v8, Lcom/facebook/ads/redexgen/X/ER;->A01:I

    if-ne v2, v0, :cond_0

    .line 65354
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Wr;->A00:Lcom/facebook/ads/redexgen/X/9i;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9i;->A6L()J

    move-result-wide v9

    .line 65355
    .local p2, "eventPositionMs":J
    :goto_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Wr;->A00:Lcom/facebook/ads/redexgen/X/9i;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9i;->A5v()J

    move-result-wide v13

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Wr;->A00:Lcom/facebook/ads/redexgen/X/9i;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9i;->A6G()J

    move-result-wide v2

    sub-long/2addr v13, v2

    .line 65356
    .local p4, "bufferedDurationMs":J
    new-instance v3, Lcom/facebook/ads/redexgen/X/9y;

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Wr;->A00:Lcom/facebook/ads/redexgen/X/9i;

    .line 65357
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9i;->A6L()J

    move-result-wide v11

    .end local v11    # "timeline":Lcom/facebook/ads/redexgen/X/9u;
    .local p7, "timeline":Lcom/facebook/ads/redexgen/X/9u;
    invoke-direct/range {v3 .. v14}, Lcom/facebook/ads/redexgen/X/9y;-><init>(JLcom/facebook/ads/redexgen/X/9u;ILcom/facebook/ads/redexgen/X/ER;JJJ)V

    .line 65358
    return-object v3

    .line 65359
    :cond_0
    const-wide/16 v9, 0x0

    goto :goto_0

    .line 65360
    .end local v1
    :cond_1
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Wr;->A00:Lcom/facebook/ads/redexgen/X/9i;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9i;->A6G()J

    move-result-wide v9

    .restart local v1
    goto :goto_0

    .line 65361
    .end local v1
    :cond_2
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/9u;->A01()I

    move-result v0

    if-ge v7, v0, :cond_3

    if-eqz v8, :cond_4

    .line 65362
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/ER;->A01()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 65363
    .end local v1
    :cond_3
    const-wide/16 v9, 0x0

    goto :goto_0

    .line 65364
    :cond_4
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Wr;->A01:Lcom/facebook/ads/redexgen/X/9t;

    invoke-virtual {v6, v7, v0}, Lcom/facebook/ads/redexgen/X/9u;->A0B(ILcom/facebook/ads/redexgen/X/9t;)Lcom/facebook/ads/redexgen/X/9t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9t;->A00()J

    move-result-wide v9

    .restart local v1
    goto :goto_0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/9x;)Lcom/facebook/ads/redexgen/X/9y;
    .locals 4
    .param p1    # Lcom/facebook/ads/redexgen/X/9x;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 65365
    if-nez p1, :cond_1

    .line 65366
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A00:Lcom/facebook/ads/redexgen/X/9i;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wr;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wr;->A05:[Ljava/lang/String;

    const-string v1, "It2FvVQ6GuD0QkNXfVFrE8OCooaDSMpJ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "a2HOGJm5UwCLA4g7R7QNf278R1ClTDAB"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/9i;

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/9i;->A6O()I

    move-result v1

    .line 65367
    .local v0, "windowIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A02:Lcom/facebook/ads/redexgen/X/9w;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/9w;->A07(I)Lcom/facebook/ads/redexgen/X/ER;

    move-result-object v0

    .line 65368
    .local v1, "mediaPeriodId":Lcom/facebook/ads/redexgen/X/ER;
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Wr;->A04(ILcom/facebook/ads/redexgen/X/ER;)Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v0

    return-object v0

    .line 65369
    .end local v0    # "windowIndex":I
    .end local v1    # "mediaPeriodId":Lcom/facebook/ads/redexgen/X/ER;
    :cond_1
    iget v1, p1, Lcom/facebook/ads/redexgen/X/9x;->A00:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/9x;->A01:Lcom/facebook/ads/redexgen/X/ER;

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Wr;->A04(ILcom/facebook/ads/redexgen/X/ER;)Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A06()V
    .locals 5

    .line 65370
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A02:Lcom/facebook/ads/redexgen/X/9w;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9w;->A0F()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65371
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wr;->A02()Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v3

    .line 65372
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Wr;->A02:Lcom/facebook/ads/redexgen/X/9w;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wr;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wr;->A05:[Ljava/lang/String;

    const-string v1, "qsPEDs7YPcMFbl4XVvGjNAFSUVJ30e5d"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "wNEtz3pAWSMGqURdz3XYnwNQJEjBbTAW"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/9w;->A09()V

    .line 65373
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9z;

    .line 65374
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/9z;
    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/9z;->onSeekStarted(Lcom/facebook/ads/redexgen/X/9y;)V

    .line 65375
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 65376
    .end local v0    # "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    :cond_1
    return-void
.end method

.method public final A07()V
    .locals 3

    .line 65377
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A02:Lcom/facebook/ads/redexgen/X/9w;

    .line 65378
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9w;->A01(Lcom/facebook/ads/redexgen/X/9w;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 65379
    .local v0, "activeMediaPeriods":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/thirdparty/analytics/AnalyticsCollector$WindowAndMediaPeriodId;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9x;

    .line 65380
    .local v2, "mediaPeriod":Lcom/facebook/ads/redexgen/X/9x;
    iget v1, v0, Lcom/facebook/ads/redexgen/X/9x;->A00:I

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9x;->A01:Lcom/facebook/ads/redexgen/X/ER;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Wr;->ABi(ILcom/facebook/ads/redexgen/X/ER;)V

    .line 65381
    .end local v2    # "mediaPeriod":Lcom/facebook/ads/redexgen/X/9x;
    goto :goto_0

    .line 65382
    :cond_0
    return-void
.end method

.method public final AAG(Ljava/lang/String;JJ)V
    .locals 8

    .line 65383
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wr;->A03()Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v3

    .line 65384
    .local v6, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/9z;

    .line 65385
    .local p0, "listener":Lcom/facebook/ads/redexgen/X/9z;
    const/4 v4, 0x1

    move-object v5, p1

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/9z;->onDecoderInitialized(Lcom/facebook/ads/redexgen/X/9y;ILjava/lang/String;J)V

    .line 65386
    .end local p0    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65387
    :cond_0
    return-void
.end method

.method public final AAH(Lcom/facebook/ads/redexgen/X/Ap;)V
    .locals 4

    .line 65388
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wr;->A00()Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v3

    .line 65389
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/9z;

    .line 65390
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/9z;
    const/4 v0, 0x1

    invoke-interface {v1, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/9z;->onDecoderDisabled(Lcom/facebook/ads/redexgen/X/9y;ILcom/facebook/ads/redexgen/X/Ap;)V

    .line 65391
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65392
    :cond_0
    return-void
.end method

.method public final AAI(Lcom/facebook/ads/redexgen/X/Ap;)V
    .locals 4

    .line 65393
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wr;->A02()Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v3

    .line 65394
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/9z;

    .line 65395
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/9z;
    const/4 v0, 0x1

    invoke-interface {v1, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/9z;->onDecoderEnabled(Lcom/facebook/ads/redexgen/X/9y;ILcom/facebook/ads/redexgen/X/Ap;)V

    .line 65396
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65397
    :cond_0
    return-void
.end method

.method public final AAJ(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V
    .locals 4

    .line 65398
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wr;->A03()Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v3

    .line 65399
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/9z;

    .line 65400
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/9z;
    const/4 v0, 0x1

    invoke-interface {v1, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/9z;->onDecoderInputFormatChanged(Lcom/facebook/ads/redexgen/X/9y;ILcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    .line 65401
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65402
    :cond_0
    return-void
.end method

.method public final AAK(I)V
    .locals 3

    .line 65403
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wr;->A03()Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v2

    .line 65404
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9z;

    .line 65405
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/9z;
    invoke-interface {v0, v2, p1}, Lcom/facebook/ads/redexgen/X/9z;->onAudioSessionId(Lcom/facebook/ads/redexgen/X/9y;I)V

    .line 65406
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65407
    :cond_0
    return-void
.end method

.method public final AAL(IJJ)V
    .locals 9

    .line 65408
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wr;->A03()Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v3

    .line 65409
    .local v7, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/9z;

    .line 65410
    .local p0, "listener":Lcom/facebook/ads/redexgen/X/9z;
    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-interface/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/9z;->onAudioUnderrun(Lcom/facebook/ads/redexgen/X/9y;IJJ)V

    .line 65411
    .end local p0    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65412
    :cond_0
    return-void
.end method

.method public final AAN(IJJ)V
    .locals 2

    .line 65413
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wr;->A01()Lcom/facebook/ads/redexgen/X/9y;

    .line 65414
    .local p5, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65415
    .local p7, "listener":Lcom/facebook/ads/redexgen/X/9z;
    .end local p7
    goto :goto_0

    .line 65416
    :cond_0
    return-void
.end method

.method public final AAm(ILcom/facebook/ads/redexgen/X/ER;Lcom/facebook/ads/redexgen/X/Eg;)V
    .locals 6
    .param p2    # Lcom/facebook/ads/redexgen/X/ER;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 65417
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Wr;->A04(ILcom/facebook/ads/redexgen/X/ER;)Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v5

    .line 65418
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wr;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wr;->A05:[Ljava/lang/String;

    const-string v1, "A4QXCUmAUOBVX64TvaZ46B5z8oAUnNZh"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9z;

    .line 65419
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/9z;
    invoke-interface {v0, v5, p3}, Lcom/facebook/ads/redexgen/X/9z;->onDownstreamFormatChanged(Lcom/facebook/ads/redexgen/X/9y;Lcom/facebook/ads/redexgen/X/Eg;)V

    .line 65420
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65421
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AAn()V
    .locals 3

    .line 65422
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wr;->A03()Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v2

    .line 65423
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9z;

    .line 65424
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/9z;
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/9z;->onDrmKeysLoaded(Lcom/facebook/ads/redexgen/X/9y;)V

    .line 65425
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65426
    :cond_0
    return-void
.end method

.method public final AAo()V
    .locals 6

    .line 65427
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wr;->A03()Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v5

    .line 65428
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wr;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wr;->A05:[Ljava/lang/String;

    const-string v1, "H8nHlV26gM4XBGJAm7WOVvtwu96ZUK2X"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "PAYN32B5Yp2dRtm6BiBsWpdjvopWw5ut"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9z;

    .line 65429
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/9z;
    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/9z;->onDrmKeysRemoved(Lcom/facebook/ads/redexgen/X/9y;)V

    .line 65430
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65431
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AAp()V
    .locals 3

    .line 65432
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wr;->A03()Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v2

    .line 65433
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9z;

    .line 65434
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/9z;
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/9z;->onDrmKeysRestored(Lcom/facebook/ads/redexgen/X/9y;)V

    .line 65435
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65436
    :cond_0
    return-void
.end method

.method public final AAq(Ljava/lang/Exception;)V
    .locals 3

    .line 65437
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wr;->A03()Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v2

    .line 65438
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9z;

    .line 65439
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/9z;
    invoke-interface {v0, v2, p1}, Lcom/facebook/ads/redexgen/X/9z;->onDrmSessionManagerError(Lcom/facebook/ads/redexgen/X/9y;Ljava/lang/Exception;)V

    .line 65440
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65441
    :cond_0
    return-void
.end method

.method public final AAr(IJ)V
    .locals 3

    .line 65442
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wr;->A00()Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v2

    .line 65443
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9z;

    .line 65444
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/9z;
    invoke-interface {v0, v2, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/9z;->onDroppedVideoFrames(Lcom/facebook/ads/redexgen/X/9y;IJ)V

    .line 65445
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65446
    :cond_0
    return-void
.end method

.method public final ABR(ILcom/facebook/ads/redexgen/X/ER;Lcom/facebook/ads/redexgen/X/Ef;Lcom/facebook/ads/redexgen/X/Eg;)V
    .locals 2
    .param p2    # Lcom/facebook/ads/redexgen/X/ER;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 65447
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Wr;->A04(ILcom/facebook/ads/redexgen/X/ER;)Lcom/facebook/ads/redexgen/X/9y;

    .line 65448
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65449
    .local p0, "listener":Lcom/facebook/ads/redexgen/X/9z;
    .end local p0    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65450
    :cond_0
    return-void
.end method

.method public final ABT(ILcom/facebook/ads/redexgen/X/ER;Lcom/facebook/ads/redexgen/X/Ef;Lcom/facebook/ads/redexgen/X/Eg;)V
    .locals 5
    .param p2    # Lcom/facebook/ads/redexgen/X/ER;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 65451
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Wr;->A04(ILcom/facebook/ads/redexgen/X/ER;)Lcom/facebook/ads/redexgen/X/9y;

    .line 65452
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wr;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wr;->A05:[Ljava/lang/String;

    const-string v1, "U0y5Da5mII5YR5LLA1Yw3vUoz2XQzjRa"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "AsACfu1w80VTJMOzwO3g8Y2nz7gc0iIE"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65453
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/9z;
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65454
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ABW(ILcom/facebook/ads/redexgen/X/ER;Lcom/facebook/ads/redexgen/X/Ef;Lcom/facebook/ads/redexgen/X/Eg;Ljava/io/IOException;Z)V
    .locals 8
    .param p2    # Lcom/facebook/ads/redexgen/X/ER;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 65455
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Wr;->A04(ILcom/facebook/ads/redexgen/X/ER;)Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v3

    .line 65456
    .local v6, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/9z;

    .line 65457
    .local p0, "listener":Lcom/facebook/ads/redexgen/X/9z;
    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/9z;->onLoadError(Lcom/facebook/ads/redexgen/X/9y;Lcom/facebook/ads/redexgen/X/Ef;Lcom/facebook/ads/redexgen/X/Eg;Ljava/io/IOException;Z)V

    .line 65458
    .end local p0    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65459
    :cond_0
    return-void
.end method

.method public final ABY(ILcom/facebook/ads/redexgen/X/ER;Lcom/facebook/ads/redexgen/X/Ef;Lcom/facebook/ads/redexgen/X/Eg;)V
    .locals 2
    .param p2    # Lcom/facebook/ads/redexgen/X/ER;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 65460
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Wr;->A04(ILcom/facebook/ads/redexgen/X/ER;)Lcom/facebook/ads/redexgen/X/9y;

    .line 65461
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65462
    .local p0, "listener":Lcom/facebook/ads/redexgen/X/9z;
    .end local p0    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65463
    :cond_0
    return-void
.end method

.method public final ABa(Z)V
    .locals 3

    .line 65464
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wr;->A02()Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v2

    .line 65465
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9z;

    .line 65466
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/9z;
    invoke-interface {v0, v2, p1}, Lcom/facebook/ads/redexgen/X/9z;->onLoadingChanged(Lcom/facebook/ads/redexgen/X/9y;Z)V

    .line 65467
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65468
    :cond_0
    return-void
.end method

.method public final ABh(ILcom/facebook/ads/redexgen/X/ER;)V
    .locals 3

    .line 65469
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A02:Lcom/facebook/ads/redexgen/X/9w;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/9w;->A0B(ILcom/facebook/ads/redexgen/X/ER;)V

    .line 65470
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Wr;->A04(ILcom/facebook/ads/redexgen/X/ER;)Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v2

    .line 65471
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9z;

    .line 65472
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/9z;
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/9z;->onMediaPeriodCreated(Lcom/facebook/ads/redexgen/X/9y;)V

    .line 65473
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65474
    :cond_0
    return-void
.end method

.method public final ABi(ILcom/facebook/ads/redexgen/X/ER;)V
    .locals 3

    .line 65475
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A02:Lcom/facebook/ads/redexgen/X/9w;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/9w;->A0C(ILcom/facebook/ads/redexgen/X/ER;)V

    .line 65476
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Wr;->A04(ILcom/facebook/ads/redexgen/X/ER;)Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v2

    .line 65477
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9z;

    .line 65478
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/9z;
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/9z;->onMediaPeriodReleased(Lcom/facebook/ads/redexgen/X/9y;)V

    .line 65479
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65480
    :cond_0
    return-void
.end method

.method public final ABl(Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;)V
    .locals 3

    .line 65481
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wr;->A02()Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v2

    .line 65482
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9z;

    .line 65483
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/9z;
    invoke-interface {v0, v2, p1}, Lcom/facebook/ads/redexgen/X/9z;->onMetadata(Lcom/facebook/ads/redexgen/X/9y;Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;)V

    .line 65484
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65485
    :cond_0
    return-void
.end method

.method public final AC1(Lcom/facebook/ads/redexgen/X/9a;)V
    .locals 6

    .line 65486
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wr;->A02()Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v4

    .line 65487
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wr;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wr;->A05:[Ljava/lang/String;

    const-string v1, "tyr0dpEvlbVKV2bQNXg9NMaK2xy6BoSW"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "0QT1knH3BDrt7WSXrhNoOdrd2qYVbD8e"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/9z;

    .line 65488
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/9z;
    invoke-interface {v3, v4, p1}, Lcom/facebook/ads/redexgen/X/9z;->onPlaybackParametersChanged(Lcom/facebook/ads/redexgen/X/9y;Lcom/facebook/ads/redexgen/X/9a;)V

    .line 65489
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 65490
    :cond_1
    return-void
.end method

.method public final AC3(Lcom/facebook/ads/redexgen/X/9F;)V
    .locals 3

    .line 65491
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wr;->A02()Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v2

    .line 65492
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9z;

    .line 65493
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/9z;
    invoke-interface {v0, v2, p1}, Lcom/facebook/ads/redexgen/X/9z;->onPlayerError(Lcom/facebook/ads/redexgen/X/9y;Lcom/facebook/ads/redexgen/X/9F;)V

    .line 65494
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65495
    :cond_0
    return-void
.end method

.method public final AC5(ZI)V
    .locals 6

    .line 65496
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wr;->A02()Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v4

    .line 65497
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wr;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wr;->A05:[Ljava/lang/String;

    const-string v1, "LXJ0q"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wr;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wr;->A05:[Ljava/lang/String;

    const-string v1, "X7wD26nry5cKRUDoaHEW6GIg2BkBQsxF"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "mBKm4QAdZAalWFRu5fZgU4pH2nbenvRU"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/9z;

    .line 65498
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/9z;
    invoke-interface {v3, v4, p1, p2}, Lcom/facebook/ads/redexgen/X/9z;->onPlayerStateChanged(Lcom/facebook/ads/redexgen/X/9y;ZI)V

    .line 65499
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wr;->A05:[Ljava/lang/String;

    const-string v1, "Z6EwV7KsnuzYN7ajnraaFM2k28xO4kcl"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "L2gfOX15V0Xhx6fkmzEhPGDX2RpQhPed"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/9z;

    .line 65500
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/9z;
    invoke-interface {v3, v4, p1, p2}, Lcom/facebook/ads/redexgen/X/9z;->onPlayerStateChanged(Lcom/facebook/ads/redexgen/X/9y;ZI)V

    .line 65501
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65502
    :cond_2
    return-void
.end method

.method public final AC7(I)V
    .locals 3

    .line 65503
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A02:Lcom/facebook/ads/redexgen/X/9w;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9w;->A0A(I)V

    .line 65504
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wr;->A02()Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v2

    .line 65505
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9z;

    .line 65506
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/9z;
    invoke-interface {v0, v2, p1}, Lcom/facebook/ads/redexgen/X/9z;->onPositionDiscontinuity(Lcom/facebook/ads/redexgen/X/9y;I)V

    .line 65507
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65508
    :cond_0
    return-void
.end method

.method public final ACH(ILcom/facebook/ads/redexgen/X/ER;)V
    .locals 3

    .line 65509
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A02:Lcom/facebook/ads/redexgen/X/9w;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/9w;->A0D(ILcom/facebook/ads/redexgen/X/ER;)V

    .line 65510
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Wr;->A04(ILcom/facebook/ads/redexgen/X/ER;)Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v2

    .line 65511
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9z;

    .line 65512
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/9z;
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/9z;->onReadingStarted(Lcom/facebook/ads/redexgen/X/9y;)V

    .line 65513
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65514
    :cond_0
    return-void
.end method

.method public final ACL(Landroid/view/Surface;)V
    .locals 3

    .line 65515
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wr;->A03()Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v2

    .line 65516
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9z;

    .line 65517
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/9z;
    invoke-interface {v0, v2, p1}, Lcom/facebook/ads/redexgen/X/9z;->onRenderedFirstFrame(Lcom/facebook/ads/redexgen/X/9y;Landroid/view/Surface;)V

    .line 65518
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65519
    :cond_0
    return-void
.end method

.method public final ACW()V
    .locals 3

    .line 65520
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A02:Lcom/facebook/ads/redexgen/X/9w;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9w;->A0F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65521
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A02:Lcom/facebook/ads/redexgen/X/9w;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9w;->A08()V

    .line 65522
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wr;->A02()Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v2

    .line 65523
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9z;

    .line 65524
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/9z;
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/9z;->onSeekProcessed(Lcom/facebook/ads/redexgen/X/9y;)V

    .line 65525
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65526
    .end local v0    # "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    :cond_0
    return-void
.end method

.method public final ACl(Lcom/facebook/ads/redexgen/X/9u;Ljava/lang/Object;I)V
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 65527
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A02:Lcom/facebook/ads/redexgen/X/9w;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9w;->A0E(Lcom/facebook/ads/redexgen/X/9u;)V

    .line 65528
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wr;->A02()Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v2

    .line 65529
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9z;

    .line 65530
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/9z;
    invoke-interface {v0, v2, p3}, Lcom/facebook/ads/redexgen/X/9z;->onTimelineChanged(Lcom/facebook/ads/redexgen/X/9y;I)V

    .line 65531
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65532
    :cond_0
    return-void
.end method

.method public final ACn(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GK;)V
    .locals 3

    .line 65533
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wr;->A02()Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v2

    .line 65534
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9z;

    .line 65535
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/9z;
    invoke-interface {v0, v2, p1, p2}, Lcom/facebook/ads/redexgen/X/9z;->onTracksChanged(Lcom/facebook/ads/redexgen/X/9y;Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GK;)V

    .line 65536
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65537
    :cond_0
    return-void
.end method

.method public final ACw(Ljava/lang/String;JJ)V
    .locals 8

    .line 65538
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wr;->A03()Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v3

    .line 65539
    .local v6, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/9z;

    .line 65540
    .local p0, "listener":Lcom/facebook/ads/redexgen/X/9z;
    const/4 v4, 0x2

    move-object v5, p1

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/9z;->onDecoderInitialized(Lcom/facebook/ads/redexgen/X/9y;ILjava/lang/String;J)V

    .line 65541
    .end local p0    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65542
    :cond_0
    return-void
.end method

.method public final ACx(Lcom/facebook/ads/redexgen/X/Ap;)V
    .locals 4

    .line 65543
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wr;->A00()Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v3

    .line 65544
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/9z;

    .line 65545
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/9z;
    const/4 v0, 0x2

    invoke-interface {v1, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/9z;->onDecoderDisabled(Lcom/facebook/ads/redexgen/X/9y;ILcom/facebook/ads/redexgen/X/Ap;)V

    .line 65546
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65547
    :cond_0
    return-void
.end method

.method public final ACy(Lcom/facebook/ads/redexgen/X/Ap;)V
    .locals 4

    .line 65548
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wr;->A02()Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v3

    .line 65549
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/9z;

    .line 65550
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/9z;
    const/4 v0, 0x2

    invoke-interface {v1, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/9z;->onDecoderEnabled(Lcom/facebook/ads/redexgen/X/9y;ILcom/facebook/ads/redexgen/X/Ap;)V

    .line 65551
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65552
    :cond_0
    return-void
.end method

.method public final AD3(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V
    .locals 4

    .line 65553
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wr;->A03()Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v3

    .line 65554
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/9z;

    .line 65555
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/9z;
    const/4 v0, 0x2

    invoke-interface {v1, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/9z;->onDecoderInputFormatChanged(Lcom/facebook/ads/redexgen/X/9y;ILcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    .line 65556
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65557
    :cond_0
    return-void
.end method

.method public final AD9(IIIF)V
    .locals 8

    .line 65558
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wr;->A03()Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v3

    .line 65559
    .local v6, "eventTime":Lcom/facebook/ads/redexgen/X/9y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/9z;

    .line 65560
    .local p0, "listener":Lcom/facebook/ads/redexgen/X/9z;
    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/9z;->onVideoSizeChanged(Lcom/facebook/ads/redexgen/X/9y;IIIF)V

    .line 65561
    .end local p0    # "listener":Lcom/facebook/ads/redexgen/X/9z;
    goto :goto_0

    .line 65562
    :cond_0
    return-void
.end method
