.class Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi$1;
.super Landroid/os/CountDownTimer;
.source "FakeVideoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->hm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:J

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;

.field final synthetic cJ:J


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;JJJJ)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;

    iput-wide p6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi$1;->Qhi:J

    iput-wide p8, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi$1;->cJ:J

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .line 418
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;I)I

    .line 419
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi$1;->cJ:J

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;J)J

    .line 420
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->CJ(Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;)Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->CJ(Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;)Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->pA()J

    move-result-wide v1

    const/16 v3, 0x64

    invoke-interface {v0, v1, v2, v3}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;->Qhi(JI)V

    .line 423
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;-><init>()V

    .line 424
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi$1;->cJ:J

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Qhi(J)V

    .line 425
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi$1;->cJ:J

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ac(J)V

    .line 426
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->zc()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->cJ(J)V

    .line 427
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->ABk()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->CJ(I)V

    .line 428
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->fl(Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;)Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->Tgh(Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;)Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->cJ(Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    .line 406
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi$1;->Qhi:J

    sub-long/2addr v0, p1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->ac(Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;)J

    move-result-wide p1

    add-long/2addr v0, p1

    .line 407
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;J)J

    .line 408
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->CJ(Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;)Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 409
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->CJ(Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;)Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    move-result-object p1

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi$1;->cJ:J

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;->Qhi(JJ)V

    :cond_0
    return-void
.end method
