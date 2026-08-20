.class final Lcom/bytedance/sdk/openadsdk/core/cJ$1;
.super Ljava/lang/Object;
.source "AdInfoFactory.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Gm/cJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/cJ;->Qhi(ILcom/bytedance/sdk/openadsdk/core/model/Qhi;Ljava/util/ArrayList;Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Ljava/util/ArrayList;

.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

.field final synthetic ac:Z

.field final synthetic cJ:I

.field final synthetic fl:Lcom/bytedance/sdk/openadsdk/core/model/cJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;IZLjava/util/ArrayList;Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/cJ$1;->cJ:I

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/cJ$1;->ac:Z

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/cJ$1;->CJ:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/cJ$1;->fl:Lcom/bytedance/sdk/openadsdk/core/model/cJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogStats()Lcom/bytedance/sdk/openadsdk/Gm/Qhi/ac;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 160
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Qhi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "req_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v1, "material_error"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/cJ$1;->cJ:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 162
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/cJ$1;->ac:Z

    const-string v2, "choose_ui_error"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 163
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/cJ$1;->CJ:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/cJ$1;->CJ:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 165
    const-string v2, "mate_unavailable_code_list"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/cJ$1;->fl:Lcom/bytedance/sdk/openadsdk/core/model/cJ;

    if-eqz v1, :cond_1

    .line 168
    const-string v2, "server_res_str"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->cJ()Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object v1

    const-string v2, "choose_ad_parsing_error"

    .line 171
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object v1

    .line 172
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object v0

    return-object v0
.end method
