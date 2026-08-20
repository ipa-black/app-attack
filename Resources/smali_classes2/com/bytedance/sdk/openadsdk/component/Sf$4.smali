.class Lcom/bytedance/sdk/openadsdk/component/Sf$4;
.super Ljava/lang/Object;
.source "TTAppOpenAdLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/ROR$cJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Z)V
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

    .line 314
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$4;->ac:Lcom/bytedance/sdk/openadsdk/component/Sf;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$4;->Qhi:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 6

    .line 329
    const-string v0, "TTAppOpenAdLoadManager"

    const-string v1, "preLoadFail: image load fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$4;->Qhi:Z

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$4;->ac:Lcom/bytedance/sdk/openadsdk/component/Sf;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/component/Sf;I)I

    .line 332
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$4;->ac:Lcom/bytedance/sdk/openadsdk/component/Sf;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;

    const/16 v2, 0x64

    const/16 v3, 0x2713

    .line 333
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/Sf;->Qhi(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;-><init>(IIILjava/lang/String;)V

    .line 332
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/component/Sf;Lcom/bytedance/sdk/openadsdk/component/fl/cJ;)V

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/iMK/Qhi/cJ;)V
    .locals 3

    .line 317
    const-string p1, "TTAppOpenAdLoadManager"

    const-string v0, "preLoadSuccess: image load success"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$4;->Qhi:Z

    if-eqz p1, :cond_0

    .line 319
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$4;->ac:Lcom/bytedance/sdk/openadsdk/component/Sf;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/component/Sf;I)I

    .line 321
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;

    const/16 v0, 0x64

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$4;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v2, 0x1

    invoke-direct {p1, v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;-><init>(IILcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 322
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/fl/cJ;->Qhi(Z)V

    .line 323
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Sf$4;->ac:Lcom/bytedance/sdk/openadsdk/component/Sf;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/component/Sf;Lcom/bytedance/sdk/openadsdk/component/fl/cJ;)V

    :cond_0
    return-void
.end method
