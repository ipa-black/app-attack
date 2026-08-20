.class Lcom/bytedance/sdk/openadsdk/cJ/ac$13$1;
.super Ljava/lang/Object;
.source "AdEventManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$13;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/cJ/ac$13;)V
    .locals 0

    .line 712
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()Lorg/json/JSONObject;
    .locals 6

    .line 715
    const-string v0, "duration"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 717
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$13;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->fl:Lcom/bytedance/sdk/openadsdk/core/model/Gm;

    if-eqz v2, :cond_5

    .line 718
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$13;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->fl:Lcom/bytedance/sdk/openadsdk/core/model/Gm;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Gm;->Qhi()Lorg/json/JSONObject;

    move-result-object v2

    .line 719
    const-string v3, "is_valid"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$13;

    iget-boolean v4, v4, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->Tgh:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 720
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$13;

    iget v3, v3, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->ROR:I

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$13;

    iget v3, v3, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->ROR:I

    const/4 v4, 0x2

    if-gt v3, v4, :cond_0

    .line 721
    const-string v3, "user_behavior_type"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$13;

    iget v4, v4, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->ROR:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 723
    :cond_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$13;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->Sf:Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 724
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$13;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->Sf:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 726
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$13;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->Sf:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 728
    :cond_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$13;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->Sf:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 729
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 730
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 731
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 735
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 738
    :cond_3
    const-string v0, "interaction_method"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$13;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HzH()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 739
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$13;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->ac:Ljava/lang/String;

    const-string v3, "open_ad"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 740
    const-string v0, "is_icon_only"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$13;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->czB()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 742
    :cond_4
    const-string v0, "ad_extra_data"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 744
    :cond_5
    const-string v0, "log_extra"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$13;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->EGK()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 745
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-double v2, v2

    .line 746
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$13;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->yBk()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    .line 747
    const-string v2, "show_time"

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_6

    goto :goto_1

    :cond_6
    move v0, v3

    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 748
    const-string v0, "ua_policy"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$13$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$13;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/cJ/ac$13;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->zn()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method
