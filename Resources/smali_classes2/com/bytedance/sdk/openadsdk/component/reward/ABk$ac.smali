.class Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;
.super Ljava/lang/Object;
.source "RewardVideoLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/ABk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ac"
.end annotation


# instance fields
.field private final CJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

.field private final Qhi:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

.field private final ac:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final cJ:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V
    .locals 2

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;->cJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 567
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;->Qhi:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

    .line 568
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    .line 569
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;->Qhi()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;->ac:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/component/reward/ABk$1;)V
    .locals 0

    .line 559
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;-><init>(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V

    return-void
.end method

.method private Qhi()I
    .locals 4

    .line 575
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->CJ()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    .line 576
    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 577
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v2, :cond_0

    .line 578
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :cond_2
    return v1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;)Lcom/bytedance/sdk/openadsdk/core/model/Qhi;
    .locals 0

    .line 559
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    return-object p0
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;)V
    .locals 3

    .line 610
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;->ac:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 611
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;->Qhi:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;->cJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;->Qhi:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 559
    check-cast p1, Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;->Qhi(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 3

    .line 587
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;->ac:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;->Qhi:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;->cJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;->Qhi:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;->onError(ILjava/lang/String;)V

    .line 592
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;)V

    const-string p2, "choose_ad_load_error"

    invoke-static {p2, v2, p1}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Gm/cJ;)V

    :cond_0
    return-void
.end method
