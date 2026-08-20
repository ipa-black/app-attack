.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc$2;
.super Ljava/lang/Object;
.source "WebViewRender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->ROR(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->Sf(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;)Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->zc()V

    .line 114
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->Sf(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;)Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;Lcom/bytedance/sdk/component/adexpress/cJ/Sf;)V

    :cond_1
    return-void
.end method
