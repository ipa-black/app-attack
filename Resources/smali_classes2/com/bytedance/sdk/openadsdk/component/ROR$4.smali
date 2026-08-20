.class Lcom/bytedance/sdk/openadsdk/component/ROR$4;
.super Ljava/lang/Object;
.source "TTAppOpenAdCacheManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/ROR$ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/CQU;)V
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

    .line 252
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$4;->fl:Lcom/bytedance/sdk/openadsdk/component/ROR;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$4;->Qhi:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$4;->ac:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$4;->CJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 3

    .line 256
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/fl/Qhi;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$4;->Qhi:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/fl/Qhi;-><init>(ILcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 257
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$4;->fl:Lcom/bytedance/sdk/openadsdk/component/ROR;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/fl/Qhi;)V

    .line 259
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/fl/Qhi;->cJ()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$4;->ac:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/CJ/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;ILcom/bytedance/sdk/openadsdk/core/model/CQU;)V

    .line 260
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$4;->fl:Lcom/bytedance/sdk/openadsdk/component/ROR;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$4;->CJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/ROR;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method

.method public Qhi(ILjava/lang/String;)V
    .locals 0

    .line 265
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$4;->fl:Lcom/bytedance/sdk/openadsdk/component/ROR;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$4;->CJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/ROR;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method
