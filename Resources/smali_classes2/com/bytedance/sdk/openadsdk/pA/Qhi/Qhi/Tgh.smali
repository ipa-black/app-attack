.class public Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/Tgh;
.super Ljava/lang/Object;
.source "TTDownloadFactory.java"


# direct methods
.method public static Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;
    .locals 1

    .line 15
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/js;->Sf(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    new-instance v0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/Qhi;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/Qhi;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
