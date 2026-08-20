.class public Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;
.super Ljava/lang/Object;
.source "RewardFullVideoPlayerManager.java"


# instance fields
.field private ABk:I

.field final CJ:Z

.field private Gm:J

.field private final HzH:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

.field private MQ:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

.field protected Qhi:Z

.field private final ROR:Landroid/app/Activity;

.field private final Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

.field private final WAv:Ljava/lang/String;

.field ac:Z

.field cJ:Z

.field protected fl:Z

.field private hm:Landroid/widget/FrameLayout;

.field private hpZ:Z

.field private iMK:Ljava/lang/String;

.field private kYc:Z

.field private pA:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tP:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;

.field private zc:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi:Z

    .line 60
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ:Z

    .line 66
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->fl:Z

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ABk:I

    .line 92
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->HzH:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    .line 93
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ROR:Landroid/app/Activity;

    .line 94
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 95
    iget-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CJ:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->CJ:Z

    .line 96
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->fl:Ljava/lang/String;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->WAv:Ljava/lang/String;

    .line 97
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->pA:Ljava/util/HashSet;

    return-void
.end method

.method private Jma()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->zc()Lcom/bykv/vk/openvk/component/video/api/Qhi;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->fl()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Gm:J

    .line 251
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->zc()Lcom/bykv/vk/openvk/component/video/api/Qhi;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/Qhi;->ac()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    .line 252
    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->zc()Lcom/bykv/vk/openvk/component/video/api/Qhi;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/Qhi;->cJ()Z

    move-result v0

    if-nez v0, :cond_2

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->Qhi()V

    .line 254
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->ac()V

    const/4 v0, 0x1

    .line 255
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi:Z

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ABk:I

    return p0
.end method

