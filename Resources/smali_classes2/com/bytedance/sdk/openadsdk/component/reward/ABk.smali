.class public Lcom/bytedance/sdk/openadsdk/component/reward/ABk;
.super Ljava/lang/Object;
.source "RewardVideoLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;,
        Lcom/bytedance/sdk/openadsdk/component/reward/ABk$Qhi;,
        Lcom/bytedance/sdk/openadsdk/component/reward/ABk$cJ;
    }
.end annotation


# static fields
.field private static volatile Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ABk;


# instance fields
.field private final CJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/component/reward/ABk$cJ;",
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

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->ac:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->CJ:Ljava/util/List;

    .line 451
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$7;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$7;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/ABk;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->Tgh:Lcom/bytedance/sdk/component/utils/bxS$Qhi;

    if-nez p1, :cond_0

    .line 83
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->cJ:Landroid/content/Context;

    .line 85
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->cJ()V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/ABk;)Landroid/content/Context;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->cJ:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/ABk;Lcom/bytedance/sdk/component/Sf/hm;)Lcom/bytedance/sdk/component/Sf/hm;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->fl:Lcom/bytedance/sdk/component/Sf/hm;

    return-object p1
.end method

.method public static Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/ABk;
    .locals 2

    .line 72
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ABk;

    if-nez v0, :cond_1

    .line 73
    const-class v0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ABk;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ABk;

    .line 77
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 79
    :cond_1
    :goto_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ABk;

    return-object p0
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 387
    invoke-interface {p3, p4}, Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 390
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->cJ()I

    move-result p3

    const/4 p4, 0x2

    if-eqz p5, :cond_2

    if-ne p3, p4, :cond_1

    .line 394
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->cJ(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void

    :cond_1
    const/4 p2, 0x1

    if-ne p3, p2, :cond_3

    .line 397
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->cJ:Landroid/content/Context;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/zc;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/zc;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/zc;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    return-void

    :cond_2
    if-ne p3, p4, :cond_3

    .line 401
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->cJ:Landroid/content/Context;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/component/reward/zc;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/zc;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/zc;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V

    .line 402
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->cJ(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    :cond_3
    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;)V
    .locals 10

    .line 219
    invoke-static {}, Lcom/bytedance/sdk/component/utils/ABk;->CJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/api/Tgh/cJ;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 223
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/qMt;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/qMt;-><init>()V

    const/4 v1, 0x2

    if-eqz p2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 224
    :goto_0
    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->cJ:I

    .line 225
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->zc(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 226
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->isExpressAd()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 227
    :cond_2
    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->Sf:I

    .line 229
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->ac()Lcom/bytedance/sdk/openadsdk/core/tP;

    move-result-object v8

    new-instance v9, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$3;

    move-object v1, v9

    move-object v2, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/ABk;ZLcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;Lcom/bytedance/sdk/openadsdk/AdSlot;J)V

    const/4 p2, 0x7

    invoke-interface {v8, p1, v0, p2, v9}, Lcom/bytedance/sdk/openadsdk/core/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/qMt;ILcom/bytedance/sdk/openadsdk/core/tP$Qhi;)V

    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/ABk$cJ;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->CJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->CJ:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->CJ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/ABk;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;Z)V
    .locals 0

    .line 56
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;Z)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/ABk;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/component/reward/hpZ;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;Z)V
    .locals 0

    .line 56
    invoke-direct/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/component/reward/hpZ;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;Z)V

    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/component/reward/hpZ;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;Z)V
    .locals 13

    move-object v8, p0

    move-object v5, p1

    move-object v0, p2

    move-object/from16 v4, p4

    move-object/from16 v9, p6

    .line 276
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$4;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/ABk;)V

    invoke-virtual {v1, p2, v2}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$Qhi;)V

    const/4 v1, 0x1

    if-eqz p5, :cond_0

    .line 283
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 285
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Eh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/cJ;

    move-result-object v2

    .line 286
    iget v2, v2, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->CJ:I

    if-ne v2, v1, :cond_0

    .line 287
    iget-object v2, v8, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->cJ:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/component/utils/hpZ;->CJ(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 288
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$cJ;

    invoke-direct {v1, p2, v4, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$cJ;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/ABk$cJ;)V

    return-void

    :cond_0
    const/4 v10, 0x0

    if-eqz v9, :cond_1

    if-nez p7, :cond_2

    .line 294
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->MQ()I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v10

    .line 297
    :cond_2
    :goto_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 299
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 303
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->zTC()I

    move-result v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/component/video/api/Qhi/cJ;

    move-result-object v1

    invoke-interface {v1}, Lcom/bykv/vk/openvk/component/video/api/Qhi/cJ;->Qhi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/core/video/Qhi/cJ;

    move-result-object v11

    .line 304
    const-string v1, "material_meta"

    invoke-virtual {v11, v1, p2}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->Qhi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    const-string v0, "ad_slot"

    invoke-virtual {v11, v0, v4}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->Qhi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 309
    new-instance v12, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$5;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p5

    move-object/from16 v4, p4

    move-object v5, p1

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$5;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/ABk;Lcom/bytedance/sdk/openadsdk/component/reward/hpZ;ZLcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;Z)V

    invoke-static {v11, v12}, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bykv/vk/openvk/component/video/api/fl/Qhi$Qhi;)V

    goto :goto_1

    :cond_3
    move v10, v1

    :goto_1
    move v1, v10

    goto :goto_2

    :cond_4
    if-eqz p5, :cond_5

    .line 373
    iget-object v0, v8, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->cJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/zc;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/zc;

    move-result-object v0

    invoke-virtual {v0, v4, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/zc;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 378
    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/sdk/openadsdk/component/reward/hpZ;->Qhi()Lcom/bytedance/sdk/openadsdk/component/reward/hm;

    move-result-object v0

    invoke-interface {v9, v0}, Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;Lcom/bytedance/sdk/openadsdk/component/reward/hpZ;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    if-nez p5, :cond_1

    .line 183
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->MQ()I

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 184
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 189
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->zTC()I

    move-result v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/component/video/api/Qhi/cJ;

    move-result-object v1

    invoke-interface {v1}, Lcom/bykv/vk/openvk/component/video/api/Qhi/cJ;->Qhi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/core/video/Qhi/cJ;

    move-result-object v1

    .line 192
    const-string v2, "material_meta"

    invoke-virtual {v1, v2, p1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->Qhi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    const-string p1, "ad_slot"

    invoke-virtual {v1, p1, p2}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->Qhi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$2;

    invoke-direct {p1, p0, p3, p5, p4}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/ABk;Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;ZLcom/bytedance/sdk/openadsdk/component/reward/hpZ;)V

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bykv/vk/openvk/component/video/api/fl/Qhi$Qhi;)V

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 214
    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/component/reward/hpZ;->Qhi()Lcom/bytedance/sdk/openadsdk/component/reward/hm;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/component/reward/ABk;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->CJ:Ljava/util/List;

    return-object p0
