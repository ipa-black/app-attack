.class public Lcom/bytedance/sdk/openadsdk/MQ/Qhi/fl;
.super Ljava/lang/Object;
.source "PAGMRCEventManager.java"


# direct methods
.method public static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Qhi;Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;)V
    .locals 2

    .line 18
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Px()V

    .line 19
    new-instance v0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/fl$1;

    const-string v1, "mrc_report"

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/fl$1;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Qhi;Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->ac(Lcom/bytedance/sdk/component/Sf/hm;)V

    return-void
.end method
