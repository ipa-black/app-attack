.class final Lcom/bytedance/sdk/openadsdk/cJ/ac$47;
.super Ljava/lang/Object;
.source "AdEventManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field final synthetic Qhi:Ljava/lang/String;

.field final synthetic ac:Ljava/lang/String;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/cJ/Sf;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/cJ/Sf;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$47;->Qhi:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$47;->cJ:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$47;->ac:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$47;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()Lorg/json/JSONObject;
    .locals 4

    .line 446
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 448
    :try_start_0
    const-string v1, "duration"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$47;->Qhi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 449
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$47;->cJ:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/cJ/Sf;->cJ()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 450
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$47;->cJ:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/cJ/Sf;->cJ()Lorg/json/JSONObject;

    move-result-object v1

    .line 451
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$47;->ac:Ljava/lang/String;

    const-string v3, "open_ad"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    const-string v2, "is_icon_only"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$47;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->czB()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 454
    :cond_0
    const-string v2, "ad_extra_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-object v0
.end method
