.class final Lcom/bytedance/sdk/openadsdk/ABk/ac$1;
.super Ljava/lang/Object;
.source "BusMonitorUtils.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/ABk/cJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/ABk/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/ABk/Qhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 43
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 48
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->hm()Lcom/bytedance/sdk/component/Sf/ac/ROR;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 53
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->cJ()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getOnceLogCount()I
    .locals 3

    .line 117
    const-string v0, "bus_monitor_config"

    const-string v1, "once_count"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/HzH/Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    return v2
.end method

.method public getOnceLogInterval()I
    .locals 3

    .line 126
    const-string v0, "bus_monitor_config"

    const-string v1, "once_interval"

    const/16 v2, 0x2710

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/HzH/Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ge v0, v2, :cond_0

    return v2

    :cond_0
    return v0
.end method

.method public getUploadIntervalTime()I
    .locals 3

    .line 58
    const-string v0, "interval"

    const v1, 0x2932e00

    const-string v2, "bus_monitor_config"

    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/HzH/Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const v1, 0x36ee80

    if-ge v0, v1, :cond_0

    const v0, 0x5265c00

    :cond_0
    return v0
.end method

.method public isMonitorOpen()Z
    .locals 3

    .line 68
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ABk/ac;->ac()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ABk/ac;->ac()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 71
    :cond_0
    const-string v0, "bus_monitor_config"

    const-string v1, "enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/HzH/Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v2, v1

    .line 72
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ABk/ac;->Qhi(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 73
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ABk/ac;->ac()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onMonitorUpload(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 78
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 81
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;

    .line 83
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/Gm/ac;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/ABk/ac$1$1;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/ABk/ac$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/ABk/ac$1;Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;)V

    const-string v0, "bus_monitor"

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Gm/cJ;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
