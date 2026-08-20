.class final Lcom/bytedance/sdk/openadsdk/core/ROR/Tgh$2;
.super Ljava/lang/Object;
.source "ViewabilityManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Gm/cJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ROR/Tgh;->Qhi(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/Tgh$2;->Qhi:Ljava/util/Map;

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

    .line 150
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->cJ()Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object v0

    const-string v1, "OMSDK"

    .line 151
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/Tgh$2;->Qhi:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 152
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object v0

    return-object v0
.end method
