.class Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$3;
.super Ljava/lang/Object;
.source "BaseVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ne(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->kYc()V

    .line 489
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->zTC(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;->Qhi()V

    :cond_0
    return-void
.end method
