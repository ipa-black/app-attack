.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$4;
.super Ljava/lang/Object;
.source "NativeVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 684
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->vml(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->cJP(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->IC(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/ref/WeakReference;Z)V

    .line 686
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->gT(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->cJ()V

    .line 687
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->ac(Z)V

    .line 688
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac$4;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;->bM(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ac;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Show result page after error.......showAdCard"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
