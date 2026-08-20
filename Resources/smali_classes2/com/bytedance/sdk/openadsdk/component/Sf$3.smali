.class Lcom/bytedance/sdk/openadsdk/component/Sf$3;
.super Ljava/lang/Object;
.source "TTAppOpenAdLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/ROR$ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Z

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/component/Sf;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/Sf;ZLcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$3;->ac:Lcom/bytedance/sdk/openadsdk/component/Sf;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$3;->Qhi:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$3;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 4

    .line 288
    const-string v0, "TTAppOpenAdLoadManager"

    const-string v1, "preLoadSuccess: video load success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$3;->Qhi:Z

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$3;->ac:Lcom/bytedance/sdk/openadsdk/component/Sf;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/component/Sf;I)I

    .line 292
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$3;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;-><init>(IILcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 293
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;->Qhi(Z)V

    .line 294
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$3;->ac:Lcom/bytedance/sdk/openadsdk/component/Sf;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/component/Sf;Lcom/bytedance/sdk/openadsdk/component/fl/cJ;)V

    :cond_0
    return-void
.end method

.method public Qhi(ILjava/lang/String;)V
    .locals 4

    .line 301
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$3;->Qhi:Z

    if-eqz p1, :cond_0

    .line 302
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$3;->ac:Lcom/bytedance/sdk/openadsdk/component/Sf;

    const/4 p2, 0x5

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/component/Sf;I)I

    .line 303
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$3;->ac:Lcom/bytedance/sdk/openadsdk/component/Sf;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;

    const/16 v0, 0x64

    const/16 v1, 0x2713

    .line 304
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/Sf;->Qhi(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {p2, v3, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;-><init>(IIILjava/lang/String;)V

    .line 303
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/component/Sf;Lcom/bytedance/sdk/openadsdk/component/fl/cJ;)V

    :cond_0
    return-void
.end method
