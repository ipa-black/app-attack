.class public Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;
.super Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;
.source "RewardFullTypeImage.java"


# instance fields
.field private HzH:Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;

.field private hpZ:Landroid/view/ViewGroup;

.field private kYc:Ljava/lang/String;

.field private final pA:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    .line 61
    const-string p1, "fullscreen_interstitial_ad"

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->kYc:Ljava/lang/String;

    .line 65
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->gga()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->pA:I

    return-void
.end method

.method private NFd()V
    .locals 4

    .line 69
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->hpZ:Landroid/view/ViewGroup;

    .line 70
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/iMK;->jN:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setId(I)V

    .line 71
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 72
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->hpZ:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->Gm()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 78
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->HzH:Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;

    .line 79
    sget v2, Lcom/bytedance/sdk/openadsdk/utils/iMK;->TKG:I

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;->setId(I)V

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->SL()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, -0x2

    if-ne v0, v2, :cond_1

    .line 82
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 84
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_0
    const/16 v1, 0x11

    .line 86
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 87
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->HzH:Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->hpZ:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->HzH:Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 91
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->sDy()V

    return-void
.end method

.method private Qhi(Landroid/widget/ImageView;)V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cjC()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 123
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    if-eqz v2, :cond_1

    .line 125
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ROR/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/hpZ;)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/fl/Gm;->ac(I)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/ROR/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bytedance/sdk/component/fl/HzH;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/fl/Gm;->Qhi(Lcom/bytedance/sdk/component/fl/HzH;)Lcom/bytedance/sdk/component/fl/WAv;

    :cond_1
    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z
    .locals 2

    .line 198
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Oy()F

    move-result p0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;
    .locals 3

    .line 159
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ip()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 160
    new-instance v0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->kYc:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->HzH:Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;

    if-eqz p1, :cond_3

    .line 106
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->pA:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 107
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;->setRatio(F)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const v0, 0x3ff47ae1    # 1.91f

    .line 109
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;->setRatio(F)V

    goto :goto_0

    :cond_2
    const v0, 0x3f0f5c29    # 0.56f

    .line 111
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;->setRatio(F)V

    .line 113
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->HzH:Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->Qhi(Landroid/widget/ImageView;)V

    :cond_3
    return-void
.end method

.method private lB()Z
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->EBS()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private sDy()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->hpZ:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->HzH:Lcom/bytedance/sdk/openadsdk/component/reward/view/RatioImageView;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->Qhi(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected Qhi(Landroid/view/View;)V
    .locals 5

    if-eqz p1, :cond_4

    .line 131
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-nez v0, :cond_0

    goto :goto_2

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;

    if-nez v0, :cond_2

    .line 137
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->kYc:Ljava/lang/String;

    .line 138
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    .line 139
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;)V

    .line 141
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 142
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v2

    const-string v3, "click_scence"

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    .line 143
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 145
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :goto_0
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Qhi(Ljava/util/Map;)V

    goto :goto_1

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->zc:Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;

    .line 151
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 152
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Qhi(Landroid/app/Activity;)V

    .line 154
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 155
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public Qhi(Landroid/widget/FrameLayout;)V
    .locals 2

    .line 176
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->NFd()V

    .line 177
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 178
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->hpZ:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 180
    const-string v0, "TTAD.RFTI"

    const-string v1, "bindAd: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;)V
    .locals 5

    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    const-wide v1, 0x408f400000000000L    # 1000.0

    if-eqz v0, :cond_0

    .line 187
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->cJ(Landroid/widget/FrameLayout;)V

    .line 188
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->gga:Lcom/bytedance/sdk/openadsdk/utils/zc;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->aP()D

    move-result-wide v3

    mul-double/2addr v3, v1

    double-to-long v0, v3

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/zc;->Qhi(J)V

    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 193
    :cond_1
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;)V

    return-void

    .line 190
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->ac(Landroid/widget/FrameLayout;)V

    .line 191
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->gga:Lcom/bytedance/sdk/openadsdk/utils/zc;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->aP()D

    move-result-wide v3

    mul-double/2addr v3, v1

    double-to-long v0, v3

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/zc;->Qhi(J)V

    return-void
.end method

.method public ROR()V
    .locals 6

    .line 223
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->Tgh:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->cJ(I)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->Sf:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->ac(Z)V

    .line 227
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->Sf:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->CJ(Z)V

    .line 228
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->EBS()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 231
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->Sf:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Qhi(Z)V

    .line 232
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->Tgh:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->fl(I)V

    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->Sf:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->rB()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Qhi(Z)V

    .line 235
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->EGK:Z

    if-eqz v0, :cond_2

    .line 236
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x384

    .line 237
    iput v1, v0, Landroid/os/Message;->what:I

    .line 238
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->aP()D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->hm:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 239
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->xyz:Lcom/bytedance/sdk/component/utils/CQU;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/utils/CQU;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public Tgh()Z
    .locals 1

    .line 211
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->lB()Z

    move-result v0

    return v0
.end method

.method public fl()Z
    .locals 1

    .line 206
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->lB()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
