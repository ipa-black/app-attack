.class Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$2;
.super Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;
.source "RewardFullPlayableManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/WAv/Tgh;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/WAv/Tgh;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;Lcom/bytedance/sdk/openadsdk/WAv/Tgh;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$2;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$2;->Qhi:Lcom/bytedance/sdk/openadsdk/WAv/Tgh;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()Lcom/bytedance/sdk/openadsdk/hpZ/fl;
    .locals 1

    .line 218
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->qMt()Lcom/bytedance/sdk/openadsdk/hpZ/fl;

    move-result-object v0

    return-object v0
.end method

.method public Qhi(ILjava/lang/String;)V
    .locals 1

    .line 207
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;->Qhi(ILjava/lang/String;)V

    .line 211
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$2;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;)Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$2;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;)Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->isShown()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 212
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$2;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x3

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Qhi(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Qhi(II)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public Qhi(Lorg/json/JSONObject;)V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$2;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->CJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$2;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->fl(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "playable_track"

    invoke-static {v0, v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public cJ()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$2;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->ac(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv()Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->ac(Z)V

    .line 225
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$2;->Qhi:Lcom/bytedance/sdk/openadsdk/WAv/Tgh;

    if-eqz v0, :cond_0

    .line 226
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/WAv/Tgh;->Qhi()V

    :cond_0
    return-void
.end method
