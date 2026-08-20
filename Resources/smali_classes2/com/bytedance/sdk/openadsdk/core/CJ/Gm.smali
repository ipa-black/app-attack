.class public Lcom/bytedance/sdk/openadsdk/core/CJ/Gm;
.super Ljava/lang/Object;
.source "FrequentCallEventHelper.java"


# direct methods
.method public static Qhi(Ljava/lang/String;J)V
    .locals 0

    .line 39
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/CJ/Gm;->cJ(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p0

    .line 41
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/iMK/ac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->cJ()Lcom/bytedance/sdk/component/ROR/Qhi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ROR/Qhi;->cJ()Lcom/bytedance/sdk/component/ROR/cJ/fl;

    move-result-object p1

    .line 42
    const-string p2, "/api/ad/union/sdk/stats/"

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/js;->CJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->cJ(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->CJ(Ljava/lang/String;)V

    const/4 p0, 0x6

    .line 44
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(I)V

    .line 45
    const-string p0, "uploadFrequentEvent"

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Ljava/lang/String;)V

    .line 46
    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/CJ/Gm$1;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/CJ/Gm$1;-><init>()V

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;)V

    return-void
.end method

.method private static cJ(Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 3

    .line 67
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 69
    :try_start_0
    const-string v1, "type"

    const-string v2, "over_freq"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v1, "rit"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string p0, "ad_sdk_version"

    const-string v1, "6.2.0.6"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string p0, "timestamp"

    invoke-virtual {v0, p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
