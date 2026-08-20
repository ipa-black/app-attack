.class Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$1;
.super Ljava/lang/Object;
.source "BaseVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->cJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ac(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->CJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)V

    return-void
.end method
