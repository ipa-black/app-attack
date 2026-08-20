.class final Lcom/bytedance/sdk/openadsdk/cJ/ac$41;
.super Ljava/lang/Object;
.source "AdEventManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ZZZZILjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Z

.field final synthetic Qhi:Z

.field final synthetic Tgh:Ljava/util/Map;

.field final synthetic ac:Z

.field final synthetic cJ:Z

.field final synthetic fl:I


# direct methods
.method constructor <init>(ZZZZILjava/util/Map;)V
    .locals 0

    .line 1652
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$41;->Qhi:Z

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$41;->cJ:Z

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$41;->ac:Z

    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$41;->CJ:Z

    iput p5, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$41;->fl:I

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$41;->Tgh:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()Lorg/json/JSONObject;
    .locals 5

    .line 1655
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1657
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1658
    const-string v2, "isSkip"

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$41;->Qhi:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1659
    const-string v2, "force"

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$41;->cJ:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1660
    const-string v2, "isFromLandingPage"

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$41;->ac:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1661
    const-string v2, "finishing"

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$41;->CJ:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1662
    const-string v2, "from"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$41;->fl:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1663
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$41;->Tgh:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 1664
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1665
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1668
    :cond_0
    const-string v2, "ad_extra_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method
