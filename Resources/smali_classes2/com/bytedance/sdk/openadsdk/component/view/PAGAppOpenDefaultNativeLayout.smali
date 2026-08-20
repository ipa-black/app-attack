.class public Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;
.super Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenBaseLayout;
.source "PAGAppOpenDefaultNativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout$Qhi;
    }
.end annotation


# instance fields
.field private final ABk:Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

.field private final HzH:Lcom/bytedance/sdk/openadsdk/core/customview/PAGLinearLayout;

.field private final hpZ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

.field private final iMK:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;

.field private final pA:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 55
    invoke-direct/range {p0 .. p1}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenBaseLayout;-><init>(Landroid/content/Context;)V

    const v2, 0x1f000039

    .line 56
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->setId(I)V

    .line 57
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    .line 58
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->setBackgroundColor(I)V

    const/high16 v4, 0x41000000    # 8.0f

    .line 60
    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x41100000    # 9.0f

    .line 61
    invoke-static {v1, v6}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    .line 62
    invoke-static {v1, v7}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x42200000    # 40.0f

    .line 63
    invoke-static {v1, v8}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v8

    .line 65
    new-instance v9, Lcom/bytedance/sdk/openadsdk/core/widget/DSPAdChoice;

    invoke-direct {v9, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/DSPAdChoice;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->zc:Lcom/bytedance/sdk/openadsdk/core/widget/DSPAdChoice;

    .line 66
    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->zc:Lcom/bytedance/sdk/openadsdk/core/widget/DSPAdChoice;

    invoke-virtual {v9, v6, v2, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/DSPAdChoice;->setPadding(IIII)V

    .line 67
    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->zc:Lcom/bytedance/sdk/openadsdk/core/widget/DSPAdChoice;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v9}, Lcom/bytedance/sdk/openadsdk/core/widget/DSPAdChoice;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 68
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v9, 0x42000000    # 32.0f

    invoke-static {v1, v9}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v10

    const/high16 v11, 0x41600000    # 14.0f

    invoke-static {v1, v11}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v6, v10, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0xc

    .line 69
    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v12, 0xb

    .line 70
    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 71
    invoke-virtual {v6, v2, v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 72
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->zc:Lcom/bytedance/sdk/openadsdk/core/widget/DSPAdChoice;

    invoke-virtual {v7, v6}, Lcom/bytedance/sdk/openadsdk/core/widget/DSPAdChoice;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    invoke-direct {v6, v1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->ABk:Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    .line 75
    invoke-virtual {v6, v3}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->setBackgroundColor(I)V

    const v7, 0x1f00003e

    .line 76
    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->setId(I)V

    .line 77
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v12, 0x42d60000    # 107.0f

    invoke-static {v1, v12}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v7, v3, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 78
    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 79
    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/customview/PAGLinearLayout;

    invoke-direct {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGLinearLayout;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-virtual {v7, v2}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGLinearLayout;->setOrientation(I)V

    const/16 v10, 0x10

    .line 83
    invoke-virtual {v7, v10}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGLinearLayout;->setGravity(I)V

    .line 84
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v12, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v14, 0x11

    .line 85
    iput v14, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 86
    invoke-virtual {v7, v12}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->addView(Landroid/view/View;)V

    .line 89
    new-instance v12, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    invoke-direct {v12, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->Tgh:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    .line 90
    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->Tgh:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    const v15, 0x1f00003f

    invoke-virtual {v12, v15}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->setId(I)V

    .line 91
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 92
    iput v5, v12, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 94
    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 96
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->Tgh:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    invoke-virtual {v5, v12}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    invoke-direct {v5, v1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->ROR:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    .line 99
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->ROR:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    const v8, 0x1f000041

    invoke-virtual {v5, v8}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setId(I)V

    .line 100
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->ROR:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v8}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->ROR:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v8}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 102
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->ROR:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setMaxLines(I)V

    .line 103
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->ROR:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    const-string v12, "#161823"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v5, v12}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setTextColor(I)V

    .line 104
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->ROR:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    const/high16 v12, 0x41f00000    # 30.0f

    invoke-virtual {v5, v12}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setTextSize(F)V

    .line 106
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->Tgh:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    invoke-virtual {v7, v5}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGLinearLayout;->addView(Landroid/view/View;)V

    .line 107
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->ROR:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    invoke-virtual {v7, v5}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGLinearLayout;->addView(Landroid/view/View;)V

    .line 109
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    invoke-direct {v5, v1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;-><init>(Landroid/content/Context;)V

    .line 110
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 111
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->getId()I

    move-result v12

    invoke-virtual {v7, v8, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v8, 0xa

    .line 112
    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 113
    invoke-virtual {v5, v7}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    invoke-direct {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->Qhi:Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    .line 116
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->Qhi:Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    const v12, 0x1f00003a

    invoke-virtual {v7, v12}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;->setId(I)V

    .line 117
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->Qhi:Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v12}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 118
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->Qhi:Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v12, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7, v12}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    invoke-direct {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->cJ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    .line 121
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->cJ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    const v12, 0x1f00003b

    invoke-virtual {v7, v12}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->setId(I)V

    .line 122
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 123
    iput v14, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 124
    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->cJ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    invoke-virtual {v5, v12, v7}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    invoke-direct {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->ac:Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    .line 127
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->ac:Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    const v12, 0x1f00003c

    invoke-virtual {v7, v12}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;->setId(I)V

    .line 128
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->ac:Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v12, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7, v12}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    invoke-direct {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->fl:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    .line 131
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->fl:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    const v12, 0x1f000015

    invoke-virtual {v7, v12}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setId(I)V

    .line 132
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->fl:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    const-string v12, "#b3000000"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    const/16 v15, 0x18

    invoke-static {v1, v12, v15}, Lcom/bytedance/sdk/openadsdk/utils/hm;->Qhi(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->fl:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v12}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 134
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->fl:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    invoke-virtual {v7, v14}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setGravity(I)V

    .line 135
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->fl:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setSingleLine(Z)V

    .line 136
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->fl:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    const-string v14, "tt_video_download_apk"

    invoke-static {v1, v14}, Lcom/bytedance/sdk/component/utils/MQ;->cJ(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v14}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setText(I)V

    .line 137
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->fl:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    invoke-virtual {v7, v3}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setTextColor(I)V

    .line 138
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->fl:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    const/high16 v14, 0x41800000    # 16.0f

    invoke-virtual {v7, v12, v14}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setTextSize(IF)V

    .line 139
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->fl:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    const-string v15, "open_ad_click_button_tag"

    invoke-virtual {v7, v15}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setTag(Ljava/lang/Object;)V

    .line 140
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v15, 0x436c0000    # 236.0f

    invoke-static {v1, v15}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v15

    const/high16 v11, 0x42400000    # 48.0f

    invoke-static {v1, v11}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v11

    invoke-direct {v7, v15, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0x51

    .line 141
    iput v11, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 142
    invoke-static {v1, v9}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v9

    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 143
    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->fl:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    invoke-virtual {v5, v9, v7}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/customview/PAGLinearLayout;

    invoke-direct {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->HzH:Lcom/bytedance/sdk/openadsdk/core/customview/PAGLinearLayout;

    .line 146
    invoke-virtual {v7, v2}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGLinearLayout;->setOrientation(I)V

    .line 147
    invoke-virtual {v7, v10}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGLinearLayout;->setGravity(I)V

    .line 148
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout$Qhi;

    invoke-direct {v2, v1}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout$Qhi;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v2}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGLinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 149
    invoke-static {v1, v14}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v9

    invoke-static {v1, v14}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v7, v2, v9, v10, v11}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGLinearLayout;->setPadding(IIII)V

    .line 150
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 151
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v8, 0x42b40000    # 90.0f

    .line 152
    invoke-static {v1, v8}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v8

    iput v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 153
    invoke-virtual {v7, v2}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    invoke-direct {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->hpZ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    .line 156
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x42100000    # 36.0f

    invoke-static {v1, v9}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v1, v9}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v8, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v2, v8}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/customview/PAGLinearLayout;

    invoke-direct {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGLinearLayout;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-virtual {v2, v12}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGLinearLayout;->setOrientation(I)V

    .line 160
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 161
    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v4

    iput v4, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 162
    invoke-virtual {v7, v2, v8}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    invoke-direct {v4, v1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->pA:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    .line 165
    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setTextColor(I)V

    .line 166
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v3}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;

    invoke-direct {v3, v1, v12}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;-><init>(Landroid/content/Context;Z)V

    iput-object v3, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->iMK:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;

    .line 169
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    invoke-direct {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->CJ:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 172
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->CJ:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    const v3, 0x1f00003d

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;->setId(I)V

    .line 173
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v2, v13, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x53

    .line 174
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 175
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->CJ:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    invoke-virtual {v5, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->addView(Landroid/view/View;)V

    .line 178
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->zc:Lcom/bytedance/sdk/openadsdk/core/widget/DSPAdChoice;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->addView(Landroid/view/View;)V

    .line 179
    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->addView(Landroid/view/View;)V

    .line 180
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->Sf:Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenTopBarView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->addView(Landroid/view/View;)V

    .line 181
    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getAdIconView()Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->hpZ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    return-object v0
.end method

.method public getAdTitleTextView()Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->pA:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    return-object v0
.end method

.method public getOverlayLayout()Lcom/bytedance/sdk/openadsdk/core/customview/PAGLinearLayout;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->HzH:Lcom/bytedance/sdk/openadsdk/core/customview/PAGLinearLayout;

    return-object v0
.end method

.method public getScoreBar()Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->iMK:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar2;

    return-object v0
.end method

.method public getUserInfo()Landroid/view/View;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenDefaultNativeLayout;->ABk:Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    return-object v0
.end method
