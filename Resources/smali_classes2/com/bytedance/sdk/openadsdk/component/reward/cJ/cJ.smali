.class public abstract Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;
.super Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Qhi;
.source "RewardFullAdType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ$Qhi;
    }
.end annotation


# instance fields
.field public ABk:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;

.field protected Gm:Ljava/lang/String;

.field public iMK:Landroid/widget/LinearLayout;

.field private pA:Lcom/bytedance/sdk/openadsdk/WAv/Tgh;

.field protected zc:Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    return-void
.end method

.method protected static Qhi(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 2

    .line 824
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;-><init>(Landroid/content/Context;)V

    .line 825
    sget p0, Lcom/bytedance/sdk/openadsdk/utils/iMK;->Gm:I

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setId(I)V

    const/high16 p0, -0x1000000

    .line 826
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 827
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 828
    iput v1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 829
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private Qhi(JJ)V
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sub-long p1, p3, p1

    .line 710
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->Qhi(JJ)V

    return-void
.end method

.method static Qhi(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V
    .locals 9

    .line 717
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 720
    iget-boolean v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->EGK:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz v1, :cond_3

    .line 721
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;-><init>(Landroid/content/Context;)V

    .line 722
    sget v6, Lcom/bytedance/sdk/openadsdk/utils/iMK;->WAv:I

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setId(I)V

    .line 723
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 726
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v6

    .line 729
    iget-object v7, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 732
    invoke-virtual {v7}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->WAv()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 734
    :cond_0
    iget-object v7, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cjC()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 735
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x0

    .line 736
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 739
    :cond_1
    const-string v7, ""

    .line 740
    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 741
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    invoke-direct {v7, v0}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;-><init>(Landroid/content/Context;)V

    .line 742
    sget v8, Lcom/bytedance/sdk/openadsdk/utils/iMK;->gt:I

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;->setId(I)V

    .line 743
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 744
    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    move-object v7, v2

    .line 746
    :goto_1
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 749
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFDownloadBarLayout;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFDownloadBarLayout;-><init>(Landroid/content/Context;)V

    .line 750
    sget v6, Lcom/bytedance/sdk/openadsdk/utils/iMK;->zc:I

    invoke-virtual {v1, v6}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFDownloadBarLayout;->setId(I)V

    .line 751
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v6, v5, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x50

    .line 752
    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 753
    invoke-virtual {p0, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 755
    new-instance v6, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ$3;

    invoke-direct {v6, p1, v7}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;)V

    invoke-virtual {v1, v6}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFDownloadBarLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 794
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/customview/PAGLinearLayout;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGLinearLayout;-><init>(Landroid/content/Context;)V

    .line 795
    sget v6, Lcom/bytedance/sdk/openadsdk/utils/iMK;->ABk:I

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setId(I)V

    .line 796
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 797
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 798
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 801
    :cond_3
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->jPH:Z

    if-eqz p1, :cond_4

    .line 803
    new-instance p1, Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-direct {p1, v0, v4}, Lcom/bytedance/sdk/component/widget/SSWebView;-><init>(Landroid/content/Context;Z)V

    .line 804
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/iMK;->iMK:I

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setId(I)V

    const/4 v1, 0x2

    .line 805
    invoke-virtual {p1, v1, v2}, Lcom/bytedance/sdk/component/widget/SSWebView;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v1, 0x4

    .line 806
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/widget/SSWebView;->setVisibility(I)V

    .line 807
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 810
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 811
    sget v2, Lcom/bytedance/sdk/openadsdk/utils/iMK;->pA:I

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 812
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 813
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 817
    :cond_4
    new-instance p1, Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-direct {p1, v0, v4}, Lcom/bytedance/sdk/component/widget/SSWebView;-><init>(Landroid/content/Context;Z)V

    .line 818
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/iMK;->hpZ:I

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->setId(I)V

    .line 819
    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/component/widget/SSWebView;->setVisibility(I)V

    .line 820
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public ABk()V
    .locals 0

    return-void
.end method

.method public CJ()Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ$Qhi;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public CQU()V
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->ac()Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->zc:Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;

    return-void
.end method

.method public Dww()V
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->ac()V

    .line 462
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->fl(Z)V

    return-void
.end method

.method public EBS()V
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Tgh()V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->iMK()V

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->CQU()V

    .line 408
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->fl()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->WAv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 412
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->iMK()V

    .line 413
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->fl()V

    .line 414
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->zc()V

    .line 415
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->zn:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->ac()V

    .line 416
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Eh:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ()V

    .line 417
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->gga:Lcom/bytedance/sdk/openadsdk/utils/zc;

    if-eqz v0, :cond_3

    .line 418
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->gga:Lcom/bytedance/sdk/openadsdk/utils/zc;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/zc;->ac()V

    :cond_3
    return-void
.end method

.method public final Eh()V
    .locals 4

    .line 540
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->ABk()V

    .line 544
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CJ:Z

    if-eqz v0, :cond_1

    const-string v0, "reward_endcard"

    goto :goto_0

    :cond_1
    const-string v0, "fullscreen_endcard"

    .line 545
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->pA:Lcom/bytedance/sdk/openadsdk/WAv/Tgh;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->PAe:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    invoke-virtual {v1, v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/WAv/Tgh;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;)V

    .line 546
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->pA:Lcom/bytedance/sdk/openadsdk/WAv/Tgh;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/WAv/Tgh;Z)V

    .line 547
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->PAe:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;)V

    .line 549
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->fl()V

    return-void
