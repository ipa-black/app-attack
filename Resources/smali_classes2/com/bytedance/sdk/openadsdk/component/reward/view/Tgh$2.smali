.class Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh$2;
.super Ljava/lang/Object;
.source "RewardFullVideoLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;
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

    .line 398
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ewb()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->fl:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 406
    new-array v0, v0, [I

    .line 407
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->fl:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 408
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Qhi(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
