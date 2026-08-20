.class Lcom/bytedance/sdk/openadsdk/hpZ/hm$1;
.super Ljava/lang/Object;
.source "PlayablePlugin.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/hpZ/hm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$1;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$1;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Qhi(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$1;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Qhi(Lcom/bytedance/sdk/openadsdk/hpZ/hm;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 273
    const-string v1, "PlayablePlugin"

    const-string v2, "onSizeChanged error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
