.class public Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;
.super Ljava/lang/Object;
.source "UGenRenderInterceptor.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/cJ/Gm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl$Qhi;
    }
.end annotation


# instance fields
.field private CJ:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private Qhi:Landroid/content/Context;

.field private ac:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

.field private cJ:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;

.field private fl:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;Lcom/bytedance/sdk/component/adexpress/cJ/hm;Lcom/bytedance/sdk/component/adexpress/cJ/iMK;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;->Qhi:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;->cJ:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;

    .line 39
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;->ac:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    .line 40
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;->fl:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;->cJ:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/hm;)V

    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;ILjava/lang/String;)V
    .locals 1

    .line 102
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;->fl:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 109
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;->cJ()V

    .line 110
    new-instance v0, Lcom/bytedance/adsdk/ugeno/core/hpZ;

    invoke-direct {v0}, Lcom/bytedance/adsdk/ugeno/core/hpZ;-><init>()V

    .line 111
    invoke-virtual {v0, p2}, Lcom/bytedance/adsdk/ugeno/core/hpZ;->Qhi(I)V

    .line 112
    invoke-virtual {v0, p3}, Lcom/bytedance/adsdk/ugeno/core/hpZ;->Qhi(Ljava/lang/String;)V

    .line 113
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;->ac:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    check-cast p3, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;->NFd()Lcom/bytedance/adsdk/ugeno/core/HzH;

    move-result-object p3

    invoke-interface {p3, v0}, Lcom/bytedance/adsdk/ugeno/core/HzH;->Qhi(Lcom/bytedance/adsdk/ugeno/core/hpZ;)V

    .line 114
    invoke-interface {p1, p0}, Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;->cJ(Lcom/bytedance/sdk/component/adexpress/cJ/Gm;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    .line 115
    invoke-interface {p1, p0}, Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/Gm;)V

    goto :goto_0

    .line 117
    :cond_2
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;->ac()Z

    move-result p3

    if-eqz p3, :cond_3

    return-void

    .line 120
    :cond_3
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;->cJ()Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;

    move-result-object p3

    if-nez p3, :cond_4

    return-void

    .line 125
    :cond_4
    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;->Qhi(Z)V

    .line 126
    invoke-interface {p3, p2}, Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;->a_(I)V

    .line 128
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;->fl:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;->cJ()V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;ILjava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;)Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;->cJ:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;

    return-object p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;)Lcom/bytedance/sdk/component/adexpress/cJ/iMK;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;->ac:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    return-object p0
.end method

.method private cJ()V
    .locals 2

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;->CJ:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;->CJ:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;->CJ:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 154
    const-string v1, "remove ugen time out task fail"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "RenderInterceptor"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 0

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;)Z
    .locals 6

    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;->ac:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->Tgh()I

    move-result v0

    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 48
    const-string v2, "time is "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x89

    invoke-direct {p0, p1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;ILjava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl$Qhi;

    invoke-direct {v3, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl$Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;ILcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;)V

    int-to-long v4, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;->CJ:Ljava/util/concurrent/ScheduledFuture;

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;->cJ:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl$1;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/Sf;)V

    :goto_0
    return v1
.end method
