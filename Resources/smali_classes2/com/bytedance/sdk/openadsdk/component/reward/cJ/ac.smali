.class public Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;
.super Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;
.source "RewardFullLandingPageType.java"


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    return-void
.end method

.method private static CJ(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 4

    .line 145
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;-><init>(Landroid/content/Context;)V

    .line 146
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 147
    const-string v1, "tt_up_slide"

    invoke-static {p0, v1}, Lcom/bytedance/sdk/component/utils/MQ;->CJ(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/iMK;->bxS:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 149
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {p0, v2}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {p0, v3}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 150
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v2, 0x42340000    # 45.0f

    .line 151
    invoke-static {p0, v2}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result p0

    iput p0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 152
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V
    .locals 1

    .line 51
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->cJ(Landroid/widget/FrameLayout;)V

    return-void

    .line 53
    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->Qhi(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    return-void

    .line 54
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->ac(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z
    .locals 1

    .line 47
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static ac(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 2

    .line 136
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/customview/PAGLinearLayout;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGLinearLayout;-><init>(Landroid/content/Context;)V

    .line 137
    sget p0, Lcom/bytedance/sdk/openadsdk/utils/iMK;->EBS:I

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setId(I)V

    const/4 p0, 0x1

    .line 138
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p0, 0x8

    .line 139
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 140
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method static ac(Landroid/widget/FrameLayout;)V
    .locals 7

    .line 160
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 163
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;-><init>(Landroid/content/Context;)V

    .line 164
    sget v2, Lcom/bytedance/sdk/openadsdk/utils/iMK;->MQ:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 165
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->cJ(Landroid/content/Context;)Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v2

    .line 169
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 172
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->ac(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 173
    const-string v4, "#99161823"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 174
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 177
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->CJ(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v4

    .line 178
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Qhi;->Qhi(Landroid/widget/FrameLayout;)V

    .line 184
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;-><init>(Landroid/content/Context;)V

    .line 185
    sget v2, Lcom/bytedance/sdk/openadsdk/utils/iMK;->Jma:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 186
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;-><init>(Landroid/content/Context;)V

    .line 190
    sget v4, Lcom/bytedance/sdk/openadsdk/utils/iMK;->WAv:I

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setId(I)V

    .line 191
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->Qhi(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v4

    .line 195
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 198
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    invoke-direct {v4, v0}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;-><init>(Landroid/content/Context;)V

    .line 199
    sget v5, Lcom/bytedance/sdk/openadsdk/utils/iMK;->kYc:I

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setId(I)V

    const/16 v5, 0x8

    .line 200
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/high16 v5, -0x1000000

    .line 201
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 202
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x11

    .line 203
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 204
    invoke-virtual {v2, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;-><init>(Landroid/content/Context;)V

    .line 208
    sget v5, Lcom/bytedance/sdk/openadsdk/utils/iMK;->tP:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setId(I)V

    .line 209
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 210
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Qhi;->cJ(Landroid/widget/FrameLayout;)V

    .line 215
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;-><init>(Landroid/content/Context;)V

    .line 216
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/iMK;->js:I

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->setId(I)V

    const/4 v0, 0x1

    .line 217
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->setClickable(Z)V

    .line 218
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->setFocusable(Z)V

    .line 219
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static cJ(Landroid/content/Context;)Lcom/bytedance/sdk/component/widget/SSWebView;
    .locals 2

    .line 128
    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;-><init>(Landroid/content/Context;Z)V

    .line 129
    sget p0, Lcom/bytedance/sdk/openadsdk/utils/iMK;->qMt:I

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setId(I)V

    const/4 p0, 0x2

    const/4 v1, 0x0

    .line 130
    invoke-virtual {v0, p0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 131
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method static cJ(Landroid/widget/FrameLayout;)V
    .locals 8

    .line 64
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/customview/PAGLinearLayout;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGLinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 67
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 68
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;-><init>(Landroid/content/Context;)V

    .line 72
    sget v2, Lcom/bytedance/sdk/openadsdk/utils/iMK;->Jma:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 73
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x3f800000    # 1.0f

    .line 74
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 75
    invoke-virtual {v1, p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;-><init>(Landroid/content/Context;)V

    .line 79
    sget v5, Lcom/bytedance/sdk/openadsdk/utils/iMK;->WAv:I

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setId(I)V

    .line 80
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->Qhi(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v5

    .line 84
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 87
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    invoke-direct {v5, v0}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;-><init>(Landroid/content/Context;)V

    .line 88
    sget v6, Lcom/bytedance/sdk/openadsdk/utils/iMK;->kYc:I

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setId(I)V

    const/16 v6, 0x8

    .line 89
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/high16 v6, -0x1000000

    .line 90
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 91
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x11

    .line 92
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 93
    invoke-virtual {v2, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;-><init>(Landroid/content/Context;)V

    .line 97
    sget v6, Lcom/bytedance/sdk/openadsdk/utils/iMK;->tP:I

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setId(I)V

    .line 98
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 99
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Qhi;->cJ(Landroid/widget/FrameLayout;)V

    .line 104
    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;-><init>(Landroid/content/Context;)V

    .line 105
    sget v2, Lcom/bytedance/sdk/openadsdk/utils/iMK;->MQ:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 106
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    .line 107
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 108
    invoke-virtual {v1, p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->cJ(Landroid/content/Context;)Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v1

    .line 112
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 115
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->ac(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 116
    const-string v2, "#70161823"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 117
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 120
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->CJ(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v0

    .line 121
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Qhi;->Qhi(Landroid/widget/FrameLayout;)V

    return-void
.end method


# virtual methods
.method public ABk()V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->pA:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->pA:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->cJ(I)V

    .line 237
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->hpZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->HzH:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0x50

    .line 240
    invoke-virtual {p0, v2, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->Qhi(ZZZI)V

    .line 243
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x46

    .line 244
    invoke-virtual {p0, v2, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->Qhi(ZZZI)V

    :cond_3
    return-void
.end method

.method public Qhi(Landroid/widget/FrameLayout;)V
    .locals 4

    .line 250
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 251
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->gga:Lcom/bytedance/sdk/openadsdk/utils/zc;

    if-eqz p1, :cond_0

    .line 252
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->gga:Lcom/bytedance/sdk/openadsdk/utils/zc;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hm()Lcom/bytedance/sdk/openadsdk/core/model/kYc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->cJ()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/zc;->Qhi(J)V

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;)V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    return-void
.end method

.method public ROR()V
    .locals 0

    return-void
.end method

.method public Sf()Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public Tgh()Z
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public fl()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
