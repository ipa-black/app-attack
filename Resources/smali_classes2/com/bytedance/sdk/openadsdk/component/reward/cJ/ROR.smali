.class public Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ROR;
.super Ljava/lang/Object;
.source "RewardFullTypeFactory.java"


# direct methods
.method public static Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 23
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/MQ;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/model/MQ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/MQ;->mvd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    return-object v0

    .line 27
    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/WAv;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/WAv;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    return-object v0

    .line 32
    :cond_1
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 33
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    return-object v0

    .line 37
    :cond_2
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 38
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    return-object v0

    .line 42
    :cond_3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/WAv;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 43
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/WAv;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/WAv;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    return-object v0

    .line 47
    :cond_4
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 48
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    return-object v0

    .line 50
    :cond_5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/fl;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/fl;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    return-object v0
.end method
