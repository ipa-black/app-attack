.class Lcom/bytedance/sdk/openadsdk/utils/lG$3$1;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Gm/cJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/lG$3;->Qhi(Lcom/bytedance/sdk/component/Sf/ac/ROR;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/component/Sf/ac/Qhi/Qhi;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/utils/lG$3;

.field final synthetic cJ:Lcom/bytedance/sdk/component/Sf/ac/ROR;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/utils/lG$3;Lcom/bytedance/sdk/component/Sf/ac/Qhi/Qhi;Lcom/bytedance/sdk/component/Sf/ac/ROR;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/lG$3$1;->ac:Lcom/bytedance/sdk/openadsdk/utils/lG$3;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/utils/lG$3$1;->Qhi:Lcom/bytedance/sdk/component/Sf/ac/Qhi/Qhi;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/utils/lG$3$1;->cJ:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogStats()Lcom/bytedance/sdk/openadsdk/Gm/Qhi/ac;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 113
    :try_start_0
    const-string v1, "name"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/lG$3$1;->Qhi:Lcom/bytedance/sdk/component/Sf/ac/Qhi/Qhi;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Sf/ac/Qhi/Qhi;->Qhi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v1, "times"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/lG$3$1;->Qhi:Lcom/bytedance/sdk/component/Sf/ac/Qhi/Qhi;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Sf/ac/Qhi/Qhi;->cJ()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 115
    const-string v1, "runMaxTime"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/lG$3$1;->Qhi:Lcom/bytedance/sdk/component/Sf/ac/Qhi/Qhi;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Sf/ac/Qhi/Qhi;->Tgh()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 116
    const-string v1, "waitMaxTime"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/lG$3$1;->Qhi:Lcom/bytedance/sdk/component/Sf/ac/Qhi/Qhi;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Sf/ac/Qhi/Qhi;->fl()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 117
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/lG$3$1;->Qhi:Lcom/bytedance/sdk/component/Sf/ac/Qhi/Qhi;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Sf/ac/Qhi/Qhi;->cJ()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/lG$3$1;->Qhi:Lcom/bytedance/sdk/component/Sf/ac/Qhi/Qhi;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Sf/ac/Qhi/Qhi;->cJ()I

    move-result v1

    .line 118
    :goto_0
    const-string v2, "avgRunTime"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/utils/lG$3$1;->Qhi:Lcom/bytedance/sdk/component/Sf/ac/Qhi/Qhi;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/Sf/ac/Qhi/Qhi;->CJ()J

    move-result-wide v3

    int-to-long v5, v1

    div-long/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 119
    const-string v1, "avgWaitTime"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/lG$3$1;->Qhi:Lcom/bytedance/sdk/component/Sf/ac/Qhi/Qhi;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Sf/ac/Qhi/Qhi;->ac()J

    move-result-wide v2

    div-long/2addr v2, v5

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 120
    const-string v1, "poolType"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/lG$3$1;->cJ:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Sf/ac/ROR;->cJ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 122
    const-string v2, "ThreadUtils"

    const-string v3, "run: "

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->cJ()Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object v1

    const-string v2, "pag_thread_pool_state"

    .line 125
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object v1

    .line 126
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object v0

    return-object v0
.end method
