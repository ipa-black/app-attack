.class Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$2;
.super Ljava/lang/Object;
.source "BaseVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;J)V
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

    .line 100
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->zc(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;->ABk(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->cJ()V

    :cond_0
    return-void
.end method
