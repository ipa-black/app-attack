.class public Lcom/bytedance/sdk/openadsdk/hpZ/cJ;
.super Ljava/lang/Object;
.source "CrashMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/hpZ/cJ$Qhi;
    }
.end annotation


# instance fields
.field private CJ:I

.field private Qhi:Ljava/util/concurrent/ScheduledExecutorService;

.field private ac:J

.field private cJ:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

.field private fl:Lcom/bytedance/sdk/openadsdk/hpZ/cJ$Qhi;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/hpZ/hm;I)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/cJ;->Qhi:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/cJ;->ac:J

    .line 20
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    .line 21
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/cJ;->CJ:I

    return-void
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/hpZ/cJ;)Lcom/bytedance/sdk/openadsdk/hpZ/hm;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    return-object p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/hpZ/cJ;)J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/cJ;->ac:J

    return-wide v0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/hpZ/cJ;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/cJ;->Qhi:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/hpZ/cJ;)I
    .locals 0

    .line 11
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/cJ;->CJ:I

    return p0
.end method

.method static synthetic fl(Lcom/bytedance/sdk/openadsdk/hpZ/cJ;)Lcom/bytedance/sdk/openadsdk/hpZ/cJ$Qhi;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/cJ;->fl:Lcom/bytedance/sdk/openadsdk/hpZ/cJ$Qhi;

    return-object p0
.end method


# virtual methods
.method public Qhi()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/cJ;->Qhi:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    :cond_0
    return-void
.end method

.method public Qhi(I)V
    .locals 8

    const/4 v0, 0x1

    .line 46
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/cJ;->Qhi:Ljava/util/concurrent/ScheduledExecutorService;

    .line 47
    new-instance v2, Lcom/bytedance/sdk/openadsdk/hpZ/cJ$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/hpZ/cJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/hpZ/cJ;)V

    int-to-long v5, p1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public Qhi(J)V
    .locals 0

    .line 42
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/cJ;->ac:J

    return-void
.end method

.method public cJ()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/cJ;->Qhi:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
