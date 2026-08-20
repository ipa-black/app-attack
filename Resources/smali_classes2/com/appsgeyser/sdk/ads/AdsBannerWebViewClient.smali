.class Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AdsBannerWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient$OnPageFinishedListener;,
        Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient$OnPageStartedListener;
    }
.end annotation


# instance fields
.field private onPageFinishedListener:Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient$OnPageFinishedListener;

.field private onPageStartedListener:Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient$OnPageStartedListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient;->onPageFinishedListener:Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient$OnPageFinishedListener;

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0, p1, p2}, Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient$OnPageFinishedListener;->loadFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 50
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 55
    invoke-static {p2}, Lcom/appsgeyser/sdk/utils/BannerUtils;->isDataTextHtmlUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient;->onPageStartedListener:Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient$OnPageStartedListener;

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0, p1, p2, p3}, Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient$OnPageStartedListener;->loadStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient;->onPageStartedListener:Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient$OnPageStartedListener;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p3}, Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient$OnPageStartedListener;->loadStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 63
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    const-string p2, "click_data_text_html_loaded_in_banner"

    invoke-virtual {p1, p2}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 36
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 37
    new-instance p2, Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient$1;

    invoke-direct {p2, p0, p1}, Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient$1;-><init>(Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient;Landroid/webkit/WebView;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setOnPageFinishedListener(Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient$OnPageFinishedListener;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient;->onPageFinishedListener:Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient$OnPageFinishedListener;

    return-void
.end method

.method setOnPageStartedListener(Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient$OnPageStartedListener;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient;->onPageStartedListener:Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient$OnPageStartedListener;

    return-void
.end method
