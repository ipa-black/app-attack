.class public Lcom/bytedance/sdk/component/Sf/ac/ROR;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "PagThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;
    }
.end annotation


# instance fields
.field private CJ:I

.field private final Qhi:Ljava/lang/String;

.field private ROR:Z

.field private Sf:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/Sf/ac/Qhi/Qhi;",
            ">;"
        }
    .end annotation
.end field

.field private Tgh:I

.field private ac:I

.field private cJ:I

.field private fl:I


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)V
    .locals 25

    move-object/from16 v8, p0

    .line 48
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)I

    move-result v1

    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)J

    move-result-wide v3

    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->ac(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)Ljava/util/concurrent/TimeUnit;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->CJ(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->fl(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const v2, 0x7fffffff

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, v8, Lcom/bytedance/sdk/component/Sf/ac/ROR;->ROR:Z

    .line 49
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Tgh(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->ROR(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Sf(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->hm(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->WAv(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    const-string v23, "  workQueue"

    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->CJ(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v24

    const-string v9, "create poolType = "

    const-string v11, " coreSize="

    const-string v13, " maxSize="

    const-string v15, " keepAlive="

    const-string v17, " createSize="

    const-string v19, "  logTaskCount="

    const-string v21, " isUseConfig="

    filled-new-array/range {v9 .. v24}, [Ljava/lang/Object;

    .line 51
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Tgh(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/bytedance/sdk/component/Sf/ac/ROR;->Qhi:Ljava/lang/String;

    .line 52
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)I

    move-result v0

    iput v0, v8, Lcom/bytedance/sdk/component/Sf/ac/ROR;->CJ:I

    .line 53
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->ROR(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)I

    move-result v0

    iput v0, v8, Lcom/bytedance/sdk/component/Sf/ac/ROR;->fl:I

    .line 54
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Sf(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)I

    move-result v0

    iput v0, v8, Lcom/bytedance/sdk/component/Sf/ac/ROR;->Tgh:I

    .line 55
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Gm(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/component/Sf/ac/ROR;->allowCoreThreadTimeOut(Z)V

    .line 56
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->zc(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)I

    move-result v0

    iput v0, v8, Lcom/bytedance/sdk/component/Sf/ac/ROR;->cJ:I

    .line 57
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->hm(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)I

    move-result v0

    iput v0, v8, Lcom/bytedance/sdk/component/Sf/ac/ROR;->ac:I

    .line 58
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->WAv(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)Z

    move-result v0

    iput-boolean v0, v8, Lcom/bytedance/sdk/component/Sf/ac/ROR;->ROR:Z

    .line 60
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/component/Sf/ac/ROR;->ROR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget v0, v8, Lcom/bytedance/sdk/component/Sf/ac/ROR;->ac:I

    add-int/lit8 v5, v0, 0x4

    .line 62
    new-instance v6, Lcom/bytedance/sdk/component/Sf/ac/ROR$1;

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v4, 0x1

    move-object v0, v6

    move-object/from16 v1, p0

    move v2, v5

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/Sf/ac/ROR$1;-><init>(Lcom/bytedance/sdk/component/Sf/ac/ROR;IFZI)V

    iput-object v6, v8, Lcom/bytedance/sdk/component/Sf/ac/ROR;->Sf:Ljava/util/LinkedHashMap;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;Lcom/bytedance/sdk/component/Sf/ac/ROR$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR;-><init>(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)V

    return-void
.end method

.method private CJ()V
    .locals 10

    .line 131
    :try_start_0
    iget v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR;->CJ:I

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Sf/ac/ROR;->getCorePoolSize()I

    move-result v0

    .line 135
    iget v1, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR;->fl:I

    if-ge v0, v1, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Sf/ac/ROR;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    .line 137
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Sf/ac/ROR;->getActiveCount()I

    move-result v2

    .line 138
    iget v3, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR;->CJ:I

    if-lt v2, v3, :cond_1

    iget v2, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR;->Tgh:I

    if-lt v1, v2, :cond_1

    .line 139
    iget v2, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR;->fl:I

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/Sf/ac/ROR;->setCorePoolSize(I)V

    .line 140
    iget-object v3, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR;->Qhi:Ljava/lang/String;

    const-string v4, " increaseToMaxThread  queueSize="

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "    "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, " --> "

    iget v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR;->fl:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array/range {v3 .. v9}, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/component/Sf/ac/cJ;)V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR;->Sf:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_2

    .line 256
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Sf/ac/cJ;->cJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/Sf/ac/Qhi/Qhi;

    if-nez v1, :cond_1

    .line 258
    monitor-enter v0

    .line 259
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Sf/ac/cJ;->cJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/Sf/ac/Qhi/Qhi;

    if-nez v1, :cond_0

    .line 261
    new-instance v1, Lcom/bytedance/sdk/component/Sf/ac/Qhi/Qhi;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/Sf/ac/Qhi/Qhi;-><init>()V

    .line 262
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Sf/ac/cJ;->cJ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 266
    :cond_1
    :goto_0
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/Sf/ac/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/cJ;)V

    :cond_2
    return-void
.end method

.method private Qhi(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 1

    .line 236
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 238
    invoke-static {}, Lcom/bytedance/sdk/component/Sf/ac/ac;->ac()Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 240
    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    .line 244
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 248
    const-string p2, "PAGThreadPoolExecutor"

    const-string v0, "try exc failed"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private ROR()Z
    .locals 1

    .line 316
    iget v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR;->cJ:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private Tgh()V
    .locals 4

    .line 283
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Sf/ac/ROR;->getCompletedTaskCount()J

    move-result-wide v0

    .line 284
    iget v2, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR;->cJ:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 285
    invoke-static {}, Lcom/bytedance/sdk/component/Sf/ac/ac;->Qhi()Lcom/bytedance/sdk/component/Sf/ac/Tgh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/component/Sf/ac/Tgh;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/ROR;)V

    :cond_0
    const/4 v0, -0x1

    .line 289
    iput v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR;->cJ:I

    :cond_1
    return-void
.end method

.method private fl()V
    .locals 10

    .line 152
    :try_start_0
    iget v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR;->CJ:I

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Sf/ac/ROR;->getCorePoolSize()I

    move-result v0

    .line 156
    iget v1, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR;->CJ:I

    if-le v0, v1, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Sf/ac/ROR;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 159
    iget v2, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR;->CJ:I

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/Sf/ac/ROR;->setCorePoolSize(I)V

    .line 160
    iget-object v3, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR;->Qhi:Ljava/lang/String;

    const-string v4, " reduceToCoreThread  queueSize="

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "    "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, " --> "

    iget v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR;->CJ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array/range {v3 .. v9}, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Qhi()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/Sf/ac/Qhi/Qhi;",
            ">;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR;->Sf:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public Qhi(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)V
    .locals 19

    move-object/from16 v1, p0

    .line 75
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)I

    move-result v0

    if-ltz v0, :cond_0

    iget v0, v1, Lcom/bytedance/sdk/component/Sf/ac/ROR;->CJ:I

    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 76
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/component/Sf/ac/ROR;->CJ:I

    .line 77
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/Sf/ac/ROR;->setCorePoolSize(I)V

    .line 79
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->ROR(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/component/Sf/ac/ROR;->fl:I

    .line 80
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Sf(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/component/Sf/ac/ROR;->Tgh:I

    .line 81
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Gm(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/Sf/ac/ROR;->allowCoreThreadTimeOut(Z)V

    .line 82
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->zc(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/component/Sf/ac/ROR;->cJ:I

    .line 83
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->hm(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/component/Sf/ac/ROR;->ac:I

    .line 84
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->WAv(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/bytedance/sdk/component/Sf/ac/ROR;->ROR:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 86
    const-string v2, "PAGThreadPoolExecutor"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Tgh(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->ROR(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->cJ(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->Sf(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->hm(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->WAv(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const-string v17, "  workQueue"

    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;->CJ(Lcom/bytedance/sdk/component/Sf/ac/ROR$Qhi;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v18

    const-string v3, "update poolType = "

    const-string v5, " coreSize="

    const-string v7, " maxSize="

    const-string v9, " keepAlive="

    const-string v11, " createSize="

    const-string v13, "  logTaskCount="

    const-string v15, " isUseConfig="

    filled-new-array/range {v3 .. v18}, [Ljava/lang/Object;

    return-void
.end method

.method public ac()Z
    .locals 1

    .line 340
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR;->ROR:Z

    return v0
.end method

.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 13

    .line 107
    instance-of v0, p1, Lcom/bytedance/sdk/component/Sf/ac/cJ;

    if-eqz v0, :cond_0

    .line 108
    move-object v1, p1

    check-cast v1, Lcom/bytedance/sdk/component/Sf/ac/cJ;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/component/Sf/ac/cJ;->ac(J)V

    .line 111
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Sf/ac/ROR;->ROR()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR;->Sf:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_0

    .line 112
    move-object v1, p1

    check-cast v1, Lcom/bytedance/sdk/component/Sf/ac/cJ;

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/Sf/ac/ROR;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/cJ;)V

    .line 113
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Sf/ac/ROR;->Tgh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 116
    const-string v2, "PAGThreadPoolExecutor"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    if-eqz v0, :cond_1

    .line 121
    check-cast p1, Lcom/bytedance/sdk/component/Sf/ac/cJ;

    .line 122
    iget-object v1, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR;->Qhi:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Sf/ac/cJ;->cJ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Sf/ac/cJ;->Qhi()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Sf/ac/cJ;->ac()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Sf/ac/cJ;->CJ()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Sf/ac/cJ;->fl()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v0, "submit  poolType = "

    const-string v2, " taskName="

    const-string v4, "    "

    const-string v5, "priority = "

    const-string v7, " SubmitTimestamp="

    const-string v9, "  BeforeTimestamp="

    const-string v11, "  AfterTimestamp="

    filled-new-array/range {v0 .. v12}, [Ljava/lang/Object;

    .line 125
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Sf/ac/ROR;->fl()V

    return-void
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 3

    .line 95
    instance-of v0, p2, Lcom/bytedance/sdk/component/Sf/ac/cJ;

    if-eqz v0, :cond_0

    .line 96
    move-object v0, p2

    check-cast v0, Lcom/bytedance/sdk/component/Sf/ac/cJ;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/Sf/ac/cJ;->cJ(J)V

    .line 98
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    return-void
.end method

.method public cJ()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR;->Qhi:Ljava/lang/String;

    return-object v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 3

    .line 198
    instance-of v0, p1, Lcom/bytedance/sdk/component/Sf/ac/cJ;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/bytedance/sdk/component/Sf/ac/ROR$3;

    const-string v1, "unknown"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/component/Sf/ac/ROR$3;-><init>(Lcom/bytedance/sdk/component/Sf/ac/ROR;Ljava/lang/String;Ljava/lang/Runnable;)V

    move-object p1, v0

    .line 210
    :cond_0
    const-string v0, "cache"

    iget-object v1, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR;->Qhi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR;->Qhi:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/sdk/component/Sf/ac/fl;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    invoke-static {}, Lcom/bytedance/sdk/component/Sf/ac/ac;->cJ()Lcom/bytedance/sdk/component/Sf/ac/Qhi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 217
    move-object v1, p1

    check-cast v1, Lcom/bytedance/sdk/component/Sf/ac/cJ;

    invoke-interface {v0, p0, v1}, Lcom/bytedance/sdk/component/Sf/ac/Qhi;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/ROR;Lcom/bytedance/sdk/component/Sf/ac/cJ;)V

    .line 222
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/component/Sf/ac/cJ;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/Sf/ac/cJ;->Qhi(J)V

    .line 224
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Sf/ac/ROR;->CJ()V

    return-void

    :catchall_0
    move-exception v0

    .line 227
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/Sf/ac/ROR;->Qhi(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 304
    const-string v0, "aidl"

    iget-object v1, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR;->Qhi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 307
    :cond_0
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 296
    const-string v0, "aidl"

    iget-object v1, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR;->Qhi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 299
    :cond_0
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 172
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/component/Sf/ac/ROR;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    .line 176
    instance-of v1, p1, Lcom/bytedance/sdk/component/Sf/ac/cJ;

    if-eqz v1, :cond_0

    .line 177
    check-cast p1, Lcom/bytedance/sdk/component/Sf/ac/cJ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Sf/ac/cJ;->Qhi()I

    move-result v1

    .line 178
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Sf/ac/cJ;->cJ()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    .line 176
    const-string p1, ""

    :goto_0
    if-eqz v1, :cond_1

    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 181
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    .line 183
    :cond_2
    new-instance v2, Lcom/bytedance/sdk/component/Sf/ac/ROR$2;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/bytedance/sdk/component/Sf/ac/ROR$2;-><init>(Lcom/bytedance/sdk/component/Sf/ac/ROR;ILjava/lang/String;Ljava/util/concurrent/RunnableFuture;)V

    .line 190
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/Sf/ac/ROR;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method
