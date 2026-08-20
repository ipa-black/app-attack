.class public Lcom/bytedance/sdk/openadsdk/core/settings/Qhi;
.super Lcom/bytedance/sdk/openadsdk/core/settings/hpZ;
.source "APMSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/Qhi$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/Qhi$1;-><init>()V

    const-string v1, "tt_set_apm.prop"

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/hpZ;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/settings/hpZ$Qhi;)V

    return-void
.end method


# virtual methods
.method public Qhi(Lorg/json/JSONObject;)V
    .locals 4

    .line 27
    const-string v0, "perf_con_apm"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    move-result-object v1

    .line 28
    const-string v2, "apm_url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 29
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 30
    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 32
    :cond_0
    const-string v2, "perf_con"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 34
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 42
    invoke-interface {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :catch_0
    :cond_1
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi()V

    .line 49
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Qhi;->CJ()V

    return-void
.end method
