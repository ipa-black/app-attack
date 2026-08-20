.class final Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi$4;
.super Ljava/lang/Object;
.source "AdEventManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi;->Qhi(IIIILcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic CJ:I

.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field final synthetic Tgh:I

.field final synthetic ac:I

.field final synthetic cJ:I

.field final synthetic fl:I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;IIIII)V
    .locals 0

    .line 1596
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi$4;->cJ:I

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi$4;->ac:I

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi$4;->CJ:I

    iput p5, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi$4;->fl:I

    iput p6, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi$4;->Tgh:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()Lorg/json/JSONObject;
    .locals 5

    .line 1599
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1601
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1602
    const-string v2, "next_url"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->YB()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1603
    const-string v2, "channel_name"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1604
    const-string v2, "preload_status"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi$4;->cJ:I

    if-gtz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1605
    const-string v2, "first_page"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi$4;->ac:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1606
    const-string v2, "preload_h5_type"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->jN()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1607
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1608
    const-string v3, "channel_response"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi$4;->cJ:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1609
    const-string v3, "failResourceCount"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi$4;->CJ:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1610
    const-string v3, "successCount"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi$4;->fl:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1611
    const-string v3, "failCount"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$Qhi$4;->Tgh:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1612
    const-string v3, "resource_info"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1613
    const-string v2, "ad_extra_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 1615
    const-string v2, "TTAD.AdEvent"

    const-string v3, "Gecko.localResHitRate error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v0
.end method
