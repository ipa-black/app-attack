.class Lcom/bytedance/sdk/openadsdk/CJ/MQ$3;
.super Ljava/lang/Object;
.source "FeatureCaculateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Ljava/lang/String;

.field final synthetic Qhi:Ljava/lang/String;

.field final synthetic ac:Ljava/lang/String;

.field final synthetic cJ:Lorg/json/JSONObject;

.field final synthetic fl:Lcom/bytedance/sdk/openadsdk/CJ/MQ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/CJ/MQ;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$3;->fl:Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$3;->Qhi:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$3;->cJ:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$3;->ac:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$3;->CJ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$3;->Qhi:Ljava/lang/String;

    .line 177
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$3;->cJ:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 178
    const-string v2, "ad_extra_data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "play_time"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$3;->fl:Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$3;->ac:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/CJ/MQ$3;->CJ:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/CJ/MQ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
