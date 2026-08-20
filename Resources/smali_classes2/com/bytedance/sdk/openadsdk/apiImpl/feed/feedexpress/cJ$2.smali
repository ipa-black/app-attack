.class Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ$2;
.super Ljava/lang/Object;
.source "PAGFeedExpressView.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->ac()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;

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

    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .locals 7

    .line 92
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->WAv:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ABk()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 93
    new-instance p1, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;

    iget-object v1, p2, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->Sf:Landroid/content/Context;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v2

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;

    iget-object v4, p2, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->hm:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->ac(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;)Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    move-result-object v5

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->CJ(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;)Lcom/bytedance/sdk/openadsdk/core/hpZ;

    move-result-object v6

    const/4 v3, 0x5

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;ILcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;Lcom/bytedance/sdk/openadsdk/core/hpZ;)V

    .line 94
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;

    instance-of p3, p2, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/Qhi;

    if-eqz p3, :cond_0

    .line 95
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->CJ()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->getVideoAdListener()Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ac;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ac;)V

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->fl(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;)Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->WAv:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getClickCreativeListener()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;)V

    .line 98
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->Tgh(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;)Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/Qhi;->hm()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

    move-result-object p1

    if-nez p1, :cond_1

    .line 100
    new-instance p1, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->Sf:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;-><init>(Landroid/content/Context;)V

    .line 102
    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->WAv:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->addView(Landroid/view/View;)V

    return-void

    .line 105
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;FF)V

    .line 106
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->ROR(Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 107
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/feedexpress/cJ;->WAv:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Sf()V

    :cond_3
    return-void
.end method
