.class Lcom/bytedance/sdk/openadsdk/component/reward/ABk$Qhi;
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
    name = "Qhi"
.end annotation


# instance fields
.field private final CJ:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

.field private final Qhi:Landroid/content/Context;

.field private final ac:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

.field private final cJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private final fl:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;Z)V
    .locals 0

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$Qhi;->Qhi:Landroid/content/Context;

    .line 540
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 541
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    .line 542
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$Qhi;->CJ:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

    .line 543
    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$Qhi;->fl:Z

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;)V
    .locals 7

    .line 555
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$Qhi;->Qhi:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/ABk;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$Qhi;->CJ:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

    iget-boolean v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$Qhi;->fl:Z

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/ABk;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;Z)V

    return-void
.end method

.method public synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 531
    check-cast p1, Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$Qhi;->CJ:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

    if-eqz v0, :cond_0

    .line 549
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
