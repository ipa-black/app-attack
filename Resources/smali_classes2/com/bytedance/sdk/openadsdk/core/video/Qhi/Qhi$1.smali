.class Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi$1;
.super Ljava/lang/Object;
.source "BaseController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ABk:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "resumeVideo: run "

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->qMt()V

    return-void
.end method
