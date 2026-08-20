.class public Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;
.super Ljava/lang/Object;
.source "VideoEventManager.java"


# static fields
.field private static final Qhi:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;",
            "Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi:Ljava/util/Map;

    return-void
.end method

.method private static CJ(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)Ljava/lang/String;
    .locals 2

    .line 614
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->cJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->iMK()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static CJ(Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;)V
    .locals 9

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 348
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;

    if-nez p0, :cond_1

    return-void

    .line 352
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->CJ()Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    move-result-object v0

    .line 353
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->fl()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_0

    .line 357
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Qhi()J

    move-result-wide v2

    .line 358
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ac()J

    move-result-wide v4

    .line 361
    new-instance v6, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/cJ;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/cJ;-><init>()V

    .line 362
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->cJ()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/cJ;->Qhi(J)V

    .line 363
    invoke-virtual {v6, v4, v5}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/cJ;->cJ(J)V

    .line 364
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->CJ()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/cJ;->Qhi(I)V

    .line 365
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->fl()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/cJ;->cJ(I)V

    .line 367
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->ac()I

    move-result v4

    .line 368
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->cJ()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v4, v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILcom/bykv/vk/openvk/component/video/api/ac/ac;)Lorg/json/JSONObject;

    move-result-object p0

    .line 369
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v0

    .line 371
    new-instance v4, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;

    invoke-direct {v4, v1, v0, p0, v6}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ac;)V

    .line 372
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->WAv()Z

    move-result p0

    invoke-virtual {v4, p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->Qhi(Z)V

    .line 374
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 375
    const-string v0, "duration"

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 376
    const-string v0, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Tgh()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 377
    const-string p1, "endcard_skip"

    invoke-static {v4, p1, p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 379
    const-string p1, "TTAD.VideoEventManager"

    const-string v0, ""

    invoke-static {p1, v0, p0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)J
    .locals 2

    .line 53
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->ac(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILcom/bykv/vk/openvk/component/video/api/ac/ac;)Lorg/json/JSONObject;
    .locals 3

    .line 75
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 78
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    const-string v1, "session_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-lez p2, :cond_1

    .line 82
    const-string p1, "play_type"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz p0, :cond_3

    .line 85
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 87
    const-string p2, "video_resolution"

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->hm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string p2, "video_size"

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->fl()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string p2, "video_url"

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Gm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string p1, "player_type"

    invoke-virtual {p3}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->pA()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    const-string p1, "video_encode_type"

    invoke-virtual {p3}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->Gm()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    :cond_2
    const-string p1, "dp_creative_type"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->nR()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 96
    const-string p1, "TTAD.VideoEventManager"

    const-string p2, ""

    invoke-static {p1, p2, p0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static Qhi(Landroid/content/Context;Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V
    .locals 6

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 154
    :cond_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;

    if-nez p0, :cond_1

    return-void

    .line 158
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->CJ()Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    move-result-object p1

    .line 159
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->fl()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    if-eqz p1, :cond_5

    if-nez v0, :cond_2

    goto :goto_1

    .line 163
    :cond_2
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->WAv()Z

    move-result v1

    if-nez v1, :cond_3

    .line 164
    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;)V

    .line 167
    :cond_3
    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hm;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hm;-><init>()V

    .line 168
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Gm()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hm;->Qhi(I)V

    .line 169
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->zTC()I

    move-result v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/component/video/api/Qhi/cJ;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/bykv/vk/openvk/component/video/api/Qhi/cJ;->cJ(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hm;->cJ(J)V

    .line 170
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->Qhi()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hm;->Qhi(J)V

    .line 171
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->ac()I

    move-result v2

    .line 173
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->cJ()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILcom/bykv/vk/openvk/component/video/api/ac/ac;)Lorg/json/JSONObject;

    move-result-object p0

    .line 174
    iget v2, p1, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->CJ:I

    if-lez v2, :cond_4

    .line 176
    :try_start_0
    const-string v2, "play_time"

    iget p1, p1, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->CJ:I

    invoke-virtual {p0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 178
    const-string v2, "TTAD.VideoEventManager"

    const-string v3, ""

    invoke-static {v2, v3, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    :cond_4
    :goto_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object p1

    .line 183
    new-instance v2, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;

    invoke-direct {v2, v0, p1, p0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ac;)V

    .line 184
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->WAv()Z

    move-result p0

    invoke-virtual {v2, p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->Qhi(Z)V

    .line 185
    const-string p0, "feed_play"

    invoke-static {v2, p0, p3}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static Qhi(Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;)V
    .locals 9

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 196
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;

    if-nez p0, :cond_1

    return-void

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->CJ()Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    move-result-object v0

    .line 201
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->fl()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v1

    if-eqz v0, :cond_5

    if-nez v1, :cond_2

    goto :goto_1

    .line 205
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Qhi()J

    move-result-wide v2

    .line 206
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ac()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_5

    cmp-long v6, v2, v6

    if-gtz v6, :cond_3

    goto :goto_1

    .line 212
    :cond_3
    new-instance v6, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Sf;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Sf;-><init>()V

    .line 213
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->cJ()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Sf;->Qhi(J)V

    .line 214
    invoke-virtual {v6, v4, v5}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Sf;->cJ(J)V

    .line 216
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->ac()I

    move-result v4

    .line 217
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->cJ()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v4, v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILcom/bykv/vk/openvk/component/video/api/ac/ac;)Lorg/json/JSONObject;

    move-result-object p0

    .line 218
    iget v4, v0, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->CJ:I

    const-string v5, ""

    const-string v7, "TTAD.VideoEventManager"

    if-lez v4, :cond_4

    .line 220
    :try_start_0
    const-string v4, "play_time"

    iget v0, v0, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->CJ:I

    invoke-virtual {p0, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 222
    invoke-static {v7, v5, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    :cond_4
    :goto_0
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v0

    .line 227
    new-instance v4, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;

    invoke-direct {v4, v1, v0, p0, v6}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ac;)V

    .line 228
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->WAv()Z

    move-result p0

    invoke-virtual {v4, p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->Qhi(Z)V

    .line 231
    :try_start_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 232
    const-string v0, "duration"

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 233
    const-string v0, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Tgh()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 234
    const-string p1, "feed_pause"

    invoke-static {v4, p1, p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 236
    invoke-static {v7, v5, p0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static Qhi(Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V
    .locals 9

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 391
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;

    if-nez p0, :cond_1

    return-void

    .line 395
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->CJ()Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    move-result-object v0

    .line 396
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->fl()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v1

    if-eqz v0, :cond_4

    if-nez v1, :cond_2

    goto :goto_1

    .line 400
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Qhi()J

    move-result-wide v2

    .line 401
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ac()J

    move-result-wide v4

    .line 403
    new-instance v6, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/fl;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/fl;-><init>()V

    .line 404
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->cJ()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/fl;->cJ(J)V

    .line 405
    invoke-virtual {v6, v4, v5}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/fl;->Qhi(J)V

    .line 406
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ROR()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/fl;->Qhi(I)V

    .line 407
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Sf()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/fl;->cJ(I)V

    .line 409
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->ac()I

    move-result v4

    .line 410
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->cJ()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v4, v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILcom/bykv/vk/openvk/component/video/api/ac/ac;)Lorg/json/JSONObject;

    move-result-object p0

    .line 411
    iget v4, v0, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->CJ:I

    const-string v5, ""

    const-string v7, "TTAD.VideoEventManager"

    if-lez v4, :cond_3

    .line 413
    :try_start_0
    const-string v4, "play_time"

    iget v0, v0, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->CJ:I

    invoke-virtual {p0, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 415
    invoke-static {v7, v5, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 418
    :cond_3
    :goto_0
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v0

    .line 420
    new-instance v4, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;

    invoke-direct {v4, v1, v0, p0, v6}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ac;)V

    .line 421
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->WAv()Z

    move-result p0

    invoke-virtual {v4, p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->Qhi(Z)V

    .line 423
    :try_start_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 424
    const-string v0, "duration"

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 425
    const-string v0, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Tgh()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 426
    const-string p1, "feed_break"

    invoke-static {v4, p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 428
    invoke-static {v7, v5, p0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi<",
            "Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Gm;",
            ">;)V"
        }
    .end annotation

    .line 105
    const-string v0, "load_video_error"

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;)V

    return-void
.end method

.method private static Qhi(Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 528
    invoke-static {p0, p1, v0, v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    return-void
.end method

.method private static Qhi(Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V
    .locals 1

    const/4 v0, 0x0

    .line 536
    invoke-static {p0, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    return-void
.end method

.method private static Qhi(Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 532
    invoke-static {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    return-void
.end method

.method private static Qhi(Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 544
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 547
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->fl()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->cJ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 548
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->cJ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "stream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "embeded_ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 551
    :cond_2
    const-string v0, "customer_"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_0
    move-object v4, p1

    .line 557
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->cJ()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi$1;

    invoke-direct {v5, p0, v4, p3, p2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi$1;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/cJ/Sf;Lorg/json/JSONObject;)V

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(JLcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;)V

    return-void
.end method

.method private static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;)V
    .locals 1

    .line 582
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/Gm/ac;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi$2;

    invoke-direct {v0, p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi$2;-><init>(Lcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    const-string p0, "pangle_video_play_state"

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Gm/cJ;)V

    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;Lcom/bykv/vk/openvk/component/video/api/ac/ac;)V
    .locals 11

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_3

    .line 123
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/bxS;->Qhi()Ljava/lang/String;

    move-result-object v7

    .line 124
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->zTC()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/component/video/api/Qhi/cJ;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/bykv/vk/openvk/component/video/api/Qhi/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_1

    move v9, v8

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    move v9, v0

    .line 126
    :goto_0
    new-instance v10, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    move-object v0, v10

    move-object v3, v7

    move v4, v9

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;-><init>(JLjava/lang/String;ILcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 127
    sget-object v0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi:Ljava/util/Map;

    invoke-interface {v0, p1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {p0, v7, v9, p2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILcom/bykv/vk/openvk/component/video/api/ac/ac;)Lorg/json/JSONObject;

    move-result-object p1

    .line 130
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v0

    .line 131
    iget v1, p2, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->CJ:I

    if-lez v1, :cond_2

    .line 133
    :try_start_0
    const-string v1, "play_time"

    iget v2, p2, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->CJ:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 135
    const-string v2, "TTAD.VideoEventManager"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    :cond_2
    :goto_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ac;)V

    .line 139
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->pA()I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v1, v8}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->Qhi(Z)V

    .line 140
    const-string p0, "play_start"

    invoke-static {v1, p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private static ac(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)J
    .locals 4

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 606
    :cond_0
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->Gm()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->qMt()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->MQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 608
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Tgh()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    :cond_2
    return-wide v0
.end method

.method public static ac(Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;)V
    .locals 10

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 298
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;

    if-nez v0, :cond_1

    return-void

    .line 302
    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->CJ()Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    move-result-object v1

    .line 303
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->fl()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v2

    if-eqz v1, :cond_4

    if-nez v2, :cond_2

    goto :goto_2

    .line 307
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Qhi()J

    move-result-wide v3

    .line 308
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ac()J

    move-result-wide v5

    .line 310
    new-instance v7, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/pA;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->zc()Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/pA;-><init>(Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;)V

    .line 311
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->cJ()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/pA;->Qhi(J)V

    .line 312
    invoke-virtual {v7, v5, v6}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/pA;->cJ(J)V

    .line 314
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->ac()I

    move-result v5

    .line 315
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->cJ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v5, v1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILcom/bykv/vk/openvk/component/video/api/ac/ac;)Lorg/json/JSONObject;

    move-result-object v0

    .line 316
    iget v5, v1, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->CJ:I

    const-string v6, ""

    const-string v8, "TTAD.VideoEventManager"

    if-lez v5, :cond_3

    .line 318
    :try_start_0
    const-string v5, "play_time"

    iget v1, v1, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->CJ:I

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 320
    invoke-static {v8, v6, v1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 323
    :cond_3
    :goto_0
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v1

    .line 325
    new-instance v5, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;

    invoke-direct {v5, v2, v1, v0, v7}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ac;)V

    .line 326
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->WAv()Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->Qhi(Z)V

    .line 329
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 330
    const-string v1, "duration"

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 331
    const-string v1, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Tgh()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 332
    const-string p1, "play_error"

    invoke-static {v5, p1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 334
    invoke-static {v8, v6, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 337
    :goto_1
    sget-object p1, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    return-void
.end method

.method static synthetic cJ(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)Ljava/lang/String;
    .locals 0

    .line 53
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->CJ(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cJ(Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;)V
    .locals 9

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 247
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;

    if-nez p0, :cond_1

    return-void

    .line 251
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->CJ()Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    move-result-object v0

    .line 252
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->fl()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v1

    if-eqz v0, :cond_5

    if-nez v1, :cond_2

    goto :goto_1

    .line 256
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Qhi()J

    move-result-wide v2

    .line 257
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ac()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_5

    cmp-long v6, v2, v6

    if-gtz v6, :cond_3

    goto :goto_1

    .line 263
    :cond_3
    new-instance v6, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Tgh;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Tgh;-><init>()V

    .line 264
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->cJ()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Tgh;->Qhi(J)V

    .line 265
    invoke-virtual {v6, v4, v5}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Tgh;->cJ(J)V

    .line 267
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->ac()I

    move-result v4

    .line 268
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->cJ()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v4, v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILcom/bykv/vk/openvk/component/video/api/ac/ac;)Lorg/json/JSONObject;

    move-result-object p0

    .line 269
    iget v4, v0, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->CJ:I

    const-string v5, ""

    const-string v7, "TTAD.VideoEventManager"

    if-lez v4, :cond_4

    .line 271
    :try_start_0
    const-string v4, "play_time"

    iget v0, v0, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->CJ:I

    invoke-virtual {p0, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 273
    invoke-static {v7, v5, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    :cond_4
    :goto_0
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v0

    .line 278
    new-instance v4, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;

    invoke-direct {v4, v1, v0, p0, v6}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ac;)V

    .line 279
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->WAv()Z

    move-result p0

    invoke-virtual {v4, p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->Qhi(Z)V

    .line 281
    :try_start_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 282
    const-string v0, "duration"

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 283
    const-string v0, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Tgh()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 284
    const-string p1, "feed_continue"

    invoke-static {v4, p1, p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 286
    invoke-static {v7, v5, p0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static cJ(Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V
    .locals 10

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 441
    :cond_0
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->fl(Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;)V

    .line 443
    sget-object v0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;

    if-nez v0, :cond_1

    return-void

    .line 447
    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->CJ()Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    move-result-object v1

    .line 448
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->fl()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v2

    if-eqz v1, :cond_4

    if-nez v2, :cond_2

    goto :goto_2

    .line 452
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Qhi()J

    move-result-wide v3

    .line 453
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ac()J

    move-result-wide v5

    .line 455
    new-instance v7, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ROR;

    invoke-direct {v7}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ROR;-><init>()V

    .line 456
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->cJ()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ROR;->cJ(J)V

    .line 457
    invoke-virtual {v7, v5, v6}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ROR;->Qhi(J)V

    .line 458
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Sf()I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ROR;->Qhi(I)V

    .line 460
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->ac()I

    move-result v5

    .line 461
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->cJ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v5, v1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILcom/bykv/vk/openvk/component/video/api/ac/ac;)Lorg/json/JSONObject;

    move-result-object v0

    .line 462
    iget v5, v1, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->CJ:I

    const-string v6, ""

    const-string v8, "TTAD.VideoEventManager"

    if-lez v5, :cond_3

    .line 464
    :try_start_0
    const-string v5, "play_time"

    iget v1, v1, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->CJ:I

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 466
    invoke-static {v8, v6, v1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 469
    :cond_3
    :goto_0
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v1

    .line 470
    new-instance v5, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;

    invoke-direct {v5, v2, v1, v0, v7}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ac;)V

    .line 471
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->WAv()Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->Qhi(Z)V

    .line 474
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 475
    const-string v1, "duration"

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 476
    const-string v1, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Tgh()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 477
    const-string p1, "feed_over"

    invoke-static {v5, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 479
    invoke-static {v8, v6, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 482
    :goto_1
    sget-object p1, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    return-void
.end method

.method public static cJ(Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi<",
            "Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/WAv;",
            ">;)V"
        }
    .end annotation

    .line 112
    const-string v0, "load_video_cancel"

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;)V

    return-void
.end method

.method public static fl(Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;)V
    .locals 7

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    .line 492
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->hm()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    .line 496
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;

    if-nez p0, :cond_2

    return-void

    .line 500
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->CJ()Lcom/bykv/vk/openvk/component/video/api/ac/ac;

    move-result-object v0

    .line 501
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->fl()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v1

    if-eqz v0, :cond_5

    if-nez v1, :cond_3

    goto :goto_1

    .line 505
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ac()J

    move-result-wide v2

    .line 507
    new-instance v4, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/iMK;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/iMK;-><init>()V

    .line 508
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->cJ()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/iMK;->Qhi(J)V

    .line 509
    invoke-virtual {v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/iMK;->cJ(J)V

    .line 510
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->hm()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/iMK;->Qhi(I)V

    .line 512
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->ac()I

    move-result v2

    .line 513
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ;->cJ()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILcom/bykv/vk/openvk/component/video/api/ac/ac;)Lorg/json/JSONObject;

    move-result-object p0

    .line 514
    iget v2, v0, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->CJ:I

    if-lez v2, :cond_4

    .line 516
    :try_start_0
    const-string v2, "play_time"

    iget v0, v0, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->CJ:I

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 518
    const-string v2, "TTAD.VideoEventManager"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 521
    :cond_4
    :goto_0
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v0

    .line 522
    new-instance v2, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;

    invoke-direct {v2, v1, v0, p0, v4}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ac;)V

    .line 523
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->WAv()Z

    move-result p0

    invoke-virtual {v2, p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;->Qhi(Z)V

    .line 524
    const-string p0, "play_buffer"

    invoke-static {v2, p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method
