.class public Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;
.super Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;
.source "TTAppOpenVideoController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    return-void
.end method

.method public kYc()V
    .locals 3

    .line 26
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;-><init>()V

    .line 27
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;->fl()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->Qhi(J)V

    .line 28
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;->Sf()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->ac(J)V

    .line 29
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;->Tgh()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->cJ(J)V

    .line 30
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;->ROR()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;->CJ(I)V

    .line 31
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf/cJ;->ROR:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->fl(Lcom/bykv/vk/openvk/component/video/api/cJ/Qhi;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/hpZ$Qhi;)V

    return-void
.end method
