.class Lcom/bytedance/sdk/component/widget/SSWebView$Qhi$1;
.super Ljava/lang/Object;
.source "SSWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/widget/SSWebView$Qhi;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Landroid/webkit/WebView;

.field final synthetic cJ:Lcom/bytedance/sdk/component/widget/SSWebView$Qhi;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/widget/SSWebView$Qhi;Landroid/webkit/WebView;)V
    .locals 0

    .line 1175
    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView$Qhi$1;->cJ:Lcom/bytedance/sdk/component/widget/SSWebView$Qhi;

    iput-object p2, p0, Lcom/bytedance/sdk/component/widget/SSWebView$Qhi$1;->Qhi:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1179
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView$Qhi$1;->Qhi:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1181
    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/SSWebView$Qhi$1;->Qhi:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1183
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/SSWebView$Qhi$1;->Qhi:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
