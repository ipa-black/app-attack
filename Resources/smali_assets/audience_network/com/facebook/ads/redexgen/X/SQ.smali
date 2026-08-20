.class public final Lcom/facebook/ads/redexgen/X/SQ;
.super Lcom/facebook/ads/redexgen/X/Ni;
.source ""


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nm;Z)V
    .locals 10

    .line 52172
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Ni;-><init>(Lcom/facebook/ads/redexgen/X/Nm;Z)V

    .line 52173
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 52174
    .local v0, "bottomContainer":Landroid/widget/RelativeLayout;
    const/4 v7, -0x2

    const/4 v6, -0x1

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52175
    .local v1, "bottomContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52176
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0R(Landroid/view/View;Landroid/content/Context;)V

    .line 52177
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52178
    .local v4, "auxContainer":Landroid/widget/LinearLayout;
    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52179
    const/16 v0, 0x50

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 52180
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 52181
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52182
    .local v5, "auxContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v2, Lcom/facebook/ads/redexgen/X/Ni;->A07:I

    sget v1, Lcom/facebook/ads/redexgen/X/Ni;->A07:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ni;->A07:I

    const/4 v9, 0x0

    invoke-virtual {v3, v2, v9, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 52183
    if-eqz p2, :cond_7

    const/4 v0, -0x2

    :goto_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52184
    .local v6, "ctaParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p2, :cond_6

    sget v1, Lcom/facebook/ads/redexgen/X/Ni;->A07:I

    :goto_1
    if-eqz p2, :cond_5

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2, v1, v0, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 52185
    if-eqz p2, :cond_4

    const/4 v0, 0x0

    :goto_3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52186
    .local v7, "textParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v9, v9, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 52187
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 52188
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52189
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getCtaButton()Lcom/facebook/ads/redexgen/X/Sa;

    move-result-object v0

    invoke-virtual {v8, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52190
    invoke-virtual {v5, v8, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52191
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getCtaButton()Lcom/facebook/ads/redexgen/X/Sa;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A04()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A08()Lcom/facebook/ads/redexgen/X/Li;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sa;->A0A(Lcom/facebook/ads/redexgen/X/Zs;Lcom/facebook/ads/redexgen/X/Li;)Z

    .line 52192
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A02()Landroid/view/View;

    move-result-object v3

    .line 52193
    .local v8, "mMediaView":Landroid/view/View;
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A13(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52194
    if-eqz p2, :cond_2

    .line 52195
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 52196
    .local v2, "mediaViewParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v2    # "mediaViewParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_4
    const/16 v0, 0x11

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 52197
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52198
    .local v9, "insideContainerLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v1, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52199
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/SQ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52200
    new-instance v0, Lcom/facebook/ads/redexgen/X/Nh;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Nh;-><init>(Lcom/facebook/ads/redexgen/X/SQ;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52201
    .end local v2    # "mediaViewParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v9    # "insideContainerLayout":Landroid/widget/FrameLayout;
    :cond_0
    :goto_5
    invoke-virtual {p0, v5, v4}, Lcom/facebook/ads/redexgen/X/SQ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52202
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A0y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52203
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getCtaButton()Lcom/facebook/ads/redexgen/X/Sa;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Na;->setCTAClickListener(Lcom/facebook/ads/redexgen/X/Sa;)V

    .line 52204
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A08()Lcom/facebook/ads/redexgen/X/Li;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52205
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A08()Lcom/facebook/ads/redexgen/X/Li;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getCtaButton()Lcom/facebook/ads/redexgen/X/Sa;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Li;->setCTAClickListener(Lcom/facebook/ads/redexgen/X/Sa;)V

    .line 52206
    :cond_1
    return-void

    .line 52207
    .end local v2
    :cond_2
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_4

    .line 52208
    :cond_3
    if-eqz v3, :cond_0

    .line 52209
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/SQ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 52210
    :cond_4
    const/4 v0, -0x1

    goto/16 :goto_3

    .line 52211
    :cond_5
    sget v0, Lcom/facebook/ads/redexgen/X/Ni;->A07:I

    goto/16 :goto_2

    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 52212
    :cond_7
    const/4 v0, -0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public final A0c(Lcom/facebook/ads/redexgen/X/1C;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 0
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 52213
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Ni;->A0c(Lcom/facebook/ads/redexgen/X/1C;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 52214
    return-void
.end method

.method public final A0d()Z
    .locals 1

    .line 52215
    const/4 v0, 0x1

    return v0
.end method
