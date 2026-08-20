.class public Lcom/bytedance/sdk/openadsdk/component/reward/Qhi;
.super Ljava/lang/Object;
.source "ChooseAdHelper.java"


# direct methods
.method public static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;IZ)V
    .locals 1

    if-eqz p0, :cond_3

    .line 26
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    const/4 p1, 0x0

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 33
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 34
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/zc;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/zc;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/zc;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/fl;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 35
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;ZZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;ZZ)V
    .locals 2

    .line 39
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->cJ()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
