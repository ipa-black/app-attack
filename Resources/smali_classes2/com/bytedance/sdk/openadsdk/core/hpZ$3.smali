.class Lcom/bytedance/sdk/openadsdk/core/hpZ$3;
.super Ljava/lang/Object;
.source "InteractionManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/widget/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/hpZ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/hpZ;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/hpZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/hpZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/hpZ;)Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hpZ$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/hpZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/hpZ;)Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/feed/ROR;->onAdClicked()V

    :cond_0
    return-void
.end method
