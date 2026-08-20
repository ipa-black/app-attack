.class public Lcom/bytedance/sdk/openadsdk/core/model/iMK;
.super Ljava/lang/Object;
.source "DspStyle.java"


# instance fields
.field private final CJ:I

.field private final Qhi:I

.field private final ac:I

.field private final cJ:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "auto_click"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/iMK;->Qhi:I

    .line 19
    const-string v0, "close_jump_probability"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/iMK;->cJ:I

    .line 20
    const-string v0, "skip_jump_probability"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/iMK;->ac:I

    .line 21
    const-string v0, "hidden_bar"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/iMK;->CJ:I

    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->IC()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->eG()Lcom/bytedance/sdk/openadsdk/core/model/iMK;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->eG()Lcom/bytedance/sdk/openadsdk/core/model/iMK;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/iMK;->CJ()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public CJ()Z
    .locals 2

    .line 51
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/iMK;->CJ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Qhi()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/iMK;->Qhi:I

    return v0
.end method

.method public ac()I
    .locals 2

    .line 44
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/iMK;->ac:I

    if-ltz v0, :cond_1

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public cJ()I
    .locals 2

    .line 37
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/iMK;->cJ:I

    if-ltz v0, :cond_1

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public fl()Lorg/json/JSONObject;
    .locals 5

    .line 56
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 57
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/iMK;->Qhi:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 58
    const-string v3, "auto_click"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 60
    :cond_0
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/iMK;->cJ:I

    const/16 v3, 0x64

    if-lez v1, :cond_1

    if-gt v1, v3, :cond_1

    .line 61
    const-string v4, "close_jump_probability"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 63
    :cond_1
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/iMK;->ac:I

    if-lez v1, :cond_2

    if-gt v1, v3, :cond_2

    .line 64
    const-string v3, "skip_jump_probability"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66
    :cond_2
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/iMK;->CJ:I

    if-ne v1, v2, :cond_3

    .line 67
    const-string v1, "hidden_bar"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
