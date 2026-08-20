.class final Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi$3;
.super Ljava/lang/Object;
.source "AdEventManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi;->Qhi(JLcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic CJ:J

.field final synthetic Qhi:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field final synthetic cJ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;J)V
    .locals 0

    .line 1563
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi$3;->Qhi:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi$3;->cJ:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi$3;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi$3;->CJ:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()Lorg/json/JSONObject;
    .locals 8

    .line 1566
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1568
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/fl/cJ;->Qhi()Lcom/bytedance/sdk/openadsdk/fl/cJ;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi$3;->Qhi:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi$3;->cJ:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/fl/cJ;->Qhi(Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;)I

    move-result v1

    .line 1569
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1570
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1571
    const-string v4, "is_arbitrage"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi$3;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->jPH()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1572
    const-string v4, "pag_json_data"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1573
    const-string v3, "url"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi$3;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->YB()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1574
    const-string v3, "channel_name"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi$3;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1575
    const-string v3, "interceptor_status"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi$3;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-gtz v1, :cond_1

    :cond_0
    move v6, v7

    :cond_1
    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1576
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1577
    const-string v4, "resource_count"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1578
    const-string v1, "resource_info"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1580
    const-string v1, "ad_extra_data"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1581
    const-string v1, "duration"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi$3;->CJ:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1583
    const-string v2, "TTAD.AdEvent"

    const-string v3, "Gecko.localResHitRate error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method
