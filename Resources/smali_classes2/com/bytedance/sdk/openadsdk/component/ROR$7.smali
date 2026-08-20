.class Lcom/bytedance/sdk/openadsdk/component/ROR$7;
.super Ljava/lang/Object;
.source "TTAppOpenAdCacheManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/pA$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/model/CQU;Lcom/bytedance/sdk/openadsdk/component/ROR$cJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

.field final synthetic Qhi:I

.field final synthetic Tgh:Lcom/bytedance/sdk/openadsdk/component/ROR;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/utils/Jma;

.field final synthetic fl:Lcom/bytedance/sdk/openadsdk/component/ROR$cJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/ROR;ILcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/model/CQU;Lcom/bytedance/sdk/openadsdk/component/ROR$cJ;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$7;->Tgh:Lcom/bytedance/sdk/openadsdk/component/ROR;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$7;->Qhi:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$7;->cJ:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$7;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$7;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$7;->fl:Lcom/bytedance/sdk/openadsdk/component/ROR$cJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 4

    .line 497
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$7;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$7;->cJ:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->ac()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/CJ/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;JZ)V

    .line 499
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$7;->fl:Lcom/bytedance/sdk/openadsdk/component/ROR$cJ;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/component/ROR$cJ;->Qhi()V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/iMK/Qhi/cJ;)V
    .locals 4

    .line 470
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iMK/Qhi/cJ;->CJ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$7;->Tgh:Lcom/bytedance/sdk/openadsdk/component/ROR;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$7;->Qhi:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/ROR;->ac(I)V

    .line 476
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$7;->cJ:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->ac()J

    move-result-wide v0

    .line 477
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$7;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/component/CJ/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;JZ)V

    .line 478
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$7;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    if-eqz v2, :cond_0

    .line 479
    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->Qhi(J)V

    .line 480
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$7;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->Qhi(I)V

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$7;->fl:Lcom/bytedance/sdk/openadsdk/component/ROR$cJ;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/ROR$cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/iMK/Qhi/cJ;)V

    return-void

    .line 486
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$7;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$7;->cJ:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/Jma;->ac()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/CJ/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;JZ)V

    .line 488
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$7;->fl:Lcom/bytedance/sdk/openadsdk/component/ROR$cJ;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/component/ROR$cJ;->Qhi()V

    return-void
.end method
