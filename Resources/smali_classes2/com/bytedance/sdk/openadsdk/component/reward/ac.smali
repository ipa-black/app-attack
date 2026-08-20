.class public Lcom/bytedance/sdk/openadsdk/component/reward/ac;
.super Ljava/lang/Object;
.source "FakeVideoController.java"

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/api/CJ/fl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;
    }
.end annotation


# instance fields
.field private CJ:Z

.field private final Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;

.field private final ROR:Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;

.field private Sf:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;

.field private final Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field private ac:J

.field private cJ:Z

.field private fl:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V
    .locals 7

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->cJ:Z

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->ac:J

    const/4 v2, 0x0

    .line 34
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->CJ:Z

    .line 43
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/ac$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ac$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/ac;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->ROR:Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;

    .line 44
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 45
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object p1

    const-wide/16 v3, 0xa

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Tgh()D

    move-result-wide v5

    double-to-long v5, v5

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    cmp-long v0, v5, v0

    if-gtz v0, :cond_1

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 49
    invoke-virtual {p1, v0, v1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Qhi(D)V

    goto :goto_1

    :cond_1
    move-wide v3, v5

    .line 54
    :goto_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;

    const-wide/16 v0, 0x3e8

    mul-long/2addr v3, v0

    invoke-direct {p1, v3, v4, v2, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;-><init>(JLcom/bykv/vk/openvk/component/video/api/cJ/Qhi;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;

    return-void
.end method


# virtual methods
.method public ABk()Lcom/bykv/vk/openvk/component/video/api/CJ/ac;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public CJ()V
    .locals 0

    .line 168
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->ac()V

    return-void
.end method

.method public CJ(Z)V
    .locals 0

    return-void
.end method

.method public Gm()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public HzH()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Qhi()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->WAv()V

    .line 99
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;-><init>()V

    .line 100
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->fl()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Qhi(J)V

    .line 101
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->Sf()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ac(J)V

    .line 102
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->Tgh()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->cJ(J)V

    .line 103
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->ROR:Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;)V

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->Sf:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 106
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;->Qhi(I)V

    :cond_0
    return-void
.end method

.method public Qhi(J)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->Qhi(J)V

    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;)V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;)V

    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/fl$cJ;)V
    .locals 0

    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/fl$fl;)V
    .locals 0

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->Sf:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;

    return-void
.end method

.method public Qhi(Z)V
    .locals 0

    .line 205
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->cJ:Z

    return-void
.end method

.method public Qhi(ZI)V
    .locals 0

    .line 160
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->ac()V

    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)Z
    .locals 4

    .line 176
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->Sf()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->CJ:Z

    .line 177
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ROR()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ROR()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->Qhi(J)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->ROR:Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;Lcom/bykv/vk/openvk/component/video/api/ac/ac;)V

    .line 181
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->hm()V

    const/4 p1, 0x1

    return p1
.end method

.method public ROR()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Sf()J
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->iMK()J

    move-result-wide v0

    return-wide v0
.end method

.method public Tgh()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public WAv()I
    .locals 4

    .line 237
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/bykv/vk/openvk/component/video/Qhi/fl/Qhi;->Qhi(JJ)I

    move-result v0

    return v0
.end method

.method public ac()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->Gm()V

    return-void
.end method

.method public ac(J)V
    .locals 0

    return-void
.end method

.method public ac(Z)V
    .locals 0

    .line 303
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->fl:Z

    return-void
.end method

.method public cJ()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->hm()V

    .line 130
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;-><init>()V

    .line 131
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->fl()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Qhi(J)V

    .line 132
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->Sf()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ac(J)V

    .line 133
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->Tgh()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->cJ(J)V

    .line 134
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->ROR:Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->cJ(Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;)V

    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->Sf:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 136
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;->Qhi(I)V

    :cond_0
    return-void
.end method

.method public cJ(J)V
    .locals 0

    .line 254
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->ac:J

    return-void
.end method

.method public cJ(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)V
    .locals 0

    return-void
.end method

.method public cJ(Z)V
    .locals 0

    .line 294
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->CJ:Z

    return-void
.end method

.method public fl()J
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;->pA()J

    move-result-wide v0

    return-wide v0
.end method

.method public fl(Z)V
    .locals 0

    return-void
.end method

.method public hm()J
    .locals 2

    .line 232
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->fl()J

    move-result-wide v0

    return-wide v0
.end method

.method public hpZ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iMK()Z
    .locals 1

    .line 286
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->CJ:Z

    return v0
.end method

.method public kYc()Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->ROR:Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;

    return-object v0
.end method

.method public pA()Z
    .locals 1

    .line 298
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->fl:Z

    return v0
.end method

.method public zc()Lcom/bykv/vk/openvk/component/video/api/Qhi;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ac;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ac$Qhi;

    return-object v0
.end method
