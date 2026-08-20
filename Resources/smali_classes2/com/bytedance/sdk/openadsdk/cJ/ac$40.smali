.class final Lcom/bytedance/sdk/openadsdk/cJ/ac$40;
.super Ljava/lang/Object;
.source "AdEventManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field final synthetic cJ:I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;ILcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 0

    .line 1475
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$40;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$40;->cJ:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$40;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()Lorg/json/JSONObject;
    .locals 5

    .line 1478
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1480
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$40;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->CJ()I

    move-result v1

    .line 1481
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1482
    const-string v3, "count"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/js;->iMK(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1483
    const-string v3, "interceptor"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1484
    const-string v3, "success"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$40;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->fl()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1485
    const-string v3, "link"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$40;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->Qhi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1486
    const-string v3, "interaction_type"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$40;->cJ:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1487
    const-string v3, "real_interaction_type"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$40;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->ROR()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1488
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$40;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->CJ()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_0

    .line 1489
    const-string v3, "is_act_signals_api_available"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$40;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->Sf()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1490
    const-string v3, "is_act_signals_callback"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$40;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->hm()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1493
    :cond_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$40;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->Tgh()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1494
    const-string v3, "exception_msg"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$40;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->Tgh()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x5

    if-ne v1, v3, :cond_3

    .line 1497
    :cond_2
    const-string v1, "meta"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$40;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->mZ()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1499
    :cond_3
    const-string v1, "ad_extra_data"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1501
    const-string v2, "TTAD.AdEvent"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
