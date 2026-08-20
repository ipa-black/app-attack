.class Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$8;
.super Ljava/lang/Object;
.source "RewardFullPlayableManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/WAv/fl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;)V
    .locals 0

    .line 998
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 3

    .line 1001
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->ac(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1004
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->ac(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ls()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1009
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->ac(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->hm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1010
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x320

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1011
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Qhi(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public Qhi(I)V
    .locals 0

    return-void
.end method

.method public cJ()V
    .locals 0

    return-void
.end method
