.class public Lcom/bytedance/sdk/openadsdk/Sf/Qhi;
.super Ljava/lang/Object;
.source "JsAppAdDownloadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Sf/ac;


# instance fields
.field private final Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field private final ac:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;",
            ">;"
        }
    .end annotation
.end field

.field private final cJ:Lcom/bytedance/sdk/openadsdk/Sf/cJ;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/Sf/cJ;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sf/Qhi;->ac:Ljava/util/Map;

    .line 32
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sf/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/Sf/cJ;

    .line 33
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/Sf/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/Sf/cJ;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/Sf/Qhi;
    .locals 1

    .line 37
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Sf/Qhi;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/Sf/Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/Sf/cJ;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    return-object v0
.end method

.method private Qhi(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 59
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v1

    .line 60
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac(Lorg/json/JSONObject;)V

    .line 61
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 62
    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->MQ(Ljava/lang/String;)V

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sf/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-nez p1, :cond_2

    return-object v1

    .line 69
    :cond_2
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->Qhi()Ljava/lang/String;

    move-result-object v0

    .line 70
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 71
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sf/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p1

    .line 74
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sf/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 75
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->Qhi()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 76
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sf/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p1

    .line 78
    :cond_5
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 80
    :try_start_0
    const-string v2, "lu"

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->Qhi()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_6
    const-string v3, "null"

    :goto_0
    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v2, "ju"

    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :catch_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/Sf/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x5

    invoke-static {v2, v3, v4, p2}, Lcom/bytedance/sdk/openadsdk/core/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILorg/json/JSONObject;)V

    if-eqz p1, :cond_7

    .line 91
    const-string p2, "play.google.com/store"

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "referrer"

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 92
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->Qhi()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->Qhi(Ljava/lang/String;)V

    :cond_7
    return-object v1
.end method

.method private Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;
    .locals 0

    .line 177
    invoke-static {p1, p2, p4}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/Tgh;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    move-result-object p1

    const/4 p2, 0x1

    .line 178
    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;->Qhi(Z)V

    return-object p1
.end method

.method private Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lorg/json/JSONObject;IZ)V
    .locals 7

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 111
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sf/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/Sf/cJ;

    if-nez v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sf/Qhi;->ac:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->Qhi()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    if-eqz v0, :cond_1

    return-void

    .line 119
    :cond_1
    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/utils/js;->cJ(I)Ljava/lang/String;

    move-result-object v5

    .line 120
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_2

    return-void

    :cond_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p5

    .line 123
    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/Sf/Qhi;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    move-result-object p1

    .line 124
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/Sf/Qhi;->ac:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->Qhi()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lorg/json/JSONObject;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sf/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/Sf/cJ;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->Qhi()Ljava/lang/String;

    move-result-object p1

    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sf/Qhi;->ac:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sf/Qhi;->ac:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 156
    const-string v0, "message"

    const-string v1, "success"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v0, "status"

    const-string v1, "unsubscribed"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string v0, "appad"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/Sf/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/Sf/cJ;

    const-string v0, "app_ad_event"

    invoke-interface {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/Sf/cJ;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 161
    const-string p2, "JsAppAdDownloadManager"

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sf/Qhi;->ac:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public Qhi(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 129
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/Sf/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-nez p2, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/Tgh;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;->CJ()V

    :cond_1
    :goto_0
    return-void
.end method

.method public Qhi(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;IZ)V
    .locals 7

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    const-string v0, "data"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 105
    invoke-direct {p0, v4, p3}, Lcom/bytedance/sdk/openadsdk/Sf/Qhi;->Qhi(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v5, p4

    move v6, p5

    .line 106
    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/Sf/Qhi;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lorg/json/JSONObject;IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public Qhi(Lorg/json/JSONObject;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 140
    :cond_0
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/Sf/Qhi;->Qhi(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    .line 143
    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/Sf/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method
