.class Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$3$1;
.super Ljava/lang/Object;
.source "RewardFullScreenManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$3;->onSystemUiVisibilityChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$3;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$3;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$3$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$3$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv$3;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/app/Activity;)V

    return-void
.end method
