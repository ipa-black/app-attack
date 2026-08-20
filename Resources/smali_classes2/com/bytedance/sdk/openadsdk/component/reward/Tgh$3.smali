.class Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$3;
.super Ljava/lang/Object;
.source "FullScreenVideoLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:J

.field final synthetic Qhi:Z

.field final synthetic Tgh:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;

.field final synthetic fl:Lcom/bytedance/sdk/openadsdk/utils/Jma;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;ZLcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;Lcom/bytedance/sdk/openadsdk/AdSlot;JLcom/bytedance/sdk/openadsdk/utils/Jma;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$3;->Tgh:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$3;->Qhi:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$3;->ac:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iput-wide p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$3;->CJ:J

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$3;->fl:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(ILjava/lang/String;)V
    .locals 1

    .line 268
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$3;->Qhi:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;

    if-eqz v0, :cond_0

    .line 269
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V
    .locals 11

    .line 275
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 278
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/pA;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$3;->Tgh:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/pA;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V

    .line 279
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$3;->Qhi:Z

    if-nez v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$3;->ac:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$3;->CJ:J

    sub-long/2addr v0, v2

    .line 283
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->fl()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;J)V

    .line 285
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Tgh()Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->MQ()I

    move-result v0

    if-nez v0, :cond_1

    .line 287
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$3;->Tgh:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$3;->ac:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/pA;->Qhi()Lcom/bytedance/sdk/openadsdk/component/reward/ROR;

    move-result-object v5

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;Z)V

    .line 291
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;

    new-instance v7, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$Qhi;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$3;->Tgh:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$3;->ac:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$Qhi;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;Z)V

    const/4 v1, 0x0

    invoke-direct {v0, v7, p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;-><init>(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$1;)V

    const/4 v1, 0x0

    move v10, v1

    .line 293
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_2

    .line 294
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$3;->Tgh:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$3;->ac:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-boolean v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$3;->Qhi:Z

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$3;->fl:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Tgh()Z

    move-result v9

    move-object v2, p1

    move-object v4, p2

    move-object v8, v0

    invoke-static/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/component/reward/pA;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;Z)V

    .line 295
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Gm()Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 302
    :cond_3
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$3;->Qhi:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;

    if-eqz p1, :cond_4

    const/4 v0, -0x3

    .line 303
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Sf;->Qhi(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;->onError(ILjava/lang/String;)V

    .line 304
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(I)V

    .line 305
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V

    :cond_4
    return-void
.end method
