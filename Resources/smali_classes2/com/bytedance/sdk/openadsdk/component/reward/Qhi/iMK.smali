.class public Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/iMK;
.super Ljava/lang/Object;
.source "RewardFullVideoLoadingManager.java"


# instance fields
.field private final CJ:I

.field Qhi:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLoadingBar;

.field private ROR:Landroid/animation/AnimatorSet;

.field private Tgh:Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;

.field private final ac:Landroid/content/Context;

.field private final cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field private final fl:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ip:Landroid/content/Context;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/iMK;->ac:Landroid/content/Context;

    .line 33
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/iMK;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 34
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Dq:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/iMK;->CJ:I

    .line 35
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/iMK;->fl:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    return-void
.end method


# virtual methods
.method public CJ()Landroid/view/View;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/iMK;->Tgh:Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;

    return-object v0
.end method

.method public Qhi()V
    .locals 3

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/iMK;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 43
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/iMK;->ac:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/iMK;->Tgh:Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;

    .line 44
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->getLoadingProgressBar()Lcom/bytedance/sdk/openadsdk/core/widget/PAGLoadingBar;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/iMK;->Qhi:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLoadingBar;

    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/iMK;->Tgh:Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->getDownloadButton()Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/iMK;->fl:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->fl()Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/iMK;->Tgh:Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/iMK;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/iMK;->CJ:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGFullScreenLoadingLayout;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public ac()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/iMK;->ROR:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public cJ()V
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0x50

    .line 61
    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 63
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/iMK$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/iMK$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/iMK;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/16 v1, 0x51

    const/16 v2, 0x63

    .line 72
    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    .line 73
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 74
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/iMK$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/iMK$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/iMK;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 83
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/iMK;->ROR:Landroid/animation/AnimatorSet;

    .line 84
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/iMK;->ROR:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
