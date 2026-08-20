.class abstract Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;
.super Ljava/lang/Object;
.source "AdSceneManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/activity/cJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "cJ"
.end annotation


# instance fields
.field protected CJ:I

.field protected final Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

.field private final ROR:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

.field private final Sf:Landroid/content/Context;

.field private final Tgh:Landroid/os/Handler;

.field private WAv:Z

.field protected ac:F

.field protected final cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field protected fl:I

.field private hm:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/cJ;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;)V
    .locals 2

    .line 780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 771
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->Tgh:Landroid/os/Handler;

    .line 781
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    .line 782
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 783
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->ROR:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    .line 784
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->Sf:Landroid/content/Context;

    .line 785
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->CJ:I

    return-void
.end method

.method private CJ()V
    .locals 2

    .line 840
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->CJ(Lcom/bytedance/sdk/openadsdk/activity/cJ;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->ROR:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->fl()V

    .line 843
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->hm:Z

    return-void

    .line 845
    :cond_0
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->WAv:Z

    .line 847
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->ROR:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->Tgh()V

    return-void
.end method


# virtual methods
.method protected abstract Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)I
.end method

.method public Qhi()V
    .locals 2

    .line 791
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->Tgh:Landroid/os/Handler;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->fl:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public Qhi(I)V
    .locals 2

    .line 858
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->hm:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->WAv:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    int-to-float p1, p1

    .line 861
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->ac:F

    .line 862
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->CJ:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    const/4 v1, 0x2

    if-lez v0, :cond_1

    .line 864
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->fl:I

    if-nez p1, :cond_2

    .line 865
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->fl:I

    goto :goto_0

    .line 869
    :cond_1
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->fl:I

    float-to-int p1, p1

    .line 870
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->CJ:I

    .line 872
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->Tgh:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 873
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->Tgh:Landroid/os/Handler;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->fl:I

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public ac()V
    .locals 2

    .line 802
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->Tgh:Landroid/os/Handler;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->fl:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public cJ()V
    .locals 2

    .line 795
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->CJ:I

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->hm:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->WAv:Z

    if-nez v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->Tgh:Landroid/os/Handler;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->fl:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 797
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->Tgh:Landroid/os/Handler;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->fl:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8

    .line 807
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 809
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->CJ:I

    if-lez v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->ROR:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->Sf:Landroid/content/Context;

    const-string v5, "tt_reward_full_skip"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/component/utils/MQ;->cJ(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->CJ:I

    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->CJ:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setSkipText(Ljava/lang/CharSequence;)V

    .line 813
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->CJ:I

    if-ltz v0, :cond_3

    .line 814
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->Tgh:Landroid/os/Handler;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 815
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->Tgh:Landroid/os/Handler;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 819
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->CJ()V

    goto :goto_0

    .line 821
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 823
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->CJ:I

    if-lez v0, :cond_2

    .line 825
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->ROR:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->CJ:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->CJ:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setSkipText(Ljava/lang/CharSequence;)V

    .line 827
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->CJ:I

    if-ltz v0, :cond_3

    .line 828
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->Tgh:Landroid/os/Handler;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 829
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->Tgh:Landroid/os/Handler;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 833
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->CJ()V

    :cond_3
    :goto_0
    return v3
.end method
