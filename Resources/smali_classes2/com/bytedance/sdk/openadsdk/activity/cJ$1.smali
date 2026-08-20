.class Lcom/bytedance/sdk/openadsdk/activity/cJ$1;
.super Ljava/lang/Object;
.source "AdSceneManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/ROR$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/cJ;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/cJ;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()Landroid/view/View;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/cJ;)Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/cJ;)Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->getCloseButton()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public cJ()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/cJ;)Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/cJ;)Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->ac()V

    :cond_0
    return-void
.end method
