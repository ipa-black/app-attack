.class final Lcom/bytedance/sdk/openadsdk/cJ/ac$35;
.super Ljava/lang/Object;
.source "AdEventManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lorg/json/JSONObject;

.field final synthetic cJ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 1268
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$35;->Qhi:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$35;->cJ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()Lorg/json/JSONObject;
    .locals 7

    .line 1271
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1272
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1274
    :try_start_0
    const-string v1, "pag_json_data"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$35;->Qhi:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1275
    const-string v1, "ad_extra_data"

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1278
    :catch_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$35;->cJ:Ljava/lang/String;

    const-string v4, "label: "

    const-string v5, "arbitrage_loading_show"

    const-string v0, "extJson: "

    const-string v2, "tag: "

    move-object v1, v6

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    return-object v6
.end method
