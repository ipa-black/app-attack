.class public Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;
.super Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;
.source "RewardFullTypeInteraction.java"


# instance fields
.field private pA:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;)Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->pA:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;

    return-object p0
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z
    .locals 2

    .line 35
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->LpL()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Oy()F

    move-result p0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private sDy()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public CJ()Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ$Qhi;
    .locals 1

    .line 43
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;)V

    return-object v0
.end method

.method public NFd()Landroid/widget/FrameLayout;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->pA:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->getVideoContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public Qhi(Landroid/widget/FrameLayout;)V
    .locals 8

    .line 28
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->Gm:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->pA:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;

    .line 29
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->zc:Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->setDownloadListener(Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;)V

    .line 30
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->pA:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v4, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Hf:F

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v5, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Dq:I

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->ac:I

    iget v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->CJ:I

    invoke-virtual/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;FIII)V

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->pA:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullInteractionStyleView;->getInteractionStyleRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public ROR()V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->Tgh:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->ac(I)V

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->Tgh:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->cJ(I)V

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->EBS()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->Sf:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Qhi(Z)V

    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->Sf:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->ac(Z)V

    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->Sf:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->CJ(Z)V

    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->Tgh:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->fl(I)V

    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->Sf:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->rB()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Qhi(Z)V

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->Sf:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->sDy()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->ac(Z)V

    .line 84
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->Sf:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->sDy()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->CJ(Z)V

    .line 85
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->sDy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->Tgh:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->fl(I)V

    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->Sf:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Tgh()V

    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->Tgh:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->fl(I)V

    return-void
.end method

.method public Tgh()Z
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->sDy()Z

    move-result v0

    return v0
.end method

.method public fl()Z
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->sDy()Z

    move-result v0

    return v0
.end method
