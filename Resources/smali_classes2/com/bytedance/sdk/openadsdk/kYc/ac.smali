.class public Lcom/bytedance/sdk/openadsdk/kYc/ac;
.super Ljava/lang/Object;
.source "StrategyCenter.java"


# instance fields
.field private CJ:Lcom/bytedance/sdk/openadsdk/kYc/Qhi;

.field private final Qhi:Ljava/lang/String;

.field private Tgh:Ljava/lang/Runnable;

.field private ac:Lcom/bytedance/sdk/openadsdk/kYc/fl;

.field private cJ:Lcom/bytedance/sdk/openadsdk/kYc/cJ;

.field private fl:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/kYc/fl;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "StrategyCenter"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac;->Qhi:Ljava/lang/String;

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac;->cJ:Lcom/bytedance/sdk/openadsdk/kYc/cJ;

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac;->fl:I

    .line 158
    new-instance v0, Lcom/bytedance/sdk/openadsdk/kYc/ac$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/kYc/ac$2;-><init>(Lcom/bytedance/sdk/openadsdk/kYc/ac;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac;->Tgh:Ljava/lang/Runnable;

    .line 32
    new-instance v0, Lcom/bytedance/sdk/openadsdk/kYc/Tgh;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/kYc/Tgh;-><init>(Lcom/bytedance/sdk/openadsdk/kYc/fl;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac;->ac:Lcom/bytedance/sdk/openadsdk/kYc/fl;

    .line 33
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/kYc/fl;->ac()Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    const-string v0, "pag_"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 37
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/kYc/cJ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac;->ac:Lcom/bytedance/sdk/openadsdk/kYc/fl;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/kYc/fl;->cJ()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/kYc/cJ;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac;->cJ:Lcom/bytedance/sdk/openadsdk/kYc/cJ;

    return-void
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/kYc/ac;)Lcom/bytedance/sdk/openadsdk/kYc/cJ;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac;->cJ:Lcom/bytedance/sdk/openadsdk/kYc/cJ;

    return-object p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/kYc/ac;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac;->fl:I

    return p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/kYc/ac;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac;->fl:I

    return p1
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/kYc/ac;)Lcom/bytedance/sdk/openadsdk/kYc/fl;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac;->ac:Lcom/bytedance/sdk/openadsdk/kYc/fl;

    return-object p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/kYc/ac;)Lcom/bytedance/sdk/openadsdk/kYc/Qhi;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac;->CJ:Lcom/bytedance/sdk/openadsdk/kYc/Qhi;

    return-object p0
.end method

.method private cJ()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac;->ac:Lcom/bytedance/sdk/openadsdk/kYc/fl;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/kYc/fl;->fl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac;->ac:Lcom/bytedance/sdk/openadsdk/kYc/fl;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/kYc/fl;->Tgh()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac;->ac:Lcom/bytedance/sdk/openadsdk/kYc/fl;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/kYc/fl;->Qhi()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/kYc/ac$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/kYc/ac$1;-><init>(Lcom/bytedance/sdk/openadsdk/kYc/ac;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic fl(Lcom/bytedance/sdk/openadsdk/kYc/ac;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/kYc/ac;->cJ()V

    return-void
.end method


# virtual methods
.method public Qhi(Ljava/lang/String;I)I
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac;->cJ:Lcom/bytedance/sdk/openadsdk/kYc/cJ;

    if-nez v0, :cond_0

    return p2

    .line 170
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/kYc/cJ;->Qhi(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac;->cJ:Lcom/bytedance/sdk/openadsdk/kYc/cJ;

    if-nez v0, :cond_0

    return-object p2

    .line 186
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/kYc/cJ;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Qhi()V
    .locals 8

    .line 128
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac;->ac:Lcom/bytedance/sdk/openadsdk/kYc/fl;

    if-eqz v0, :cond_4

    .line 129
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac;->cJ:Lcom/bytedance/sdk/openadsdk/kYc/cJ;

    const-string v1, "req_interval"

    const v2, 0x36ee80

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/kYc/cJ;->Qhi(Ljava/lang/String;I)I

    move-result v0

    .line 130
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac;->cJ:Lcom/bytedance/sdk/openadsdk/kYc/cJ;

    const-string v3, "local_last_update_time"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/kYc/cJ;->cJ(Ljava/lang/String;J)J

    move-result-wide v6

    const v1, 0x927c0

    if-lt v0, v1, :cond_1

    const v1, 0x5265c00

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    .line 136
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v6

    .line 137
    const-string v3, "before  realInterval="

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "StrategyCenter"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v3, v0, v4

    if-ltz v3, :cond_2

    int-to-long v2, v2

    cmp-long v7, v0, v2

    if-gtz v7, :cond_2

    sub-long v4, v2, v0

    .line 149
    :cond_2
    const-string v0, "after  realInterval="

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac;->ac:Lcom/bytedance/sdk/openadsdk/kYc/fl;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/kYc/fl;->CJ()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac;->Tgh:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 151
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac;->fl:I

    const/16 v1, 0x18

    if-le v0, v1, :cond_3

    return-void

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac;->ac:Lcom/bytedance/sdk/openadsdk/kYc/fl;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/kYc/fl;->CJ()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac;->Tgh:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/kYc/Qhi;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac;->CJ:Lcom/bytedance/sdk/openadsdk/kYc/Qhi;

    return-void
.end method

.method public Qhi(Ljava/lang/String;Z)Z
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kYc/ac;->cJ:Lcom/bytedance/sdk/openadsdk/kYc/cJ;

    if-nez v0, :cond_0

    return p2

    .line 202
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/kYc/cJ;->Qhi(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
