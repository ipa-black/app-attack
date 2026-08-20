.class Lcom/bytedance/sdk/openadsdk/component/reward/pA;
.super Ljava/lang/Object;
.source "TTFullScreenVideoAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTClientBidding;


# instance fields
.field private final Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ROR;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/pA;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ROR;

    return-void
.end method


# virtual methods
.method public Qhi()Lcom/bytedance/sdk/openadsdk/component/reward/ROR;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/pA;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ROR;

    return-object v0
.end method

.method public Qhi(Z)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/pA;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ROR;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->Qhi(Z)V

    return-void
.end method

.method public cJ()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/pA;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->Qhi()V

    return-void
.end method

.method public loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/pA;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ROR;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public win(Ljava/lang/Double;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/pA;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ROR;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ROR;->win(Ljava/lang/Double;)V

    return-void
.end method
