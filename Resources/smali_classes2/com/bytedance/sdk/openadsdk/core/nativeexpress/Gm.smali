.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm;
.super Ljava/lang/Object;
.source "ExpressInitHelper.java"


# static fields
.field private static Qhi:Ljava/lang/String;

.field private static cJ:Ljava/lang/String;


# direct methods
.method public static Qhi()V
    .locals 2

    .line 57
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;->Qhi()Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$1;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/cJ;)V

    .line 80
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;->Qhi()Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$2;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/ac;)V

    .line 230
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;->Qhi()Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$3;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/fl;)V

    .line 247
    invoke-static {}, Lcom/bytedance/sdk/component/widget/Qhi/Qhi;->Qhi()Lcom/bytedance/sdk/component/widget/Qhi/Qhi;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$4;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$4;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/component/widget/Qhi/cJ;)V

    return-void
.end method

.method public static ac()Ljava/lang/String;
    .locals 4

    .line 300
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm;->cJ:Ljava/lang/String;

    const-string v1, "js_render_v3_ver"

    const-string v2, "tt_sp"

    if-nez v0, :cond_0

    .line 301
    const-string v0, ""

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->cJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm;->cJ:Ljava/lang/String;

    .line 304
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/hm;->cJ()Lcom/bytedance/sdk/component/adexpress/Qhi/ac/Qhi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 306
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/Qhi;->Qhi()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 308
    const-string v3, "v3"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/Qhi;

    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/Qhi;->ac()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 312
    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm;->cJ:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 313
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm;->cJ:Ljava/lang/String;

    .line 314
    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm;->cJ:Ljava/lang/String;

    return-object v0
.end method

.method public static cJ()Ljava/lang/String;
    .locals 4

    .line 279
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm;->Qhi:Ljava/lang/String;

    const-string v1, "js_render_ver"

    const-string v2, "tt_sp"

    if-nez v0, :cond_0

    .line 280
    const-string v0, ""

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->cJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm;->Qhi:Ljava/lang/String;

    .line 283
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/hm;->cJ()Lcom/bytedance/sdk/component/adexpress/Qhi/ac/Qhi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/Qhi;->ac()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 287
    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm;->Qhi:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 288
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm;->Qhi:Ljava/lang/String;

    .line 289
    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm;->Qhi:Ljava/lang/String;

    return-object v0
.end method
