.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$6;
.super Ljava/lang/Object;
.source "NativeVideoLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/ref/WeakReference;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR/cJ;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;Lcom/bytedance/sdk/openadsdk/core/ROR/cJ;)V
    .locals 0

    .line 679
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$6;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$6;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR/cJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 682
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$6;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ABk:Lcom/bytedance/sdk/openadsdk/core/widget/CornerIV;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$6;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->ABk:Lcom/bytedance/sdk/openadsdk/core/widget/CornerIV;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/CornerIV;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$6;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR/cJ;

    if-eqz v0, :cond_0

    .line 684
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh$6;->cJ:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/Tgh;->getVideoProgress()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ;->cJ(J)V

    :cond_0
    return-void
.end method
