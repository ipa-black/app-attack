.class public Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;
.super Ljava/lang/Object;
.source "RewardFullBackUpEndCard.java"


# instance fields
.field private CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;

.field private final Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

.field private ac:Z

.field private cJ:Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    return-void
.end method


# virtual methods
.method public CJ()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->cJ()V

    :cond_0
    return-void
.end method

.method public Qhi()V
    .locals 2

    .line 38
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;->ac:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;->ac:Z

    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->yN:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/iMK;->rB:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;

    if-eqz v0, :cond_1

    .line 45
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->IC()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;

    :cond_2
    return-void
.end method

.method public Qhi(I)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;

    if-nez v0, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->setShownAdCount(I)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;)V

    const-string v2, "TTBaseVideoActivity#mFLEndCardBackupContainer"

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;)V

    :cond_1
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;)Z
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 86
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 87
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public ac()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->Qhi()V

    :cond_0
    return-void
.end method

.method public cJ()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    return-void
.end method

.method public fl()Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/HzH;->ac()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
