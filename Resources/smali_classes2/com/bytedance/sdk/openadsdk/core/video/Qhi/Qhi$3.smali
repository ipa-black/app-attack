.class Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi$3;
.super Ljava/lang/Object;
.source "BaseController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->cJ(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Z

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;Z)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi$3;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi$3;->Qhi:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi$3;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi$3;->Qhi:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(Z)V

    return-void
.end method
