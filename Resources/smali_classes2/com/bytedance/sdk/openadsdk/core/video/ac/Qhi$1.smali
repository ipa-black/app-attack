.class Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;
.super Ljava/lang/Object;
.source "BaseVideoController.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

.field private cJ:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->cJ:Z

    return-void
.end method


# virtual methods
.method public CJ(Lcom/bykv/vk/openvk/component/video/api/Qhi;)V
    .locals 2

    .line 288
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->HUk(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 289
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->TKG(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/fl;->cJ(J)V

    .line 292
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Wrw(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V

    .line 293
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->vml(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 294
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->IC(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(I)V

    .line 296
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 297
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;->Qhi(I)V

    :cond_2
    return-void
.end method

.method public Qhi(II)V
    .locals 0

    .line 315
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->hpZ(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ac(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    .line 316
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->pF(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/Qhi/cJ;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->wp(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->MQ()I

    move-result p2

    iput p2, p1, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/cJ;->CJ:I

    .line 318
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->VV(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)V

    .line 320
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Px(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 321
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->hpZ(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->CJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;)V
    .locals 3

    .line 69
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Ljava/lang/String;

    .line 70
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->fl(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/component/utils/CQU;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/utils/CQU;->post(Ljava/lang/Runnable;)Z

    .line 83
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Tgh(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->fl()J

    move-result-wide v0

    .line 86
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/fl;->CJ(J)V

    .line 87
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/fl;->fl(J)V

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ROR(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object p1

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V

    .line 90
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 91
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;

    move-result-object p1

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;->Qhi(I)V

    :cond_1
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;I)V
    .locals 1

    .line 229
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Ura(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Ljava/lang/String;

    .line 230
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ac(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;Z)Z

    .line 231
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->PER(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/component/utils/CQU;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->WAv(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/utils/CQU;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 232
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->SL(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/component/utils/CQU;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$8;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/utils/CQU;->post(Ljava/lang/Runnable;)Z

    .line 240
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Oy(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V

    .line 241
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->DaO(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 242
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->rB(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(I)V

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;II)V
    .locals 0

    .line 181
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Qe(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Ljava/lang/String;

    .line 182
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ots(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/component/utils/CQU;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$6;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/utils/CQU;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;III)V
    .locals 0

    .line 210
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->HLI(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Ljava/lang/String;

    .line 211
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->cJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;Z)Z

    .line 212
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->oU(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)V

    .line 213
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->EGK(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/component/utils/CQU;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$7;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/utils/CQU;->post(Ljava/lang/Runnable;)Z

    .line 221
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->gga(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object p1

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V

    .line 222
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->VnT(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 223
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Ri(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(I)V

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;J)V
    .locals 2

    .line 97
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->hm(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Ljava/lang/String;

    .line 98
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;Z)Z

    .line 99
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Gm(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/component/utils/CQU;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->WAv(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/utils/CQU;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 100
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->iMK(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/component/utils/CQU;

    move-result-object p1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/utils/CQU;->post(Ljava/lang/Runnable;)Z

    .line 108
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->pA(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    iput-wide p2, p1, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->lB:J

    .line 110
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->hpZ(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    .line 111
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->HzH(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)V

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->kYc(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 115
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->tP(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->ac()V

    .line 117
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->MQ(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V

    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;JJ)V
    .locals 8

    .line 255
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->mZ(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)J

    move-result-wide v0

    sub-long v0, p2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x32

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->hpZ(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->cJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    .line 260
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {v0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;JJ)V

    .line 261
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {v0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->cJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;JJ)V

    .line 263
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->SO(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 265
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->XH(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-result-object v7

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/ROR/fl;->Qhi(JJLcom/bytedance/sdk/openadsdk/core/ROR/ROR;)V

    .line 269
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->cJ:Z

    if-eqz v0, :cond_2

    sub-long/2addr p4, p2

    const-wide/16 p2, 0x1f4

    cmp-long p2, p4, p2

    if-gez p2, :cond_2

    const/4 p2, 0x0

    .line 272
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->cJ:Z

    .line 274
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;)V

    :cond_2
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;)V
    .locals 3

    .line 136
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->pM(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onError: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;->Qhi()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;->cJ()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Eh(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/component/utils/CQU;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->WAv(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/utils/CQU;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 138
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->zn(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/component/utils/CQU;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/utils/CQU;->post(Ljava/lang/Runnable;)Z

    .line 149
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;)V

    .line 150
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->es(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V

    .line 151
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->yN(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 152
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->FQ(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-result-object p1

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(I)V

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 155
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;

    move-result-object p1

    const/4 p2, 0x4

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;->Qhi(I)V

    :cond_1
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;Z)V
    .locals 0

    .line 161
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->PAe(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Ljava/lang/String;

    .line 162
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ip(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/component/utils/CQU;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->WAv(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/utils/CQU;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 163
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->MND(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/component/utils/CQU;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$5;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/utils/CQU;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public ac(Lcom/bykv/vk/openvk/component/video/api/Qhi;)V
    .locals 0

    .line 176
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->dIT(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Ljava/lang/String;

    return-void
.end method

.method public cJ(Lcom/bykv/vk/openvk/component/video/api/Qhi;)V
    .locals 1

    .line 122
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->qMt(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Ljava/lang/String;

    .line 123
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->EBS(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/component/utils/CQU;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->WAv(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/utils/CQU;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 124
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->CQU(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/component/utils/CQU;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/utils/CQU;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cJ(Lcom/bykv/vk/openvk/component/video/api/Qhi;I)V
    .locals 0

    return-void
.end method

.method public fl(Lcom/bykv/vk/openvk/component/video/api/Qhi;)V
    .locals 1

    .line 303
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->cJP(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V

    .line 304
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->gT(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 305
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->bM(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(I)V

    .line 307
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 308
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Sf(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;->Qhi(I)V

    :cond_1
    return-void
.end method
