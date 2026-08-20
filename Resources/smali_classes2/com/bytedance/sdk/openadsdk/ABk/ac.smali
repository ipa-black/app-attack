.class public Lcom/bytedance/sdk/openadsdk/ABk/ac;
.super Ljava/lang/Object;
.source "BusMonitorUtils.java"


# static fields
.field private static volatile Qhi:Lcom/bytedance/sdk/openadsdk/ABk/Qhi;

.field private static cJ:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Qhi()Lcom/bytedance/sdk/openadsdk/ABk/Qhi;
    .locals 2

    .line 37
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ABk/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/Qhi;

    if-nez v0, :cond_1

    .line 38
    const-class v0, Lcom/bytedance/sdk/openadsdk/ABk/ac;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/ABk/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/Qhi;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/bytedance/sdk/openadsdk/ABk/ac$1;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/ABk/ac$1;-><init>()V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/ABk/cJ;)Lcom/bytedance/sdk/openadsdk/ABk/Qhi;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/ABk/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/Qhi;

    .line 135
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 137
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ABk/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/Qhi;

    return-object v0
.end method

.method static synthetic Qhi(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 29
    sput-object p0, Lcom/bytedance/sdk/openadsdk/ABk/ac;->cJ:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/ABk/fl;)V
    .locals 4

    .line 144
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ABk/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/ABk/Qhi;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/ABk/Tgh;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, v3}, Lcom/bytedance/sdk/openadsdk/ABk/Tgh;-><init>(Lcom/bytedance/sdk/openadsdk/ABk/fl;III)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/ABk/fl;)V

    return-void
.end method

.method static synthetic ac()Ljava/lang/Boolean;
    .locals 1

    .line 29
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ABk/ac;->cJ:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static ac(Lcom/bytedance/sdk/openadsdk/ABk/fl;)V
    .locals 4

    .line 153
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ABk/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/ABk/Qhi;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/ABk/Tgh;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v2, v3}, Lcom/bytedance/sdk/openadsdk/ABk/Tgh;-><init>(Lcom/bytedance/sdk/openadsdk/ABk/fl;III)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/ABk/fl;)V

    return-void
.end method

.method public static cJ()V
    .locals 2

    .line 161
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ABk/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/ABk/Qhi;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Qhi(Z)V

    return-void
.end method

.method public static cJ(Lcom/bytedance/sdk/openadsdk/ABk/fl;)V
    .locals 4

    .line 149
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ABk/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/ABk/Qhi;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/ABk/Tgh;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3, v2}, Lcom/bytedance/sdk/openadsdk/ABk/Tgh;-><init>(Lcom/bytedance/sdk/openadsdk/ABk/fl;III)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/ABk/fl;)V

    return-void
.end method
