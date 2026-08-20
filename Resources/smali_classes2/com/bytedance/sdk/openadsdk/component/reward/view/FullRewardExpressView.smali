.class public Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;
.super Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;
.source "FullRewardExpressView.java"


# static fields
.field public static Qhi:F = 100.0f


# instance fields
.field private final CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

.field ac:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;

.field cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V
    .locals 7

    .line 44
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-boolean v5, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    iget-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->VnT:Z

    xor-int/lit8 v6, v0, 0x1

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;ZZ)V

    .line 45
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->ac(Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V

    return-void
.end method

.method private ROR()V
    .locals 1

    .line 64
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->setBackupListener(Lcom/bytedance/sdk/component/adexpress/cJ/ac;)V

    return-void
.end method

.method private ac(Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->Tgh()D

    move-result-wide v0

    .line 126
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->ROR()D

    move-result-wide v2

    .line 127
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->Sf()D

    move-result-wide v4

    .line 128
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->hm()D

    move-result-wide v6

    .line 130
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->Sf:Landroid/content/Context;

    double-to-float v0, v0

    invoke-static {v8, v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v0

    .line 131
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->Sf:Landroid/content/Context;

    double-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v1

    .line 132
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->Sf:Landroid/content/Context;

    double-to-float v3, v4

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v2

    .line 133
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->Sf:Landroid/content/Context;

    double-to-float v8, v6

    invoke-static {v3, v8}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v3

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    const/4 v7, 0x7

    if-eqz v6, :cond_1

    cmpl-double v4, v4, v8

    if-nez v4, :cond_2

    .line 136
    :cond_1
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->aP:Lcom/bytedance/sdk/component/adexpress/cJ/fl;

    invoke-interface {v4}, Lcom/bytedance/sdk/component/adexpress/cJ/fl;->ac()I

    move-result v4

    if-eq v4, v7, :cond_2

    return-void

    .line 139
    :cond_2
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->aP:Lcom/bytedance/sdk/component/adexpress/cJ/fl;

    invoke-interface {v4}, Lcom/bytedance/sdk/component/adexpress/cJ/fl;->ac()I

    move-result v4

    if-ne v4, v7, :cond_4

    instance-of v4, p1, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/cJ;

    if-eqz v4, :cond_4

    .line 140
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/cJ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/cJ;->hpZ()Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 142
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 143
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 144
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->zc:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void

    .line 147
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->zc:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-nez p1, :cond_5

    .line 149
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 151
    :cond_5
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 152
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 153
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 154
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 156
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 157
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 159
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->zc:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    return-object p0
.end method


# virtual methods
.method public CJ()I
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;

    if-eqz v0, :cond_0

    .line 207
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;->CJ()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Qhi()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;

    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;->Qhi()V

    :cond_0
    return-void
.end method

.method public Qhi(I)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;

    if-eqz v0, :cond_0

    .line 192
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;->Qhi(I)V

    :cond_0
    return-void
.end method

.method public Qhi(ILjava/lang/String;)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;

    if-eqz v0, :cond_0

    .line 255
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;->Qhi(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Qhi(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/ac;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->fl()V

    return-void

    .line 228
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Qhi(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/ac;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/fl;Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/adexpress/cJ/fl<",
            "+",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/sdk/component/adexpress/cJ/pA;",
            ")V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->aP:Lcom/bytedance/sdk/component/adexpress/cJ/fl;

    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ewb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/fl;Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V

    return-void

    .line 86
    :cond_0
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->hpZ()Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->hpZ()Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    :cond_1
    if-eqz p2, :cond_2

    .line 89
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->ac()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->cJ(Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V

    .line 93
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/fl;Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V

    return-void
.end method

.method public Qhi(Z)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;->Qhi(Z)V

    .line 170
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->setSoundMute(Z)V

    return-void
.end method

.method protected Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/pA;)Z
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/model/MQ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/MQ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/MQ;->mvd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->cJ()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 102
    :cond_0
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/pA;)Z

    move-result p1

    return p1
.end method

.method protected Tgh()V
    .locals 3

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->iMK:Z

    .line 51
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->Sf:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->zc:Landroid/widget/FrameLayout;

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->zc:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Tgh()V

    .line 56
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->getWebView()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 58
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setBackgroundColor(I)V

    .line 60
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->ROR()V

    return-void
.end method

.method public ac()J
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;

    if-eqz v0, :cond_0

    .line 199
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;->ac()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected ac(I)Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;
    .locals 1

    .line 261
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ac(I)Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;

    move-result-object p1

    .line 262
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->VnT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Ura:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Ura:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/activity/ROR;->hm:I

    iput v0, p1, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;->cJ:I

    :cond_0
    return-object p1
.end method

.method public cJ()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;

    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;->cJ()V

    :cond_0
    return-void
.end method

.method public cJ(I)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;

    if-eqz v0, :cond_0

    .line 248
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;->cJ(I)V

    :cond_0
    return-void
.end method

.method public cJ(Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 113
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView$2;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Ljava/lang/Runnable;)V

    return-void
.end method

.method public fl()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;

    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;->fl()V

    :cond_0
    return-void
.end method

.method public getBackupContainerBackgroundView()Landroid/view/View;
    .locals 1

    .line 239
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->ABk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->ac:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->getBackupContainerBackgroundView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 232
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->ABk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->ac:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->getVideoContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->zc:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public setExpressVideoListenerProxy(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;

    return-void
.end method
