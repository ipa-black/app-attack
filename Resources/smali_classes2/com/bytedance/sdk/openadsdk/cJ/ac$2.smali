.class final Lcom/bytedance/sdk/openadsdk/cJ/ac$2;
.super Ljava/lang/Object;
.source "AdEventManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/Jma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field final synthetic Qhi:J

.field final synthetic ac:Ljava/lang/String;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/utils/Jma;


# direct methods
.method constructor <init>(JLcom/bytedance/sdk/openadsdk/utils/Jma;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 0

    .line 469
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$2;->Qhi:J

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$2;->ac:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$2;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()Lorg/json/JSONObject;
    .locals 5

    .line 472
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 473
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 475
    :try_start_0
    const-string v2, "click_stay_time"

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$2;->Qhi:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 476
    const-string v2, "click_time"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    iget-wide v3, v3, Lcom/bytedance/sdk/openadsdk/utils/Jma;->Qhi:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 477
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$2;->ac:Ljava/lang/String;

    const-string v3, "open_ad"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 478
    const-string v2, "is_icon_only"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$2;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->czB()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 480
    :cond_0
    const-string v2, "ad_extra_data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v1
.end method
