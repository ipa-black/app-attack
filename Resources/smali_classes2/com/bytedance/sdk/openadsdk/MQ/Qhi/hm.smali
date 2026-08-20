.class public Lcom/bytedance/sdk/openadsdk/MQ/Qhi/hm;
.super Lcom/bytedance/sdk/openadsdk/MQ/Qhi/cJ;
.source "PAGVideoMrcTracker.java"


# instance fields
.field private CJ:I


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;)V
    .locals 6

    const/16 v4, 0x7d0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 19
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/cJ;-><init>(Ljava/lang/Integer;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/tP;ILcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;)V

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/hm;->CJ:I

    return-void
.end method


# virtual methods
.method protected CJ()V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/cJ;->CJ()V

    return-void
.end method

.method public Qhi()V
    .locals 2

    .line 39
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/hm;->CJ:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/cJ;->Qhi()V

    return-void
.end method

.method public Tgh()I
    .locals 1

    const/16 v0, 0xc8

    return v0
.end method

.method protected ac()Z
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/hm;->Qhi:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/hm;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->eN()I

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/ROR;->Qhi(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/hm;->CJ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected cJ(I)V
    .locals 2

    .line 47
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/hm;->hm()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/hm;->CJ:I

    .line 52
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/hm;->Sf()V

    :cond_2
    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_3

    if-ne p1, v1, :cond_4

    .line 56
    :cond_3
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/hm;->CJ:I

    .line 57
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/hm;->Sf()V

    .line 60
    :cond_4
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/hm;->CJ:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    if-nez p1, :cond_5

    .line 61
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/hm;->CJ:I

    .line 62
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/hm;->Qhi()V

    :cond_5
    return-void
.end method

.method public zc()Z
    .locals 4

    .line 69
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/hm;->CJ:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 71
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/hm;->ac:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    if-eqz v0, :cond_4

    .line 73
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/cJ;->zc()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    return v3

    :cond_4
    :goto_2
    return v2
.end method
