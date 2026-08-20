.class public Lcom/bytedance/sdk/openadsdk/activity/fl;
.super Lcom/bytedance/sdk/openadsdk/activity/Qhi;
.source "FullscreenAdScene.java"


# instance fields
.field private Tgh:Z

.field fl:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/cJ;Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/activity/cJ;Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V

    return-void
.end method

.method private CJ(I)V
    .locals 3

    .line 599
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Tgh:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->tP(Ljava/lang/String;)I

    move-result v0

    .line 600
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Tgh:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Tgh(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 602
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ac:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 610
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->zjb:Z

    if-nez v1, :cond_1

    .line 611
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Qhi(Z)V

    :cond_1
    if-gt p1, v0, :cond_2

    sub-int/2addr v0, p1

    .line 614
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/fl;->fl(I)V

    .line 615
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->fl(Z)V

    return-void

    .line 617
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/fl;->cJ()V

    goto :goto_1

    :cond_3
    :goto_0
    if-lt p1, v0, :cond_5

    .line 604
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->zjb:Z

    if-nez p1, :cond_4

    .line 605
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Qhi(Z)V

    .line 607
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/fl;->cJ()V

    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/activity/fl;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/fl;->CJ(I)V

    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 103
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Oy()F

    move-result p1

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 111
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Tgh:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->MQ(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private fl(I)V
    .locals 2

    .line 624
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_skip_ad_time_text"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/MQ;->Qhi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 625
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 626
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Qhi(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public Qhi(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public Qhi(JZ)Z
    .locals 9

    .line 289
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 291
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->getAdShowTime()Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    move-result-object v0

    goto :goto_0

    .line 294
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/cJ/Sf;-><init>()V

    .line 296
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    instance-of v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cjC:Z

    if-nez v1, :cond_1

    .line 297
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    check-cast v2, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->NFd()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    goto :goto_1

    .line 299
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->cJ()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    .line 301
    :goto_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 302
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->hm()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "dynamic_show_type"

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Qhi(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 306
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 307
    :catch_0
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 308
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 310
    :try_start_0
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/fl$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/fl$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/fl;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;)V

    .line 455
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(JZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)Z

    move-result p1

    return p1

    .line 457
    :cond_3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/cJ/Sf;-><init>()V

    .line 458
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/cJ/Sf;->Qhi(JF)V

    .line 459
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    instance-of v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;

    if-eqz v1, :cond_4

    .line 460
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    check-cast v2, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;->NFd()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    goto :goto_3

    .line 462
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->Tgh()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    .line 464
    :goto_3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/fl$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/fl;)V

    .line 585
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;)V

    .line 586
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->pA:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    if-eqz v1, :cond_5

    .line 587
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->pA:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;)V

    .line 590
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    move-wide v2, p1

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(JZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)Z

    move-result p1

    return p1
.end method

.method protected ROR()V
    .locals 1

    .line 640
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/fl;->Eh()V

    .line 641
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->WAv()V

    :cond_0
    return-void
.end method

.method protected a_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected ac()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->WAv()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/fl$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/fl$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/fl;)V

    .line 168
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/fl$2;

    invoke-direct {v2, p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/fl$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/fl;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/top/cJ;)V

    return-void
.end method

.method public ac(Landroid/app/Activity;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac(Landroid/app/Activity;)V

    .line 75
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    if-nez p1, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/fl;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->Tgh:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 82
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->Tgh:Z

    .line 83
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/fl;->CQU()V

    return-void

    .line 84
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->lB()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 85
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/fl;->CQU()V

    :cond_3
    :goto_0
    return-void
.end method

.method public b_()Ljava/lang/String;
    .locals 1

    .line 96
    const-string v0, "fullscreen_interstitial_ad"

    return-object v0
.end method

.method public cJ()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ac:Z

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    const-string v2, "X"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Qhi(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->getSkipText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Qhi(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->fl(Z)V

    return-void
.end method

.method public c_()V
    .locals 2

    .line 632
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Oy()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 633
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl;->Tgh:Z

    .line 635
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/fl;->aP()V

    return-void
.end method