.end method

.method public Gm()V
    .locals 6

    .line 212
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Eh:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CJ:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->Qhi(Z)V

    .line 213
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->cJ()V

    .line 214
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->zn:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi()V

    .line 216
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->IC()Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ROR:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ip:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->zc()V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi()V

    .line 222
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Jma:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Qhi()V

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Qhi()V

    .line 226
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Qhi()V

    .line 228
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    const/high16 v3, -0x1000000

    if-eqz v0, :cond_2

    .line 232
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/component/widget/SSWebView;->setBackgroundColor(I)V

    .line 234
    :cond_2
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hm()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/component/widget/SSWebView;->setBackgroundColor(I)V

    .line 235
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->ac(Z)V

    .line 237
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 238
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->CJ()V

    const/4 v3, 0x4

    .line 239
    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 240
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hm()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 246
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ip:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->NBs:I

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ip:Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dI:I

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->Qhi(II)V

    .line 247
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Dww:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;->Qhi()V

    .line 249
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 250
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Z)V

    .line 251
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->fl()V

    .line 253
    sget v0, Lcom/bytedance/sdk/openadsdk/cJ/cJ$cJ;->ac:I

    invoke-virtual {p0, v2, v2, v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi(ZZZI)V

    return-void

    .line 256
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pv:Z

    if-eqz v0, :cond_6

    .line 257
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->Qhi(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public HzH()V
    .locals 1

    .line 317
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->kYc()V

    .line 318
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    if-nez v0, :cond_0

    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->gga:Lcom/bytedance/sdk/openadsdk/utils/zc;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->gga:Lcom/bytedance/sdk/openadsdk/utils/zc;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/zc;->Qhi()V

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Qhi()V

    return-void
.end method

.method public MQ()V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    if-nez v0, :cond_0

    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Qe:Z

    .line 356
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Qe:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    .line 357
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Gm:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->WAv()V

    .line 360
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->hpZ()V

    .line 361
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->tP()V

    .line 362
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->iMK()V

    .line 363
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->EBS:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 364
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->WAv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 365
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->qMt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->gga:Lcom/bytedance/sdk/openadsdk/utils/zc;

    if-eqz v0, :cond_3

    .line 368
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->gga:Lcom/bytedance/sdk/openadsdk/utils/zc;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/zc;->cJ()V

    .line 370
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ()V

    return-void
.end method

.method public Qhi(I)V
    .locals 2

    .line 503
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->fl:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ABk()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 505
    invoke-virtual {p0, v0, v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi(ZZZI)V

    .line 506
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CJ:Z

    if-eqz p1, :cond_0

    .line 507
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->hm:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    const/16 v0, 0x2710

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;->Qhi(I)V

    :cond_0
    return-void
.end method

.method public Qhi(Landroid/os/Message;)V
    .locals 12

    .line 567
    iget v0, p1, Landroid/os/Message;->what:I

    .line 568
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    const/16 v2, 0x12c

    if-eq v0, v2, :cond_11

    const/16 v2, 0x190

    const/4 v3, 0x0

    if-eq v0, v2, :cond_10

    const/16 v1, 0x1f4

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_c

    const/16 v1, 0x258

    if-eq v0, v1, :cond_b

    const-wide/16 v4, 0x3e8

    const-string v1, "s"

    const/16 v6, 0x2bc

    if-eq v0, v6, :cond_6

    const/16 v6, 0x320

    if-eq v0, v6, :cond_4

    const/16 v2, 0x384

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->EBS:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_13

    .line 646
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 647
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->aP()D

    move-result-wide v6

    int-to-long v8, p1

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v10, v6

    double-to-long v10, v10

    .line 648
    invoke-direct {p0, v8, v9, v10, v11}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi(JJ)V

    if-lez p1, :cond_2

    .line 650
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->cJ()V

    .line 651
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v9, p1, 0x3e8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Qhi(Ljava/lang/CharSequence;)V

    .line 652
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->fl(Z)V

    .line 653
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 654
    iput v2, v0, Landroid/os/Message;->what:I

    add-int/lit16 v1, p1, -0x3e8

    .line 655
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 656
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v2, v0, Landroid/os/Message;->arg1:I

    iput v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->hm:I

    .line 657
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->WAv:Lcom/bytedance/sdk/component/utils/CQU;

    invoke-virtual {v1, v0, v4, v5}, Lcom/bytedance/sdk/component/utils/CQU;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 659
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->VnT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Ura:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmpl-double v0, v6, v0

    if-lez v0, :cond_1

    .line 660
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Ura:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;

    int-to-float p1, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    float-to-double v1, p1

    div-double/2addr v1, v6

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v1

    double-to-float p1, v3

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Qhi(F)V

    :cond_1
    return-void

    .line 663
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->WAv:Lcom/bytedance/sdk/component/utils/CQU;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/utils/CQU;->removeMessages(I)V

    .line 664
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->pA()V

    .line 666
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Ura:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    .line 667
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->VnT:Z

    if-eqz v0, :cond_3

    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/activity/Qhi;

    if-eqz v0, :cond_3

    .line 668
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V

    :cond_3
    return-void

    .line 595
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 597
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->ac(Z)V

    .line 599
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->Qhi(F)V

    .line 601
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->LpL()Z

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->kYc:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 602
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ABk()V

    return-void

    .line 677
    :cond_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 678
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->qMt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_13

    if-lez p1, :cond_7

    .line 680
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->cJ()V

    .line 681
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v7, p1, 0x3e8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Qhi(Ljava/lang/CharSequence;)V

    .line 682
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->fl(Z)V

    .line 683
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 684
    iput v6, v0, Landroid/os/Message;->what:I

    add-int/lit16 p1, p1, -0x3e8

    .line 685
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 686
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Sf:I

    add-int/lit16 v1, v1, -0x3e8

    iput v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Sf:I

    .line 687
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->WAv:Lcom/bytedance/sdk/component/utils/CQU;

    invoke-virtual {p1, v0, v4, v5}, Lcom/bytedance/sdk/component/utils/CQU;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 689
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->WAv:Lcom/bytedance/sdk/component/utils/CQU;

    invoke-virtual {p1, v6}, Lcom/bytedance/sdk/component/utils/CQU;->removeMessages(I)V

    .line 690
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 691
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->HzH()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ()Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    .line 694
    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Dww()V

    return-void

    .line 692
    :cond_9
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->pA()V

    return-void

    .line 697
    :cond_a
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->pA()V

    goto/16 :goto_2

    .line 609
    :cond_b
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->pA()V

    return-void

    .line 573
    :cond_c
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 575
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->ac(Z)V

    .line 577
    :cond_d
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 578
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 579
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->hm()V

    .line 580
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->resumeTimers()V

    .line 582
    :cond_e
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 583
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(F)V

    .line 584
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->Qhi(F)V

    .line 587
    :cond_f
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->LpL()Z

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->kYc:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 588
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ABk()V

    return-void

    .line 638
    :cond_10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ABk()V

    const/4 p1, 0x3

    .line 639
    invoke-virtual {p0, v3, v1, v3, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi(ZZZI)V

    return-void

    .line 622
    :cond_11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->VnT:Z

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Ura:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    instance-of p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Qhi;

    if-eqz p1, :cond_12

    .line 623
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Ura:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/activity/Qhi;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->qMt()V

    goto :goto_1

    .line 625
    :cond_12
    sget p1, Lcom/bytedance/sdk/openadsdk/cJ/cJ$cJ;->cJ:I

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi(I)V

    .line 626
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Eh()Z

    move-result v0

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Eh()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(II)V

    .line 629
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 630
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object p1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;->fl:Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;)V

    :cond_13
    :goto_2
    return-void

    .line 615
    :cond_14
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Dww()V

    return-void
.end method

.method public abstract Qhi(Landroid/widget/FrameLayout;)V
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/WAv/Tgh;)V
    .locals 3

    .line 515
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->pA:Lcom/bytedance/sdk/openadsdk/WAv/Tgh;

    .line 516
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->ac()V

    .line 517
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->IC()Z

    move-result p1

    if-nez p1, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->aP()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 519
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Eh()V

    .line 523
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->aP()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 524
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->zn:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->cJ()V

    .line 527
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 528
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->WAv:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v0, 0x1f4

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Lcom/bytedance/sdk/component/utils/CQU;->sendEmptyMessageDelayed(IJ)Z

    .line 531
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Hf:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->Qhi(Z)V

    .line 532
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->CQU()V

    .line 533
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->ROR()V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;Lcom/bytedance/sdk/component/utils/CQU;)V
    .locals 0

    .line 85
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;Lcom/bytedance/sdk/component/utils/CQU;)V

    .line 87
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->EGK:Z

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Z)V

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 91
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Tgh()V

    :cond_1
    return-void