.method private Qhi(JZ)Z
    .locals 6

    .line 448
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->zTC()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/component/video/api/Qhi/cJ;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/Qhi/cJ;->Qhi()Ljava/lang/String;

    move-result-object v0

    .line 455
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->iMK()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-lez v1, :cond_1

    .line 457
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ:Z

    .line 460
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/core/video/Qhi/cJ;

    move-result-object v0

    .line 461
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HLI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->cJ(Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->hm:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->Qhi(I)V

    .line 463
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->hm:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->cJ(I)V

    .line 464
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->EGK()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ac(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->Qhi(J)V

    .line 466
    invoke-virtual {v0, p3}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->Qhi(Z)V

    .line 467
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->HzH:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->HzH:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Sf()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 469
    iput v3, v0, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->CJ:I

    .line 471
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->HzH:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    return-object p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->iMK:Ljava/lang/String;

    return-object p0
.end method

.method private cJ(JJ)V
    .locals 5

    .line 157
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ABk:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 158
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ABk:I

    if-ltz v1, :cond_2

    const/16 v2, 0x1f4

    if-gt v0, v2, :cond_2

    int-to-long v3, v1

    cmp-long p3, v3, p3

    if-lez p3, :cond_0

    goto :goto_1

    :cond_0
    if-ge v0, v2, :cond_2

    .line 161
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->pA:Ljava/util/HashSet;

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->iMK:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 162
    iget p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ABk:I

    int-to-long p3, p3

    cmp-long p1, p3, p1

    if-lez p1, :cond_1

    .line 163
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->ac()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA$1;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;)V

    int-to-long p3, v0

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->pM()V

    .line 172
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->HzH:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ABk:I

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->iMK:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Qhi(ILjava/lang/String;)V

    .line 174
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->pA:Ljava/util/HashSet;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->iMK:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public ABk()V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    if-eqz v0, :cond_0

    .line 269
    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->CJ()V

    :cond_0
    return-void
.end method

.method public CJ(Z)V
    .locals 1

    .line 598
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->kYc:Z

    .line 599
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 604
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->EBS()I

    move-result p1

    .line 605
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->cJ(I)V

    return-void

    .line 607
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->WAv(I)V

    .line 608
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->cJ(I)V

    return-void
.end method

.method public CJ()Z
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->zc()Lcom/bykv/vk/openvk/component/video/api/Qhi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->zc()Lcom/bykv/vk/openvk/component/video/api/Qhi;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/Qhi;->ROR()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public CQU()V
    .locals 0

    .line 483
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->zc()V

    return-void
.end method

.method public Dww()Z
    .locals 1

    .line 479
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ac:Z

    return v0
.end method

.method public EBS()Z
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Eh()Z
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->zc()Lcom/bykv/vk/openvk/component/video/api/Qhi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->zc()Lcom/bykv/vk/openvk/component/video/api/Qhi;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/Qhi;->Qhi()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Gm()J
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->Tgh()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public HzH()I
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    if-eqz v0, :cond_0

    .line 312
    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->WAv()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public MQ()J
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    if-eqz v0, :cond_0

    .line 359
    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->Sf()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public NFd()V
    .locals 2

    .line 570
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    if-eqz v1, :cond_0

    .line 571
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->lG()V

    :cond_0
    return-void
.end method

.method public Qhi()Lcom/bytedance/sdk/openadsdk/cJ/Sf;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->MQ:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    return-object v0
.end method

.method public Qhi(II)V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;-><init>()V

    .line 227
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Gm()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->cJ(J)V

    .line 228
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->tP()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ac(J)V

    .line 229
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ROR()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Qhi(J)V

    .line 230
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Qhi(I)V

    .line 231
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->cJ(I)V

    .line 232
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    invoke-interface {p1}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->ABk()Lcom/bykv/vk/openvk/component/video/api/CJ/ac;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->CJ(Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;)V

    :cond_0
    return-void
.end method

.method public Qhi(ILjava/lang/String;)V
    .locals 0

    .line 179
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ABk:I

    .line 180
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->iMK:Ljava/lang/String;

    return-void
.end method

.method public Qhi(J)V
    .locals 0

    .line 204
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Gm:J

    return-void
.end method

.method public Qhi(JJ)V
    .locals 0

    .line 152
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->zc:J

    .line 153
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ(JJ)V

    return-void
.end method

.method public Qhi(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V
    .locals 3

    .line 101
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->hpZ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->hpZ:Z

    .line 105
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->hm:Landroid/widget/FrameLayout;

    .line 106
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->MQ:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    .line 107
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 108
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ROR:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->hm:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    .line 109
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->kYc:Z

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->CJ(Z)V

    .line 110
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->tP:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;

    if-eqz p1, :cond_2

    .line 111
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;)V

    return-void

    .line 114
    :cond_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/ac;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/ac;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    .line 115
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->tP:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;

    if-eqz p2, :cond_2

    .line 116
    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;)V

    :cond_2
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    if-eqz v0, :cond_0

    .line 293
    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;)V

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)V
    .locals 3

    .line 428
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->HzH:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->WAv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->HzH:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Qe:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->HzH:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->HzH:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 429
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->HzH:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Tgh:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->ABk(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->HzH:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->CJ()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->HzH:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 430
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->HzH:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 433
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->fl:Z

    if-eqz v0, :cond_2

    return-void

    .line 437
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Tgh()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 440
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->HzH:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->xyz:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v0, 0x12c

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/utils/CQU;->removeMessages(I)V

    .line 441
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 442
    iput v0, p1, Landroid/os/Message;->what:I

    .line 443
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->HzH:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->xyz:Lcom/bytedance/sdk/component/utils/CQU;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p1, v1, v2}, Lcom/bytedance/sdk/component/utils/CQU;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;)V
    .locals 0

    .line 613
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->tP:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;)V
    .locals 2

    const/4 v0, 0x0

    .line 506
    :try_start_0
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->fl:Z

    .line 507
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Jma()V

    .line 509
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;)V

    return-void

    .line 512
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->CJ()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 513
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->iMK()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onContinue throw Exception :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTAD.RFVideoPlayerMag"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Qhi(Ljava/lang/String;Z)V
    .locals 10

    .line 338
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ROR()J

    move-result-wide v0

    .line 340
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->TGC()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->HzH:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ac()J

    move-result-wide v0

    :cond_0
    move-wide v5, v0

    .line 343
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    .line 344
    invoke-interface {v1}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->Tgh()J

    move-result-wide v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    .line 345
    invoke-interface {v3}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->zc()Lcom/bykv/vk/openvk/component/video/api/Qhi;

    move-result-object v3

    .line 343
    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;JLcom/bykv/vk/openvk/component/video/api/Qhi;)Lorg/json/JSONObject;

    move-result-object v8

    .line 347
    :try_start_0
    const-string v0, "auto_click"

    invoke-virtual {v8, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :catch_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->WAv:Ljava/lang/String;

    .line 351
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->HzH()I

    move-result v7

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->MQ:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    move-object v4, p1

    .line 350
    invoke-static/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;JILorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    .line 352
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->tP()J

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->HzH()I

    .line 354
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->lB()V

    return-void
.end method

.method public Qhi(Z)V
    .locals 0

    .line 208
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi:Z

    return-void
.end method

.method public Qhi(ZLcom/bytedance/sdk/openadsdk/core/video/ac/cJ;Z)V
    .locals 0

    if-eqz p3, :cond_2

    if-nez p1, :cond_2

    .line 525
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->fl:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 528
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->CJ()Z

    move-result p1

    const-string p3, "TTAD.RFVideoPlayerMag"

    if-eqz p1, :cond_1

    .line 529
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->iMK()V

    .line 530
    const-string p1, "resumeOrRestartVideo: continue play"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 532
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Jma()V

    .line 533
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;)V

    .line 534
    const-string p1, "resumeOrRestartVideo: recreate video player & exec play"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public Qhi(JZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;",
            ")Z"
        }
    .end annotation

    .line 401
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->EBS()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->HzH:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->HzH:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 407
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->bxS()Z

    move-result v0

    if-nez v0, :cond_3

    .line 409
    :cond_2
    invoke-virtual {p0, p5}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)V

    .line 413
    :cond_3
    :try_start_0
    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->HzH:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean p5, p5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    invoke-direct {p0, p1, p2, p5}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(JZ)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 415
    const-string p2, "TTAD.RFVideoPlayerMag"

    const-string p5, "playVideo: "

    invoke-static {p2, p5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz v1, :cond_4

    if-nez p3, :cond_4

    .line 418
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->HzH:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi(Ljava/util/Map;)V

    :cond_4
    return v1

    :cond_5
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public ROR()J
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    if-eqz v0, :cond_0

    .line 189
    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->fl()J

    move-result-wide v0

    return-wide v0

    .line 191
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Gm:J

    return-wide v0
.end method

.method public Sf()J
    .locals 2

    .line 196
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->zc:J

    return-wide v0
.end method

.method public Tgh()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi:Z

    return v0
.end method

.method public WAv()V
    .locals 3

    .line 213
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->Qhi()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RewardFullVideoPlayerManager onPause throw Exception :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/ABk;->cJ(Ljava/lang/String;)V

    return-void
.end method

.method public aP()D
    .locals 5

    .line 555
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hm()Lcom/bytedance/sdk/openadsdk/core/model/kYc;

    move-result-object v0

    .line 556
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->cJ()J

    move-result-wide v0

    :goto_0
    long-to-double v0, v0

    return-wide v0

    .line 559
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 560
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->CJ()J

    move-result-wide v0

    goto :goto_0

    .line 562
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 564
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Tgh()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->EBS()I

    move-result v0

    int-to-double v3, v0

    mul-double/2addr v1, v3

    return-wide v1

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public ac()Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    if-eqz v0, :cond_1

    .line 129
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;

    if-eqz v1, :cond_0

    .line 130
    check-cast v0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->kYc()Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;

    move-result-object v0

    return-object v0

    .line 132
    :cond_0
    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->ABk()Lcom/bykv/vk/openvk/component/video/api/CJ/ac;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public ac(Z)V
    .locals 0

    .line 475
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ac:Z

    return-void
.end method

.method public bxS()Z
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->zc()Lcom/bykv/vk/openvk/component/video/api/Qhi;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected cJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;)V
    .locals 3

    .line 547
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->qMt()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 549
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->hm()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;->Qhi(JZ)Z

    :cond_0
    return-void