.end method

.method private ac()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->ac:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->ac:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->Tgh:Lcom/bytedance/sdk/component/utils/bxS$Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/bxS;->Qhi(Lcom/bytedance/sdk/component/utils/bxS$Qhi;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/component/reward/ABk;)Lcom/bytedance/sdk/component/Sf/hm;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->fl:Lcom/bytedance/sdk/component/Sf/hm;

    return-object p0
.end method

.method private cJ()V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->ac:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->ac:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 437
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->Tgh:Lcom/bytedance/sdk/component/utils/bxS$Qhi;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->cJ:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/bxS;->Qhi(Lcom/bytedance/sdk/component/utils/bxS$Qhi;Landroid/content/Context;)V

    return-void
.end method

.method private cJ(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 2

    .line 408
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->cJ()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 411
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p1

    .line 412
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->cJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/zc;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/zc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/zc;->Qhi(Ljava/lang/String;)V

    return-void
.end method

.method private cJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;)V
    .locals 11

    .line 131
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->cJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/zc;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/zc;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/zc;->Qhi(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 135
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->CJ()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 141
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/hpZ;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->cJ:Landroid/content/Context;

    invoke-direct {v2, v3, v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/hpZ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 142
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Tgh()Z

    move-result v3

    if-nez v3, :cond_0

    .line 143
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->fl()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/hpZ;->cJ()V

    :cond_0
    if-eqz p2, :cond_2

    .line 149
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Tgh()Z

    move-result v3

    if-nez v3, :cond_1

    .line 150
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v3

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->MQ()I

    move-result v3

    if-nez v3, :cond_1

    .line 151
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/hpZ;->Qhi()Lcom/bytedance/sdk/openadsdk/component/reward/hm;

    move-result-object v8

    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, p1

    move-object v6, v0

    move-object v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;Z)V

    .line 154
    :cond_1
    new-instance v10, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$Qhi;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->cJ:Landroid/content/Context;

    const/4 v9, 0x1

    move-object v4, v3

    move-object v6, p1

    move-object v7, v0

    move-object v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$Qhi;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;Z)V

    const/4 p2, 0x0

    invoke-direct {v10, v3, v0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;-><init>(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/component/reward/ABk$1;)V

    move p2, v1

    .line 155
    :goto_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p2, v3, :cond_2

    .line 156
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 157
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Tgh()Z

    move-result v8

    move-object v3, p0

    move-object v5, p1

    move-object v6, v10

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;Lcom/bytedance/sdk/openadsdk/component/reward/hpZ;Z)V

    .line 158
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Gm()Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 164
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_3

    .line 165
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 166
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;

    move-result-object p2

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/ABk;)V

    invoke-virtual {p2, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/video/cJ/Qhi$Qhi;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void

    .line 179
    :cond_4
    invoke-direct {p0, p1, v1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;)V

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->cJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/zc;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/zc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/zc;->Qhi()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 92
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

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->cJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/zc;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/zc;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/zc;->Qhi(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->cJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;)V

    return-void
.end method

.method public Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->cJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/zc;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/zc;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/zc;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 466
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 467
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->fl:Lcom/bytedance/sdk/component/Sf/hm;

    if-eqz v0, :cond_0

    .line 469
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->fl:Lcom/bytedance/sdk/component/Sf/hm;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 472
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->fl:Lcom/bytedance/sdk/component/Sf/hm;

    .line 474
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->ac()V

    return-void
.end method
