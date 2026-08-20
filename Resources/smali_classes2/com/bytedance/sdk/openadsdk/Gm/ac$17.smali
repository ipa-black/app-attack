.class final Lcom/bytedance/sdk/openadsdk/Gm/ac$17;
.super Ljava/lang/Object;
.source "StatsLogManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Gm/cJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;

.field final synthetic cJ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Gm/ac$17;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/Gm/ac$17;->cJ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogStats()Lcom/bytedance/sdk/openadsdk/Gm/Qhi/ac;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Gm/ac$17;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->ac()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Gm/ac$17;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->CJ()Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ac;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 116
    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ac;->Qhi(Lorg/json/JSONObject;)V

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Gm/ac$17;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->eN()I

    move-result v1

    .line 119
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->cJ()Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/Gm/ac$17;->cJ:Ljava/lang/String;

    .line 120
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object v2

    .line 121
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->Qhi(I)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object v1

    .line 122
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object v0

    return-object v0
.end method
