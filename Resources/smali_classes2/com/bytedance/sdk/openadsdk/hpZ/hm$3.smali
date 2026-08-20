.class Lcom/bytedance/sdk/openadsdk/hpZ/hm$3;
.super Ljava/lang/Object;
.source "PlayablePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/hpZ/hm;->yN()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$3;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 438
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$3;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->cJ(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$3;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Qhi(Lcom/bytedance/sdk/openadsdk/hpZ/hm;Z)Z

    .line 440
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$3;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->CJ(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$3;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ac(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 441
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$3;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    const/4 v1, 0x2

    const-string v2, "ContainerLoadTimeOut"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Qhi(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
