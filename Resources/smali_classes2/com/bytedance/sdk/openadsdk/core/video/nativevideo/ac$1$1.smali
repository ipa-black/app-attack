.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$1;
.super Ljava/lang/Object;
.source "NativeVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;)V
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

    .line 97
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V

    .line 102
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ac(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/ROR;->Qhi(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->CJ(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)V

    return-void
.end method
