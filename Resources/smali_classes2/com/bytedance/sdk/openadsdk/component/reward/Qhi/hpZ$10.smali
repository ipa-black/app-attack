.class Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$10;
.super Ljava/lang/Object;
.source "RewardFullWebViewManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$fl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$10;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Landroid/webkit/WebView;I)V
    .locals 2

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$10;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$10;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    .line 312
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ls()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$10;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    .line 313
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$10;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->ac(I)V

    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$10;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ROR:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$10;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->oU:Lcom/bytedance/sdk/openadsdk/common/ROR;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$10;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->oU:Lcom/bytedance/sdk/openadsdk/common/ROR;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$10;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->fl(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$Qhi;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/common/ROR;->Qhi(Landroid/webkit/WebView;ILcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$Qhi;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public Qhi(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 285
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$10;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 288
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$10;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$10;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Tgh(Z)V

    return-void
.end method

.method public Qhi(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 294
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$10;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->ac(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$10;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 295
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$10;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Z)Z

    .line 296
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$10;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$10;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p2

    iget p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Tgh:I

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$10;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p3

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$10;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->LpL()Z

    move-result v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Qhi(ILcom/bytedance/sdk/openadsdk/core/model/tP;Z)V

    .line 297
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$10;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 298
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$10;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->xyz:Lcom/bytedance/sdk/component/utils/CQU;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$10;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p2

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Gm()I

    move-result p2

    int-to-long p2, p2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p2, v0

    const/16 v0, 0x258

    invoke-virtual {p1, v0, p2, p3}, Lcom/bytedance/sdk/component/utils/CQU;->sendEmptyMessageDelayed(IJ)Z

    .line 302
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$10;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->ROR()V

    .line 304
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$10;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->PAe:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;->Gm()V

    :cond_1
    return-void
.end method
