.class public Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;
.super Ljava/lang/Object;
.source "FullScreenVideoLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;,
        Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$Qhi;,
        Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$ac;
    }
.end annotation


# static fields
.field private static volatile Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;


# instance fields
.field private final CJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$ac;",
            ">;"
        }
    .end annotation
.end field

.field private final Tgh:Lcom/bytedance/sdk/component/utils/bxS$Qhi;

.field private final ac:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final cJ:Landroid/content/Context;

.field private fl:Lcom/bytedance/sdk/component/Sf/hm;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->ac:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->CJ:Ljava/util/List;

    .line 469
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$7;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$7;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->Tgh:Lcom/bytedance/sdk/component/utils/bxS$Qhi;

    if-nez p1, :cond_0

    .line 97
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->cJ:Landroid/content/Context;

    .line 99
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->ac()V

    return-void
.end method

.method private CJ()V
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->ac:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->ac:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 464
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->Tgh:Lcom/bytedance/sdk/component/utils/bxS$Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/bxS;->Qhi(Lcom/bytedance/sdk/component/utils/bxS$Qhi;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->cJ:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;Lcom/bytedance/sdk/component/Sf/hm;)Lcom/bytedance/sdk/component/Sf/hm;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->fl:Lcom/bytedance/sdk/component/Sf/hm;

    return-object p1
.end method

.method public static Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;
    .locals 2

    .line 86
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;

    if-nez v0, :cond_1

    .line 87
    const-class v0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;

    monitor-enter v0

    .line 88
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;

    .line 91
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 93
    :cond_1
    :goto_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;

    return-object p0
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 200
    invoke-interface {p3, p4}, Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 203
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->cJ()I

    move-result p3

    const/4 p4, 0x2

    if-eqz p5, :cond_2

    if-ne p3, p4, :cond_1

    .line 207
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->cJ(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void

    :cond_1
    const/4 p2, 0x1

    if-ne p3, p2, :cond_3

    .line 210
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->cJ:Landroid/content/Context;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/fl;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    return-void

    :cond_2
    if-ne p3, p4, :cond_3

    .line 214
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->cJ:Landroid/content/Context;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/fl;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V

    .line 215
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->cJ(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    :cond_3
    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;)V
    .locals 11

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 259
    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/model/qMt;

    invoke-direct {v8}, Lcom/bytedance/sdk/openadsdk/core/model/qMt;-><init>()V

    const/4 v0, 0x2

    if-eqz p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 260
    :goto_0
    iput v1, v8, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->ac:I

    .line 261
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->zc(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 262
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->isExpressAd()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    :cond_1
    iput v0, v8, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->Sf:I

    .line 265
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->ac()Lcom/bytedance/sdk/openadsdk/core/tP;

    move-result-object v9

    new-instance v10, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$3;

    move-object v0, v10

    move-object v1, p0

    move v2, p2

    move-object v3, p4

    move-object v4, p1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;ZLcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;Lcom/bytedance/sdk/openadsdk/AdSlot;JLcom/bytedance/sdk/openadsdk/utils/Jma;)V

    const/16 p2, 0x8

    invoke-interface {v9, p1, v8, p2, v10}, Lcom/bytedance/sdk/openadsdk/core/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/qMt;ILcom/bytedance/sdk/openadsdk/core/tP$Qhi;)V

    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$ac;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->CJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->CJ:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->CJ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;Z)V
    .locals 0

    .line 57
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;Z)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/component/reward/pA;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;Z)V
    .locals 0

    .line 57
    invoke-direct/range {p0 .. p8}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/component/reward/pA;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;Z)V

    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/component/reward/pA;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;Z)V
    .locals 13

    move-object v8, p0

    move-object v5, p1

    move-object v0, p2

    move-object/from16 v4, p4

    move-object/from16 v9, p7

    .line 314
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$4;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;)V

    invoke-virtual {v1, p2, v2}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$Qhi;)V

    const/4 v1, 0x1

    if-eqz p5, :cond_0

    .line 320
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object v2

    .line 323
    iget v2, v2, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->CJ:I

    if-ne v2, v1, :cond_0

    .line 324
    iget-object v2, v8, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->cJ:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/component/utils/hpZ;->CJ(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 325
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$ac;

    invoke-direct {v1, p2, v4, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$ac;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$ac;)V

    return-void

    :cond_0
    const/4 v10, 0x0

    if-eqz v9, :cond_1

    if-nez p8, :cond_2

    .line 332
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->MQ()I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v10

    .line 334
    :cond_2
    :goto_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 335
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 337
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 341
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->zTC()I

    move-result v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/component/video/api/Qhi/cJ;

    move-result-object v1

    invoke-interface {v1}, Lcom/bykv/vk/openvk/component/video/api/Qhi/cJ;->Qhi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/core/video/Qhi/cJ;

    move-result-object v11

    .line 343
    const-string v1, "material_meta"

    invoke-virtual {v11, v1, p2}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->Qhi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 344
    const-string v0, "ad_slot"

    invoke-virtual {v11, v0, v4}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->Qhi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 347
    new-instance v12, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$5;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p5

    move-object/from16 v4, p4

    move-object v5, p1

    move-object/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$5;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;Lcom/bytedance/sdk/openadsdk/component/reward/pA;ZLcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;Z)V

    invoke-static {v11, v12}, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bykv/vk/openvk/component/video/api/fl/Qhi$Qhi;)V

    goto :goto_1

    :cond_3
    move v10, v1

    :goto_1
    move v1, v10

    goto :goto_2

    :cond_4
    if-eqz p5, :cond_6

    .line 410
    iget-object v0, v8, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->cJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/fl;

    move-result-object v0

    invoke-virtual {v0, v4, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V

    goto :goto_2

    :cond_5
    if-eqz p5, :cond_6

    .line 415
    iget-object v0, v8, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->cJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/fl;

    move-result-object v0

    invoke-virtual {v0, v4, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V

    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 420
    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/sdk/openadsdk/component/reward/pA;->Qhi()Lcom/bytedance/sdk/openadsdk/component/reward/ROR;

    move-result-object v0

    invoke-interface {v9, v0}, Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;Lcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/component/reward/pA;Z)V
    .locals 2

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    if-nez p6, :cond_1

    .line 221
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->MQ()I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p4

    .line 223
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    .line 227
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->zTC()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/component/video/api/Qhi/cJ;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/Qhi/cJ;->Qhi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/core/video/Qhi/cJ;

    move-result-object v0

    .line 229
    const-string v1, "material_meta"

    invoke-virtual {v0, v1, p1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->Qhi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 230
    const-string p1, "ad_slot"

    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->Qhi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 232
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$2;

    invoke-direct {p1, p0, p3, p6, p5}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;ZLcom/bytedance/sdk/openadsdk/component/reward/pA;)V

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bykv/vk/openvk/component/video/api/fl/Qhi$Qhi;)V

    goto :goto_1

    :cond_2
    move p4, v0

    :goto_1
    if-eqz p4, :cond_3

    .line 253
    invoke-virtual {p5}, Lcom/bytedance/sdk/openadsdk/component/reward/pA;->Qhi()Lcom/bytedance/sdk/openadsdk/component/reward/ROR;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;)Ljava/util/List;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->CJ:Ljava/util/List;

    return-object p0
