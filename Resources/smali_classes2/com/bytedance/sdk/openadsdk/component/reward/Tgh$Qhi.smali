.class Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$Qhi;
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
    name = "Qhi"
.end annotation


# instance fields
.field private final CJ:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;

.field private final Qhi:Landroid/content/Context;

.field private final ac:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

.field private final cJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private final fl:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;Z)V
    .locals 0

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$Qhi;->Qhi:Landroid/content/Context;

    .line 561
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 562
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    .line 563
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$Qhi;->CJ:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;

    .line 564
    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$Qhi;->fl:Z

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;)V
    .locals 7

    .line 576
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$Qhi;->Qhi:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$Qhi;->CJ:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;

    iget-boolean v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$Qhi;->fl:Z

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;Z)V

    return-void
.end method

.method public synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 552
    check-cast p1, Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$Qhi;->CJ:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;

    if-eqz v0, :cond_0

    .line 570
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
