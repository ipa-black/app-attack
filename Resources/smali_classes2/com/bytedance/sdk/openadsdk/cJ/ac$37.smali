.class final Lcom/bytedance/sdk/openadsdk/cJ/ac$37;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "AdEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Z

.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field final synthetic ROR:J

.field final synthetic Sf:Ljava/lang/String;

.field final synthetic Tgh:J

.field final synthetic ac:Ljava/lang/String;

.field final synthetic cJ:Lorg/json/JSONObject;

.field final synthetic fl:Ljava/lang/String;

.field final synthetic hm:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lorg/json/JSONObject;Ljava/lang/String;ZLjava/lang/String;JJLjava/lang/String;J)V
    .locals 0

    .line 1320
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->cJ:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->ac:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->CJ:Z

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->fl:Ljava/lang/String;

    iput-wide p7, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->Tgh:J

    iput-wide p9, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->ROR:J

    iput-object p11, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->Sf:Ljava/lang/String;

    iput-wide p12, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->hm:J

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1323
    const-string v0, "ad_extra_data"

    const-string v1, "click"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->oU()Ljava/lang/String;

    move-result-object v2

    .line 1324
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->cJ:Lorg/json/JSONObject;

    if-eqz v3, :cond_a

    .line 1325
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1327
    :try_start_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->cJ:Lorg/json/JSONObject;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1328
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1329
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1331
    :cond_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->ac:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1332
    const-string v4, "device"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->fl(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1334
    :cond_1
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->ac:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 1335
    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->CJ:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "click_scence"

    if-eqz v4, :cond_2

    .line 1336
    :try_start_1
    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 1337
    :cond_2
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x3

    .line 1338
    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1342
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->cJ:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1343
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->cJ:Lorg/json/JSONObject;

    const-string v4, "tag"

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->fl:Ljava/lang/String;

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1345
    const-string v0, "agg_request_type"

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 1346
    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->CJ:Z

    const/4 v6, 0x2

    if-eqz v4, :cond_4

    if-ne v0, v6, :cond_4

    .line 1347
    const-string v4, "app_log_url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1349
    :cond_4
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->ac:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_8

    .line 1350
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/bxS;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 1351
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->cJ:Lorg/json/JSONObject;

    const-string v7, "log_extra"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    long-to-double v7, v7

    .line 1353
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJ(Ljava/lang/String;)D

    move-result-wide v9

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    .line 1354
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->cJ:Lorg/json/JSONObject;

    const-string v8, "show_time"

    const/4 v9, 0x0

    cmpl-float v10, v1, v9

    if-lez v10, :cond_5

    goto :goto_1

    :cond_5
    move v1, v9

    :goto_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1355
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/zc;->Qhi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1356
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1357
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->CJ:Z

    if-eqz v1, :cond_7

    if-ne v0, v6, :cond_7

    .line 1358
    const-string v0, "click_tracking_url"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1360
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1361
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v4, v3, :cond_6

    .line 1362
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1364
    :cond_6
    invoke-static {v1, v5}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi;->Qhi(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->Tgh:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v6, v1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/fl;->Qhi(Ljava/util/List;ILjava/lang/String;)V

    goto :goto_4

    .line 1367
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_a

    .line 1368
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->NBs()Ljava/util/List;

    move-result-object v0

    .line 1369
    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi;->Qhi(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HLI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v6, v1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/fl;->Qhi(Ljava/util/List;ILjava/lang/String;)V

    goto :goto_4

    .line 1373
    :cond_8
    const-string v1, "show"

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->ac:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1374
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/zc;->Qhi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1375
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1376
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->CJ:Z

    if-eqz v1, :cond_a

    if-ne v0, v6, :cond_a

    .line 1377
    const-string v0, "show_tracking_url"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1379
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1380
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v4, v3, :cond_9

    .line 1381
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1383
    :cond_9
    invoke-static {v1, v5}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi;->Qhi(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->Tgh:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/fl;->Qhi(Ljava/util/List;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1391
    :catch_0
    :cond_a
    :goto_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->ROR:J

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {v0, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;-><init>(JLcom/bytedance/sdk/openadsdk/core/model/tP;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->Sf:Ljava/lang/String;

    .line 1392
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->CJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->fl:Ljava/lang/String;

    .line 1393
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->ac:Ljava/lang/String;

    .line 1394
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;

    move-result-object v0

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->Tgh:J

    .line 1395
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->fl(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;

    move-result-object v0

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->hm:J

    .line 1396
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->Tgh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;

    move-result-object v0

    .line 1397
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->cJ:Lorg/json/JSONObject;

    .line 1398
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->Qhi(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 1399
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->DS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->Sf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$37;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 1401
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->jWV()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->ROR(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;

    move-result-object v0

    const/4 v1, 0x0

    .line 1402
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi$Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/cJ/Qhi;)V

    return-void
.end method
