.class Lcom/bytedance/sdk/openadsdk/cJ/zc$1;
.super Ljava/lang/Object;
.source "LandingPageLog.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:J

.field final synthetic Qhi:Lorg/json/JSONObject;

.field final synthetic ac:I

.field final synthetic cJ:Ljava/lang/String;

.field final synthetic fl:Lcom/bytedance/sdk/openadsdk/cJ/zc;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/cJ/zc;Lorg/json/JSONObject;Ljava/lang/String;IJ)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$1;->fl:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$1;->Qhi:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$1;->cJ:Ljava/lang/String;

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$1;->ac:I

    iput-wide p5, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$1;->CJ:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()Lorg/json/JSONObject;
    .locals 6

    .line 628
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$1;->Qhi:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 630
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$1;->fl:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/zc;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    .line 631
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$1;->Qhi:Lorg/json/JSONObject;

    const-string v3, "is_playable"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 632
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$1;->Qhi:Lorg/json/JSONObject;

    const-string v3, "usecache"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$1;->fl:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/zc;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 633
    const-string v0, "load_finish"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$1;->cJ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "load_fail"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$1;->cJ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$1;->Qhi:Lorg/json/JSONObject;

    const-string v2, "playable_has_show"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$1;->ac:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    :catch_0
    :cond_1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 640
    :try_start_2
    const-string v1, "ad_extra_data"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$1;->Qhi:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 641
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc$1;->CJ:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    .line 642
    const-string v3, "duration"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_2
    move-object v1, v0

    :catch_2
    :cond_3
    return-object v1
.end method
