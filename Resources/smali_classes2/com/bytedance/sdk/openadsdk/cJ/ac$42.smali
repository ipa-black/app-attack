.class final Lcom/bytedance/sdk/openadsdk/cJ/ac$42;
.super Ljava/lang/Object;
.source "AdEventManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Ljava/lang/String;

.field final synthetic Qhi:Ljava/lang/String;

.field final synthetic ROR:Ljava/lang/String;

.field final synthetic Sf:J

.field final synthetic Tgh:I

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field final synthetic cJ:Z

.field final synthetic fl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0

    .line 1677
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$42;->Qhi:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$42;->cJ:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$42;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$42;->CJ:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$42;->fl:Ljava/lang/String;

    iput p6, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$42;->Tgh:I

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$42;->ROR:Ljava/lang/String;

    iput-wide p8, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$42;->Sf:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()Lorg/json/JSONObject;
    .locals 9

    .line 1680
    const-string v0, "error_msg"

    const-string v1, "error_code"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1681
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1683
    :try_start_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$42;->Qhi:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x5fc5e195

    const/4 v7, 0x1

    if-eq v5, v6, :cond_1

    const/16 v6, 0xc23

    if-eq v5, v6, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, "ad"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v7

    goto :goto_1

    :cond_1
    const-string v5, "endcard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, -0x1

    :goto_1
    const-string v5, "md5"

    const-string v6, "id"

    const-string v8, "url"

    if-eqz v4, :cond_4

    if-eq v4, v7, :cond_3

    goto :goto_2

    .line 1702
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$42;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->es()Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1704
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;->iMK()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v8, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1705
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;->fl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1706
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;->pA()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 1685
    :cond_4
    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$42;->cJ:Z

    if-eqz v4, :cond_5

    .line 1686
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$42;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->wv()Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1688
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->ac()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v8, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1689
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->Qhi()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1690
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->cJ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 1693
    :cond_5
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$42;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->af()Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1695
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->ac()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v8, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1696
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->Qhi()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1697
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->cJ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1710
    :cond_6
    :goto_2
    const-string v4, "ugen_status"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$42;->CJ:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1711
    const-string v4, "from"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$42;->fl:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1712
    const-string v4, "ugen_scene"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$42;->Qhi:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1713
    const-string v4, "fail"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$42;->CJ:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1714
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$42;->Tgh:I

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1715
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$42;->ROR:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1718
    :cond_7
    const-string v4, "duration"

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$42;->Sf:J

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v4

    const/16 v5, 0x85

    .line 1724
    :try_start_2
    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1725
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "send template error "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1729
    :catchall_1
    :goto_3
    :try_start_3
    const-string v0, "ad_extra_data"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    return-object v2
.end method
