.class Lcom/bytedance/sdk/openadsdk/ABk/Qhi$2;
.super Ljava/lang/Object;
.source "BusMonitorCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Qhi(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Z

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/ABk/Qhi;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/ABk/Qhi;Z)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi$2;->cJ:Lcom/bytedance/sdk/openadsdk/ABk/Qhi;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi$2;->Qhi:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi$2;->cJ:Lcom/bytedance/sdk/openadsdk/ABk/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->ac(Lcom/bytedance/sdk/openadsdk/ABk/Qhi;)I

    .line 224
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi$2;->Qhi:Z

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi$2;->cJ:Lcom/bytedance/sdk/openadsdk/ABk/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->CJ(Lcom/bytedance/sdk/openadsdk/ABk/Qhi;)Lcom/bytedance/sdk/openadsdk/ABk/ac/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/ABk/ac/Qhi;->Qhi()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 227
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi$2;->cJ:Lcom/bytedance/sdk/openadsdk/ABk/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->CJ(Lcom/bytedance/sdk/openadsdk/ABk/Qhi;)Lcom/bytedance/sdk/openadsdk/ABk/ac/Qhi;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ABk/ac/Qhi;->Qhi(J)V

    return-void

    .line 230
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->cJ()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 231
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi$2;->cJ:Lcom/bytedance/sdk/openadsdk/ABk/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/ABk/Qhi;)Lcom/bytedance/sdk/openadsdk/ABk/cJ;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ABk/cJ;->getUploadIntervalTime()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi$2;->cJ:Lcom/bytedance/sdk/openadsdk/ABk/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/ABk/Qhi;)Lcom/bytedance/sdk/openadsdk/ABk/cJ;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ABk/cJ;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi$2;->cJ:Lcom/bytedance/sdk/openadsdk/ABk/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/ABk/Qhi;)Lcom/bytedance/sdk/openadsdk/ABk/cJ;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ABk/cJ;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi$2;->cJ:Lcom/bytedance/sdk/openadsdk/ABk/Qhi;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->fl(Lcom/bytedance/sdk/openadsdk/ABk/Qhi;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 239
    const-string v1, "BusMonitorCenter"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
