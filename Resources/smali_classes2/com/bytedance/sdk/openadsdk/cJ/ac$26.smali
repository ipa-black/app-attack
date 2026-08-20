.class final Lcom/bytedance/sdk/openadsdk/cJ/ac$26;
.super Ljava/lang/Object;
.source "AdEventManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/ac;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;Ljava/lang/String;)V
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

    .line 1080
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$26;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$26;->cJ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()Lorg/json/JSONObject;
    .locals 5

    .line 1083
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1085
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1086
    const-string v2, "arbi_current_url"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$26;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;->ac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1087
    const-string v2, "current_url_index"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$26;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;->CJ()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1088
    const-string v2, "arbi_stay_duration"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$26;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;->iMK()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1089
    const-string v2, "browsing_percentage"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$26;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;->pA()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1090
    const-string v2, "out_focus_scene"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$26;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Qhi;->hpZ()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1091
    const-string v2, "ad_extra_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1093
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "TTAD.AdEvent"

    const-string v3, "onWebBehaviorStay"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/qMt;->cJ(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1095
    :goto_0
    const-string v1, "onWebBehaviorStay-->"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$26;->cJ:Ljava/lang/String;

    filled-new-array {v1, v0, v2}, [Ljava/lang/Object;

    return-object v0
.end method
