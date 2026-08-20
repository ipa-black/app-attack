.class public Lcom/bytedance/sdk/openadsdk/core/lB;
.super Ljava/lang/Object;
.source "WebHelper.java"


# static fields
.field private static Qhi:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static Qhi(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;ILcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/bytedance/sdk/openadsdk/api/PangleAd;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    .line 345
    invoke-static/range {v0 .. v8}, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;ILcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/bytedance/sdk/openadsdk/api/PangleAd;Ljava/lang/String;ZZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static Qhi(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;ILcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/bytedance/sdk/openadsdk/api/PangleAd;Ljava/lang/String;ZZ)Landroid/content/Intent;
    .locals 1

    if-nez p8, :cond_2

    .line 353
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p4, :cond_0

    if-eqz p5, :cond_2

    .line 354
    :cond_0
    new-instance p8, Landroid/content/Intent;

    const-class v0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;

    invoke-direct {p8, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 355
    const-string v0, "ad_pending_download"

    invoke-static {p2, p7}, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Z)Z

    move-result p7

    invoke-virtual {p8, v0, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 356
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object p7

    .line 358
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 361
    const-string p1, "?"

    invoke-virtual {p7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 362
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p7, "&orientation=portrait"

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 364
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p7, "?orientation=portrait"

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    if-nez p8, :cond_4

    .line 367
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ip()I

    move-result p7

    const/4 p8, 0x3

    if-ne p7, p8, :cond_4

    .line 368
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hpZ()I

    move-result p7

    const/4 p8, 0x2

    if-eq p7, p8, :cond_3

    .line 369
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hpZ()I

    move-result p7

    const/4 p8, 0x1

    if-ne p7, p8, :cond_4

    sget-boolean p7, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi:Z

    if-eqz p7, :cond_4

    .line 370
    :cond_3
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->GN()Z

    move-result p7

    if-nez p7, :cond_4

    .line 371
    new-instance p8, Landroid/content/Intent;

    const-class p7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;

    invoke-direct {p8, p0, p7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 373
    :cond_4
    new-instance p8, Landroid/content/Intent;

    const-class p7, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;

    invoke-direct {p8, p0, p7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 375
    :cond_5
    :goto_0
    const-string p7, "url"

    invoke-virtual {p8, p7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string p1, "gecko_id"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ri()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p8, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    const-string p1, "web_title"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dVA()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p8, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const-string p1, "sdk_version"

    const/16 p7, 0x183e

    invoke-virtual {p8, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    const-string p1, "adid"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HLI()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p8, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    const-string p1, "log_extra"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->EGK()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p8, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dIT()Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    move-result-object p1

    const/4 p7, 0x0

    if-nez p1, :cond_6

    move-object p1, p7

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dIT()Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi()Ljava/lang/String;

    move-result-object p1

    .line 382
    :goto_1
    const-string v0, "icon_url"

    invoke-virtual {p8, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const-string p1, "event_tag"

    invoke-virtual {p8, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    const-string p1, "source"

    invoke-virtual {p8, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 385
    instance-of p0, p0, Landroid/app/Activity;

    if-nez p0, :cond_7

    const/high16 p0, 0x10000000

    .line 386
    invoke-virtual {p8, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 389
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/cJ;->ac()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 390
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->mZ()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "multi_process_materialmeta"

    invoke-virtual {p8, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 392
    :cond_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Dww;->Qhi()Lcom/bytedance/sdk/openadsdk/core/Dww;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dww;->Tgh()V

    .line 393
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Dww;->Qhi()Lcom/bytedance/sdk/openadsdk/core/Dww;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/Dww;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 396
    :goto_2
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->gga()I

    move-result p0

    const/4 p1, 0x5

    if-eq p0, p1, :cond_9

    .line 397
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->gga()I

    move-result p0

    const/16 p1, 0xf

    if-eq p0, p1, :cond_9

    .line 398
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->gga()I

    move-result p0

    const/16 p1, 0x32

    if-ne p0, p1, :cond_e

    .line 400
    :cond_9
    const-string p0, "multi_process_data"

    if-eqz p4, :cond_c

    .line 401
    instance-of p1, p4, Lcom/bytedance/sdk/openadsdk/multipro/cJ/Qhi$Qhi;

    if-eqz p1, :cond_a

    .line 402
    check-cast p4, Lcom/bytedance/sdk/openadsdk/multipro/cJ/Qhi$Qhi;

    invoke-interface {p4}, Lcom/bytedance/sdk/openadsdk/multipro/cJ/Qhi$Qhi;->Tgh()Lcom/bytedance/sdk/openadsdk/multipro/cJ/Qhi;

    move-result-object p7

    goto :goto_3

    .line 403
    :cond_a
    instance-of p1, p4, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/Qhi;

    if-eqz p1, :cond_b

    .line 404
    check-cast p4, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/Qhi;

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/Qhi;->cJ()Lcom/bytedance/sdk/openadsdk/multipro/cJ/Qhi;

    move-result-object p7

    :cond_b
    :goto_3
    if-eqz p7, :cond_c

    .line 407
    invoke-virtual {p7}, Lcom/bytedance/sdk/openadsdk/multipro/cJ/Qhi;->Qhi()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p8, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    :cond_c
    instance-of p1, p5, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/ac;

    if-eqz p1, :cond_d

    .line 411
    check-cast p5, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/ac;

    invoke-virtual {p5}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/ac;->ac()Lcom/bytedance/sdk/openadsdk/multipro/cJ/Qhi;

    move-result-object p7

    if-eqz p7, :cond_d

    .line 413
    invoke-virtual {p7}, Lcom/bytedance/sdk/openadsdk/multipro/cJ/Qhi;->Qhi()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p8, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_d
    if-eqz p7, :cond_e

    .line 417
    const-string p0, "video_is_auto_play"

    iget-boolean p1, p7, Lcom/bytedance/sdk/openadsdk/multipro/cJ/Qhi;->CJ:Z

    invoke-virtual {p8, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 418
    invoke-static {}, Lcom/bytedance/sdk/component/utils/ABk;->CJ()Z

    move-result p0

    if-eqz p0, :cond_e

    .line 419
    invoke-virtual {p7}, Lcom/bytedance/sdk/openadsdk/multipro/cJ/Qhi;->Qhi()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    :cond_e
    return-object p8
.end method

.method private static Qhi(ILcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;
    .locals 2

    .line 67
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;-><init>()V

    .line 68
    sget-object v1, Lcom/bytedance/sdk/openadsdk/cJ/cJ$Qhi;->Qhi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->Qhi(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 70
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->cJ(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->Qhi(I)V

    const/4 p0, 0x0

    .line 72
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->Qhi(Z)V

    .line 73
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ip()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;->cJ(I)V

    return-object v0
.end method

.method private static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->IC()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->hm()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 187
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->YB()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/zc;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;
    .locals 1

    .line 176
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/zc;->cJ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/zc;->cJ()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 179
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static Qhi(Z)V
    .locals 0

    .line 62
    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi:Z

    return-void
.end method

.method public static Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;ILcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/bytedance/sdk/openadsdk/api/PangleAd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;ZI)Z
    .locals 13

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p5

    move/from16 v0, p8

    const/4 v1, -0x1

    .line 98
    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi(ILcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;)V

    const/4 v2, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_c

    if-eqz v7, :cond_c

    move v10, p2

    if-ne v10, v1, :cond_0

    goto/16 :goto_2

    .line 106
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ReL()Lcom/bytedance/sdk/openadsdk/core/model/zc;

    move-result-object v11

    .line 107
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 109
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->nR()I

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    move v2, v9

    .line 110
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "dpl_probability_jump"

    invoke-interface {v12, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v0, :cond_3

    .line 113
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->IC()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    const-string v1, "dsp_click_type"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v11, :cond_a

    .line 118
    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/zc;->Qhi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p5

    move/from16 v4, p7

    move-object v5, v12

    .line 119
    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;ILjava/lang/String;ZLjava/util/Map;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 120
    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi(ILcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;)V

    return v9

    .line 124
    :cond_4
    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/zc;->ac()I

    move-result v0

    const-string v2, "open_fallback_url"

    if-ne v0, v1, :cond_8

    .line 125
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->gga()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_8

    .line 126
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->gga()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_8

    if-eqz p6, :cond_7

    .line 129
    invoke-interface/range {p6 .. p6}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;->Qhi()Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_6

    .line 130
    invoke-interface/range {p6 .. p6}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;->fl()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 131
    invoke-static {p1, v8, v2, v12}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 132
    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi(ILcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;)V

    return v9

    .line 140
    :cond_5
    invoke-static {v11, p1}, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/zc;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi(ILcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;)V

    goto :goto_0

    .line 136
    :cond_6
    invoke-static {p1, v8, v2, v12}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 137
    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi(ILcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;)V

    return v9

    .line 148
    :cond_7
    invoke-static {v11, p1}, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/zc;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 150
    :cond_8
    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/zc;->ac()I

    move-result v0

    if-ne v0, v9, :cond_9

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/zc;->cJ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 151
    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/zc;->cJ()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 153
    :cond_9
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v0

    .line 156
    :goto_0
    invoke-static {p1, v8, v2, v12}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 159
    :cond_a
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v9, v0

    .line 161
    const-string v0, "url is\uff1a"

    filled-new-array {v0, v9}, [Ljava/lang/Object;

    .line 163
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->nR()I

    move-result v0

    if-nez v0, :cond_b

    .line 165
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "play.google.com/store"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 166
    const-string v0, "?id="

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi(ILcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;)V

    .line 168
    invoke-static {p0, v9, v0, v8, p1}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->Qhi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    return v0

    :cond_b
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p7

    move-object v7, v9

    .line 171
    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;ILcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/bytedance/sdk/openadsdk/api/PangleAd;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    return v0

    .line 102
    :cond_c
    :goto_2
    invoke-static {v9, p1}, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi(ILcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;)V

    return v2
.end method

.method public static Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;ILcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/bytedance/sdk/openadsdk/api/PangleAd;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 10

    move-object v8, p0

    move-object v2, p1

    .line 298
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 310
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi(ILcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/Gm/Qhi/cJ;)V

    return v9

    .line 299
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ip()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p0

    move-object/from16 v1, p7

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    .line 304
    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;ILcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/bytedance/sdk/openadsdk/api/PangleAd;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 305
    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/component/utils/cJ;->Qhi(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/cJ$Qhi;)Z

    .line 306
    sput-boolean v9, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi:Z

    const/4 v0, 0x1

    return v0

    .line 302
    :cond_3
    :goto_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/cJ/cJ$Qhi;->Qhi:Ljava/lang/String;

    move-object/from16 v1, p7

    invoke-static {p0, v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/MQ;->Qhi(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;ILjava/lang/String;ZLjava/util/Map;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/model/tP;",
            "I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 198
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ReL()Lcom/bytedance/sdk/openadsdk/core/model/zc;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 200
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/zc;->Qhi()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_1

    :cond_1
    if-nez p5, :cond_2

    .line 205
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 208
    :cond_2
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/zc;->Qhi()Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 210
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 213
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/js;->Sf(Landroid/content/Context;)Z

    move-result v2

    const-string v4, "open_url_app"

    const/high16 v5, 0x10000000

    const-string v6, "can_query_install"

    const/4 v7, 0x1

    if-eqz v2, :cond_8

    .line 214
    invoke-static {p0, v3}, Lcom/bytedance/sdk/openadsdk/utils/js;->cJ(Landroid/content/Context;Landroid/content/Intent;)Lcom/bytedance/sdk/openadsdk/utils/js$cJ;

    move-result-object v2

    .line 215
    iget v8, v2, Lcom/bytedance/sdk/openadsdk/utils/js$cJ;->cJ:I

    const-string v9, "intent"

    if-lez v8, :cond_7

    .line 217
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v8

    invoke-interface {v8}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Sf()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 218
    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V

    .line 221
    :cond_3
    instance-of v8, p0, Landroid/app/Activity;

    if-nez v8, :cond_4

    .line 222
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 225
    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p5, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget v5, v2, Lcom/bytedance/sdk/openadsdk/utils/js$cJ;->cJ:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v8, "matched_count"

    invoke-interface {p5, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v5, "url"

    invoke-interface {p5, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v1, v2, Lcom/bytedance/sdk/openadsdk/utils/js$cJ;->Qhi:Landroid/content/ComponentName;

    if-eqz v1, :cond_5

    .line 229
    iget-object v1, v2, Lcom/bytedance/sdk/openadsdk/utils/js$cJ;->Qhi:Landroid/content/ComponentName;

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 231
    :cond_5
    invoke-static {p1, p3, v4, p5}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 233
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 234
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cJ/ABk;->Qhi()Lcom/bytedance/sdk/openadsdk/cJ/ABk;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/bytedance/sdk/openadsdk/cJ/ABk;->Qhi(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/cJ/ABk;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lcom/bytedance/sdk/openadsdk/cJ/ABk;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V

    .line 235
    const-string v1, "dp_start_act_success"

    invoke-static {v1, p1, p3, p5}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :catch_0
    move-exception p5

    .line 241
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 243
    :try_start_1
    const-string v2, "exception"

    invoke-virtual {p5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, -0x4

    .line 251
    invoke-static {p1, p3, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 252
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Sf()Z

    move-result v1

    if-nez v1, :cond_6

    .line 253
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->YB()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;ILjava/lang/String;Z)Z

    .line 254
    const-string p0, "WebHelper"

    const-string p1, "openDetailPage() -> context.startActivity(intent) fail :"

    invoke-static {p0, p1, p5}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    return v0

    .line 260
    :cond_7
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 262
    :try_start_2
    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v9, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    invoke-virtual {p0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 p2, -0x3

    .line 269
    invoke-static {p1, p3, p2, p0}, Lcom/bytedance/sdk/openadsdk/core/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILorg/json/JSONObject;)V

    goto :goto_0

    .line 275
    :cond_8
    :try_start_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p2

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Sf()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 276
    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V

    .line 278
    :cond_9
    instance-of p2, p0, Landroid/app/Activity;

    if-nez p2, :cond_a

    .line 279
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 281
    :cond_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p5, v6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-static {p1, p3, v4, p5}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 284
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 285
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cJ/ABk;->Qhi()Lcom/bytedance/sdk/openadsdk/cJ/ABk;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/bytedance/sdk/openadsdk/cJ/ABk;->Qhi(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/cJ/ABk;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/bytedance/sdk/openadsdk/cJ/ABk;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v7

    :catchall_0
    :goto_0
    return v0

    :cond_b
    :goto_1
    if-nez v1, :cond_c

    const/4 p0, -0x1

    goto :goto_2

    :cond_c
    const/4 p0, -0x2

    :goto_2
    if-eqz v1, :cond_d

    .line 201
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/zc;->CJ()Lorg/json/JSONObject;

    move-result-object p2

    goto :goto_3

    :cond_d
    const/4 p2, 0x0

    :goto_3
    invoke-static {p1, p3, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILorg/json/JSONObject;)V

    return v0
.end method

.method public static Qhi(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;ILjava/lang/String;Z)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    move v7, p5

    .line 318
    :try_start_0
    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;ILcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/bytedance/sdk/openadsdk/api/PangleAd;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 319
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_2

    .line 430
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ip()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 433
    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static cJ(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;ILjava/lang/String;Z)Z
    .locals 9

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    move v7, p5

    .line 329
    :try_start_0
    invoke-static/range {v0 .. v8}, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;ILcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/bytedance/sdk/openadsdk/api/PangleAd;Ljava/lang/String;ZZ)Landroid/content/Intent;

    move-result-object p1

    .line 330
    instance-of p2, p0, Landroid/app/Activity;

    if-nez p2, :cond_0

    const/high16 p2, 0x10000000

    .line 331
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 333
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method