.end method

.method public Qhi(ZZZI)V
    .locals 7

    .line 282
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->zn:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p0

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi(ZZZLcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;I)V

    return-void
.end method

.method public abstract ROR()V
.end method

.method public Sf()Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;
    .locals 2

    .line 127
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ip:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract Tgh()Z
.end method

.method public WAv()Landroid/view/View;
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->NFd()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 203
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/customview/PAGRelativeLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 204
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/iMK;->nR:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGRelativeLayout;->setId(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 206
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getLoadingFrameView"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method protected aP()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bxS()V
    .locals 7

    .line 426
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Tgh:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->qMt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 429
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CJ:Z

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Tgh:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Qhi(Ljava/lang/String;Z)I

    move-result v0

    goto :goto_0

    .line 433
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Tgh:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->WAv(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 437
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Tgh:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Qhi(Ljava/lang/String;Z)I

    move-result v0

    goto :goto_0

    .line 439
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Tgh:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->tP(Ljava/lang/String;)I

    move-result v0

    .line 442
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->hm()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 444
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    if-eqz v0, :cond_7

    .line 445
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->WAv()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    return-void

    .line 447
    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->WAv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_4
    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    .line 449
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Sf()J

    move-result-wide v1

    int-to-long v3, v0

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gez v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    .line 451
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Gm()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->zc()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt v1, v0, :cond_7

    .line 453
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    if-eqz v0, :cond_7

    .line 454
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->CJ()V

    :cond_7
    return-void
.end method

.method public abstract fl()Z
.end method

.method public hm()Landroid/view/View;
    .locals 9

    .line 135
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;-><init>(Landroid/content/Context;)V

    .line 136
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/iMK;->XyJ:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->setId(I)V

    .line 139
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGCloseButton;->cJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    move-result-object v1

    const v2, 0x1f00000c

    .line 140
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;->setId(I)V

    .line 141
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v4, 0x800035

    .line 142
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 143
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 144
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 145
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    const-string v4, "tt_ad_close_text"

    invoke-static {v2, v4}, Lcom/bytedance/sdk/component/utils/MQ;->Qhi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v2, 0x8

    .line 147
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;->setVisibility(I)V

    .line 150
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-direct {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;-><init>(Landroid/content/Context;)V

    const v4, 0x1f00003d

    .line 151
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;->setId(I)V

    .line 152
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v5, 0x800053

    .line 153
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 154
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;-><init>(Landroid/content/Context;)V

    .line 158
    sget v5, Lcom/bytedance/sdk/openadsdk/utils/iMK;->smJ:I

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;->setId(I)V

    .line 159
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v7, v7, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    const/high16 v8, 0x42000000    # 32.0f

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v7

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v8, v8, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-static {v8, v6}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v5, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v6, 0x800055

    .line 160
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 161
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    const/high16 v6, 0x41100000    # 9.0f

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v5

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v7, v7, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-static {v7, v6}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;->setPadding(IIII)V

    .line 163
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 166
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v6, v6, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-direct {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;-><init>(Landroid/content/Context;)V

    .line 167
    sget v6, Lcom/bytedance/sdk/openadsdk/utils/iMK;->YAV:I

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->setId(I)V

    .line 168
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 169
    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x1

    .line 170
    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->setClickable(Z)V

    .line 171
    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->setFocusable(Z)V

    .line 175
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->addView(Landroid/view/View;)V

    .line 177
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->addView(Landroid/view/View;)V

    .line 179
    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->addView(Landroid/view/View;)V

    .line 182
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hU()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->VnT:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Qhi:I

    if-eq v2, v6, :cond_1

    .line 183
    :cond_0
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-direct {v2, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;-><init>(Landroid/content/Context;)V

    .line 184
    sget v4, Lcom/bytedance/sdk/openadsdk/utils/iMK;->YCN:I

    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setId(I)V

    .line 185
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v7, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 186
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->addView(Landroid/view/View;)V

    .line 191
    :cond_1
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public hpZ()V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->WAv:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->removeMessages(I)V

    return-void
.end method

.method public iMK()V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->ABk:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->ABk:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi;->dismiss()V

    :cond_0
    return-void
.end method

.method protected kYc()V
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->WAv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ROR:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->qMt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Sf:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Sf:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 330
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0x2bc

    .line 331
    iput v2, v0, Landroid/os/Message;->what:I

    .line 332
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Sf:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 333
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->xyz:Lcom/bytedance/sdk/component/utils/CQU;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/utils/CQU;->sendMessage(Landroid/os/Message;)Z

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->hm:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->EBS:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x384

    .line 338
    iput v1, v0, Landroid/os/Message;->what:I

    .line 339
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->hm:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 340
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->xyz:Lcom/bytedance/sdk/component/utils/CQU;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/utils/CQU;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public pA()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ROR:Z

    if-eqz v0, :cond_0

    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Tgh()V

    .line 301
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->VnT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Ura:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;

    if-nez v0, :cond_2

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->fl(I)V

    :cond_2
    return-void
.end method

.method public pM()V
    .locals 4

    .line 478
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Tgh()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Sf;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/hm;

    if-eqz v0, :cond_1

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->cJ()V

    return-void

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->hm:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->fl:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->hm()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;->Qhi(JZ)Z

    move-result v0

    if-nez v0, :cond_3

    .line 484
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->WAv:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->removeMessages(I)V

    .line 485
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->VnT:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Ura:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;

    if-eqz v0, :cond_2

    .line 486
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Ura:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->qMt()V

    goto :goto_0

    .line 488
    :cond_2
    sget v0, Lcom/bytedance/sdk/openadsdk/cJ/cJ$cJ;->Qhi:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi(I)V

    .line 489
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->fl:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->fl:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Eh()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(II)V

    .line 493
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->gga:Lcom/bytedance/sdk/openadsdk/utils/zc;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ewb()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 494
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->gga:Lcom/bytedance/sdk/openadsdk/utils/zc;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->MQ()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/zc;->Qhi(J)V

    :cond_4
    return-void
.end method

.method public qMt()V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    if-nez v0, :cond_0

    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->hpZ()V

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lB:Lcom/bytedance/sdk/openadsdk/WAv/hm;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/WAv/hm;->Qhi()I

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->ROR()I

    .line 381
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->kYc()V

    .line 383
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    if-eqz v0, :cond_2

    .line 386
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public tP()V
    .locals 0

    return-void
.end method

.method public zc()V
    .locals 5

    .line 263
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->yN:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/iMK;->ABk:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->iMK:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    .line 264
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 265
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/common/ROR;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const-string v4, "landingpage_endcard"

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/common/ROR;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->oU:Lcom/bytedance/sdk/openadsdk/common/ROR;

    .line 266
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->oU:Lcom/bytedance/sdk/openadsdk/common/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/ROR;->ac()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->iMK:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->oU:Lcom/bytedance/sdk/openadsdk/common/ROR;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/common/ROR;->fl()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->oU:Lcom/bytedance/sdk/openadsdk/common/ROR;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/common/ROR;)V

    return-void
.end method
