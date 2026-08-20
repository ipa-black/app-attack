.class Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh$1;
.super Ljava/lang/Object;
.source "RewardFullVideoLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/ac;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 266
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->cJ:Landroid/app/Activity;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 268
    const-string v0, "TTAD.RFullVideoLayout"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
