.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;
.super Ljava/lang/Object;
.source "BrandBannerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$cJ;,
        Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$ac;,
        Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;
    }
.end annotation


# instance fields
.field private CJ:Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;

.field Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field private ROR:I

.field private Sf:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private Tgh:I

.field private ac:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;

.field private final cJ:Landroid/content/Context;

.field private fl:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

.field private hm:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V
    .locals 7

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 57
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->cJ:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->fl:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 59
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    .line 60
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->Tgh:I

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->ROR:I

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->hm:I

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;IILjava/lang/String;I)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->ac:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;

    return-void
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->ac()V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->fl:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    return-object p0
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ewb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    .line 68
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->Tgh:I

    .line 69
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->ROR:I

    return-void

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressWidth()I

    move-result v0

    .line 73
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressHeight()I

    move-result v1

    .line 72
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->Qhi(II)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iMK;

    move-result-object v0

    .line 74
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iMK;->Qhi:I

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->hm:I

    .line 75
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressWidth()I

    move-result v1

    if-lez v1, :cond_1

    .line 76
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressHeight()I

    move-result v1

    if-lez v1, :cond_1

    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->cJ:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->Tgh:I

    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->cJ:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->ROR:I

    goto :goto_0

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->cJ:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->Tgh:I

    int-to-float p1, p1

    .line 82
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/iMK;->cJ:F

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->ROR:I

    .line 86
    :goto_0
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->Tgh:I

    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->cJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/content/Context;)I

    move-result v0

    if-le p1, v0, :cond_2

    .line 87
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->cJ:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->Tgh:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->cJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->Tgh:I

    .line 89
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->ROR:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->ROR:I

    :cond_2
    return-void
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->ac:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;

    return-object p0
.end method

.method private ac()V
    .locals 2

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->Sf:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->Sf:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 437
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->Sf:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;)Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->CJ:Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;

    return-object p0
.end method


# virtual methods
.method public Qhi()V
    .locals 5

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ewb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$cJ;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->ac:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;

    .line 100
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/DspHtmlWebView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$cJ;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$ac;)V

    .line 101
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->aP()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 99
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->Sf:Ljava/util/concurrent/ScheduledFuture;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->ac:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;

    if-eqz v0, :cond_2

    .line 104
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/Sf;)V

    .line 128
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->ac:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->fl()Landroid/view/View;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->fl:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->removeView(Landroid/view/View;)V

    .line 130
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->fl:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->CJ:Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;

    if-eqz v0, :cond_3

    const/16 v1, 0x6a

    .line 136
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;->a_(I)V

    :cond_3
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->CJ:Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->ac:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->ac:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;)V

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/CQU;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->ac:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/CQU;)V

    :cond_0
    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->ac:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->Qhi(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public cJ()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->ac:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;->CJ()V

    .line 144
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->ac:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->ac()V

    .line 147
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->CJ:Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;

    .line 148
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->fl:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    return-void
.end method
