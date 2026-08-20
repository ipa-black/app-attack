.class public Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;
.super Ljava/lang/Object;
.source "RewardFullUgenEndcardManager.java"


# instance fields
.field private ABk:Lcom/bytedance/adsdk/ugeno/component/cJ;

.field private final CJ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private Gm:J

.field private HzH:Z

.field final Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field private volatile ROR:J

.field private volatile Sf:J

.field private volatile Tgh:J

.field private final WAv:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ac:Landroid/widget/FrameLayout;

.field private final cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

.field private final fl:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private hm:Ljava/lang/String;

.field private hpZ:Z

.field private iMK:Lcom/bytedance/adsdk/ugeno/component/cJ;

.field private pA:Ljava/lang/String;

.field private zc:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V
    .locals 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->CJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->fl:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->WAv:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v2, 0x0

    .line 40
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Gm:J

    .line 41
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->zc:J

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->pA:Ljava/lang/String;

    .line 45
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->hpZ:Z

    .line 52
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    .line 53
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 54
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->fl:Ljava/lang/String;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->hm:Ljava/lang/String;

    return-void
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Tgh:J

    return-wide v0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;J)J
    .locals 0

    .line 28
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Gm:J

    return-wide p1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;Lcom/bytedance/adsdk/ugeno/component/cJ;)Lcom/bytedance/adsdk/ugeno/component/cJ;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->ABk:Lcom/bytedance/adsdk/ugeno/component/cJ;

    return-object p1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->pA:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->CJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->hpZ:Z

    return p1
.end method

.method static synthetic ROR(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->fl:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic Sf(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->zc:J

    return-wide v0
.end method

.method static synthetic Tgh(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->ROR:J

    return-wide v0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Gm:J

    return-wide v0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;J)J
    .locals 0

    .line 28
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->zc:J

    return-wide p1
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;J)J
    .locals 0

    .line 28
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->ROR:J

    return-wide p1
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;Lcom/bytedance/adsdk/ugeno/component/cJ;)Lcom/bytedance/adsdk/ugeno/component/cJ;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->iMK:Lcom/bytedance/adsdk/ugeno/component/cJ;

    return-object p1
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->hm:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic fl(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->iMK()V

    return-void
.end method

.method static synthetic hm(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    return-object p0
.end method

.method private iMK()V
    .locals 7

    .line 140
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-nez v0, :cond_0

    return-void

    .line 143
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->wv()Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    .line 147
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->hm:Ljava/lang/String;

    new-instance v6, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$3;

    invoke-direct {v6, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/fl;)V

    .line 181
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/ac;)V

    .line 193
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->Qhi()V

    .line 194
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->WAv()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->Qhi(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public ABk()Z
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->fl:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public CJ()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->hpZ:Z

    return v0
.end method

.method public Gm()V
    .locals 4

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 242
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Sf:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->hm:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(JLcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V

    return-void
.end method

.method public Qhi()V
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->HzH:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->HzH:Z

    .line 62
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->cJ()V

    return-void
.end method

.method public Qhi(I)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->ac:Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    return-void
.end method

.method public ROR()V
    .locals 5

    .line 215
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->WAv()V

    .line 216
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->hm()V

    .line 218
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->ABk:Lcom/bytedance/adsdk/ugeno/component/cJ;

    if-eqz v0, :cond_0

    .line 219
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->ac:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/component/cJ;->hm()Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->ABk:Lcom/bytedance/adsdk/ugeno/component/cJ;

    invoke-virtual {v3}, Lcom/bytedance/adsdk/ugeno/component/cJ;->hpZ()I

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->ABk:Lcom/bytedance/adsdk/ugeno/component/cJ;

    invoke-virtual {v4}, Lcom/bytedance/adsdk/ugeno/component/cJ;->HzH()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public Sf()V
    .locals 5

    .line 226
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->iMK:Lcom/bytedance/adsdk/ugeno/component/cJ;

    if-eqz v0, :cond_0

    .line 227
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->ac:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/component/cJ;->hm()Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->iMK:Lcom/bytedance/adsdk/ugeno/component/cJ;

    invoke-virtual {v3}, Lcom/bytedance/adsdk/ugeno/component/cJ;->hpZ()I

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->iMK:Lcom/bytedance/adsdk/ugeno/component/cJ;

    invoke-virtual {v4}, Lcom/bytedance/adsdk/ugeno/component/cJ;->HzH()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public Tgh()V
    .locals 2

    .line 211
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Sf:J

    return-void
.end method

.method public WAv()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->hm:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V

    return-void
.end method

.method public ac()V
    .locals 7

    .line 70
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->af()Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    .line 77
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->hm:Ljava/lang/String;

    new-instance v6, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$1;

    invoke-direct {v6, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/fl;)V

    .line 119
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->wv()Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 120
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/ac;)V

    .line 132
    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->Qhi()V

    .line 133
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->WAv()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/cJ/cJ;->Qhi(Landroid/view/View;)V

    return-void
.end method

.method cJ()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->yN:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/iMK;->pA:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->ac:Landroid/widget/FrameLayout;

    return-void
.end method

.method public fl()V
    .locals 2

    .line 206
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Tgh:J

    .line 207
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->hm:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V

    return-void
.end method

.method public hm()V
    .locals 5

    .line 231
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Sf:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->ROR:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->WAv:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->ROR:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Sf:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->hm:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->pA:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(JLcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public zc()Z
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->CJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
