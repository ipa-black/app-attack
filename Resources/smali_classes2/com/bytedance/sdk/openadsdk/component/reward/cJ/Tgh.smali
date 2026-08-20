.class public Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;
.super Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;
.source "RewardFullTypeDoubleAds.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/WAv/ROR;


# instance fields
.field private hpZ:Z

.field private final pA:Lcom/bytedance/sdk/openadsdk/core/model/MQ;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    .line 37
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/model/MQ;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;->pA:Lcom/bytedance/sdk/openadsdk/core/model/MQ;

    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;ZLjava/lang/String;)V
    .locals 3

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "is_backup"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "choose_ad_start_show"

    invoke-static {v1, p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/util/Map;)V

    .line 47
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 49
    :try_start_0
    const-string v0, "req_id"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->jWV()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    invoke-virtual {p2, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :catch_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/Gm/ac;

    move-result-object p0

    invoke-virtual {p0, v1, p2}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public Qhi(IJ)V
    .locals 3

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;->hpZ:Z

    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;->pA:Lcom/bytedance/sdk/openadsdk/core/model/MQ;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/MQ;->jPH(I)V

    .line 133
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;->pA:Lcom/bytedance/sdk/openadsdk/core/model/MQ;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->fl:Ljava/lang/String;

    invoke-static {v0, v2, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;IJ)V

    .line 135
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;->pA:Lcom/bytedance/sdk/openadsdk/core/model/MQ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/MQ;->XJ()Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CJ:Z

    invoke-static {p1, v1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;IZ)V

    .line 136
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Qhi(Landroid/widget/FrameLayout;)V
    .locals 0

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->cJ(Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;->pA:Lcom/bytedance/sdk/openadsdk/core/model/MQ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;->pA:Lcom/bytedance/sdk/openadsdk/core/model/MQ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    return-void

    .line 65
    :cond_0
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;)V

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

.method protected aP()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cJ(Z)V
    .locals 3

    .line 168
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;->hpZ:Z

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 170
    const-string v1, "has_focus"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;->pA:Lcom/bytedance/sdk/openadsdk/core/model/MQ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->fl:Ljava/lang/String;

    const-string v2, "choose_ad_focus_changed"

    invoke-static {v2, p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public cJ()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;->hpZ:Z

    return v0
.end method

.method public fl()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public pM()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Sf()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;->hpZ:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 113
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->getJsObject()Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 115
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/openadsdk/WAv/ROR;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    goto :goto_1

    .line 103
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->pM()V

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Sf()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;->Eh()V

    .line 108
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->zn:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->cJ()V

    :cond_3
    :goto_1
    return-void
.end method
