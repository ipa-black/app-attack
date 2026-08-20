.class public Lcom/bytedance/sdk/openadsdk/ABk/Qhi;
.super Ljava/lang/Object;
.source "BusMonitorCenter.java"


# static fields
.field private static CJ:Landroid/content/Context;

.field private static final fl:J


# instance fields
.field private Qhi:Lcom/bytedance/sdk/openadsdk/ABk/cJ;

.field private ROR:Ljava/lang/Runnable;

.field private Tgh:I

.field private ac:Ljava/lang/Boolean;

.field private cJ:Lcom/bytedance/sdk/openadsdk/ABk/ac/Qhi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->fl:J

    return-void
.end method

.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/ABk/cJ;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Tgh:I

    .line 248
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/ABk/Qhi$3;-><init>(Lcom/bytedance/sdk/openadsdk/ABk/Qhi;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->ROR:Ljava/lang/Runnable;

    .line 43
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/BusMonitorDependWrapper;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/BusMonitorDependWrapper;-><init>(Lcom/bytedance/sdk/openadsdk/ABk/cJ;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/cJ;

    .line 44
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ABk/ac/Qhi;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/ABk/cJ;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/ABk/ac/Qhi;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/ABk/ac/Qhi;

    .line 45
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/ABk/cJ;->getContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->CJ:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 47
    const-string v0, "BusMonitorCenter"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/ABk/Qhi;)Lcom/bytedance/sdk/openadsdk/ABk/ac/Qhi;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/ABk/ac/Qhi;

    return-object p0
.end method

.method public static Qhi()Landroid/content/Context;
    .locals 1

    .line 59
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->CJ:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    .line 62
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/BusMonitorDependWrapper;->getReflectContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/ABk/cJ;)Lcom/bytedance/sdk/openadsdk/ABk/Qhi;
    .locals 1

    .line 53
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/ABk/cJ;)V

    return-object v0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/ABk/Qhi;)Lcom/bytedance/sdk/openadsdk/ABk/cJ;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/cJ;

    return-object p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/ABk/Qhi;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->ac:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic Tgh(Lcom/bytedance/sdk/openadsdk/ABk/Qhi;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Tgh:I

    return p0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/ABk/Qhi;)I
    .locals 2

    .line 24
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Tgh:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Tgh:I

    return v0
.end method

.method private ac()Z
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->ac:Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/cJ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ABk/cJ;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/cJ;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ABk/cJ;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/cJ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ABk/cJ;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/cJ;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ABk/cJ;->isMonitorOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/cJ;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ABk/cJ;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return v1
.end method

.method static synthetic cJ()J
    .locals 2

    .line 24
    sget-wide v0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->fl:J

    return-wide v0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/ABk/Qhi;)Ljava/lang/Boolean;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->ac:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic fl(Lcom/bytedance/sdk/openadsdk/ABk/Qhi;)Ljava/lang/Runnable;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->ROR:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/openadsdk/ABk/fl;)V
    .locals 2

    .line 67
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/ABk/fl;->generatorModel()Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->ac()Ljava/lang/String;

    move-result-object v0

    const-string v1, "insertBusMonitorModel1"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/ABk/fl;->generatorModel()Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->ac()Ljava/lang/String;

    move-result-object v0

    const-string v1, "insertBusMonitorModel2"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/cJ;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ABk/cJ;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/ABk/Qhi$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/ABk/Qhi$1;-><init>(Lcom/bytedance/sdk/openadsdk/ABk/Qhi;Lcom/bytedance/sdk/openadsdk/ABk/fl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public Qhi(Z)V
    .locals 5

    .line 212
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/cJ;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ABk/cJ;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/cJ;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ABk/cJ;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/ABk/ac/Qhi;

    if-nez v0, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/cJ;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ABk/cJ;->isMonitorOpen()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/cJ;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ABk/cJ;->getOnceLogInterval()I

    move-result v0

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 219
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/cJ;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/ABk/cJ;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/ABk/Qhi$2;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/openadsdk/ABk/Qhi$2;-><init>(Lcom/bytedance/sdk/openadsdk/ABk/Qhi;Z)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method
