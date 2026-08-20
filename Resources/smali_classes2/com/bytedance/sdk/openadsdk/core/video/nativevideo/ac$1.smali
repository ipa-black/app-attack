.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;
.super Ljava/lang/Object;
.source "NativeVideoController.java"

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CJ(Lcom/bykv/vk/openvk/component/video/api/Qhi;)V
    .locals 2

    .line 320
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Ura(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 321
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->PER(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/fl;->cJ(J)V

    .line 324
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Gy(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V

    .line 325
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->et(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 326
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->SL(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(I)V

    :cond_1
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;)V
    .locals 2

    .line 97
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->fl(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/component/utils/CQU;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/utils/CQU;->post(Ljava/lang/Runnable;)Z

    .line 112
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Tgh(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ROR(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->hm(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Sf(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/fl;->CJ(J)V

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;I)V
    .locals 1

    .line 276
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ac(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;Z)Z

    .line 277
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->HLI(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/component/utils/CQU;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->WAv(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/utils/CQU;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 278
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->pv(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/component/utils/CQU;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$8;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/utils/CQU;->post(Ljava/lang/Runnable;)Z

    .line 284
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ReL(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V

    .line 285
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->EGK(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 286
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->gga(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(I)V

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;II)V
    .locals 0

    .line 241
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$6;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;III)V
    .locals 0

    .line 254
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;Z)Z

    .line 255
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->dI(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/component/utils/CQU;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$7;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/utils/CQU;->post(Ljava/lang/Runnable;)Z

    .line 265
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->dVA(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V

    .line 266
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->zjb(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 267
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ots(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(I)V

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;J)V
    .locals 0

    .line 122
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;Z)Z

    .line 123
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Gm(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/component/utils/CQU;

    move-result-object p1

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->WAv(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/component/utils/CQU;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 124
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->hpZ(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/component/utils/CQU;

    move-result-object p1

    new-instance p3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$2;

    invoke-direct {p3, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;)V

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/component/utils/CQU;->post(Ljava/lang/Runnable;)Z

    .line 138
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->HzH(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)V

    .line 139
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->kYc(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V

    .line 140
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->tP(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->MQ(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->ac()V

    .line 143
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->qMt(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;JJ)V
    .locals 7

    .line 297
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->VnT(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)J

    move-result-wide v0

    sub-long v0, p2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x32

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    return-void

    .line 301
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->qMt(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ac(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    .line 302
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Ri(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/component/utils/CQU;

    move-result-object p1

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$9;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;JJ)V

    invoke-virtual {p1, v6}, Lcom/bytedance/sdk/component/utils/CQU;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;)V
    .locals 3

    .line 170
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->aP(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onError: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;->Qhi()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

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

    .line 171
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->PAe(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/component/utils/CQU;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$4;

    invoke-direct {v0, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/utils/CQU;->post(Ljava/lang/Runnable;)Z

    .line 202
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;)V

    .line 203
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ip(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 204
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 205
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object p1

    sget-object p2, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;->fl:Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ROR/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;)V

    .line 207
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->xyz(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V

    .line 208
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->jPH(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 209
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->MND(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-result-object p1

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(I)V

    :cond_1
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;Z)V
    .locals 0

    .line 218
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->YB(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/component/utils/CQU;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$5;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/utils/CQU;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public ac(Lcom/bykv/vk/openvk/component/video/api/Qhi;)V
    .locals 0

    return-void
.end method

.method public cJ(Lcom/bykv/vk/openvk/component/video/api/Qhi;)V
    .locals 1

    .line 151
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->EBS(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/component/utils/CQU;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->WAv(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/utils/CQU;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 152
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->pM(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/component/utils/CQU;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/utils/CQU;->post(Ljava/lang/Runnable;)Z

    .line 163
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Eh(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 164
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->qMt(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    :cond_0
    return-void
.end method

.method public cJ(Lcom/bykv/vk/openvk/component/video/api/Qhi;I)V
    .locals 0

    return-void
.end method

.method public fl(Lcom/bykv/vk/openvk/component/video/api/Qhi;)V
    .locals 2

    .line 335
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Oy(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 336
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->DaO(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/fl;->ac(J)V

    .line 339
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->rB(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 340
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->mZ(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(I)V

    :cond_1
    return-void
.end method
