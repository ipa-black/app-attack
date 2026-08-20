.class Lcom/bytedance/sdk/openadsdk/component/Sf$1$1;
.super Ljava/lang/Object;
.source "TTAppOpenAdLoadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/Sf$1;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/component/Sf$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/Sf$1;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$1$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/Sf$1;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$1$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 197
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$1$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/Sf$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/Sf$1;->ac:Lcom/bytedance/sdk/openadsdk/component/Sf;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/component/Sf;)Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/CQU;->Qhi(I)V

    .line 198
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$1$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/Sf$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/Sf$1;->ac:Lcom/bytedance/sdk/openadsdk/component/Sf;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;

    const/16 v2, 0x64

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$1$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;-><init>(IILcom/bytedance/sdk/openadsdk/core/model/tP;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/component/Sf;Lcom/bytedance/sdk/openadsdk/component/fl/cJ;)V

    return-void
.end method
