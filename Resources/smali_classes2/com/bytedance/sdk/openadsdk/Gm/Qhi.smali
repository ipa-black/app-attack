.class public Lcom/bytedance/sdk/openadsdk/Gm/Qhi;
.super Ljava/lang/Object;
.source "DailyTaskHelper.java"


# direct methods
.method public static Qhi()V
    .locals 2

    .line 18
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->fl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi$1;

    const-string v1, "DailyTaskHelper"

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Lcom/bytedance/sdk/component/Sf/hm;)V

    return-void

    .line 26
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi;->ac()V

    return-void
.end method

.method private static ac()V
    .locals 0

    .line 31
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Qhi;->cJ()V

    .line 32
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->CJ()V

    .line 33
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ROR;->Qhi()V

    .line 34
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/EBS;->Qhi()V

    return-void
.end method

.method static synthetic cJ()V
    .locals 0

    .line 15
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi;->ac()V

    return-void
.end method
