.class public Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;
.super Lcom/bytedance/sdk/openadsdk/core/customview/PAGRelativeLayout;
.source "PAGFullScreenLoadingLayout.java"


# instance fields
.field private CJ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

.field private Qhi:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

.field private ROR:Z

.field private Tgh:Z

.field private ac:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLoadingBar;

.field private cJ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

.field private fl:Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->Qhi()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->cJ()V

    :cond_0
    return-void
.end method


# virtual methods
.method public Qhi(Landroid/content/Context;)V
    .locals 3

    .line 181
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->fl:Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    .line 182
    const-string v1, "tt_ad_logo_big"

    invoke-static {p1, v1}, Lcom/bytedance/sdk/component/utils/MQ;->ac(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x42700000    # 60.0f

    .line 184
    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 p1, 0xe

    .line 185
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p1, 0xc

    .line 186
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 187
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->fl:Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V
    .locals 8

    .line 53
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->Tgh:Z

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->ROR:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->ROR:Z

    .line 58
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->jPH()Z

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_1

    .line 61
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dIT()Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dIT()Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 63
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dIT()Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/ROR/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/hpZ;)Lcom/bytedance/sdk/component/fl/Gm;

    move-result-object v3

    new-instance v4, Lcom/bytedance/sdk/openadsdk/ROR/cJ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dIT()Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/bytedance/sdk/openadsdk/utils/pM;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->Qhi:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    invoke-direct {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/pM;-><init>(Landroid/widget/ImageView;)V

    invoke-direct {v4, p1, v5, v6}, Lcom/bytedance/sdk/openadsdk/ROR/cJ;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lcom/bytedance/sdk/component/fl/HzH;)V

    invoke-interface {v3, v4}, Lcom/bytedance/sdk/component/fl/Gm;->Qhi(Lcom/bytedance/sdk/component/fl/HzH;)Lcom/bytedance/sdk/component/fl/WAv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 68
    :catchall_0
    :cond_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->Qhi:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->setVisibility(I)V

    :goto_0
    if-eqz v1, :cond_2

    .line 74
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->cJ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    const-string v2, "Loading"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 76
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dVA()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 77
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->cJ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dVA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 79
    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->cJ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setVisibility(I)V

    .line 84
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->CJ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    if-eqz v1, :cond_4

    .line 85
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ots()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->fl:Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    if-eqz v1, :cond_6

    .line 90
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout$1;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->fl:Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x41c00000    # 24.0f

    if-ne p2, v0, :cond_5

    .line 98
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 99
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 100
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_2

    .line 102
    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x42240000    # 41.0f

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 103
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 104
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 106
    :goto_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->fl:Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    :goto_3
    return-void
.end method

.method protected Qhi()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cJ()V
    .locals 9

    .line 115
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->Tgh:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->Tgh:Z

    .line 119
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 121
    const-string v2, "#2E2E2E"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->setBackgroundColor(I)V

    .line 123
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 124
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xd

    .line 125
    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 126
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x11

    .line 127
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 128
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 130
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    invoke-direct {v6, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->Qhi:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    const v7, 0x1f000031

    .line 131
    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->setId(I)V

    const/high16 v6, 0x42800000    # 64.0f

    .line 132
    invoke-static {v1, v6}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v6

    .line 133
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->Qhi:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    invoke-direct {v6, v1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->cJ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    const v7, 0x1f000032

    .line 136
    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setId(I)V

    .line 137
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v7, 0x435b0000    # 219.0f

    invoke-static {v1, v7}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v6, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x41800000    # 16.0f

    .line 138
    invoke-static {v1, v5}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v8

    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 139
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->cJ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    invoke-virtual {v8, v6}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->cJ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v8}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 141
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->cJ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    invoke-virtual {v6, v3}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setGravity(I)V

    .line 142
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->cJ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    const/high16 v8, 0x43160000    # 150.0f

    invoke-static {v1, v8}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setMaxWidth(I)V

    .line 143
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->cJ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setMaxLines(I)V

    .line 144
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->cJ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setTextColor(I)V

    .line 145
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->cJ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    invoke-virtual {v6, v0, v5}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setTextSize(IF)V

    .line 148
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLoadingBar;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLoadingBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->ac:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLoadingBar;

    const v6, 0x1f000034

    .line 149
    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLoadingBar;->setId(I)V

    .line 150
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v1, v7}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {v1, v7}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v0, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x41c00000    # 24.0f

    .line 151
    invoke-static {v1, v6}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v6

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 152
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->ac:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLoadingBar;

    invoke-virtual {v6, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLoadingBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->CJ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    .line 156
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x430a0000    # 138.0f

    invoke-static {v1, v6}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x42280000    # 42.0f

    invoke-static {v1, v7}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v0, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x42400000    # 48.0f

    .line 157
    invoke-static {v1, v6}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v6

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 158
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->CJ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    invoke-virtual {v6, v0}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->CJ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setTextColor(I)V

    .line 160
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->CJ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    invoke-virtual {v6, v5}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setTextSize(F)V

    .line 161
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->CJ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    invoke-virtual {v5, v3}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setGravity(I)V

    .line 162
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v5, 0x0

    .line 163
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 164
    invoke-virtual {v3, v8, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 165
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    div-int/2addr v0, v8

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->CJ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 169
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->Qhi:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 170
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->cJ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 171
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->ac:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLoadingBar;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->CJ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 174
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->Qhi(Landroid/content/Context;)V

    .line 176
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->addView(Landroid/view/View;)V

    .line 177
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->fl:Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getDownloadButton()Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->CJ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    return-object v0
.end method

.method public getLoadingProgressBar()Lcom/bytedance/sdk/openadsdk/core/widget/PAGLoadingBar;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->ac:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLoadingBar;

    return-object v0
.end method

.method public setProgress(I)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->ac:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLoadingBar;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLoadingBar;->setProgress(I)V

    :cond_0
    return-void
.end method
