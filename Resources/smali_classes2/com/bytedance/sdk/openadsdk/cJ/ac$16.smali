.class final Lcom/bytedance/sdk/openadsdk/cJ/ac$16;
.super Ljava/lang/Object;
.source "AdEventManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;JILorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

.field final synthetic Qhi:J

.field final synthetic ac:Ljava/lang/String;

.field final synthetic cJ:I

.field final synthetic fl:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(JILjava/lang/String;Lcom/bytedance/sdk/openadsdk/cJ/Sf;Lorg/json/JSONObject;)V
    .locals 0

    .line 835
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$16;->Qhi:J

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$16;->cJ:I

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$16;->ac:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$16;->CJ:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$16;->fl:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()Lorg/json/JSONObject;
    .locals 4

    .line 838
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 840
    :try_start_0
    const-string v1, "duration"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$16;->Qhi:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 841
    const-string v1, "percent"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$16;->cJ:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 843
    const-string v1, "feed_break"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$16;->ac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "feed_over"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$16;->ac:Ljava/lang/String;

    .line 844
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$16;->CJ:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    if-eqz v1, :cond_1

    .line 845
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$16;->fl:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/Sf;->Qhi(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 847
    :cond_1
    const-string v1, "ad_extra_data"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$16;->fl:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method
