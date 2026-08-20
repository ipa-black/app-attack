.class final Lcom/bytedance/sdk/openadsdk/cJ/ac$11;
.super Ljava/lang/Object;
.source "AdEventManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$11;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()Lorg/json/JSONObject;
    .locals 5

    .line 122
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 124
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 125
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$11;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "render_type"

    const-string v4, "url"

    if-eqz v2, :cond_1

    .line 126
    :try_start_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$11;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->af()Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$11;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->af()Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->ac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v2, "id"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$11;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->af()Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->Qhi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v2, "md5"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$11;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->af()Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->cJ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$11;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x7

    .line 132
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 135
    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$11;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->zc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    const-string v2, "style_id"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$11;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->wa()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$11;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 138
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    :cond_2
    :goto_0
    const-string v2, "ad_extra_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 143
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/ABk;->cJ(Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method
