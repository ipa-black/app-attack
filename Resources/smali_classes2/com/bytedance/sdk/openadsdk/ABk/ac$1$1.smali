.class Lcom/bytedance/sdk/openadsdk/ABk/ac$1$1;
.super Ljava/lang/Object;
.source "BusMonitorUtils.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Gm/cJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/ABk/ac$1;->onMonitorUpload(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/ABk/ac$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/ABk/ac$1;Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ABk/ac$1$1;->cJ:Lcom/bytedance/sdk/openadsdk/ABk/ac$1;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/ABk/ac$1$1;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogStats()Lcom/bytedance/sdk/openadsdk/Gm/Qhi/ac;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 89
    :try_start_0
    const-string v1, "sdk_version"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ABk/ac$1$1;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->cJ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v1, "scene"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ABk/ac$1$1;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->ac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v1, "start_count"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ABk/ac$1$1;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->CJ()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    const-string v1, "success_count"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ABk/ac$1$1;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->fl()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    const-string v1, "fail_count"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ABk/ac$1$1;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->Tgh()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    const-string v1, "rit"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ABk/ac$1$1;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->ROR()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string v1, "tag"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ABk/ac$1$1;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->Sf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string v1, "label"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ABk/ac$1$1;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->hm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string v1, "mediation"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ABk/ac$1$1;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->Gm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string v1, "is_init"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ABk/ac$1$1;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->zc()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 99
    const-string v1, "extra"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ABk/ac$1$1;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->ABk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->cJ()Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object v1

    const-string v2, "bus_monitor"

    .line 102
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object v1

    .line 103
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object v1

    .line 104
    const-string v2, "logStr = "

    filled-new-array {v2, v0}, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 107
    const-string v1, "BusMonitorUtils"

    const-string v2, "onMonitorUpload: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
