.class Lcom/bytedance/sdk/openadsdk/hpZ/hm$7;
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

    .line 490
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$7;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 494
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$7;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->hm(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "Clicking on the hot zone causes the program to freeze."

    const/4 v4, 0x1

    if-lez v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$7;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->hm(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)J

    move-result-wide v5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$7;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->WAv(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$7;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Gm(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)I

    move-result v0

    int-to-long v7, v0

    cmp-long v0, v5, v7

    if-gtz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$7;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->lB()V

    .line 498
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$7;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Qhi(Lcom/bytedance/sdk/openadsdk/hpZ/hm;J)J

    .line 499
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$7;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->cJ(Lcom/bytedance/sdk/openadsdk/hpZ/hm;J)J

    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$7;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    invoke-virtual {v0, v4, v1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->cJ(ILjava/lang/String;)V

    return-void

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$7;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    invoke-virtual {v0, v4, v1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->cJ(ILjava/lang/String;)V

    return-void
.end method
