.class Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh$3;
.super Ljava/lang/Object;
.source "RewardFullVideoLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->ABk()V
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

    .line 499
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh$3;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 507
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh$3;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->zc()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
