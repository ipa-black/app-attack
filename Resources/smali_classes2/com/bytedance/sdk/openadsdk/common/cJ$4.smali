.class Lcom/bytedance/sdk/openadsdk/common/cJ$4;
.super Ljava/lang/Object;
.source "ArbitrageLoadingStyle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/common/cJ;->Qhi(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:I

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/common/cJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/common/cJ;I)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/cJ$4;->cJ:Lcom/bytedance/sdk/openadsdk/common/cJ;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/common/cJ$4;->Qhi:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 209
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ$4;->cJ:Lcom/bytedance/sdk/openadsdk/common/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/cJ;->CJ(Lcom/bytedance/sdk/openadsdk/common/cJ;)Lcom/bytedance/sdk/openadsdk/common/ArbitrageLoadingLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ$4;->cJ:Lcom/bytedance/sdk/openadsdk/common/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/cJ;->fl(Lcom/bytedance/sdk/openadsdk/common/cJ;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 211
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ$4;->cJ:Lcom/bytedance/sdk/openadsdk/common/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/cJ;->CJ(Lcom/bytedance/sdk/openadsdk/common/cJ;)Lcom/bytedance/sdk/openadsdk/common/ArbitrageLoadingLayout;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ$4;->cJ:Lcom/bytedance/sdk/openadsdk/common/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/cJ;->Tgh(Lcom/bytedance/sdk/openadsdk/common/cJ;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ$4;->cJ:Lcom/bytedance/sdk/openadsdk/common/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/cJ;->ROR(Lcom/bytedance/sdk/openadsdk/common/cJ;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/common/cJ$4;->Qhi:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ$4;->cJ:Lcom/bytedance/sdk/openadsdk/common/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/cJ;->Sf(Lcom/bytedance/sdk/openadsdk/common/cJ;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ$4;->cJ:Lcom/bytedance/sdk/openadsdk/common/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/cJ;->hm(Lcom/bytedance/sdk/openadsdk/common/cJ;)J

    move-result-wide v7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ$4;->cJ:Lcom/bytedance/sdk/openadsdk/common/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/cJ;->WAv(Lcom/bytedance/sdk/openadsdk/common/cJ;)Z

    move-result v9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ$4;->cJ:Lcom/bytedance/sdk/openadsdk/common/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/cJ;->Gm(Lcom/bytedance/sdk/openadsdk/common/cJ;)I

    move-result v10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ$4;->cJ:Lcom/bytedance/sdk/openadsdk/common/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/cJ;->zc(Lcom/bytedance/sdk/openadsdk/common/cJ;)J

    move-result-wide v11

    invoke-virtual/range {v2 .. v12}, Lcom/bytedance/sdk/openadsdk/common/ArbitrageLoadingLayout;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILjava/lang/String;JZIJ)V

    .line 212
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/cJ$4;->cJ:Lcom/bytedance/sdk/openadsdk/common/cJ;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/common/cJ;I)I

    :cond_0
    return-void
.end method
