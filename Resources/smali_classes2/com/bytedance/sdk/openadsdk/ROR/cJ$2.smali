.class Lcom/bytedance/sdk/openadsdk/ROR/cJ$2;
.super Ljava/lang/Object;
.source "ImageLoaderLogListenerWrapper.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Gm/cJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/ROR/cJ;->Qhi(ILjava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Lcom/bytedance/sdk/openadsdk/ROR/cJ;

.field final synthetic Qhi:J

.field final synthetic ac:Ljava/lang/String;

.field final synthetic cJ:I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/ROR/cJ;JILjava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ROR/cJ$2;->CJ:Lcom/bytedance/sdk/openadsdk/ROR/cJ;

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/ROR/cJ$2;->Qhi:J

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/ROR/cJ$2;->cJ:I

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/ROR/cJ$2;->ac:Ljava/lang/String;

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

    .line 81
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 82
    const-string v1, "duration"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/ROR/cJ$2;->Qhi:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 83
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ROR/cJ$2;->CJ:Lcom/bytedance/sdk/openadsdk/ROR/cJ;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/ROR/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/ROR/cJ;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v1, "error_code"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/ROR/cJ$2;->cJ:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 85
    const-string v1, "error_message"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ROR/cJ$2;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ROR/cJ$2;->CJ:Lcom/bytedance/sdk/openadsdk/ROR/cJ;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/ROR/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/ROR/cJ;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->gga()I

    move-result v1

    const-string v2, "image_mode"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 87
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->cJ()Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object v1

    const-string v2, "load_image_error"

    .line 88
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ROR/cJ$2;->CJ:Lcom/bytedance/sdk/openadsdk/ROR/cJ;

    .line 89
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/ROR/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/ROR/cJ;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->eN()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->Qhi(I)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object v1

    .line 90
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object v0

    return-object v0
.end method
