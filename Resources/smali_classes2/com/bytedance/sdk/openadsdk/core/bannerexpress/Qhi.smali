.class public Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;
.super Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;
.source "PAGBannerAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/component/utils/CQU$Qhi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;,
        Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$cJ;
    }
.end annotation


# instance fields
.field private ABk:Lcom/bytedance/sdk/component/utils/CQU;

.field protected CJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private Gm:Lcom/bytedance/sdk/openadsdk/dislike/cJ;

.field private HzH:Z

.field private final MQ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;

.field private final ROR:Z

.field private Sf:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

.field protected final Tgh:Landroid/view/View$OnAttachStateChangeListener;

.field private WAv:I

.field protected ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field protected final cJ:Landroid/content/Context;

.field fl:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

.field private hm:I

.field private hpZ:Z

.field private iMK:Lcom/bytedance/sdk/openadsdk/core/CQU$Qhi;

.field private kYc:Ljava/lang/String;

.field private final pA:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private qMt:Z

.field private tP:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

.field private zc:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 2

    .line 115
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->WAv:I

    .line 104
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->pA:Ljava/util/Queue;

    .line 108
    const-string v1, "banner_ad"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->kYc:Ljava/lang/String;

    .line 111
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->MQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 194
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Tgh:Landroid/view/View$OnAttachStateChangeListener;

    .line 116
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->cJ:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 118
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->CJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 119
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 121
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->ROR:Z

    .line 122
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->qMt:Z

    return-void
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    return-object p0
.end method

.method private CJ()V
    .locals 7

    .line 669
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->cJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->CJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$8;

    invoke-direct {v5, p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)V

    const/16 v6, 0x1388

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/common/fl;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh$Qhi;I)V

    return-void
.end method

