.class public Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;
.super Ljava/lang/Object;
.source "RewardFullExpressManager.java"


# instance fields
.field private final Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    return-object p0
.end method


# virtual methods
.method public Qhi([FLcom/bytedance/sdk/openadsdk/core/video/ac/cJ;Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)V
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    .line 50
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 51
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Hy()I

    move-result v0

    .line 52
    new-instance v1, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 53
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    const/4 v9, 0x0

    aget v1, p1, v9

    const/4 v10, 0x1

    .line 239
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 53
    aget v2, p1, v10

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 55
    iget-object v1, v6, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 56
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    iget-object v1, v6, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Qhi(Lcom/bytedance/sdk/component/adexpress/dynamic/fl;)V

    .line 59
    :cond_0
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$1;

    invoke-direct {v1, p0, v7, v8}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;)V

    .line 144
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;

    invoke-direct {v1, p0, v7, v8}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;)V

    .line 222
    new-instance v12, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$3;

    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->fl:Ljava/lang/String;

    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->fl:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Ljava/lang/String;)I

    move-result v5

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    .line 229
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$4;

    invoke-direct {v0, p0, v7}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;)V

    invoke-virtual {v12, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/cJ$Qhi;)V

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 236
    iget-object v1, v6, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    const/4 v13, 0x3

    const-string v14, "click_scence"

    if-eqz v1, :cond_1

    .line 237
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 239
    :cond_1
    invoke-interface {v0, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :goto_0
    iget-object v1, v6, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->VnT:Z

    if-eqz v1, :cond_2

    iget-object v1, v6, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Ura:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    if-eqz v1, :cond_2

    .line 242
    iget-object v1, v6, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Ura:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/activity/ROR;->hm:I

    add-int/2addr v1, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ad_show_order"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_2
    invoke-virtual {v12, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;->Qhi(Ljava/util/Map;)V

    .line 246
    new-instance v10, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$5;

    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->fl:Ljava/lang/String;

    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->fl:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Ljava/lang/String;)I

    move-result v5

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$5;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    .line 255
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$6;

    invoke-direct {v0, p0, v7}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$6;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;)V

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/cJ$Qhi;)V

    .line 261
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 262
    iget-object v1, v6, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 263
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 265
    :cond_3
    invoke-interface {v0, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :goto_1
    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;->Qhi(Ljava/util/Map;)V

    .line 268
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v0, v12, v10}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;)V

    .line 270
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ewb()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 271
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_2

    .line 273
    :cond_4
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_2
    const/16 v1, 0x11

    .line 275
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 276
    iget-object v1, v6, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->Tgh()Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, v6, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Sf()Z

    move-result v0

    if-nez v0, :cond_5

    .line 278
    invoke-virtual {v8, v9}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi(Z)V

    .line 280
    :cond_5
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Gm()V

    return-void
.end method
