.class Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$4;
.super Ljava/lang/Object;
.source "BaseVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;)V
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

    .line 138
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 141
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->aP(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->NFd(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->cJ()V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->sDy(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->js(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->lB(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->lG(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->Jma(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/bykv/vk/openvk/component/video/Qhi/fl/Qhi;->Qhi(JJ)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;->cJ(JI)V

    :cond_1
    return-void
.end method
