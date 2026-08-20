.class public interface abstract Lcom/bytedance/sdk/openadsdk/ABk/cJ;
.super Ljava/lang/Object;
.source "BusMonitorDepend.java"


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getExecutorService()Ljava/util/concurrent/ExecutorService;
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getOnceLogCount()I
.end method

.method public abstract getOnceLogInterval()I
.end method

.method public abstract getUploadIntervalTime()I
.end method

.method public abstract isMonitorOpen()Z
.end method

.method public abstract onMonitorUpload(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;",
            ">;)V"
        }
    .end annotation
.end method
