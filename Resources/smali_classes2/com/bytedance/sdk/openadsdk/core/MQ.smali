.class public Lcom/bytedance/sdk/openadsdk/core/MQ;
.super Ljava/lang/Object;
.source "NetApiImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/tP;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/MQ$cJ;,
        Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/core/tP<",
        "Lcom/bytedance/sdk/openadsdk/cJ/Qhi;",
        ">;"
    }
.end annotation


# instance fields
.field private final Qhi:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi:Landroid/content/Context;

    return-void
.end method

.method private CJ(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1289
    const-string v1, "Content-Type"

    const-string v2, "application/json; charset=utf-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/MQ;->ac(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1291
    const-string p1, "Content-Encoding"

    const-string v1, "union_sdk_encode"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private CJ(Ljava/lang/String;)Z
    .locals 4

    .line 302
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/CJ/WAv;->Qhi()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 306
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/CJ/WAv;->Qhi(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 307
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/CJ/WAv;->cJ()Ljava/lang/String;

    move-result-object p1

    .line 308
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Ljava/lang/String;J)V

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/MQ;)Landroid/content/Context;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic Qhi(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 118
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/MQ;->cJ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private Qhi(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1275
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1278
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1279
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/FilterWord;

    .line 1280
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private static Qhi(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .line 1236
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Qhi(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1237
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/qMt;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/qMt;-><init>(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;)V

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptManager;->encryptType4(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/embedapplog/IDefaultEncrypt;)Lorg/json/JSONObject;

    move-result-object p0

    .line 1238
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/EBS;->Qhi(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 1243
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Qhi;->Qhi(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;)Lorg/json/JSONObject;
    .locals 4

    .line 1384
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1386
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v1

    .line 1388
    const-string v2, "personalized_ad"

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->MND()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1390
    const-string v1, "lmt"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->ac()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1392
    const-string v1, "coppa"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/hm;->WAv()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1393
    const-string v1, "gdpr"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/hm;->hm()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1394
    const-string v1, "is_gdpr_user"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->ip()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1395
    const-string v1, "ccpa"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/hm;->MQ()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p0, :cond_0

    .line 1397
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/bxS;->Qhi:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1398
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/bxS;->Qhi:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/bxS;

    if-eqz v1, :cond_0

    .line 1400
    const-string v2, "lastadomain"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/bxS;->cJ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1401
    const-string v2, "lastbundle"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/bxS;->ac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1402
    const-string v2, "lastclick"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/bxS;->CJ()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1403
    const-string v2, "lastskip"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/bxS;->fl()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1407
    :cond_0
    const-string v1, "keywords"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/hm;->zc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    const-string v1, "data"

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/MQ;->cJ(Lcom/bytedance/sdk/openadsdk/AdSlot;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/core/model/qMt;)Lorg/json/JSONObject;
    .locals 5

    .line 1487
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1489
    :try_start_0
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1490
    const-string v1, "adtype"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1493
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1494
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCreativeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1495
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1496
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1497
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1498
    const-string v2, "ad_id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1500
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCreativeId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1501
    const-string v2, "creative_id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCreativeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1503
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExt()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1504
    const-string v2, "ext"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1506
    :cond_3
    const-string v2, "preview_ads"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1510
    :cond_4
    const-string v1, "render_method"

    const-string v2, "accepted_size"

    const/4 v3, 0x1

    if-eqz p3, :cond_6

    .line 1511
    :try_start_1
    iget v4, p3, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->Sf:I

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1512
    iget v1, p3, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->Sf:I

    if-ne v1, v3, :cond_5

    .line 1513
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedHeight()I

    move-result v4

    invoke-direct {p0, v0, v2, v1, v4}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lorg/json/JSONObject;Ljava/lang/String;II)V

    goto :goto_0

    .line 1514
    :cond_5
    iget v1, p3, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->Sf:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_7

    .line 1515
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedHeight()F

    move-result v4

    invoke-direct {p0, v0, v2, v1, v4}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lorg/json/JSONObject;Ljava/lang/String;FF)V

    goto :goto_0

    .line 1518
    :cond_6
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1519
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedHeight()I

    move-result v4

    invoke-direct {p0, v0, v2, v1, v4}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lorg/json/JSONObject;Ljava/lang/String;II)V

    .line 1521
    :cond_7
    :goto_0
    const-string v1, "ptpl_ids"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/MQ;->cJ(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1522
    const-string v1, "ugen_ptpl_ids"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/MQ;->ac(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1523
    const-string v1, "pos"

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getPosition(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1524
    const-string v1, "is_support_dpl"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->isSupportDeepLink()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1525
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getNativeAdType()I

    move-result v1

    if-gtz v1, :cond_8

    const/4 v1, 0x5

    if-ne p2, v1, :cond_9

    .line 1526
    :cond_8
    const-string v1, "is_origin_ad"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_9
    if-eqz p3, :cond_a

    .line 1528
    iget-object v1, p3, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->ROR:Lorg/json/JSONObject;

    if-eqz v1, :cond_a

    .line 1529
    const-string v1, "session_params"

    iget-object v2, p3, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->ROR:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1531
    :cond_a
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdCount()I

    move-result v1

    if-gtz v1, :cond_b

    move v1, v3

    :cond_b
    const/4 v2, 0x3

    if-le v1, v2, :cond_c

    move v1, v2

    :cond_c
    const/4 v2, 0x7

    if-eq p2, v2, :cond_d

    const/16 v2, 0x8

    if-ne p2, v2, :cond_e

    :cond_d
    move v1, v3

    :cond_e
    if-eqz p3, :cond_f

    .line 1543
    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->fl:Lorg/json/JSONArray;

    if-eqz p3, :cond_f

    .line 1544
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdCount()I

    move-result v1

    .line 1546
    :cond_f
    const-string p3, "ad_count"

    invoke-virtual {v0, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-ne p2, v3, :cond_10

    .line 1548
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 1549
    const-string p3, "is_rotate_banner"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getIsRotateBanner()I

    move-result v1

    invoke-virtual {p2, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1550
    const-string p3, "rotate_time"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getRotateTime()I

    move-result v1

    invoke-virtual {p2, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1551
    const-string p3, "rotate_order"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getRotateOrder()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1552
    const-string p1, "banner"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_10
    return-object v0
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/qMt;I)Lorg/json/JSONObject;
    .locals 10
    .annotation runtime Lcom/pgl/ssdk/ces/out/DungeonFlag;
    .end annotation

    .line 191
    const-string v0, "app"

    const-string v1, "6.2.0.6"

    const-string v2, "ad_sdk_version"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 193
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    if-eqz p2, :cond_1

    .line 195
    iget-object v5, p2, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->Qhi:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, p2, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->Qhi:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/js;->CJ()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    const/4 v6, 0x7

    .line 196
    const-string v7, "req_type"

    if-ne p3, v6, :cond_2

    if-eqz p2, :cond_4

    .line 197
    :try_start_1
    iget v6, p2, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->cJ:I

    if-lez v6, :cond_4

    .line 198
    iget v6, p2, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->cJ:I

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :cond_2
    const/16 v6, 0x8

    if-ne p3, v6, :cond_3

    if-eqz p2, :cond_4

    .line 201
    iget v6, p2, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->ac:I

    if-lez v6, :cond_4

    .line 202
    iget v6, p2, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->ac:I

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :cond_3
    const/4 v6, 0x3

    if-ne p3, v6, :cond_4

    if-eqz p2, :cond_4

    .line 205
    iget v6, p2, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->CJ:I

    if-lez v6, :cond_4

    .line 206
    iget v6, p2, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->CJ:I

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 211
    :cond_4
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v6

    invoke-interface {v6}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->WAv()Ljava/lang/String;

    move-result-object v6

    .line 212
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v7

    invoke-interface {v7}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->qMt()Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    .line 214
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 215
    const-string v9, "version"

    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    const-string v6, "param"

    invoke-virtual {v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    const-string v6, "abtest"

    invoke-virtual {v4, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_5
    if-eqz p1, :cond_6

    .line 222
    :try_start_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBiddingTokens()Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 223
    const-string v6, "bidding_param"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBiddingTokens()Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v6

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object v6

    .line 225
    const-string v7, "waterfall_id"

    iget-wide v8, v6, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->PAe:J

    invoke-virtual {v4, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 226
    const-string v7, "waterfall_version"

    iget-object v6, v6, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->ip:Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    const-string v6, "link_id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getLinkId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    :cond_6
    const-string v6, "request_id"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Lorg/json/JSONObject;)V

    .line 233
    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    const-string v6, "rewardedfull_link"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v7

    invoke-interface {v7}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->gT()Z

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 235
    const-string v6, "js_render_ver"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm;->cJ()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    const-string v6, "js_render_v3_ver"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm;->ac()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    const-string v6, "source_type"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/MQ;->ac()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->Qhi(Landroid/content/Context;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 241
    const-string v6, "device info:"

    filled-new-array {v6, v0}, [Ljava/lang/Object;

    .line 243
    const-string v6, "device"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string v0, "user"

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    const-string v0, "ua"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/js;->ac()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string v0, "channel"

    const-string v6, "main"

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 251
    invoke-direct {p0, p1, p3, p2}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/core/model/qMt;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 252
    const-string p3, "adslots"

    invoke-virtual {v4, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    invoke-direct {p0, v4, p2}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/qMt;)V

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-wide/16 v6, 0x3e8

    div-long/2addr p2, v6

    .line 255
    const-string v0, "ts"

    invoke-virtual {v4, v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 256
    const-string v0, ""

    .line 257
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    if-eqz v5, :cond_7

    .line 258
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    :cond_7
    const-string p1, "req_sign"

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/Tgh;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/fl/ac;->fl()I

    move-result p1

    if-eqz p1, :cond_8

    .line 262
    const-string p1, "pglx"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/fl/ac;->fl()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    :cond_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Qhi(Lorg/json/JSONObject;)V

    .line 266
    sget-object p1, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->GET_ADS:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-static {p1, v4}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 268
    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string p1, "oversea_version_type"

    invoke-virtual {v3, p1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 272
    const-string p2, "body data exception"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/qMt;->cJ(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    :goto_3
    return-object v3
.end method

.method private Qhi(Lcom/bytedance/sdk/component/ROR/cJ/fl;Lorg/json/JSONObject;)V
    .locals 1

    .line 2014
    :try_start_0
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/MQ;->ac(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2015
    const-string v0, "cypher"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 2016
    const-string p2, "x-pgli18n"

    const-string v0, "4"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->cJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 2017
    const-string p2, "Content-Type"

    const-string v0, "application/json; charset=utf-8"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->cJ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/Gm;Lcom/bytedance/sdk/openadsdk/core/model/qMt;Lcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/utils/Jma;ILcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Z)V
    .locals 12

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    .line 874
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v5

    invoke-interface {v5}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Hf()Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    .line 877
    :cond_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-wide/16 v6, 0x0

    if-eqz v1, :cond_1

    .line 881
    :try_start_0
    iget-object v8, v1, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->hm:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    iget-wide v8, v8, Lcom/bytedance/sdk/openadsdk/utils/Jma;->Qhi:J

    cmp-long v8, v8, v6

    if-lez v8, :cond_1

    .line 883
    const-string v8, "client_start_time"

    iget-object v9, v1, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->hm:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    invoke-virtual {p3, v9}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->Qhi(Lcom/bytedance/sdk/openadsdk/utils/Jma;)J

    move-result-wide v9

    invoke-virtual {v5, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 885
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->hm:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    invoke-virtual {v4, v1}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->Qhi(Lcom/bytedance/sdk/openadsdk/utils/Jma;)J

    move-result-wide v8

    goto :goto_0

    :cond_1
    move-wide v8, v6

    .line 888
    :goto_0
    const-string v1, "network_time"

    invoke-virtual {v3, p3}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->Qhi(Lcom/bytedance/sdk/openadsdk/utils/Jma;)J

    move-result-wide v10

    invoke-virtual {v5, v1, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 890
    const-string v1, "sever_time"

    move/from16 v2, p5

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 892
    const-string v1, "client_end_time"

    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->Qhi(Lcom/bytedance/sdk/openadsdk/utils/Jma;)J

    move-result-wide v2

    invoke-virtual {v5, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/4 v1, 0x1

    if-eqz p9, :cond_2

    .line 894
    const-string v2, "is_choose_ad"

    invoke-virtual {v5, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 896
    :cond_2
    const-string v1, "open_ad"

    move-object/from16 v2, p8

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 897
    const-string v1, "is_icon_only"

    invoke-virtual/range {p7 .. p7}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->czB()Z

    move-result v3

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 899
    :cond_3
    iget-wide v3, v0, Lcom/bytedance/sdk/component/cJ/Qhi/Gm;->cJ:J

    cmp-long v1, v3, v6

    if-lez v1, :cond_4

    .line 901
    const-string v1, "enqueue_2_run_ts"

    iget-wide v3, v0, Lcom/bytedance/sdk/component/cJ/Qhi/Gm;->ac:J

    iget-wide v6, v0, Lcom/bytedance/sdk/component/cJ/Qhi/Gm;->cJ:J

    sub-long/2addr v3, v6

    invoke-virtual {v5, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 903
    const-string v1, "run_2_connect_end_ts"

    iget-wide v3, v0, Lcom/bytedance/sdk/component/cJ/Qhi/Gm;->fl:J

    iget-wide v6, v0, Lcom/bytedance/sdk/component/cJ/Qhi/Gm;->cJ:J

    sub-long/2addr v3, v6

    invoke-virtual {v5, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 905
    const-string v1, "connect_end_2_response_end_ts"

    iget-wide v3, v0, Lcom/bytedance/sdk/component/cJ/Qhi/Gm;->Tgh:J

    iget-wide v6, v0, Lcom/bytedance/sdk/component/cJ/Qhi/Gm;->fl:J

    sub-long/2addr v3, v6

    invoke-virtual {v5, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 907
    const-string v1, "response_end_2_callback_end_ts"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v6, v0, Lcom/bytedance/sdk/component/cJ/Qhi/Gm;->Tgh:J

    sub-long/2addr v3, v6

    invoke-virtual {v5, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 909
    :cond_4
    const-string v0, "load_ad_time"

    move-object/from16 p1, p7

    move-object/from16 p2, p8

    move-object p3, v0

    move-wide/from16 p4, v8

    move-object/from16 p6, v5

    invoke-static/range {p1 .. p6}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/qMt;Lcom/bytedance/sdk/component/ROR/cJ/fl;Ljava/util/Map;ZLcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/AdSlot;",
            "Lcom/bytedance/sdk/openadsdk/core/model/qMt;",
            "Lcom/bytedance/sdk/component/ROR/cJ/fl;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/bytedance/sdk/openadsdk/utils/Jma;",
            "Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;",
            ")V"
        }
    .end annotation

    .line 727
    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/MQ$5;

    move-object v0, v8

    move-object v1, p0

    move v2, p5

    move-object v3, p4

    move-object v4, p6

    move-object/from16 v5, p7

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/MQ$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/MQ;ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/qMt;)V

    move-object v0, p3

    invoke-virtual {p3, v8}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/MQ;Lcom/bytedance/sdk/component/cJ/Qhi/Gm;Lcom/bytedance/sdk/openadsdk/core/model/qMt;Lcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/utils/Jma;ILcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Z)V
    .locals 0

    .line 118
    invoke-direct/range {p0 .. p9}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/Gm;Lcom/bytedance/sdk/openadsdk/core/model/qMt;Lcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/utils/Jma;ILcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/MQ;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/qMt;ILcom/bytedance/sdk/openadsdk/core/tP$Qhi;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/MQ;->cJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/qMt;ILcom/bytedance/sdk/openadsdk/core/tP$Qhi;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/MQ;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/MQ;Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/MQ;Lcom/bytedance/sdk/openadsdk/core/tP$cJ;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/tP$cJ;)V

    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V
    .locals 9

    .line 811
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 812
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 815
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 816
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v2, :cond_2

    .line 817
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Gm()Lcom/bytedance/sdk/openadsdk/core/model/fl;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v6, 0x0

    .line 820
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dIT()Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    move-result-object v7

    const-string v4, ""

    const/4 v5, 0x0

    move-object v3, p0

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Ljava/lang/String;IILcom/bytedance/sdk/openadsdk/core/model/hpZ;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 821
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qe()Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    move-result-object v7

    const-string v4, ""

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Ljava/lang/String;IILcom/bytedance/sdk/openadsdk/core/model/hpZ;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 822
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cjC()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 823
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    move v4, v0

    .line 824
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 825
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    invoke-direct {p0, v2, v5}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/model/hpZ;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 828
    :cond_1
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 829
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->WAv()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->ac()I

    move-result v5

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->cJ()I

    move-result v6

    const/4 v7, 0x0

    move-object v3, p0

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Ljava/lang/String;IILcom/bytedance/sdk/openadsdk/core/model/hpZ;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/model/hpZ;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 859
    :cond_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/ROR/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/hpZ;)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/fl/Gm;->ac(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/ROR/cJ;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/MQ$6;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/MQ$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/MQ;)V

    invoke-direct {v1, p1, p2, v2}, Lcom/bytedance/sdk/openadsdk/ROR/cJ;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lcom/bytedance/sdk/component/fl/HzH;)V

    const/4 p1, 0x4

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/component/fl/Gm;->Qhi(Lcom/bytedance/sdk/component/fl/HzH;I)Lcom/bytedance/sdk/component/fl/WAv;

    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V
    .locals 2

    const/4 v0, -0x1

    .line 1316
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Sf;->Qhi(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;->Qhi(ILjava/lang/String;)V

    .line 1318
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(I)V

    .line 1319
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V

    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/core/tP$cJ;)V
    .locals 2

    const/4 v0, -0x1

    .line 1323
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Sf;->Qhi(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/tP$cJ;->Qhi(ILjava/lang/String;)V

    return-void
.end method

.method private Qhi(Ljava/lang/String;IILcom/bytedance/sdk/openadsdk/core/model/hpZ;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 4

    .line 838
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_0

    .line 839
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ROR/fl;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p4

    invoke-interface {p4, p2}, Lcom/bytedance/sdk/component/fl/Gm;->Qhi(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p2

    invoke-interface {p2, p3}, Lcom/bytedance/sdk/component/fl/Gm;->cJ(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p2

    .line 840
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/zn;->CJ(Landroid/content/Context;)I

    move-result p3

    invoke-interface {p2, p3}, Lcom/bytedance/sdk/component/fl/Gm;->fl(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p2

    .line 841
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/content/Context;)I

    move-result p3

    invoke-interface {p2, p3}, Lcom/bytedance/sdk/component/fl/Gm;->CJ(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p2

    .line 842
    invoke-interface {p2, v3}, Lcom/bytedance/sdk/component/fl/Gm;->ac(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p2

    new-instance p3, Lcom/bytedance/sdk/openadsdk/ROR/cJ;

    invoke-direct {p3, p5, p1, v2}, Lcom/bytedance/sdk/openadsdk/ROR/cJ;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lcom/bytedance/sdk/component/fl/HzH;)V

    invoke-interface {p2, p3, v1}, Lcom/bytedance/sdk/component/fl/Gm;->Qhi(Lcom/bytedance/sdk/component/fl/HzH;I)Lcom/bytedance/sdk/component/fl/WAv;

    return-void

    :cond_0
    if-nez p4, :cond_1

    return-void

    .line 848
    :cond_1
    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/ROR/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/hpZ;)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/bytedance/sdk/component/fl/Gm;->ac(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/ROR/cJ;

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p5, p3, v2}, Lcom/bytedance/sdk/openadsdk/ROR/cJ;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lcom/bytedance/sdk/component/fl/HzH;)V

    invoke-interface {p1, p2, v1}, Lcom/bytedance/sdk/component/fl/Gm;->Qhi(Lcom/bytedance/sdk/component/fl/HzH;I)Lcom/bytedance/sdk/component/fl/WAv;

    return-void
.end method

.method private Qhi(Ljava/util/Map;Lcom/bytedance/sdk/component/ROR/cJ/fl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bytedance/sdk/component/ROR/cJ/fl;",
            ")V"
        }
    .end annotation

    .line 1083
    const-string v0, "ADD header exceptopn"

    const-string v1, "NetApiImpl"

    if-eqz p1, :cond_0

    .line 1084
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1086
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v3, v2}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->cJ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1088
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1094
    :cond_0
    :try_start_1
    const-string p1, "User-Agent"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/js;->ac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->cJ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 1096
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/qMt;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 287
    iget-object v0, p2, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->fl:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    :try_start_0
    const-string v0, "source_temai_product_ids"

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->fl:Lorg/json/JSONArray;

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private Qhi(Lorg/json/JSONObject;Ljava/lang/String;FF)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-ltz v1, :cond_0

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_0

    .line 1576
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1577
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1579
    :try_start_0
    const-string v2, "width"

    float-to-int p3, p3

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1580
    const-string p3, "height"

    float-to-int p4, p4

    invoke-virtual {v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1581
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1582
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private Qhi(Lorg/json/JSONObject;Ljava/lang/String;II)V
    .locals 3

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    .line 1562
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1563
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1565
    :try_start_0
    const-string v2, "width"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1566
    const-string p3, "height"

    invoke-virtual {v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1567
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1568
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static Qhi(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1464
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1465
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method private Qhi(Lorg/json/JSONObject;Z)V
    .locals 6

    .line 1102
    const-string v0, "NetApiImpl"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/hm;->HzH()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1107
    :cond_0
    :try_start_0
    const-string v1, "header"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "aid"

    const-string v3, "4562"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1109
    const-string v2, "reportETEvent error"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1112
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/iMK/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->cJ()Lcom/bytedance/sdk/component/ROR/Qhi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ROR/Qhi;->cJ()Lcom/bytedance/sdk/component/ROR/cJ/fl;

    move-result-object v1

    .line 1113
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/js;->ABk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->cJ(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_6

    .line 1118
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p2

    sget-object v3, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->APP_LOG:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-interface {p2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Qhi(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;)Z

    move-result p2

    .line 1119
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/MQ;->fl(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz p2, :cond_3

    .line 1121
    invoke-static {v3}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptManager;->encryptType4WithoutBase64([B)Landroid/util/Pair;

    move-result-object p2

    const/4 v4, 0x1

    if-eqz p2, :cond_1

    .line 1122
    iget-object v5, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v5, :cond_1

    iget-object v5, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [B

    array-length v5, v5

    if-lez v5, :cond_1

    .line 1123
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, [B

    .line 1124
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/EBS;->cJ(Z)V

    move-object v2, p2

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    if-eqz p2, :cond_2

    .line 1128
    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_2
    move p2, v5

    .line 1130
    :goto_1
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/EBS;->cJ(Z)V

    .line 1131
    sget-object v5, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->APP_LOG:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-static {v4, v5, p2}, Lcom/bytedance/sdk/openadsdk/core/EBS;->Qhi(ILcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;I)V

    .line 1134
    :cond_3
    :goto_2
    const-string p2, "application/octet-stream;tt-data=a"

    if-eqz v2, :cond_4

    .line 1135
    const-string v0, "Content-Encoding"

    const-string v3, "union_sdk_encode"

    invoke-virtual {v1, v0, v3}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->cJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    const-string v0, "x-pgli18n"

    const-string v3, "4"

    invoke-virtual {v1, v0, v3}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->cJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    invoke-virtual {v1, p2, v2}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Ljava/lang/String;[B)V

    goto :goto_3

    .line 1139
    :cond_4
    invoke-static {v3}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptManager;->encryptV3([B)[B

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1141
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/MQ;->cJ()Ljava/util/Map;

    move-result-object v0

    .line 1142
    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Ljava/util/Map;Lcom/bytedance/sdk/component/ROR/cJ/fl;)V

    .line 1144
    invoke-virtual {v1, p2, v2}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Ljava/lang/String;[B)V

    goto :goto_3

    .line 1146
    :cond_5
    const-string p2, "V3 encrypt failed"

    invoke-static {v0, p2}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    if-nez v2, :cond_8

    .line 1151
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Qhi;->Qhi(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    .line 1152
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/MQ;->ac(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    move-object p1, p2

    .line 1155
    :goto_4
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/MQ;->CJ(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p2

    .line 1156
    invoke-direct {p0, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Ljava/util/Map;Lcom/bytedance/sdk/component/ROR/cJ/fl;)V

    .line 1157
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p2

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->kYc()Z

    move-result p2

    invoke-virtual {v1, p1, p2}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Ljava/lang/String;Z)V

    :cond_8
    const/4 p1, 0x7

    .line 1159
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(I)V

    .line 1160
    const-string p1, "et_applog"

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Ljava/lang/String;)V

    .line 1161
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/MQ$7;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/MQ$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/MQ;)V

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;)V

    return-void
.end method

.method private Tgh(Lorg/json/JSONObject;)V
    .locals 2
    .annotation runtime Lcom/pgl/ssdk/ces/out/DungeonFlag;
    .end annotation

    .line 1479
    :try_start_0
    const-string v0, "package_name"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/js;->fl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1480
    const-string v0, "version_code"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/js;->Tgh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1481
    const-string v0, "version"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/js;->ROR()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static ac(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 7

    const/4 v0, 0x0

    .line 2155
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;->Qhi(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 2156
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2159
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 2160
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    if-eqz v2, :cond_1

    .line 2161
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->fl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2162
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2163
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->Qhi()Ljava/lang/String;

    move-result-object v4

    .line 2164
    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2165
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 2166
    const-string v5, "id"

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2167
    const-string v4, "md5"

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->cJ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2168
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    return-object v0

    :catch_0
    move-exception p0

    .line 2174
    const-string v1, "NetApiImpl"

    const-string v2, "getUgenParentTplIds: "

    invoke-static {v1, v2, p0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private ac()Lorg/json/JSONObject;
    .locals 7
    .annotation runtime Lcom/pgl/ssdk/ces/out/DungeonFlag;
    .end annotation

    .line 1333
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1335
    :try_start_0
    const-string v1, "appid"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/hm;->CJ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1336
    const-string v1, "name"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/hm;->Tgh()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1337
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Tgh(Lorg/json/JSONObject;)V

    .line 1338
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    .line 1339
    const-string v2, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 1342
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 1344
    :try_start_2
    const-string v4, "NetApiImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "failed to get the application installation package path. error: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    :cond_0
    :goto_0
    const-string v3, "package_install_path"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1348
    const-string v2, "is_paid_app"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/hm;->Gm()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1349
    const-string v2, "apk_sign"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/Qhi;->ROR()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1350
    const-string v2, "app_running_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->Qhi()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1351
    const-string v2, "fmwname"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi:Landroid/content/Context;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->hm(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1352
    const-string v2, "is_init"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->fl()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    .line 1356
    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1359
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x3

    if-eq v1, v5, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x4

    goto :goto_1

    :cond_2
    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v2

    goto :goto_1

    :cond_4
    move v4, v5

    .line 1373
    :goto_1
    const-string v1, "orientation_support"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_5
    return-object v0
.end method

.method private ac(Lorg/json/JSONObject;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 921
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static cJ(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 1924
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Qhi;->ac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 1926
    invoke-static {p1}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptManager;->decryptType4(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1927
    iget-object p1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 1928
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const/4 p1, 0x1

    .line 1929
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/EBS;->Qhi(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1931
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/EBS;->Qhi(Z)V

    if-eqz p0, :cond_2

    .line 1934
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_2
    const/4 p0, 0x2

    .line 1936
    sget-object v0, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->GET_ADS:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-static {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/EBS;->Qhi(ILcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;I)V

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static cJ(Lcom/bytedance/sdk/openadsdk/AdSlot;)Ljava/lang/String;
    .locals 9

    .line 1415
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/hm;->ABk()Ljava/lang/String;

    move-result-object v0

    if-nez p0, :cond_1

    .line 1417
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    return-object v0

    .line 1419
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getUserData()Ljava/lang/String;

    move-result-object p0

    .line 1420
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p0

    .line 1423
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    .line 1427
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1430
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1431
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x0

    .line 1432
    const-string v7, "name"

    if-ge v5, v3, :cond_5

    .line 1433
    :try_start_1
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 1435
    invoke-virtual {v8, v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1436
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1444
    :cond_5
    :try_start_2
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1445
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    :goto_1
    if-ge v4, v0, :cond_7

    .line 1447
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 1449
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1450
    invoke-virtual {v1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1451
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1455
    :cond_7
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    return-object p0

    :catchall_1
    return-object v0
.end method

.method private cJ()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1298
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1299
    const-string v1, "Content-Type"

    const-string v2, "application/octet-stream;tt-data=a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static cJ(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 6

    const/4 v0, 0x0

    .line 2132
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/cJ;->cJ(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 2133
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2136
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 2137
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2138
    invoke-static {v2}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/cJ;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2140
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2141
    const-string v4, "id"

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;->cJ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2142
    const-string v4, "md5"

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/cJ;->ac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2143
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    return-object v0

    :catch_0
    move-exception p0

    .line 2148
    const-string v1, "NetApiImpl"

    const-string v2, "getParentTplIds: "

    invoke-static {v1, v2, p0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private cJ(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .annotation runtime Lcom/pgl/ssdk/ces/out/DungeonFlag;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 1250
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1252
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1253
    const-string v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1254
    const-string v2, "ad_sdk_version"

    const-string v3, "6.2.0.6"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1255
    const-string v2, "extra"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1256
    const-string p1, "filter_words"

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1257
    const-string p1, "dislike_source"

    invoke-virtual {v1, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1258
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->YB()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1259
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1260
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Qhi;->Qhi(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1261
    const-string p2, "creative_info"

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1262
    const-string p1, "feedback_type"

    const/4 p2, 0x1

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1263
    const-string p1, "user_description"

    invoke-virtual {v1, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1265
    :cond_0
    const-string p1, "dislike_source is\uff1a"

    filled-new-array {p1, p5}, [Ljava/lang/Object;

    .line 1266
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 1267
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1268
    const-string p2, "actions"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private cJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/qMt;ILcom/bytedance/sdk/openadsdk/core/tP$Qhi;)V
    .locals 15

    move-object v12, p0

    move-object/from16 v7, p1

    move-object/from16 v11, p2

    move-object/from16 v9, p4

    .line 336
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->Tgh()V

    .line 337
    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/model/cJ;

    invoke-direct {v8}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;-><init>()V

    .line 338
    invoke-virtual {v8, v7}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 339
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/ABk;->Qhi()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v9, :cond_0

    .line 341
    const-string v0, "Ad request is temporarily paused, Please contact your Pangle AM"

    const/16 v1, 0x3e8

    invoke-interface {v9, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;->Qhi(ILjava/lang/String;)V

    .line 343
    invoke-virtual {v8, v1}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(I)V

    .line 344
    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V

    :cond_0
    return-void

    .line 349
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->jPH()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v9, :cond_2

    const/16 v0, -0x10

    .line 351
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Sf;->Qhi(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;->Qhi(ILjava/lang/String;)V

    const/16 v0, 0x3e9

    .line 353
    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(I)V

    .line 354
    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V

    :cond_2
    return-void

    :cond_3
    if-nez v9, :cond_4

    return-void

    .line 367
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/MQ;->CJ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, -0x8

    .line 368
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Sf;->Qhi(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;->Qhi(ILjava/lang/String;)V

    return-void

    .line 373
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "NetApiImpl"

    const-string v3, "Pangle_Debug_Mode"

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v0, :cond_d

    iget-boolean v0, v11, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->Tgh:Z

    if-nez v0, :cond_d

    .line 374
    invoke-virtual {v8, v4}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->cJ(I)V

    .line 375
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(Ljava/lang/String;)V

    .line 377
    invoke-static {}, Lcom/bytedance/sdk/component/utils/ABk;->CJ()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 378
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/api/Tgh/cJ;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    .line 380
    :cond_6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->cjC()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Eh;->Qhi()Lcom/bytedance/sdk/openadsdk/core/pM;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/pM;->ROR()I

    move-result v0

    if-ne v0, v5, :cond_7

    .line 382
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v12, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi:Landroid/content/Context;

    invoke-static {v3, v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 385
    :cond_7
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/MQ;->cJ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_8

    .line 389
    invoke-direct {p0, v9, v8}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V

    return-void

    .line 392
    :cond_8
    invoke-static {v0, v7, v11, v8}, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/qMt;Lcom/bytedance/sdk/openadsdk/core/model/cJ;)Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;

    move-result-object v3

    .line 393
    iget-object v4, v3, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->WAv:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(Ljava/util/ArrayList;)V

    .line 394
    iget-object v4, v12, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi:Landroid/content/Context;

    iget-object v5, v3, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->hm:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/zc;->Qhi(Landroid/content/Context;Ljava/lang/String;)V

    .line 395
    iget v4, v3, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->CJ:I

    const/16 v5, 0x4e20

    if-eq v4, v5, :cond_9

    .line 396
    iget v0, v3, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->CJ:I

    iget-object v1, v3, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->fl:Ljava/lang/String;

    invoke-interface {v9, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;->Qhi(ILjava/lang/String;)V

    .line 398
    iget v0, v3, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->CJ:I

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(I)V

    .line 399
    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V

    return-void

    .line 402
    :cond_9
    iget-object v4, v3, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    if-nez v4, :cond_a

    .line 403
    invoke-direct {p0, v9, v8}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V

    return-void

    .line 408
    :cond_a
    iget-object v4, v3, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v4, v3, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_b

    .line 409
    iget-object v4, v3, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 412
    :cond_b
    iget-object v1, v3, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac(Ljava/lang/String;)V

    .line 413
    iget-object v0, v3, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-interface {v9, v0, v8}, Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V

    .line 415
    iget-object v0, v3, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 417
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/fl/cJ;->Qhi()Lcom/bytedance/sdk/openadsdk/fl/cJ;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/fl/cJ;->Qhi(Ljava/util/Map;)V

    .line 419
    :cond_c
    iget-object v0, v3, Lcom/bytedance/sdk/openadsdk/core/MQ$Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 422
    const-string v1, "get ad error: "

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 423
    invoke-direct {p0, v9, v8}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V

    return-void

    .line 428
    :cond_d
    invoke-direct/range {p0 .. p3}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/qMt;I)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_e

    const/16 v0, -0x9

    .line 430
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Sf;->Qhi(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;->Qhi(ILjava/lang/String;)V

    .line 432
    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(I)V

    .line 433
    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V

    return-void

    .line 436
    :cond_e
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->cjC()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Eh;->Qhi()Lcom/bytedance/sdk/openadsdk/core/pM;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/pM;->ROR()I

    move-result v0

    if-ne v0, v5, :cond_f

    .line 437
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    iget-object v10, v12, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi:Landroid/content/Context;

    invoke-static {v3, v0, v10}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 444
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBiddingTokens()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 445
    const-string v0, "/api/ad/union/mediation/get_ads/"

    goto :goto_0

    .line 444
    :cond_10
    const-string v0, "/api/ad/union/sdk/get_ads/"

    .line 447
    :goto_0
    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/iMK/ac;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->cJ()Lcom/bytedance/sdk/component/ROR/Qhi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/ROR/Qhi;->cJ()Lcom/bytedance/sdk/component/ROR/cJ/fl;

    move-result-object v13

    .line 450
    new-instance v3, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    invoke-direct {v3, v4}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;-><init>(I)V

    .line 452
    :try_start_1
    invoke-static {v13, v0}, Lcom/bytedance/sdk/openadsdk/Tgh/fl;->Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 453
    invoke-virtual {v13, v4}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->cJ(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 458
    :catch_0
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v10

    invoke-interface {v10}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->kYc()Z

    move-result v10

    invoke-virtual {v13, v4, v10}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Ljava/lang/String;Z)V

    .line 459
    invoke-virtual {v13}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->ac()Lcom/bytedance/sdk/component/cJ/Qhi/pA;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/pA;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi()V

    .line 460
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/fl/ac;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 461
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 462
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 464
    :try_start_2
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 465
    invoke-virtual {v13, v0, v14}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->cJ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 468
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 473
    :cond_11
    :try_start_3
    const-string v0, "User-Agent"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/js;->ac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v0, v2}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->cJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-direct {p0, v13, v6}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/component/ROR/cJ/fl;Lorg/json/JSONObject;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 479
    :catch_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->Qhi()Lcom/bytedance/sdk/openadsdk/utils/Jma;

    move-result-object v0

    .line 482
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getRequestExtraMap()Ljava/util/Map;

    move-result-object v6

    .line 483
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/hm;->HzH()Z

    move-result v2

    if-eqz v2, :cond_12

    if-eqz v6, :cond_12

    move v10, v5

    goto :goto_2

    :cond_12
    move v10, v1

    :goto_2
    if-eqz v10, :cond_13

    .line 485
    const-string v1, "pgad_start"

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBiddingTokens()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v13

    move-object v5, v6

    move v6, v10

    move-object v7, v0

    move-object/from16 v8, p4

    .line 489
    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/qMt;Lcom/bytedance/sdk/component/ROR/cJ/fl;Ljava/util/Map;ZLcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;)V

    return-void

    :cond_14
    const/16 v1, 0xa

    .line 493
    invoke-virtual {v13, v1}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(I)V

    .line 494
    const-string v1, "get_ad"

    invoke-virtual {v13, v1}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Ljava/lang/String;)V

    .line 496
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/MQ$3;

    invoke-direct {v1, p0, v7}, Lcom/bytedance/sdk/openadsdk/core/MQ$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/MQ;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/ABk/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/ABk/fl;)V

    .line 507
    new-instance v14, Lcom/bytedance/sdk/openadsdk/core/MQ$4;

    move-object v1, v14

    move-object v2, p0

    move v4, v10

    move-object v5, v6

    move-object v6, v0

    move-object/from16 v7, p1

    move-object/from16 v9, p4

    move/from16 v10, p3

    move-object/from16 v11, p2

    invoke-direct/range {v1 .. v11}, Lcom/bytedance/sdk/openadsdk/core/MQ$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/MQ;Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/cJ;Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;ILcom/bytedance/sdk/openadsdk/core/model/qMt;)V

    invoke-virtual {v13, v14}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;)V

    return-void
.end method

.method private fl(Lorg/json/JSONObject;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1307
    :try_start_0
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private fl(Ljava/lang/String;)[B
    .locals 5

    .line 2180
    const-string v0, "NetApiImpl"

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v2, 0x0

    .line 2185
    new-array v2, v2, [B

    .line 2187
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2188
    :try_start_1
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2189
    :try_start_2
    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2195
    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2197
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 2201
    :goto_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 2203
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 2205
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v1, v4

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v1, v4

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_3
    move-exception p1

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v3, v1

    goto :goto_4

    :catch_4
    move-exception p1

    move-object v3, v1

    .line 2191
    :goto_1
    :try_start_5
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_1

    .line 2195
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_2

    :catch_5
    move-exception p1

    .line 2197
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 2201
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 2203
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_2
    :goto_3
    return-object v2

    :goto_4
    if-eqz v1, :cond_3

    .line 2195
    :try_start_8
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_5

    :catch_6
    move-exception v1

    .line 2197
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_5
    if-eqz v3, :cond_4

    .line 2201
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 2203
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_6

    :catch_7
    move-exception v1

    .line 2205
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    :cond_4
    :goto_6
    throw p1

    :cond_5
    :goto_7
    return-object v1
.end method


# virtual methods
.method public Qhi()Lcom/bytedance/sdk/component/adexpress/Qhi/ac/Qhi;
    .locals 15

    .line 2027
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/ABk;->Qhi()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2031
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-string v0, "tpl_fetch_model"

    const-string v6, "date"

    const-wide/16 v7, 0x0

    invoke-static {v0, v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v9

    sub-long/2addr v2, v9

    .line 2032
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v9

    invoke-interface {v9}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->FQ()Ljava/lang/String;

    move-result-object v9

    .line 2033
    const-string v10, "last_url"

    const-string v11, ""

    invoke-static {v0, v10, v11}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->cJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2035
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v13

    invoke-interface {v13}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->NFd()I

    move-result v13

    int-to-long v13, v13

    cmp-long v13, v2, v13

    const-string v14, "model"

    if-gtz v13, :cond_1

    cmp-long v2, v2, v7

    if-ltz v2, :cond_1

    invoke-static {v9, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2036
    invoke-static {v0, v14, v11}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->cJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2038
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2039
    invoke-static {v2}, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/Qhi;->CJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/Qhi/ac/Qhi;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2044
    :catch_0
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/iMK/ac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->cJ()Lcom/bytedance/sdk/component/ROR/Qhi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ROR/Qhi;->ac()Lcom/bytedance/sdk/component/ROR/cJ/cJ;

    move-result-object v2

    .line 2046
    :try_start_1
    invoke-static {v2, v9}, Lcom/bytedance/sdk/openadsdk/Tgh/fl;->Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->cJ(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    .line 2048
    const-string v7, "NetApiImpl"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 2050
    :goto_0
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->Qhi()Lcom/bytedance/sdk/component/ROR/cJ;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2052
    :try_start_2
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ROR/cJ;->Tgh()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2053
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ROR/cJ;->CJ()Ljava/lang/String;

    move-result-object v2

    .line 2054
    invoke-static {v2}, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/Qhi;->CJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/Qhi/ac/Qhi;

    move-result-object v1

    .line 2055
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long/2addr v7, v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v6, v3}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 2056
    invoke-static {v0, v14, v2}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    invoke-static {v0, v10, v9}, Lcom/bytedance/sdk/openadsdk/multipro/CJ/Tgh;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_2
    return-object v1
.end method

.method public Qhi(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/cJ/Tgh;
    .locals 12

    .line 1945
    const-string v0, "error unknown"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1946
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/ABk;->Qhi()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    if-eqz p1, :cond_d

    .line 1949
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-gtz v3, :cond_1

    goto/16 :goto_7

    .line 1953
    :cond_1
    new-instance v3, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    const/4 v5, 0x4

    invoke-direct {v3, v5}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;-><init>(I)V

    .line 1955
    sget-object v5, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->STATS_LOG:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-static {v5, p1}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1956
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/iMK/ac;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->cJ()Lcom/bytedance/sdk/component/ROR/Qhi;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/component/ROR/Qhi;->cJ()Lcom/bytedance/sdk/component/ROR/cJ/fl;

    move-result-object v5

    const/4 v6, 0x0

    .line 1958
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v8

    invoke-interface {v8}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->kYc()Z

    move-result v8

    invoke-virtual {v5, v7, v8}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Ljava/lang/String;Z)V

    .line 1959
    const-string v7, "/api/ad/union/sdk/stats/batch/"

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/utils/js;->CJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1960
    invoke-virtual {v3, v7}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object v8

    invoke-virtual {v5}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->ac()Lcom/bytedance/sdk/component/cJ/Qhi/pA;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/pA;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object v8

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi()V

    .line 1961
    invoke-virtual {v5, v7}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->cJ(Ljava/lang/String;)V

    .line 1962
    invoke-direct {p0, v5, p1}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/component/ROR/cJ/fl;Lorg/json/JSONObject;)V

    .line 1963
    const-string p1, "User-Agent"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/js;->ac()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, p1, v7}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->cJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->et()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1969
    const-string p1, "_disable_retry"

    const-string v7, "1"

    invoke-virtual {v5, p1, v7}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->cJ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1975
    :cond_2
    invoke-virtual {v5}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi()Lcom/bytedance/sdk/component/ROR/cJ;

    move-result-object p1

    const/4 v5, 0x1

    if-nez p1, :cond_3

    .line 1983
    :try_start_1
    new-instance v7, Lcom/bytedance/sdk/openadsdk/cJ/Tgh;

    invoke-direct {v7, v6, v6, v0, v6}, Lcom/bytedance/sdk/openadsdk/cJ/Tgh;-><init>(ZILjava/lang/String;Z)V

    return-object v7

    .line 1985
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ROR/cJ;->Tgh()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ROR/cJ;->CJ()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1986
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ROR/cJ;->CJ()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1987
    const-string v8, "code"

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 1988
    const-string v9, "data"

    const-string v10, ""

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v7, 0x4e20

    if-ne v8, v7, :cond_4

    move v7, v5

    goto :goto_0

    :cond_4
    move v7, v6

    :goto_0
    const v9, 0xea65

    if-ne v8, v9, :cond_5

    move v8, v5

    goto :goto_1

    :cond_5
    move v8, v6

    goto :goto_1

    :cond_6
    move v7, v6

    move v8, v7

    .line 1996
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ROR/cJ;->Qhi()I

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1997
    :try_start_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ROR/cJ;->Tgh()Z

    move-result v10

    if-nez v10, :cond_7

    .line 1998
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ROR/cJ;->cJ()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_0
    move v9, v6

    goto :goto_2

    :catchall_1
    move v7, v6

    move v8, v7

    move v9, v8

    :catchall_2
    :cond_7
    :goto_2
    if-nez p1, :cond_8

    move v10, v5

    goto :goto_3

    :cond_8
    move v10, v6

    :goto_3
    if-nez v10, :cond_9

    .line 2003
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ROR/cJ;->Tgh()Z

    move-result v11

    if-eqz v11, :cond_9

    move v6, v5

    :cond_9
    invoke-virtual {v3, v6}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(Z)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object v3

    if-eqz v10, :cond_a

    move-object v5, v4

    goto :goto_4

    .line 2004
    :cond_a
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ROR/cJ;->CJ()Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object v3

    if-eqz v10, :cond_b

    sget v5, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi:I

    goto :goto_5

    :cond_b
    move v5, v9

    .line 2005
    :goto_5
    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(I)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object v3

    if-eqz v10, :cond_c

    goto :goto_6

    .line 2006
    :cond_c
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ROR/cJ;->cJ()Ljava/lang/String;

    move-result-object v4

    :goto_6
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->CJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    .line 2007
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac()V

    .line 2008
    sget-object p1, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/cJ;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {p1, v7, v9, v3, v4}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/Qhi/cJ;ZIJ)V

    .line 2009
    new-instance p1, Lcom/bytedance/sdk/openadsdk/cJ/Tgh;

    invoke-direct {p1, v7, v9, v0, v8}, Lcom/bytedance/sdk/openadsdk/cJ/Tgh;-><init>(ZILjava/lang/String;Z)V

    return-object p1

    .line 1972
    :catchall_3
    sget-object p1, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/cJ;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {p1, v6, v6, v3, v4}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/Qhi/cJ;ZIJ)V

    .line 1973
    new-instance p1, Lcom/bytedance/sdk/openadsdk/cJ/Tgh;

    invoke-direct {p1, v6, v6, v0, v6}, Lcom/bytedance/sdk/openadsdk/cJ/Tgh;-><init>(ZILjava/lang/String;Z)V

    return-object p1

    :cond_d
    :goto_7
    return-object v4
.end method

.method public Qhi(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/cJ/Tgh;
    .locals 16
    .annotation runtime Lcom/pgl/ssdk/ces/out/DungeonFlag;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move/from16 v2, p3

    .line 979
    const-string v3, "NetApiImpl"

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 981
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/ABk;->Qhi()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_0

    return-object v8

    .line 985
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/iMK/ac;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->cJ()Lcom/bytedance/sdk/component/ROR/Qhi;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/sdk/component/ROR/Qhi;->cJ()Lcom/bytedance/sdk/component/ROR/cJ/fl;

    move-result-object v7

    .line 986
    invoke-virtual {v7, v0}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->cJ(Ljava/lang/String;)V

    .line 987
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v9

    invoke-interface {v9}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Gy()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 992
    const-string v9, "_disable_retry"

    const-string v10, "1"

    invoke-virtual {v7, v9, v10}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->cJ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v9, 0x1

    if-eqz v2, :cond_7

    .line 996
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v10

    sget-object v11, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->APP_LOG:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-interface {v10, v11}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Qhi(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;)Z

    move-result v10

    .line 997
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Lcom/bytedance/sdk/openadsdk/core/MQ;->fl(Ljava/lang/String;)[B

    move-result-object v11

    if-eqz v10, :cond_4

    .line 999
    invoke-static {v11}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptManager;->encryptType4WithoutBase64([B)Landroid/util/Pair;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 1000
    iget-object v12, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v12, :cond_2

    iget-object v12, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, [B

    array-length v12, v12

    if-lez v12, :cond_2

    .line 1001
    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, [B

    .line 1002
    invoke-static {v9}, Lcom/bytedance/sdk/openadsdk/core/EBS;->cJ(Z)V

    goto :goto_1

    :cond_2
    if-eqz v10, :cond_3

    .line 1006
    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_0

    :cond_3
    move v10, v4

    .line 1008
    :goto_0
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/EBS;->cJ(Z)V

    .line 1009
    sget-object v12, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->APP_LOG:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-static {v9, v12, v10}, Lcom/bytedance/sdk/openadsdk/core/EBS;->Qhi(ILcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    move-object v10, v8

    .line 1012
    :goto_1
    const-string v12, "application/octet-stream;tt-data=a"

    if-eqz v10, :cond_5

    .line 1013
    :try_start_1
    const-string v11, "Content-Encoding"

    const-string v13, "union_sdk_encode"

    invoke-virtual {v7, v11, v13}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->cJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    const-string v11, "x-pgli18n"

    const-string v13, "4"

    invoke-virtual {v7, v11, v13}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->cJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    invoke-virtual {v7, v12, v10}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Ljava/lang/String;[B)V

    goto :goto_2

    .line 1017
    :cond_5
    invoke-static {v11}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptManager;->encryptV3([B)[B

    move-result-object v10

    if-eqz v10, :cond_6

    .line 1019
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/MQ;->cJ()Ljava/util/Map;

    move-result-object v11

    .line 1020
    invoke-direct {v1, v11, v7}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Ljava/util/Map;Lcom/bytedance/sdk/component/ROR/cJ/fl;)V

    .line 1022
    invoke-virtual {v7, v12, v10}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Ljava/lang/String;[B)V

    goto :goto_2

    .line 1024
    :cond_6
    const-string v11, "V3 encrypt failed"

    invoke-static {v3, v11}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_7
    move-object v10, v8

    :goto_2
    if-nez v10, :cond_9

    .line 1031
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/utils/Qhi;->Qhi(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1036
    :try_start_3
    invoke-direct {v1, v10}, Lcom/bytedance/sdk/openadsdk/core/MQ;->ac(Lorg/json/JSONObject;)Z

    move-result v11

    if-nez v11, :cond_8

    move-object/from16 v10, p1

    .line 1039
    :cond_8
    invoke-direct {v1, v10}, Lcom/bytedance/sdk/openadsdk/core/MQ;->CJ(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v11

    .line 1040
    invoke-direct {v1, v11, v7}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Ljava/util/Map;Lcom/bytedance/sdk/component/ROR/cJ/fl;)V

    .line 1041
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v11

    invoke-interface {v11}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->kYc()Z

    move-result v11

    invoke-virtual {v7, v10, v11}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Ljava/lang/String;Z)V

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1033
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/Tgh;

    const-string v2, "encrypt_error"

    const/4 v5, -0x2

    invoke-direct {v0, v4, v5, v2, v4}, Lcom/bytedance/sdk/openadsdk/cJ/Tgh;-><init>(ZILjava/lang/String;Z)V

    return-object v0

    .line 1043
    :cond_9
    :goto_3
    new-instance v10, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    const/4 v11, 0x3

    invoke-direct {v10, v11}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;-><init>(I)V

    .line 1044
    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object v0

    invoke-virtual {v7}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->ac()Lcom/bytedance/sdk/component/cJ/Qhi/pA;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/pA;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi()V

    .line 1045
    invoke-virtual {v7}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi()Lcom/bytedance/sdk/component/ROR/cJ;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1049
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ROR/cJ;->Tgh()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ROR/cJ;->CJ()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 1050
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ROR/cJ;->CJ()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1051
    invoke-direct {v1, v7}, Lcom/bytedance/sdk/openadsdk/core/MQ;->fl(Lorg/json/JSONObject;)Z

    move-result v7

    goto :goto_4

    :cond_a
    move v7, v4

    .line 1054
    :goto_4
    const-string v11, "error unknown"

    if-eqz v0, :cond_b

    .line 1056
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ROR/cJ;->Qhi()I

    move-result v12

    goto :goto_5

    :cond_b
    move v12, v4

    :goto_5
    if-nez v7, :cond_c

    const/16 v13, 0xc8

    if-ne v12, v13, :cond_c

    .line 1059
    const-string v11, "server say not success"

    move v13, v9

    goto :goto_6

    :cond_c
    if-eqz v0, :cond_d

    .line 1062
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ROR/cJ;->cJ()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_d

    .line 1063
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ROR/cJ;->cJ()Ljava/lang/String;

    move-result-object v11

    :cond_d
    move v13, v4

    :goto_6
    if-nez v0, :cond_e

    move v14, v9

    goto :goto_7

    :cond_e
    move v14, v4

    :goto_7
    if-nez v14, :cond_f

    .line 1067
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ROR/cJ;->Tgh()Z

    move-result v15

    if-eqz v15, :cond_f

    goto :goto_8

    :cond_f
    move v9, v4

    :goto_8
    invoke-virtual {v10, v9}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(Z)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object v9

    if-eqz v14, :cond_10

    move-object v10, v8

    goto :goto_9

    .line 1068
    :cond_10
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ROR/cJ;->CJ()Ljava/lang/String;

    move-result-object v10

    :goto_9
    invoke-virtual {v9, v10}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object v9

    if-eqz v14, :cond_11

    sget v10, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi:I

    goto :goto_a

    :cond_11
    move v10, v12

    .line 1069
    :goto_a
    invoke-virtual {v9, v10}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(I)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object v9

    if-eqz v14, :cond_12

    goto :goto_b

    .line 1070
    :cond_12
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ROR/cJ;->cJ()Ljava/lang/String;

    move-result-object v8

    :goto_b
    invoke-virtual {v9, v8}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->CJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object v0

    .line 1071
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->ac()V

    move-object/from16 v0, p1

    .line 1072
    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lorg/json/JSONObject;Z)V

    .line 1073
    sget-object v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/cJ;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v5

    invoke-static {v0, v7, v12, v8, v9}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/Qhi/cJ;ZIJ)V

    .line 1074
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/Tgh;

    invoke-direct {v0, v7, v12, v11, v13}, Lcom/bytedance/sdk/openadsdk/cJ/Tgh;-><init>(ZILjava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1077
    const-string v2, "uploadEvent error"

    invoke-static {v3, v2, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1078
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/Tgh;

    const/16 v2, 0x1fd

    const-string v3, "service_busy"

    invoke-direct {v0, v4, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/cJ/Tgh;-><init>(ZILjava/lang/String;Z)V

    return-object v0
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/qMt;ILcom/bytedance/sdk/openadsdk/core/tP$Qhi;)V
    .locals 8

    .line 319
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/Qhi/Qhi;

    invoke-direct {v6, p4}, Lcom/bytedance/sdk/openadsdk/core/Qhi/Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;)V

    .line 321
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p4, v0, :cond_0

    .line 322
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->cJ()Landroid/os/Handler;

    move-result-object p4

    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/MQ$1;

    const-string v2, "getAd"

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/MQ$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/MQ;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/qMt;ILcom/bytedance/sdk/openadsdk/core/tP$Qhi;)V

    invoke-virtual {p4, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 329
    :cond_0
    invoke-direct {p0, p1, p2, p3, v6}, Lcom/bytedance/sdk/openadsdk/core/MQ;->cJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/qMt;ILcom/bytedance/sdk/openadsdk/core/tP$Qhi;)V

    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 1

    .line 2067
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/iMK/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->cJ()Lcom/bytedance/sdk/component/ROR/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ROR/Qhi;->ac()Lcom/bytedance/sdk/component/ROR/cJ/cJ;

    move-result-object v0

    .line 2068
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->cJ(Ljava/lang/String;)V

    .line 2069
    const-string p1, "upload_bidding"

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->Qhi(Ljava/lang/String;)V

    const/4 p1, 0x7

    .line 2070
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->Qhi(I)V

    .line 2072
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/MQ$10;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/MQ$10;-><init>(Lcom/bytedance/sdk/openadsdk/core/MQ;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->Qhi(Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;)V

    return-void
.end method

.method public Qhi(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1185
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/ABk;->Qhi()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1188
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/core/MQ;->cJ(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 1193
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/iMK/ac;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->cJ()Lcom/bytedance/sdk/component/ROR/Qhi;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/ROR/Qhi;->cJ()Lcom/bytedance/sdk/component/ROR/cJ/fl;

    move-result-object p3

    .line 1194
    const-string p4, "/api/ad/union/dislike_event/"

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/utils/js;->CJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1195
    sget-object p5, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->DISLIKE:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-static {p5, p2}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    const/4 p5, 0x0

    if-eqz p2, :cond_2

    .line 1198
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p5

    .line 1200
    :goto_0
    invoke-direct {p0, p3, p2}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/component/ROR/cJ/fl;Lorg/json/JSONObject;)V

    .line 1201
    invoke-virtual {p3, p4}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->cJ(Ljava/lang/String;)V

    .line 1202
    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->CJ(Ljava/lang/String;)V

    .line 1203
    new-instance p2, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    const/4 v1, 0x6

    invoke-direct {p2, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;-><init>(I)V

    .line 1204
    invoke-virtual {p2, p4}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p4

    invoke-virtual {p4, v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p4

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi()V

    const/4 p4, 0x7

    .line 1205
    invoke-virtual {p3, p4}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(I)V

    .line 1206
    const-string p4, "dislike"

    invoke-virtual {p3, p4}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Ljava/lang/String;)V

    .line 1207
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/MQ$8;

    invoke-direct {v0, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/MQ$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/MQ;Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;)V

    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;)V

    .line 1224
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1225
    const-string p1, "cid"

    const-string p3, ""

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 1227
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    move-result-object p2

    invoke-virtual {p2, p4, p1, p5, p5}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 1230
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/ABk;->cJ(Ljava/lang/String;)V

    return-void
.end method

.method public Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/tP$cJ;)V
    .locals 4

    .line 1713
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/ABk;->Qhi()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x3e8

    .line 1715
    const-string v0, "Ad request is temporarily paused, Please contact your Pangle AM"

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/tP$cJ;->Qhi(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_4

    if-nez p2, :cond_2

    goto :goto_2

    .line 1726
    :cond_2
    sget-object v0, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->REWARD_VERIFY:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1727
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;-><init>(I)V

    .line 1728
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/iMK/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->cJ()Lcom/bytedance/sdk/component/ROR/Qhi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ROR/Qhi;->cJ()Lcom/bytedance/sdk/component/ROR/cJ/fl;

    move-result-object v1

    .line 1730
    :try_start_0
    const-string v2, "/api/ad/union/sdk/reward_video/reward/"

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/js;->CJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/Tgh/fl;->Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1731
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->cJ(Ljava/lang/String;)V

    .line 1732
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1734
    const-string v3, "NetApiImpl"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/MQ;->Qhi(Lcom/bytedance/sdk/component/ROR/cJ/fl;Lorg/json/JSONObject;)V

    if-eqz p1, :cond_3

    .line 1737
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string p1, ""

    :goto_1
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->CJ(Ljava/lang/String;)V

    .line 1738
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->ac()Lcom/bytedance/sdk/component/cJ/Qhi/pA;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/pA;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;->Qhi()V

    const/16 p1, 0xa

    .line 1739
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(I)V

    .line 1740
    const-string p1, "reward"

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Ljava/lang/String;)V

    .line 1741
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/MQ$9;

    invoke-direct {p1, p0, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/MQ$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/MQ;Lcom/bytedance/sdk/openadsdk/Gm/Qhi/Tgh;Lcom/bytedance/sdk/openadsdk/core/tP$cJ;)V

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public Qhi(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    .line 2092
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/iMK/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->cJ()Lcom/bytedance/sdk/component/ROR/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ROR/Qhi;->cJ()Lcom/bytedance/sdk/component/ROR/cJ/fl;

    move-result-object v0

    .line 2093
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->cJ(Ljava/lang/String;)V

    .line 2094
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Lorg/json/JSONObject;)V

    const/4 p1, 0x5

    .line 2095
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(I)V

    .line 2096
    const-string p1, "apm_pv"

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Ljava/lang/String;)V

    .line 2098
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/MQ$2;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/MQ$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/MQ;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;)V

    return-void
.end method

.method public cJ(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    .line 1895
    const-string v0, "auction_price"

    if-nez p1, :cond_0

    return-object p1

    .line 1901
    :cond_0
    :try_start_0
    const-string v1, "cypher"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 1902
    const-string v2, "message"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1903
    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1904
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/MQ;->cJ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1905
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    .line 1907
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1908
    :try_start_2
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-object p1, v2

    :catch_0
    :catchall_1
    :cond_1
    return-object p1
.end method
