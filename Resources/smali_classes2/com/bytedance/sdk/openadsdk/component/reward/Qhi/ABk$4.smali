.class Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$4;
.super Ljava/lang/Object;
.source "RewardFullUgenEndcardManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ugen/CJ/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->iMK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$4;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()Ljava/lang/String;
    .locals 1

    .line 184
    const-string v0, "overlay"

    return-object v0
.end method

.method public cJ()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$4;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;Z)Z

    .line 190
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk$4;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->hm(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->WAv()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    return-void
.end method
