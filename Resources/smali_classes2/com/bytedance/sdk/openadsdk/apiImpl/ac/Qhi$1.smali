.class Lcom/bytedance/sdk/openadsdk/apiImpl/ac/Qhi$1;
.super Ljava/lang/Object;
.source "PAGAppOpenAdListenerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/apiImpl/ac/Qhi;->onError(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:I

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/apiImpl/ac/Qhi;

.field final synthetic cJ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/apiImpl/ac/Qhi;ILjava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/ac/Qhi$1;->ac:Lcom/bytedance/sdk/openadsdk/apiImpl/ac/Qhi;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/ac/Qhi$1;->Qhi:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/ac/Qhi$1;->cJ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/ac/Qhi$1;->ac:Lcom/bytedance/sdk/openadsdk/apiImpl/ac/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/ac/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/apiImpl/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/ac/Qhi$1;->ac:Lcom/bytedance/sdk/openadsdk/apiImpl/ac/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/ac/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/apiImpl/ac/Qhi;)Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/ac/Qhi$1;->Qhi:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/apiImpl/ac/Qhi$1;->cJ:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
