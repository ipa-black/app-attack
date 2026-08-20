.class Lcom/bytedance/sdk/openadsdk/component/reward/fl;
.super Ljava/lang/Object;
.source "FullScreenVideoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/fl$Qhi;
    }
.end annotation


# static fields
.field private static volatile Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/fl;


# instance fields
.field private final CJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bytedance/sdk/openadsdk/core/model/tP;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final ac:Lcom/bytedance/sdk/openadsdk/component/reward/iMK;

.field private final cJ:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->CJ:Ljava/util/Map;

    if-nez p1, :cond_0

    .line 203
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->cJ:Landroid/content/Context;

    .line 204
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/iMK;

    const-string v0, "sp_full_screen_video"

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/iMK;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/iMK;

    return-void
.end method

.method public static Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/fl;
    .locals 2

    .line 192
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/fl;

    if-nez v0, :cond_1

    .line 193
    const-class v0, Lcom/bytedance/sdk/openadsdk/component/reward/fl;

    monitor-enter v0

    .line 194
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/fl;

    if-nez v1, :cond_0

    .line 195
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/fl;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/fl;

    .line 197
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 199
    :cond_1
    :goto_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/fl;

    return-object p0
.end method

.method private Qhi(Ljava/lang/String;I)Ljava/io/File;
    .locals 1

    .line 376
    new-instance v0, Ljava/io/File;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/component/video/api/Qhi/cJ;

    move-result-object p2

    invoke-interface {p2}, Lcom/bykv/vk/openvk/component/video/api/Qhi/cJ;->Qhi()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/fl;ZLcom/bytedance/sdk/openadsdk/core/model/tP;JLjava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(ZLcom/bytedance/sdk/openadsdk/core/model/tP;JLjava/lang/String;)V

    return-void
.end method

.method private Qhi(ZLcom/bytedance/sdk/openadsdk/core/model/tP;JLjava/lang/String;)V
    .locals 13

    move-object v10, p0

    .line 309
    iget-object v0, v10, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->CJ:Ljava/util/Map;

    move-object v3, p2

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    move-wide v4, v0

    goto :goto_0

    .line 310
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v1, v4

    move-wide v4, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 311
    const-string v0, "load_video_success"

    goto :goto_1

    :cond_1
    const-string v0, "load_video_error"

    :goto_1
    move-object v11, v0

    if-nez p1, :cond_2

    if-eqz p5, :cond_2

    move-object/from16 v8, p5

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    move-object v8, v0

    .line 313
    :goto_2
    new-instance v12, Lcom/bytedance/sdk/openadsdk/component/reward/fl$3;

    move-object v0, v12

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide/from16 v6, p3

    move-object v9, v11

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/sdk/openadsdk/component/reward/fl$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/fl;ZLcom/bytedance/sdk/openadsdk/core/model/tP;JJLjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v11, v0, v12}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Gm/cJ;)V

    return-void
.end method

.method private cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 282
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 285
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public Qhi(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/model/Qhi;
    .locals 7

    .line 231
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/iMK;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/iMK;->ac(Ljava/lang/String;)J

    move-result-wide v0

    .line 232
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/iMK;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/iMK;->CJ(Ljava/lang/String;)Z

    move-result v2

    .line 233
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/iMK;

    invoke-virtual {v3, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/iMK;->Tgh(Ljava/lang/String;)Z

    move-result v3

    .line 234
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->cJ()I

    move-result v4

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    const-wide/32 v0, 0xa037a0

    cmp-long v0, v5, v0

    const/4 v1, 0x0

    if-gez v0, :cond_5

    if-nez v2, :cond_5

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    if-ne v4, p2, :cond_0

    if-nez v3, :cond_5

    .line 243
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/iMK;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/iMK;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 244
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 245
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 247
    const-string p1, "creatives"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 248
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->cJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    move-result-object p1

    goto :goto_0

    .line 250
    :cond_1
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/cJ;->Qhi(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object p1

    .line 251
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-direct {p2}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;-><init>()V

    .line 252
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_5

    .line 254
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->CJ()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_2

    .line 257
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 258
    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 259
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 260
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 261
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 264
    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->CJ()Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_5

    return-object p1

    :catch_0
    :cond_5
    :goto_2
    return-object v1
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    .line 208
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Gm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Gm()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->iMK()Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->zTC()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public Qhi(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .line 218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 222
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Tgh;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 223
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 224
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p2

    const-wide/16 v2, 0x0

    cmp-long p2, p2, v2

    if-lez p2, :cond_2

    .line 225
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public Qhi()V
    .locals 8

    const/4 v0, 0x0

    .line 85
    :try_start_0
    const-string v1, "sp_full_screen_video"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/hm;->ROR(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const-string v2, "files"

    goto :goto_0

    .line 90
    :cond_0
    const-string v2, "shared_prefs"

    .line 95
    :goto_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->cJ:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/fl$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/fl$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/fl;)V

    invoke-virtual {v3, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 114
    array-length v3, v2

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    .line 117
    :try_start_1
    invoke-static {v5}, Lcom/bytedance/sdk/component/utils/ROR;->ac(Ljava/io/File;)V

    goto :goto_2

    .line 119
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 120
    const-string v6, ".xml"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 122
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->cJ:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->deleteSharedPreferences(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 142
    :catchall_1
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->cJ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 144
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 145
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/fl$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/fl$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/fl;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 157
    array-length v2, v1

    :goto_3
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 159
    :try_start_3
    invoke-static {v3}, Lcom/bytedance/sdk/component/utils/ROR;->ac(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catchall_3
    :cond_3
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 174
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Qhi()Ljava/lang/String;

    move-result-object v0

    .line 182
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p1

    .line 183
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/iMK;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->zc()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/iMK;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/component/reward/fl$Qhi;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/model/tP;",
            "Lcom/bytedance/sdk/openadsdk/component/reward/fl$Qhi<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->CJ:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Gm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Gm()Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->iMK()Ljava/lang/String;

    move-result-object v1

    .line 339
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->zTC()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 340
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/iMK/ac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->cJ()Lcom/bytedance/sdk/component/ROR/Qhi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ROR/Qhi;->CJ()Lcom/bytedance/sdk/component/ROR/cJ/Qhi;

    move-result-object v2

    .line 341
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/ROR/cJ/Qhi;->cJ(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/component/ROR/cJ/Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/fl$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/fl$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/fl;Lcom/bytedance/sdk/openadsdk/component/reward/fl$Qhi;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/ROR/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 329
    invoke-interface {p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/fl$Qhi;->Qhi(ZLjava/lang/Object;)V

    :cond_2
    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    move-object v4, p1

    .line 332
    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(ZLcom/bytedance/sdk/openadsdk/core/model/tP;JLjava/lang/String;)V

    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/iMK;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/iMK;->fl(Ljava/lang/String;)V

    return-void
.end method

.method public Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 2

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/iMK;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/iMK;->cJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 70
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->jWV()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, ""

    .line 74
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 75
    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/iMK;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/iMK;->ROR(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
