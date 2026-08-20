.class Lcom/bytedance/sdk/openadsdk/cJ/ac$46$1;
.super Ljava/lang/Object;
.source "AdEventManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$46;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/cJ/ac$46;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$46;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()Lorg/json/JSONObject;
    .locals 9

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$46;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 333
    const-string v0, "none"

    .line 334
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Ura()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$46;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Hy()I

    move-result v0

    .line 336
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi/Qhi;->Qhi(Landroid/app/Application;)Lcom/bytedance/sdk/openadsdk/core/fl/Qhi/Qhi;

    move-result-object v1

    .line 337
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$46;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->ac:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->Qhi()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi/Qhi;->Qhi(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v0

    .line 339
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :try_start_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$46;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->fl:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v3, "ad_extra_data"

    const-string v4, "au_show"

    const-string v5, "video_skip_result"

    const-string v6, "real_interaction_method"

    const-string v7, "interaction_method"

    if-eqz v2, :cond_1

    .line 341
    :try_start_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$46;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->fl:Lorg/json/JSONObject;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$46;

    iget-object v8, v8, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HzH()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 342
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$46;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->fl:Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$46;

    iget-object v7, v7, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hpZ()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 343
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$46;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->fl:Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$46;

    iget-object v7, v7, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Hy()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->ABk(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 344
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$46;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->fl:Lorg/json/JSONObject;

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$46;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->fl:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 347
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 348
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$46;

    iget-object v8, v8, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HzH()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 349
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$46;

    iget-object v7, v7, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hpZ()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 350
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$46;

    iget-object v7, v7, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Hy()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->ABk(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 351
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    :goto_0
    const-string v0, "log_extra"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$46;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->EGK()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-double v2, v2

    .line 356
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$46;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->yBk()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    .line 357
    const-string v2, "show_time"

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    const-string v0, "ua_policy"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$46;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->zn()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$46;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Eh()Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v3, "TTAD.AdEvent"

    const-string v4, "ttdsp_price"

    if-nez v2, :cond_3

    .line 361
    :try_start_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-nez v2, :cond_3

    .line 363
    :try_start_4
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const v2, 0x47c35000    # 100000.0f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 364
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    .line 366
    :try_start_5
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 367
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$46;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Gy()Ljava/util/Map;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-eqz v0, :cond_4

    .line 373
    :try_start_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$46;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Gy()Ljava/util/Map;

    move-result-object v0

    .line 374
    const-string v2, "sdk_bidding_type"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 376
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 377
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46$1;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac$46;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/cJ/ac$46;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Gy()Ljava/util/Map;

    move-result-object v0

    const-string v2, "price"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 379
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide v7, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 384
    :try_start_7
    const-string v2, "client bidding price error: "

    invoke-static {v3, v2, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catch_0
    const/4 v1, 0x0

    :catch_1
    :cond_4
    :goto_3
    return-object v1
.end method
