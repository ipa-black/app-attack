.class final Lcom/bytedance/sdk/openadsdk/cJ/ac$33;
.super Ljava/lang/Object;
.source "AdEventManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Ljava/lang/String;

.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field final synthetic ac:I

.field final synthetic cJ:Ljava/lang/String;

.field final synthetic fl:J


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$33;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$33;->cJ:Ljava/lang/String;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$33;->ac:I

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$33;->CJ:Ljava/lang/String;

    iput-wide p5, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$33;->fl:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()Lorg/json/JSONObject;
    .locals 5

    .line 187
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 189
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 190
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$33;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "render_type"

    const-string v4, "url"

    if-eqz v2, :cond_1

    .line 191
    :try_start_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$33;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->af()Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$33;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->af()Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->ac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string v2, "id"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$33;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->af()Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->Qhi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string v2, "md5"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$33;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->af()Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->cJ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$33;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x7

    .line 197
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 200
    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$33;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->zc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string v2, "style_id"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$33;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->wa()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$33;->cJ:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 203
    const-string v2, "error_url"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$33;->cJ:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$33;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    .line 206
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    :cond_3
    :goto_0
    const-string v2, "error_code"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$33;->ac:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 210
    const-string v2, "error_msg"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$33;->CJ:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    const-string v2, "ad_extra_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    const-string v1, "duration"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$33;->fl:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 214
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/ABk;->cJ(Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method
