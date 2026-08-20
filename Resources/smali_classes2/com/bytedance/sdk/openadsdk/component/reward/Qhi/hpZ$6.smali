.class Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$6;
.super Ljava/lang/Object;
.source "RewardFullWebViewManager.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$fl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)V
    .locals 0

    .line 961
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$6;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    .line 964
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$6;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->fl:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    if-eqz p1, :cond_0

    .line 965
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$6;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->fl:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->cJ(I)V

    :cond_0
    return-void
.end method
