.class final Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$9;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "PAGSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk;->Tgh(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/InitConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/InitConfig;

.field final synthetic cJ:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/InitConfig;Landroid/content/Context;)V
    .locals 0

    .line 428
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$9;->Qhi:Lcom/bytedance/sdk/openadsdk/InitConfig;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$9;->cJ:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$9;->Qhi:Lcom/bytedance/sdk/openadsdk/InitConfig;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/InitConfig;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/iMK;->Qhi(Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$9;->cJ:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$9;->Qhi:Lcom/bytedance/sdk/openadsdk/InitConfig;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/InitConfig;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/HzH/Qhi;->Qhi(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/kYc/ac;

    .line 433
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/HzH/Qhi;->Qhi()V

    .line 435
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ABk/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/ABk/Qhi;

    .line 436
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ABk/ac;->cJ()V

    .line 441
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/iMK;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/utils/iMK;-><init>()V

    .line 442
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/kYc;->Qhi()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/Qhi/cJ/ROR;->Qhi(I)V

    .line 443
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$9;->cJ:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$9;->Qhi:Lcom/bytedance/sdk/openadsdk/InitConfig;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/InitConfig;->isSupportMultiProcess()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/fl;->Qhi(Landroid/content/Context;Z)V

    .line 444
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/pA;->Qhi()Lcom/bytedance/sdk/openadsdk/core/pA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/pA;->cJ()V

    .line 446
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/fl/ac;->Qhi()V

    .line 448
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$9$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$9$1;-><init>(Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$9;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/tP/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/tP/Qhi$Qhi;)V

    .line 458
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$9;->cJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->ac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->Qhi:Ljava/lang/String;

    .line 460
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Sf;->cJ()V

    .line 462
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->pv()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi;->Qhi(Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    .line 464
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/component/video/api/Qhi/cJ;

    move-result-object v0

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi/cJ;)V

    .line 467
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    .line 468
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Dq()Z

    move-result v1

    if-nez v1, :cond_1

    .line 469
    monitor-enter v0

    .line 470
    :try_start_0
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Dq()Z

    move-result v1

    if-nez v1, :cond_0

    .line 471
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->cJ()V

    .line 473
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->sDy()V

    .line 475
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 479
    :cond_1
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->WAv()V

    .line 481
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$9;->cJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGInitHelper;->maybeAsyncInitTask(Landroid/content/Context;)V

    .line 482
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk;->getBiddingToken()Ljava/lang/String;

    const/4 v0, 0x1

    .line 484
    invoke-static {v0}, Lcom/bytedance/sdk/component/Sf/ROR;->Qhi(Z)V

    .line 485
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Gm/cJ/Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/Gm/cJ/Qhi;-><init>()V

    invoke-static {v0}, Lcom/bytedance/sdk/component/Sf/ROR;->Qhi(Lcom/bytedance/sdk/component/Sf/ac;)V

    .line 487
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$9;->cJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->Qhi(Landroid/content/Context;)V

    .line 488
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$9;->cJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->WAv(Landroid/content/Context;)V

    .line 489
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$9;->cJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->Gm(Landroid/content/Context;)V

    .line 491
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi;->Qhi()V

    .line 493
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/fl;->Qhi()V

    .line 494
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->CJ()V

    .line 495
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$9;->cJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/js;->ABk(Landroid/content/Context;)V

    .line 496
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi()V

    .line 503
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk;->cJ()V

    .line 504
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/fl/ac;->cJ()V

    .line 505
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->cJ()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/Sf/ac/ac;->Qhi(Landroid/os/Handler;)V

    return-void
.end method
