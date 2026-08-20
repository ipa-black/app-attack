.class Lcom/bytedance/sdk/openadsdk/component/cJ$1;
.super Ljava/lang/Object;
.source "AppOpenAdExpressManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/cJ;->Qhi(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/cJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/cJ;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/cJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 0

    return-void
.end method

.method public onAdDismissed()V
    .locals 0

    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/cJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/cJ;->fl:Lcom/bytedance/sdk/openadsdk/component/Qhi;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/Qhi;->CJ()V

    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .locals 0

    .line 72
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/cJ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/component/cJ;)Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;->ABk()Z

    move-result p1

    if-nez p1, :cond_3

    .line 73
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/cJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->czB()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/cJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/cJ;->fl:Lcom/bytedance/sdk/openadsdk/component/Qhi;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/Qhi;->ac()V

    return-void

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/cJ;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/cJ;->ac:Z

    if-eqz p1, :cond_2

    .line 78
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/cJ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/component/cJ;)Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/view/PAGAppOpenAdExpressView;->getVideoFrameLayout()Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/cJ;->Qhi(Landroid/widget/FrameLayout;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 79
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/cJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/cJ;->fl:Lcom/bytedance/sdk/openadsdk/component/Qhi;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/Qhi;->ac()V

    return-void

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/cJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/cJ;->fl:Lcom/bytedance/sdk/openadsdk/component/Qhi;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/Qhi;->CJ()V

    return-void

    .line 84
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/cJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/cJ;->fl:Lcom/bytedance/sdk/openadsdk/component/Qhi;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/Qhi;->ac()V

    return-void

    .line 87
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/cJ;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/component/cJ;Z)Z

    .line 88
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/cJ;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/component/cJ;->CJ:Landroid/widget/FrameLayout;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/component/cJ;Landroid/view/ViewGroup;)V

    .line 89
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/cJ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/component/cJ;)V

    .line 90
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/cJ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/cJ;->ac(Lcom/bytedance/sdk/openadsdk/component/cJ;)V

    return-void
.end method
