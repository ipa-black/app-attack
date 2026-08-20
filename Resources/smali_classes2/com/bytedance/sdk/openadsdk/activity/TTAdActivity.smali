.class public Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;
.super Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;
.source "TTAdActivity.java"


# instance fields
.field private Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .line 48
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->onAttachedToWindow()V

    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    if-nez v0, :cond_0

    .line 100
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->onBackPressed()V

    return-void

    .line 103
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->CJ()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 24
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Dww;->Qhi()Lcom/bytedance/sdk/openadsdk/core/Dww;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dww;->ac()Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;

    move-result-object v0

    .line 27
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Dww;->Qhi()Lcom/bytedance/sdk/openadsdk/core/Dww;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Dww;->CJ()Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;

    move-result-object v1

    .line 28
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/cJ;->Qhi(Landroid/content/Intent;Landroid/os/Bundle;Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 31
    new-instance v3, Lcom/bytedance/sdk/openadsdk/activity/cJ;

    invoke-direct {v3, p0, v2}, Lcom/bytedance/sdk/openadsdk/activity/cJ;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    .line 32
    invoke-virtual {v3, p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;Landroid/os/Bundle;Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;)V

    return-void

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 80
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->onDestroy()V

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->fl(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;)V

    .line 84
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Dww;->Qhi()Lcom/bytedance/sdk/openadsdk/core/Dww;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dww;->Qhi(Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;)V

    .line 85
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Dww;->Qhi()Lcom/bytedance/sdk/openadsdk/core/Dww;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dww;->Qhi(Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;)V

    .line 86
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ABk;->Qhi()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 64
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->onPause()V

    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->ac(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 72
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->onResume()V

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 91
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 40
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->onStart()V

    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 56
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->onStop()V

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->CJ(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;)V

    :cond_0
    return-void
.end method
