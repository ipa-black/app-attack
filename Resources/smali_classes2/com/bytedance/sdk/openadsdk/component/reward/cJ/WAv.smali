.class public Lcom/bytedance/sdk/openadsdk/component/reward/cJ/WAv;
.super Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;
.source "RewardFullTypePlayable.java"


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z
    .locals 1

    .line 23
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public HzH()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/WAv;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->zn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/WAv;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->FQ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/WAv;->kYc()V

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/WAv;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->ROR()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/WAv;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/WAv;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    if-eqz v0, :cond_2

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/WAv;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->cJ(Z)V

    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/WAv;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lB:Lcom/bytedance/sdk/openadsdk/WAv/hm;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/WAv/hm;->Qhi(Z)V

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/WAv;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->gga:Lcom/bytedance/sdk/openadsdk/utils/zc;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/zc;->Qhi()V

    return-void
.end method

.method public MQ()V
    .locals 2

    .line 58
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->MQ()V

    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/WAv;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/WAv;->WAv:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->removeMessages(I)V

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/WAv;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    const-string v1, "go_background"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Qhi(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Qhi(Landroid/widget/FrameLayout;)V
    .locals 0

    return-void
.end method

.method public ROR()V
    .locals 0

    return-void
.end method

.method public Tgh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public fl()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public qMt()V
    .locals 2

    .line 67
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->qMt()V

    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/WAv;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/WAv;->WAv:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->removeMessages(I)V

    .line 70
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/WAv;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    const-string v1, "go_background"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Qhi(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public tP()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/WAv;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->WAv()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/WAv;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/WAv;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    const-string v1, "return_foreground"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Qhi(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/WAv;->ABk:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/WAv;->ABk:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/WAv;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc()I

    move-result v0

    if-ltz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/WAv;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Qhi(J)V

    :cond_1
    return-void
.end method
