.class final Lcom/bytedance/sdk/openadsdk/cJ/ac$4;
.super Ljava/lang/Object;
.source "AdEventManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILjava/lang/String;JZIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Z

.field final synthetic Qhi:I

.field final synthetic ROR:Ljava/lang/String;

.field final synthetic Tgh:J

.field final synthetic ac:J

.field final synthetic cJ:Ljava/lang/String;

.field final synthetic fl:I


# direct methods
.method constructor <init>(ILjava/lang/String;JZIJLjava/lang/String;)V
    .locals 0

    .line 513
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$4;->Qhi:I

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$4;->cJ:Ljava/lang/String;

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$4;->ac:J

    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$4;->CJ:Z

    iput p6, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$4;->fl:I

    iput-wide p7, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$4;->Tgh:J

    iput-object p9, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$4;->ROR:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()Lorg/json/JSONObject;
    .locals 5

    .line 516
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 517
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 519
    :try_start_0
    const-string v2, "invisible_scene"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$4;->Qhi:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 520
    const-string v2, "arbi_current_url"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$4;->cJ:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 521
    const-string v2, "loading_visible_time"

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$4;->ac:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 522
    const-string v2, "arbi_trigger_start"

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$4;->CJ:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 523
    const-string v2, "arbi_convert_count"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$4;->fl:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 524
    const-string v2, "loading_start_timestamp"

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$4;->Tgh:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 525
    const-string v2, "ad_extra_data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 527
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/component/utils/ABk;->cJ(Ljava/lang/String;)V

    .line 529
    :goto_0
    const-string v2, "-->onArbitrageLoading"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$4;->ROR:Ljava/lang/String;

    filled-new-array {v2, v0, v3}, [Ljava/lang/Object;

    return-object v1
.end method