.method static synthetic Gm(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->kYc:Ljava/lang/String;

    return-object p0
.end method

.method private Qhi(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 494
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 495
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 496
    instance-of v3, v2, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    if-eqz v3, :cond_1

    .line 497
    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/EmptyView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    return-object v0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    move-result-object p0

    return-object p0
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;
    .locals 2

    .line 443
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ip()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 444
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->cJ:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->kYc:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/Tgh;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private Qhi(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;)V
    .locals 2

    .line 404
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/hm;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;)V

    .line 405
    const-string p4, "banner_ad"

    const-string p5, "ExpressView SHOW"

    filled-new-array {p4, p5}, [Ljava/lang/Object;

    .line 406
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->pA:Ljava/util/Queue;

    if-eqz p4, :cond_0

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 410
    :cond_0
    :try_start_0
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    if-eqz p2, :cond_1

    .line 412
    const-string p5, "dynamic_show_type"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getDynamicShowType()I

    move-result v0

    invoke-virtual {p4, p5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 413
    invoke-virtual {p2, p4, p3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Lorg/json/JSONObject;

    :cond_1
    if-eqz p1, :cond_2

    .line 416
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :try_start_1
    const-string p5, "width"

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2, p5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 419
    const-string p5, "height"

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p2, p5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 420
    const-string p5, "alpha"

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p2, p5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    :catchall_0
    :try_start_2
    const-string p5, "root_view"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 425
    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->kYc:Ljava/lang/String;

    invoke-static {p3, p2, p4}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 427
    :catch_0
    const-string p2, "PAGBannerAdImpl"

    const-string p4, "onShowFun json error"

    invoke-static {p2, p4}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :goto_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    if-eqz p2, :cond_3

    .line 430
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ip()I

    move-result p4

    invoke-interface {p2, p1, p4}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;->onAdShow(Landroid/view/View;I)V

    .line 432
    :cond_3
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->PER()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 433
    invoke-static {p3, p1}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Landroid/view/View;)V

    .line 435
    :cond_4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Tgh()V

    .line 436
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;->getCurView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 437
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;->getCurView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->WAv()V

    .line 438
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;->getCurView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Sf()V

    :cond_5
    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/core/EmptyView;ZLcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 392
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;->getCurView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 393
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->fl()V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 395
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->fl()V

    .line 398
    :cond_1
    :goto_0
    invoke-direct {p0, p3}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;)V
    .locals 0

    .line 81
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;Lcom/bytedance/sdk/openadsdk/core/EmptyView;ZLcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/EmptyView;ZLcom/bytedance/sdk/openadsdk/core/model/tP;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;ZLcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi(ZLcom/bytedance/sdk/openadsdk/core/model/tP;)V

    return-void
.end method

.method private Qhi(ZLcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 4

    .line 372
    const-string v0, "banner_ad"

    if-eqz p1, :cond_1

    .line 373
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->qb()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ZRq()Z

    move-result v1

    if-nez v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ROR(Z)V

    .line 375
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->kYc:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->up()Lcom/bytedance/sdk/openadsdk/utils/Jma;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/Jma;)V

    .line 377
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Tgh()V

    .line 378
    const-string v1, "Get focus, start timing"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    goto :goto_0

    .line 380
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->fl()V

    .line 381
    const-string v1, "Lose focus, stop timing"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 383
    :goto_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$cJ;

    invoke-direct {v0, p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$cJ;-><init>(ZLcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)V

    const/16 p1, 0xa

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/lG;->cJ(Lcom/bytedance/sdk/component/Sf/hm;I)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->qMt:Z

    return p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->qMt:Z

    return p1
.end method

.method static synthetic ROR(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->tP:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    return-object p0
.end method

.method static synthetic Sf(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->ROR:Z

    return p0
.end method

.method static synthetic Tgh(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->MQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private Tgh()V
    .locals 4

    .line 721
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->ABk:Lcom/bytedance/sdk/component/utils/CQU;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 722
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 723
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->ABk:Lcom/bytedance/sdk/component/utils/CQU;

    const v1, 0x1b64a

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/utils/CQU;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method static synthetic WAv(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)I
    .locals 0

    .line 81
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->hm:I

    return p0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)Lcom/bytedance/sdk/openadsdk/dislike/cJ;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Gm:Lcom/bytedance/sdk/openadsdk/dislike/cJ;

    return-object p0
.end method

.method private ac()V
    .locals 0

    .line 386
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->cJ()V

    .line 387
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Tgh()V

    return-void
.end method

.method private ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;->getNextView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;->Tgh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;->getNextView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->cJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 693
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;->getNextView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    :cond_0
    return-void
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->zc:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    return-object p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;ZLcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->cJ(ZLcom/bytedance/sdk/openadsdk/core/model/tP;)V

    return-void
.end method

.method private cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 4

    .line 508
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->pA:Ljava/util/Queue;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 512
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->pA:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 513
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->tP:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v2, :cond_1

    .line 514
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 515
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->kYc:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->tP:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getAdShowTime()Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 518
    const-string v0, "PAGBannerAdImpl"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private cJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 3

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->iMK:Lcom/bytedance/sdk/openadsdk/core/CQU$Qhi;

    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Gm:Lcom/bytedance/sdk/openadsdk/dislike/cJ;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->EGK()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->VnT()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->Qhi(Ljava/lang/String;Ljava/util/List;)V

    .line 704
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Gm:Lcom/bytedance/sdk/openadsdk/dislike/cJ;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setDislike(Lcom/bytedance/sdk/openadsdk/dislike/cJ;)V

    .line 707
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->fl:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    if-eqz v0, :cond_2

    .line 708
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->EGK()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->VnT()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->setMaterialMeta(Ljava/lang/String;Ljava/util/List;)V

    .line 709
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->fl:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setOuterDislike(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private cJ(ZLcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 473
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->pA:Ljava/util/Queue;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void

    .line 475
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->pA:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->tP:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz p1, :cond_1

    .line 476
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->pA:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_1

    .line 478
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 479
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 480
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->kYc:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->tP:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getAdShowTime()Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 485
    const-string p2, "PAGBannerAdImpl"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private fl()V
    .locals 2

    .line 715
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->ABk:Lcom/bytedance/sdk/component/utils/CQU;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 716
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic fl(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->ac()V

    return-void
.end method

.method static synthetic hm(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->fl()V

    return-void
.end method

.method static synthetic zc(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Tgh()V

    return-void
.end method


# virtual methods
.method public Qhi()Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;
    .locals 1

    .line 537
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$7;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)V

    return-object v0
.end method

.method public Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 1

    .line 208
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;

    .line 209
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Tgh:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public Qhi(Landroid/os/Message;)V
    .locals 2

    .line 648
    iget p1, p1, Landroid/os/Message;->what:I

    const v0, 0x1b64a

    if-ne p1, v0, :cond_2

    .line 649
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;

    const/16 v0, 0x32

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/sDy;->Qhi(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 650
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->WAv:I

    add-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->WAv:I

    .line 652
    :cond_0
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->WAv:I

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->hm:I

    if-lt p1, v0, :cond_1

    .line 653
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->CJ()V

    .line 654
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->CJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getRotateOrder()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->setRotateOrder(I)V

    const/4 p1, 0x0

    .line 655
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->WAv:I

    .line 656
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->fl()V

    return-void

    .line 659
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Tgh()V

    :cond_2
    return-void
.end method

.method protected Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 12

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 224
    :cond_0
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 225
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->zc:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    .line 226
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->tP:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 227
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/bxS;->Qhi()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;

    move-result-object v7

    .line 229
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setClosedListenerKey(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p1, v7}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setBannerClickClosedListener(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;)V

    .line 232
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setBackupListener(Lcom/bytedance/sdk/component/adexpress/cJ/ac;)V

    .line 263
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->ROR:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v1, :cond_2

    .line 264
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    move-result-object v1

    if-nez v1, :cond_1

    .line 266
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->cJ:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 267
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->addView(Landroid/view/View;)V

    :cond_1
    move-object v10, v1

    .line 270
    new-instance v11, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$3;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p2

    move-object v4, v10

    move-object v5, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/EmptyView;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;)V

    invoke-virtual {v10, v11}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setCallback(Lcom/bytedance/sdk/openadsdk/core/EmptyView$Qhi;)V

    goto :goto_0

    .line 294
    :cond_2
    new-instance v10, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$4;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, v0

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;)V

    invoke-static {p1, v8, v8, v10, v9}, Lcom/bytedance/sdk/openadsdk/utils/es;->Qhi(Landroid/view/ViewGroup;ZILcom/bytedance/sdk/openadsdk/utils/es$cJ;Ljava/util/List;)V

    move-object v10, v9

    :goto_0
    if-eqz p1, :cond_3

    .line 324
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/cJ;->Qhi(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v9

    :cond_3
    if-nez v9, :cond_4

    .line 327
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->cJ:Landroid/content/Context;

    .line 331
    :cond_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->kYc:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {v0, v9, p2, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    .line 332
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;->Qhi(Landroid/view/View;)V

    .line 333
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/api/PangleAd;)V

    .line 334
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->zc:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;)V

    .line 335
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/cJ$Qhi;)V

    .line 343
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setClickListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;)V

    .line 345
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->cJ:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->kYc:Ljava/lang/String;

    invoke-direct {v0, v1, p2, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    .line 346
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;->Qhi(Landroid/view/View;)V

    .line 347
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/api/PangleAd;)V

    .line 348
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$6;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;)V

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/cJ$Qhi;)V

    .line 356
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->tP:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    instance-of v1, p2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;

    if-eqz v1, :cond_5

    .line 357
    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->getVideoController()Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;->Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/fl;)V

    .line 360
    :cond_5
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->zc:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;)V

    .line 361
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;)V

    .line 362
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->ROR:Z

    if-nez p1, :cond_6

    .line 363
    invoke-virtual {v10, v8}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setNeedCheckingShow(Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public cJ()V
    .locals 3

    .line 766
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(J)V

    .line 767
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;->cJ()V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;

    if-eqz v0, :cond_0

    .line 184
    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;->ac()V

    .line 185
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Tgh:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :catchall_0
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->fl()V

    return-void
.end method

.method public getBannerView()Landroid/view/View;
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 175
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->cJ:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 176
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;

    return-object v0
.end method

.method public getExtraInfo(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Gy()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Gy()Ljava/util/Map;

    move-result-object v0

    .line 152
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 154
    const-string v0, "PAGBannerAdImpl"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Gy()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->HzH:Z

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/aP;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->HzH:Z

    :cond_0
    return-void
.end method

.method public setAdInteractionCallback(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionCallback;)V
    .locals 1

    .line 162
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/cJ;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/cJ;-><init>(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionListener;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    .line 163
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;)V

    return-void
.end method

.method public setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionListener;)V
    .locals 1

    .line 168
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/cJ;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/cJ;-><init>(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionListener;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    .line 169
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;)V

    return-void
.end method

.method public win(Ljava/lang/Double;)V
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->hpZ:Z

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/aP;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/Double;)V

    const/4 p1, 0x1

    .line 129
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi;->hpZ:Z

    :cond_0
    return-void
.end method
