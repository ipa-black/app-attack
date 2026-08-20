.class Lcom/bytedance/sdk/openadsdk/component/ROR$5;
.super Ljava/lang/Object;
.source "TTAppOpenAdCacheManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/ROR$cJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/ROR;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/CQU;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic Qhi:I

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field final synthetic fl:Lcom/bytedance/sdk/openadsdk/component/ROR;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/ROR;ILcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/model/CQU;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$5;->fl:Lcom/bytedance/sdk/openadsdk/component/ROR;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$5;->Qhi:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$5;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$5;->ac:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$5;->CJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$5;->fl:Lcom/bytedance/sdk/openadsdk/component/ROR;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$5;->CJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/ROR;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/iMK/Qhi/cJ;)V
    .locals 2

    .line 282
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/fl/Qhi;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$5;->Qhi:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$5;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/fl/Qhi;-><init>(ILcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 283
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$5;->fl:Lcom/bytedance/sdk/openadsdk/component/ROR;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/fl/Qhi;)V

    .line 285
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/fl/Qhi;->cJ()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object p1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$5;->ac:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/CJ/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;ILcom/bytedance/sdk/openadsdk/core/model/CQU;)V

    .line 286
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$5;->fl:Lcom/bytedance/sdk/openadsdk/component/ROR;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$5;->CJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/ROR;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method
