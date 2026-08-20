.class final Lcom/bytedance/sdk/openadsdk/cJ/ac$27;
.super Ljava/lang/Object;
.source "AdEventManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/ac;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;Ljava/lang/String;)V
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

    .line 1102
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$27;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$27;->cJ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()Lorg/json/JSONObject;
    .locals 5

    .line 1105
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1107
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1108
    const-string v2, "arbi_current_url"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$27;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;->ac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1109
    const-string v2, "current_url_index"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$27;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;->CJ()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1110
    const-string v2, "trigger_scroll_x"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$27;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;->hm()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1111
    const-string v2, "trigger_scroll_y"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$27;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;->WAv()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1112
    const-string v2, "arbi_offset_y"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$27;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;->Gm()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1113
    const-string v2, "scroll_type"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$27;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;->zc()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1114
    const-string v2, "scroll_duration"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$27;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;->ABk()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1115
    const-string v2, "ad_extra_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1117
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "TTAD.AdEvent"

    const-string v3, "onWebBehaviorScroll"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/qMt;->cJ(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1119
    :goto_0
    const-string v1, "onWebBehaviorScroll-->"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$27;->cJ:Ljava/lang/String;

    filled-new-array {v1, v0, v2}, [Ljava/lang/Object;

    return-object v0
.end method