.end method

.method public cJ(Z)V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    if-eqz v0, :cond_0

    .line 299
    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->cJ(Z)V

    :cond_0
    return-void
.end method

.method public cJ()Z
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->zc()Lcom/bykv/vk/openvk/component/video/api/Qhi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->zc()Lcom/bykv/vk/openvk/component/video/api/Qhi;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/Qhi;->Tgh()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public fl()Z
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->hpZ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hm()J
    .locals 2

    .line 200
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Gm:J

    return-wide v0
.end method

.method public hpZ()J
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    if-eqz v0, :cond_0

    .line 305
    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->Sf()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public iMK()V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    if-eqz v0, :cond_0

    .line 275
    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->cJ()V

    :cond_0
    return-void
.end method

.method public kYc()I
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    if-eqz v0, :cond_0

    .line 318
    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->ROR()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public lB()V
    .locals 2

    .line 583
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    if-eqz v1, :cond_0

    .line 584
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->zn()V

    :cond_0
    return-void
.end method

.method public lG()V
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    if-eqz v1, :cond_0

    .line 590
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->es()V

    :cond_0
    return-void
.end method

.method public pA()V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    if-eqz v0, :cond_0

    .line 281
    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->Qhi()V

    :cond_0
    return-void
.end method

.method public pM()V
    .locals 3

    .line 491
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 492
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->fl:Z

    .line 493
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->pA()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPause throw Exception :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTAD.RFVideoPlayerMag"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public qMt()Z
    .locals 4

    .line 365
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 366
    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->zc()Lcom/bykv/vk/openvk/component/video/api/Qhi;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 367
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->zc()Lcom/bykv/vk/openvk/component/video/api/Qhi;

    move-result-object v0

    .line 368
    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/Qhi;->ROR()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/Qhi;->Sf()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    if-eqz v1, :cond_1

    .line 370
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Jma()V

    :cond_1
    return v2

    .line 376
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 377
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(Z)V

    .line 378
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    if-eqz v1, :cond_3

    .line 379
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Jma()V

    :cond_3
    return v2

    :cond_4
    return v1
.end method

.method public sDy()Landroid/view/View;
    .locals 2

    .line 576
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    if-eqz v1, :cond_0

    .line 577
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->js()Lcom/bykv/vk/openvk/component/video/api/renderview/cJ;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public tP()J
    .locals 4

    .line 325
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    if-eqz v0, :cond_0

    .line 326
    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->Sf()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    invoke-interface {v2}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->Tgh()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public zc()V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    if-nez v0, :cond_0

    return-void

    .line 263
    :cond_0
    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->ac()V

    const/4 v0, 0x0

    .line 264
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Tgh:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    return-void
.end method
