.class public Lcom/bytedance/sdk/openadsdk/component/Sf/ac;
.super Ljava/lang/Object;
.source "TTAppOpenVideoManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi$Qhi;


# instance fields
.field private CJ:Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;

.field private Qhi:Landroid/content/Context;

.field private ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field private cJ:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->Qhi:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public CJ()V
    .locals 3

    .line 95
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->cJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->CJ:Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;->Qhi()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppOpenVideoManager onPause throw Exception :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "open_ad"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "TTAppOpenVideoManager"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public Qhi(I)V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->CJ:Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;-><init>()V

    .line 145
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->ROR()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Qhi(J)V

    .line 146
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->hm()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ac(J)V

    .line 147
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->Sf()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->cJ(J)V

    .line 148
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ac(I)V

    .line 149
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->CJ:Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;->ROR()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->CJ(I)V

    .line 150
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->CJ:Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;)V

    :cond_0
    return-void
.end method

.method public Qhi(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 2

    .line 32
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->cJ:Landroid/widget/FrameLayout;

    .line 33
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 34
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->Qhi:Landroid/content/Context;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->cJ:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->CJ:Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;

    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->CJ:Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;)V

    :cond_0
    return-void
.end method

.method public Qhi()Z
    .locals 3

    const/4 v0, 0x0

    .line 41
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/component/video/api/Qhi/cJ;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/Qhi/cJ;->cJ()Ljava/lang/String;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/core/video/Qhi/cJ;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HLI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->cJ(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->cJ:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->Qhi(I)V

    .line 52
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->cJ:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->cJ(I)V

    .line 53
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->EGK()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ac(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->Qhi(J)V

    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->Qhi(Z)V

    .line 57
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->CJ:Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)Z

    move-result v0

    return v0
.end method

.method public ROR()J
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->CJ:Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;->fl()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public Sf()J
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->CJ:Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;->Tgh()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public Tgh()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->CJ:Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 114
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->Qhi:Landroid/content/Context;

    .line 115
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;->ac()V

    .line 116
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->CJ:Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;

    return-void
.end method

.method public ac()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->CJ:Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;->zc()Lcom/bykv/vk/openvk/component/video/api/Qhi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->CJ:Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;->zc()Lcom/bykv/vk/openvk/component/video/api/Qhi;

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

.method public cJ()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->CJ:Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;->zc()Lcom/bykv/vk/openvk/component/video/api/Qhi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->CJ:Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;->zc()Lcom/bykv/vk/openvk/component/video/api/Qhi;

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

.method public fl()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->CJ:Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;->cJ()V

    :cond_0
    return-void
.end method

.method public getVideoProgress()J
    .locals 2

    .line 156
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->ROR()J

    move-result-wide v0

    return-wide v0
.end method

.method public hm()J
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->CJ:Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;->Sf()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/Sf/ac;->CJ:Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;->Tgh()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
