.class Lcom/bytedance/sdk/openadsdk/ROR/cJ$1;
.super Ljava/lang/Object;
.source "ImageLoaderLogListenerWrapper.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Gm/cJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/ROR/cJ;->Qhi(Lcom/bytedance/sdk/component/fl/zc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Lcom/bytedance/sdk/openadsdk/ROR/cJ;

.field final synthetic Qhi:J

.field final synthetic ac:I

.field final synthetic cJ:I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/ROR/cJ;JII)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ROR/cJ$1;->CJ:Lcom/bytedance/sdk/openadsdk/ROR/cJ;

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/ROR/cJ$1;->Qhi:J

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/ROR/cJ$1;->cJ:I

    iput p5, p0, Lcom/bytedance/sdk/openadsdk/ROR/cJ$1;->ac:I

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

    .line 52
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 53
    const-string v1, "duration"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/ROR/cJ$1;->Qhi:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 54
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ROR/cJ$1;->CJ:Lcom/bytedance/sdk/openadsdk/ROR/cJ;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/ROR/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/ROR/cJ;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v1, "preload_size"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/ROR/cJ$1;->cJ:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    const-string v1, "local_cache"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/ROR/cJ$1;->ac:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ROR/cJ$1;->CJ:Lcom/bytedance/sdk/openadsdk/ROR/cJ;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/ROR/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/ROR/cJ;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->gga()I

    move-result v1

    const-string v2, "image_mode"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 58
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->cJ()Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object v1

    const-string v2, "load_image_success"

    .line 59
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ROR/cJ$1;->CJ:Lcom/bytedance/sdk/openadsdk/ROR/cJ;

    .line 60
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/ROR/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/ROR/cJ;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->eN()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->Qhi(I)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object v1

    .line 61
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object v0

    return-object v0
.end method
