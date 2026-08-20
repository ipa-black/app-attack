.class final Lcom/bytedance/sdk/openadsdk/MQ/Qhi/fl$1;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "PAGMRCEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/MQ/Qhi/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Qhi;Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Qhi;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Qhi;Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;)V
    .locals 0

    .line 19
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/fl$1;->cJ:Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Qhi;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/fl$1;->ac:Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->VV()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ewb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Hf()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$cJ;

    const-string v2, "show_urls"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$cJ;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac;->Qhi(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$cJ;)V

    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 30
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v0

    .line 31
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 32
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/fl$1;->cJ:Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Qhi;

    if-eqz v2, :cond_3

    .line 34
    :try_start_0
    const-string v3, "root_view"

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Qhi;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/fl$1;->ac:Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;

    if-eqz v2, :cond_3

    .line 36
    iget v2, v2, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;->Qhi:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 37
    const-string v2, "dynamic_show_type"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/fl$1;->ac:Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;

    iget v4, v4, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;->Qhi:I

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/fl$1;->ac:Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;->cJ:I

    if-eq v2, v3, :cond_3

    .line 40
    const-string v2, "ad_show_order"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/fl$1;->ac:Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;

    iget v3, v3, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;->cJ:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :catchall_0
    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const-string v3, "mrc_show"

    invoke-static {v2, v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
