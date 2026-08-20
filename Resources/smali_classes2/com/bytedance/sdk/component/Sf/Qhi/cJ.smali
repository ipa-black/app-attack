.class public Lcom/bytedance/sdk/component/Sf/Qhi/cJ;
.super Lcom/bytedance/sdk/component/utils/CQU;
.source "HandlerWapper.java"

# interfaces
.implements Lcom/bytedance/sdk/component/Sf/Qhi/ac;


# instance fields
.field private final cJ:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Landroid/os/HandlerThread;Lcom/bytedance/sdk/component/utils/CQU$Qhi;)V
    .locals 1

    .line 22
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/bytedance/sdk/component/utils/CQU;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/CQU$Qhi;)V

    .line 23
    iput-object p1, p0, Lcom/bytedance/sdk/component/Sf/Qhi/cJ;->cJ:Landroid/os/HandlerThread;

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 2

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/Sf/Qhi/cJ;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 29
    iget-object v1, p0, Lcom/bytedance/sdk/component/Sf/Qhi/cJ;->Qhi:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/bytedance/sdk/component/Sf/Qhi/cJ;->Qhi:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 31
    iput-object v0, p0, Lcom/bytedance/sdk/component/Sf/Qhi/cJ;->Qhi:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/utils/CQU$Qhi;)V
    .locals 1

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sf/Qhi/cJ;->Qhi:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public cJ()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sf/Qhi/cJ;->cJ:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    return-void
.end method
