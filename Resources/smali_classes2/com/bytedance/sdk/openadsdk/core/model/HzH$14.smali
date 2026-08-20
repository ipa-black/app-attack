.class Lcom/bytedance/sdk/openadsdk/core/model/HzH$14;
.super Ljava/lang/Object;
.source "LandingPageModel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Sf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$14;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$14;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$14;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$14;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$14;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->iMK:Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 420
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$14;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$14;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$14;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 421
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$14;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->iMK:Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->ROR()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 422
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$14;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->EBS(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->performClick()Z

    .line 423
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$14;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/HzH;Z)Z

    .line 425
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$14;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->qMt(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Lcom/bytedance/sdk/openadsdk/cJ/zc;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 426
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$14;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->qMt(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Lcom/bytedance/sdk/openadsdk/cJ/zc;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Landroid/view/MotionEvent;)V

    .line 428
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$14;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->bxS(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Lcom/bytedance/sdk/openadsdk/common/cJ;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 429
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$14;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->bxS(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Lcom/bytedance/sdk/openadsdk/common/cJ;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/common/cJ;->Qhi(Landroid/view/MotionEvent;)V

    :cond_5
    const/4 p1, 0x0

    return p1
.end method
