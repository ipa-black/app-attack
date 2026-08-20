.class Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi$2;
.super Ljava/lang/Object;
.source "BaseController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->qMt()V
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

    .line 240
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->ABk:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "resumeVideo: execResumePlay"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->WAv()V

    :cond_0
    return-void
.end method
