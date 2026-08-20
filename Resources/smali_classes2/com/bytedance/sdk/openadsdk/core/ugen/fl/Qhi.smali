.class public Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;
.super Ljava/lang/Object;
.source "UGenTemplateModel.java"


# instance fields
.field private CJ:Ljava/lang/String;

.field private Qhi:Ljava/lang/String;

.field private ac:Ljava/lang/String;

.field private cJ:Ljava/lang/String;

.field private fl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->CJ:Ljava/lang/String;

    return-object p0
.end method

.method public CJ()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->CJ:Ljava/lang/String;

    return-object v0
.end method

.method public Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->Qhi:Ljava/lang/String;

    return-object p0
.end method

.method public Qhi()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->Qhi:Ljava/lang/String;

    return-object v0
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;)Lorg/json/JSONObject;
    .locals 6

    .line 63
    const-string v0, "url"

    const-string v1, "md5"

    const-string v2, "id"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 65
    :try_start_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->Qhi:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->cJ:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->ac:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    .line 69
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 70
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->Qhi()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->cJ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->ac()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string p1, "overlay"

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v3

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->ac:Ljava/lang/String;

    return-object p0
.end method

.method public ac()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->ac:Ljava/lang/String;

    return-object v0
.end method

.method public cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->cJ:Ljava/lang/String;

    return-object p0
.end method

.method public cJ()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->cJ:Ljava/lang/String;

    return-object v0
.end method

.method public fl(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->fl:Ljava/lang/String;

    return-object p0
.end method

.method public fl()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->fl:Ljava/lang/String;

    return-object v0
.end method
