.class Lcom/bytedance/sdk/openadsdk/activity/Tgh$5;
.super Ljava/lang/Object;
.source "RewardAdScene.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/widget/Qhi$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/Tgh;->Qhi(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Z

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/Tgh;ZLcom/bytedance/sdk/openadsdk/core/widget/Qhi;)V
    .locals 0

    .line 777
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$5;->ac:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$5;->Qhi:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$5;->cJ:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 3

    .line 780
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$5;->ac:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->iMK()V

    .line 781
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$5;->Qhi:Z

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$5;->ac:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Qhi(J)V

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$5;->cJ:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;->dismiss()V

    .line 785
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$5;->ac:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->MQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public cJ()V
    .locals 3

    .line 790
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$5;->cJ:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;->dismiss()V

    .line 791
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$5;->ac:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->hm()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "user_has_give_up_reward"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 792
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$5;->ac:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->MQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 794
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$5;->ac:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Tgh(I)V

    .line 795
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$5;->Qhi:Z

    if-eqz v0, :cond_3

    .line 796
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$5;->ac:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$5;->ac:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->tP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$5;->ac:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->cJ(I)V

    return-void

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$5;->ac:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/Tgh;)V

    return-void

    .line 805
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$5;->ac:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Tgh()V

    .line 806
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$5;->ac:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->tP()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 807
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$5;->ac:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->cJ(I)V

    .line 809
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$5;->ac:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->CQU()V

    return-void

    .line 812
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$5;->ac:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/Tgh;)V

    return-void
.end method
