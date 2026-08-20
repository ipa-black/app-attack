.class public Lcom/bytedance/sdk/openadsdk/core/settings/Gm;
.super Lcom/bytedance/sdk/openadsdk/core/settings/hpZ;
.source "MediationInitSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    const-string v0, "tt_set_mediation.prop"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/hpZ;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/settings/hpZ$Qhi;)V

    return-void
.end method


# virtual methods
.method public Qhi(Lorg/json/JSONObject;)V
    .locals 2

    .line 15
    const-string v0, "mediation_init_conf"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Gm;->Qhi()Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    move-result-object v1

    .line 17
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 18
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi()V

    .line 19
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Gm;->CJ()V

    :cond_0
    return-void
.end method
