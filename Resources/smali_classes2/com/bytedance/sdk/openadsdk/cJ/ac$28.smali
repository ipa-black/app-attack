.class final Lcom/bytedance/sdk/openadsdk/cJ/ac$28;
.super Ljava/lang/Object;
.source "AdEventManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/ac;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;

.field final synthetic cJ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;Ljava/lang/String;)V
    .locals 0

    .line 1126
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$28;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$28;->cJ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()Lorg/json/JSONObject;
    .locals 5

    .line 1129
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1131
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1132
    const-string v2, "arbi_current_url"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$28;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;->ac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1133
    const-string v2, "current_url_index"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$28;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;->CJ()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1134
    const-string v2, "arbi_start_x"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$28;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;->fl()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1135
    const-string v2, "arbi_start_y"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$28;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;->Tgh()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1136
    const-string v2, "click_duration"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$28;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;->ROR()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1137
    const-string v2, "is_trigger_jump"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$28;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;->Sf()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1138
    const-string v2, "click_type"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$28;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;->tP()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1139
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$28;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;->Qhi()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1140
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1141
    const-string v3, "hit_type"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$28;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;->Qhi()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1142
    const-string v3, "hit_extra"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$28;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;->cJ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1143
    const-string v3, "pag_json_data"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1145
    :cond_0
    const-string v2, "ad_extra_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1147
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "TTAD.AdEvent"

    const-string v3, "onWebBehaviorClick"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/qMt;->cJ(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1149
    :goto_0
    const-string v1, "onWebBehaviorClick-->"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$28;->cJ:Ljava/lang/String;

    filled-new-array {v1, v0, v2}, [Ljava/lang/Object;

    return-object v0
.end method
