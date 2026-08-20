.class Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;
.super Ljava/lang/Object;
.source "FakeVideoController.java"

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/api/Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Qhi"
.end annotation


# instance fields
.field private CJ:Landroid/os/CountDownTimer;

.field private final Qhi:J

.field private final ROR:Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;

.field private final Sf:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

.field private Tgh:J

.field private ac:I

.field private cJ:J

.field private fl:Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;


# direct methods
.method public constructor <init>(JLcom/bykv/vk/openvk/component/video/api/cJ/Qhi;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V
    .locals 1

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 355
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->ac:I

    .line 362
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->Qhi:J

    .line 363
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->ROR:Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;

    .line 364
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    return-void
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;)Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->fl:Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    return-object p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;I)I
    .locals 0

    .line 347
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->ac:I

    return p1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;)J
    .locals 2

    .line 347
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->Tgh:J

    return-wide v0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;J)J
    .locals 0

    .line 347
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->Tgh:J

    return-wide p1
.end method

.method static synthetic Tgh(Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;)Lcom/bytedance/sdk/openadsdk/cJ/Sf;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    return-object p0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;)J
    .locals 2

    .line 347
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->cJ:J

    return-wide v0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;)J
    .locals 2

    .line 347
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->Qhi:J

    return-wide v0
.end method

.method static synthetic fl(Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;)Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->ROR:Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;

    return-object p0
.end method


# virtual methods
.method public ABk()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public CJ()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Gm()V
    .locals 2

    const/4 v0, 0x0

    .line 461
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->ac:I

    .line 462
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->CJ:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 464
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->CJ:Landroid/os/CountDownTimer;

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->fl:Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    if-eqz v0, :cond_1

    .line 467
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->fl:Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    :cond_1
    return-void
.end method

.method public Qhi(J)V
    .locals 0

    .line 597
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->cJ:J

    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->fl:Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    return-void
.end method

.method public Qhi()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ROR()Z
    .locals 2

    .line 538
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->ac:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Sf()Z
    .locals 1

    .line 543
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->ac:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Tgh()Z
    .locals 2

    .line 533
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->ac:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public WAv()V
    .locals 2

    const/4 v0, 0x2

    .line 436
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->ac:I

    .line 437
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->Tgh:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->cJ:J

    .line 438
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->CJ:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 440
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->CJ:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method public ac()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cJ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public fl()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hm()V
    .locals 12

    .line 394
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->ac:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 397
    :cond_0
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->ac:I

    .line 398
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->iMK()J

    move-result-wide v10

    .line 399
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->cJ:J

    sub-long v8, v10, v0

    .line 403
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi$1;

    const-wide/16 v6, 0xc8

    move-object v2, v0

    move-object v3, p0

    move-wide v4, v8

    invoke-direct/range {v2 .. v11}, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;JJJJ)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->CJ:Landroid/os/CountDownTimer;

    .line 431
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public iMK()J
    .locals 2

    .line 558
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->Qhi:J

    return-wide v0
.end method

.method public pA()J
    .locals 2

    .line 563
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->Tgh:J

    return-wide v0
.end method

.method public zc()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
