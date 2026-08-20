.class Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;
.super Ljava/lang/Object;
.source "FullScreenVideoLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "cJ"
.end annotation


# instance fields
.field private final CJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

.field private final Qhi:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;

.field private final ac:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final cJ:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V
    .locals 2

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;->cJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 588
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;

    .line 589
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    .line 590
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;->Qhi()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;->ac:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$1;)V
    .locals 0

    .line 580
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;-><init>(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V

    return-void
.end method

.method private Qhi()I
    .locals 4

    .line 596
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->CJ()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    .line 597
    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 598
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v2, :cond_0

    .line 599
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

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;)Lcom/bytedance/sdk/openadsdk/core/model/Qhi;
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    return-object p0
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;)V
    .locals 3

    .line 629
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;->ac:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 630
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;->cJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 580
    check-cast p1, Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 3

    .line 608
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;->ac:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;->cJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;->onError(ILjava/lang/String;)V

    .line 612
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;)V

    const-string p2, "choose_ad_load_error"

    invoke-static {p2, v2, p1}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Gm/cJ;)V

    :cond_0
    return-void
.end method
