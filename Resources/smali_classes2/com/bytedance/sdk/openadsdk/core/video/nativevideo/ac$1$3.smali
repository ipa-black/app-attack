.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$3;
.super Ljava/lang/Object;
.source "NativeVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->cJ(Lcom/bykv/vk/openvk/component/video/api/Qhi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->bxS(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->bxS(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->bxS(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Dww(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->CQU(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->cJ()V

    :cond_1
    return-void
.end method
