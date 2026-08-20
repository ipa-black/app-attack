.class Lcom/bytedance/sdk/openadsdk/hpZ/hm$5;
.super Ljava/lang/Object;
.source "PlayablePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/hpZ/hm;->yN()V
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

    .line 458
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$5;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 462
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$5;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Tgh(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$5;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Tgh(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/hpZ/hm$5$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm$5$1;-><init>(Lcom/bytedance/sdk/openadsdk/hpZ/hm$5;)V

    const-string v2, "javascript:typeof playable_callJS === \'function\' && playable_callJS()"

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$5;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Sf(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$5;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Sf(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
