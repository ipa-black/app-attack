.class final Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi$1;
.super Ljava/lang/Object;
.source "VideoEventManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Lorg/json/JSONObject;

.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

.field final synthetic cJ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/cJ/Sf;Lorg/json/JSONObject;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi$1;->cJ:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi$1;->ac:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi$1;->CJ:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()Lorg/json/JSONObject;
    .locals 3

    .line 561
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->ac()Lorg/json/JSONObject;

    move-result-object v0

    .line 562
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->CJ()Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ac;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 563
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->CJ()Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ac;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ac;->Qhi(Lorg/json/JSONObject;)V

    .line 565
    :cond_0
    const-string v1, "feed_play"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi$1;->cJ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "feed_over"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi$1;->cJ:Ljava/lang/String;

    .line 566
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "feed_break"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi$1;->cJ:Ljava/lang/String;

    .line 567
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi$1;->ac:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    if-eqz v1, :cond_2

    .line 568
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/Sf;->Qhi(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 570
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi$1;->CJ:Lorg/json/JSONObject;

    const-string v2, "ad_extra_data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    :catchall_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi$1;->CJ:Lorg/json/JSONObject;

    return-object v0
.end method
