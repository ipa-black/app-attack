.class public Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;
.super Ljava/lang/Object;
.source "RewardFullScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$Qhi;
    }
.end annotation


# instance fields
.field private CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$Qhi;

.field protected Qhi:I

.field private ac:Z

.field private final cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V
    .locals 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->ac:Z

    const/4 v1, 0x0

    .line 37
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->Qhi:I

    .line 40
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    .line 42
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->ac()V

    .line 44
    iget v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Qhi:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    return-void

    .line 49
    :cond_0
    :try_start_0
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi()F

    move-result v3

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->Qhi:I

    .line 50
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 53
    :cond_1
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1000080

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 55
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Dq:I

    if-eq v0, v2, :cond_2

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 56
    :cond_2
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 59
    const-string v0, "TTAD.RFSM"

    const-string v1, "init: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private CJ()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Dq:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 369
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dVA:Z

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->Qhi(Landroid/app/Activity;I)V

    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->Qhi(Landroid/app/Activity;I)V

    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->Qhi(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    return-object p0
.end method

.method private static Qhi(Landroid/app/Activity;I)V
    .locals 1

    .line 380
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 384
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method private Tgh()F
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->hm(Landroid/content/Context;)I

    move-result v0

    .line 400
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private ac()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Oy()F

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Hf:F

    const/16 v0, 0x1a

    .line 98
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_1

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Dq:I

    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    const/4 v1, 0x2

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Dq:I

    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->SL()I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Dq:I

    return-void
.end method

.method private cJ(I)[F
    .locals 6

    .line 348
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->Tgh()F

    move-result v0

    .line 349
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->fl()F

    move-result v1

    .line 350
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Dq:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    cmpl-float v5, v0, v1

    if-lez v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    if-eq v2, v5, :cond_2

    add-float/2addr v0, v1

    sub-float v1, v0, v1

    sub-float/2addr v0, v1

    .line 358
    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Dq:I

    if-ne v2, v4, :cond_3

    int-to-float p1, p1

    sub-float/2addr v0, p1

    goto :goto_2

    :cond_3
    int-to-float p1, p1

    sub-float/2addr v1, p1

    :goto_2
    const/4 p1, 0x2

    .line 363
    new-array p1, p1, [F

    aput v1, p1, v3

    aput v0, p1, v4

    return-object p1
.end method

.method private fl()F
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->WAv(Landroid/content/Context;)I

    move-result v0

    .line 392
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method


# virtual methods
.method public Qhi()V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/app/Activity;)V

    .line 321
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/utils/CQU;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 72
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Lcom/bytedance/sdk/component/utils/CQU;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public Qhi(Z)V
    .locals 9

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_0

    .line 120
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->CJ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->CJ()V

    .line 127
    :catchall_0
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->fl()F

    move-result v0

    .line 128
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->Tgh()F

    move-result v1

    .line 131
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Dq:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 132
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 133
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1

    .line 135
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 136
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 140
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    .line 141
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi()F

    move-result v4

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/content/Context;F)I

    move-result v4

    .line 142
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Dq:I

    if-eq v5, v3, :cond_3

    .line 143
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    goto :goto_2

    .line 147
    :cond_3
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    .line 153
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    float-to-int v1, v2

    iput v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->NBs:I

    .line 154
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    float-to-int v0, v0

    iput v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dI:I

    return-void

    .line 159
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Dq:I

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v6, 0x41a00000    # 20.0f

    const/16 v7, 0x14

    const/4 v8, 0x0

    if-eq p1, v3, :cond_6

    .line 160
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Hf:F

    cmpl-float p1, p1, v8

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Hf:F

    cmpl-float p1, p1, v5

    if-eqz p1, :cond_7

    sub-float p1, v2, v6

    sub-float/2addr p1, v6

    .line 163
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Hf:F

    div-float/2addr p1, v3

    sub-float p1, v0, p1

    div-float/2addr p1, v4

    invoke-static {p1, v8}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    move v3, p1

    move v4, v3

    move p1, v7

    goto :goto_3

    .line 167
    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Hf:F

    cmpl-float p1, p1, v8

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Hf:F

    cmpl-float p1, p1, v5

    if-eqz p1, :cond_7

    sub-float p1, v0, v6

    sub-float/2addr p1, v6

    .line 170
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Hf:F

    mul-float/2addr p1, v3

    sub-float p1, v2, p1

    div-float/2addr p1, v4

    invoke-static {p1, v8}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    move v3, v7

    move v4, v3

    move v7, p1

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    move p1, v7

    move v3, p1

    move v4, v3

    .line 175
    :goto_3
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    int-to-float v6, v7

    sub-float/2addr v2, v6

    int-to-float p1, p1

    sub-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->NBs:I

    .line 176
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    int-to-float v3, v3

    sub-float/2addr v0, v3

    int-to-float v4, v4

    sub-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dI:I

    .line 177
    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v0

    .line 178
    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v2

    .line 179
    invoke-static {v1, v6}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v3

    .line 180
    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result p1

    .line 181
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3, v0, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public Qhi(I)[F
    .locals 8

    const/4 v0, 0x2

    .line 271
    new-array v1, v0, [F

    .line 272
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    .line 273
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 274
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x23

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lt v4, v5, :cond_0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Oy()F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 276
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v1, v7

    .line 277
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v4, v3

    int-to-float v3, v4

    aput v3, v1, v6

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    mul-int/2addr v5, v0

    sub-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v1, v7

    .line 281
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    mul-int/2addr v3, v0

    sub-int/2addr v4, v3

    int-to-float v3, v4

    aput v3, v1, v6

    .line 283
    :goto_0
    aget v3, v1, v7

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v7

    .line 284
    aget v3, v1, v6

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v6

    .line 285
    aget v4, v1, v7

    const/high16 v5, 0x41200000    # 10.0f

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_1

    cmpg-float v3, v3, v5

    if-gez v3, :cond_2

    .line 287
    :cond_1
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->Qhi:I

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ(I)[F

    move-result-object v1

    .line 289
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_6

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1b

    if-ne v3, v4, :cond_3

    goto :goto_2

    .line 291
    :cond_3
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 293
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_4

    move v2, v0

    goto :goto_1

    :cond_4
    move v2, v6

    :goto_1
    if-eq v2, p1, :cond_6

    if-ne p1, v0, :cond_5

    .line 298
    aget p1, v1, v7

    aget v0, v1, v6

    cmpg-float v2, p1, v0

    if-gez v2, :cond_6

    .line 300
    aput p1, v1, v6

    .line 301
    aput v0, v1, v7

    goto :goto_2

    .line 304
    :cond_5
    aget p1, v1, v7

    aget v0, v1, v6

    cmpl-float v2, p1, v0

    if-lez v2, :cond_6

    .line 306
    aput p1, v1, v6

    .line 307
    aput v0, v1, v7

    :cond_6
    :goto_2
    return-object v1
.end method

.method public cJ()V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$Qhi;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$Qhi;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v0, 0x0

    .line 406
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$Qhi;

    :cond_0
    return-void
.end method

.method public cJ(Lcom/bytedance/sdk/component/utils/CQU;)V
    .locals 3

    .line 194
    :try_start_0
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->ac:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->yN()I

    move-result p1

    if-ne p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 196
    :goto_0
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->ac:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    if-eqz p1, :cond_4

    .line 198
    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$Qhi;

    if-nez v2, :cond_3

    .line 199
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;ZZ)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$Qhi;

    .line 257
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$Qhi;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 259
    :cond_4
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->ac:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