.end method

.method private ac()V
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->ac:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->ac:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 455
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->Tgh:Lcom/bytedance/sdk/component/utils/bxS$Qhi;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->cJ:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/bxS;->Qhi(Lcom/bytedance/sdk/component/utils/bxS$Qhi;Landroid/content/Context;)V

    return-void
.end method

.method public static cJ()I
    .locals 2

    .line 647
    const-string v0, "ivrv_load_ad_cache_strategy"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/HzH/Qhi;->Qhi(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;)Lcom/bytedance/sdk/component/Sf/hm;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->fl:Lcom/bytedance/sdk/component/Sf/hm;

    return-object p0
.end method

.method private cJ(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 2

    .line 426
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->cJ()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 429
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p1

    .line 430
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->cJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/fl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(Ljava/lang/String;)V

    return-void
.end method

.method private cJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;)V
    .locals 14

    move-object v7, p0

    move-object/from16 v6, p2

    .line 142
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->Qhi()Lcom/bytedance/sdk/openadsdk/utils/Jma;

    move-result-object v8

    .line 143
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_4

    .line 146
    iget-object v0, v7, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->cJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/fl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 147
    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->CJ()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 153
    new-instance v11, Lcom/bytedance/sdk/openadsdk/component/reward/pA;

    iget-object v0, v7, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->cJ:Landroid/content/Context;

    invoke-direct {v11, v0, v10}, Lcom/bytedance/sdk/openadsdk/component/reward/pA;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V

    .line 154
    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Tgh()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->fl()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/component/reward/pA;->cJ()V

    :cond_0
    if-eqz v6, :cond_2

    .line 160
    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Tgh()Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->MQ()I

    move-result v0

    if-nez v0, :cond_1

    .line 162
    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/component/reward/pA;->Qhi()Lcom/bytedance/sdk/openadsdk/component/reward/ROR;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v10

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;Z)V

    .line 165
    :cond_1
    new-instance v12, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;

    new-instance v13, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$Qhi;

    iget-object v1, v7, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->cJ:Landroid/content/Context;

    const/4 v5, 0x1

    move-object v0, v13

    move-object v2, p1

    move-object v3, v10

    move-object/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$Qhi;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;Z)V

    const/4 v0, 0x0

    invoke-direct {v12, v13, v10, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;-><init>(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$1;)V

    move v13, v9

    .line 166
    :goto_0
    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_2

    .line 167
    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 168
    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Tgh()Z

    move-result v6

    move-object v0, p0

    move-object v2, p1

    move-object v3, v12

    move-object v4, v8

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;Lcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/component/reward/pA;Z)V

    .line 169
    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Gm()Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 176
    :cond_2
    :goto_1
    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_3

    .line 177
    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 178
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;)V

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$Qhi;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    move-object v0, p1

    .line 192
    invoke-direct {p0, p1, v9, v8, v6}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;)V

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 1

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->cJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/fl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 116
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->cJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/fl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    .line 130
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->Qhi()Lcom/bytedance/sdk/openadsdk/utils/Jma;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->cJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;)V

    return-void
.end method

.method public Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->cJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/fl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 484
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 485
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->fl:Lcom/bytedance/sdk/component/Sf/hm;

    if-eqz v0, :cond_0

    .line 487
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->fl:Lcom/bytedance/sdk/component/Sf/hm;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 490
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->fl:Lcom/bytedance/sdk/component/Sf/hm;

    .line 492
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->CJ()V

    return-void
.end method
