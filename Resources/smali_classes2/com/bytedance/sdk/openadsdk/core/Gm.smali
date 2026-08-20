.class public Lcom/bytedance/sdk/openadsdk/core/Gm;
.super Ljava/lang/Object;
.source "IPManger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/Gm$Qhi;
    }
.end annotation


# static fields
.field private static final Qhi:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final cJ:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/Gm;->Qhi:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/Gm;->cJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private static CJ()V
    .locals 5

    .line 169
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/Gm;->Qhi:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-gtz v0, :cond_0

    .line 170
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Gm$2;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/Gm$2;-><init>()V

    const-wide/16 v2, 0x2710

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method static synthetic Qhi()V
    .locals 0

    .line 43
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Gm;->CJ()V

    return-void
.end method

.method public static Qhi(Ljava/lang/String;)V
    .locals 3

    .line 74
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/Gm;->cJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/hpZ;->Sf(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 80
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Gm$Qhi;->Qhi()V

    .line 81
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/Gm;->ac(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic Qhi(Lorg/json/JSONObject;)Z
    .locals 0

    .line 43
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/Gm;->cJ(Lorg/json/JSONObject;)Z

    move-result p0

    return p0
.end method

.method private static ac()V
    .locals 2

    .line 165
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/Gm;->Qhi:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method private static ac(Ljava/lang/String;)V
    .locals 2

    .line 91
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Gm$1;

    const-string v1, "ipv6"

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/core/Gm$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->ac(Lcom/bytedance/sdk/component/Sf/hm;)V

    return-void
.end method

.method static synthetic cJ()V
    .locals 0

    .line 43
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Gm;->ac()V

    return-void
.end method

.method static synthetic cJ(Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/Gm;->ac(Ljava/lang/String;)V

    return-void
.end method

.method private static cJ(Lorg/json/JSONObject;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 161
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
