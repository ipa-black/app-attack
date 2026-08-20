.class public Lcom/bytedance/sdk/component/widget/SSWebView$Qhi;
.super Landroid/webkit/WebViewClient;
.source "SSWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/widget/SSWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Qhi"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1138
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1175
    new-instance p2, Lcom/bytedance/sdk/component/widget/SSWebView$Qhi$1;

    invoke-direct {p2, p0, p1}, Lcom/bytedance/sdk/component/widget/SSWebView$Qhi$1;-><init>(Lcom/bytedance/sdk/component/widget/SSWebView$Qhi;Landroid/webkit/WebView;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
