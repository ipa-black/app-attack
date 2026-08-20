.class public Lcom/bytedance/sdk/openadsdk/cJ/Qhi/zc;
.super Ljava/lang/Object;
.source "OverSeaLogDepend.java"

# interfaces
.implements Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;


# instance fields
.field private final Qhi:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "[6206]"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/zc;->Qhi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public ABk()V
    .locals 1

    .line 189
    sget-object v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/Qhi/cJ;)V

    return-void
.end method

.method public CJ()Ljava/util/concurrent/Executor;
    .locals 1

    .line 117
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->ac()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public Gm()Lcom/bytedance/sdk/component/Tgh/Qhi/ROR;
    .locals 1

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/Qhi/Qhi;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/component/Tgh/Qhi/ROR;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 137
    monitor-exit p0

    throw v0
.end method

.method public Qhi(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public Qhi(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 83
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Qhi;->Qhi()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/CJ/Qhi;->cJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Qhi(Z)V
    .locals 1

    .line 173
    sget-object v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/cJ;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/Qhi/cJ;Z)V

    return-void
.end method

.method public Qhi(ZIJLcom/bytedance/sdk/component/Tgh/Qhi/Tgh/fl;)V
    .locals 1

    if-nez p5, :cond_0

    return-void

    .line 152
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/cJ;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/Qhi/cJ;ZIJ)V

    .line 153
    const-string p2, "track_link_result"

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    .line 154
    new-instance p1, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/iMK;

    const/4 p4, 0x1

    invoke-direct {p1, p4, p5}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/iMK;-><init>(ZLcom/bytedance/sdk/component/Tgh/Qhi/Tgh/fl;)V

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Gm/cJ;)V

    return-void

    .line 156
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->HUk()Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 157
    invoke-virtual {p5}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/fl;->CJ()I

    move-result p4

    invoke-virtual {p5}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/fl;->Tgh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA;->Qhi(Ljava/lang/String;)I

    move-result v0

    if-ge p4, v0, :cond_3

    .line 158
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA;->Qhi()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 159
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/zc;->Qhi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p5, p2, p3}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/fl;->Qhi(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Runnable;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 161
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p3

    invoke-virtual {p5}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/fl;->Tgh()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA;->cJ(Ljava/lang/String;)I

    move-result p1

    int-to-long p4, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p3, p2, p4, p5, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    return-void

    .line 165
    :cond_3
    new-instance p1, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/iMK;

    invoke-direct {p1, p3, p5}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/iMK;-><init>(ZLcom/bytedance/sdk/component/Tgh/Qhi/Tgh/fl;)V

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Gm/cJ;)V

    :cond_4
    return-void
.end method

.method public Qhi()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Qhi(Landroid/content/Context;)Z
    .locals 0

    .line 77
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/hpZ;->Qhi(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public ROR()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Sf()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public Tgh()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public WAv()Lcom/bytedance/sdk/component/Tgh/Qhi/fl/ac;
    .locals 1

    .line 111
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Sf;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Sf;-><init>()V

    return-object v0
.end method

.method public ac(Ljava/lang/String;)I
    .locals 1

    .line 183
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->HUk()Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA;->Qhi(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public ac()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cJ(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 88
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Qhi;->Qhi()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/CJ/Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public cJ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public fl()Ljava/util/concurrent/Executor;
    .locals 1

    .line 122
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->ROR()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public hm()Ljava/lang/String;
    .locals 1

    .line 100
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/js;->ac()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iMK()Z
    .locals 1

    .line 178
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService;->Qhi:Z

    return v0
.end method

.method public zc()Lcom/bytedance/sdk/component/Tgh/Qhi/Sf;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
