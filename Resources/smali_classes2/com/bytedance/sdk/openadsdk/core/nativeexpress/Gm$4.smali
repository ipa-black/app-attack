.class final Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$4;
.super Ljava/lang/Object;
.source "ExpressInitHelper.java"

# interfaces
.implements Lcom/bytedance/sdk/component/widget/Qhi/cJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm;->Qhi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/component/widget/cJ/Qhi;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 6

    .line 256
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    .line 257
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/cJ/Qhi;->Qhi()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HzH(I)V

    .line 258
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/cJ/Qhi;->cJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->MQ(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/cJ/Qhi;->ac()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->kYc(Ljava/lang/String;)V

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    .line 260
    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)V

    return-void
.end method

.method public Qhi(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 250
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/cJ;->Qhi()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    .line 251
    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
