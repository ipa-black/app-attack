.class public Lcom/bytedance/sdk/openadsdk/core/ugen/cJ;
.super Ljava/lang/Object;
.source "UGenInitHelper.java"


# direct methods
.method public static Qhi(Landroid/content/Context;)V
    .locals 3

    .line 25
    invoke-static {}, Lcom/bytedance/adsdk/ugeno/fl;->Qhi()Lcom/bytedance/adsdk/ugeno/fl;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ$1;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ$1;-><init>()V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi;-><init>()V

    invoke-virtual {v0, p0, v1, v2}, Lcom/bytedance/adsdk/ugeno/fl;->Qhi(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/core/ac;Lcom/bytedance/adsdk/ugeno/Qhi;)V

    return-void
.end method
