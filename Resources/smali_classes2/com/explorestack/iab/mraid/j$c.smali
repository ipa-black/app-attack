.class public Lcom/explorestack/iab/mraid/j$c;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/mraid/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/explorestack/iab/mraid/j;


# direct methods
.method private constructor <init>(Lcom/explorestack/iab/mraid/j;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/mraid/j$c;->a:Lcom/explorestack/iab/mraid/j;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/iab/mraid/j;Lcom/explorestack/iab/mraid/j$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/explorestack/iab/mraid/j$c;-><init>(Lcom/explorestack/iab/mraid/j;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/explorestack/iab/mraid/j;->g:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "onError: %s / %s / %d"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p1, "ERR_INTERNET_DISCONNECTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/explorestack/iab/mraid/j$c;->a:Lcom/explorestack/iab/mraid/j;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/explorestack/iab/mraid/j;->b(Lcom/explorestack/iab/mraid/j;Z)Z

    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    sget-object p1, Lcom/explorestack/iab/mraid/j;->g:Ljava/lang/String;

    const-string v0, "onPageFinished"

    invoke-static {p1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/explorestack/iab/mraid/j$c;->a:Lcom/explorestack/iab/mraid/j;

    invoke-static {p1}, Lcom/explorestack/iab/mraid/j;->a(Lcom/explorestack/iab/mraid/j;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/mraid/j$c;->a:Lcom/explorestack/iab/mraid/j;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/explorestack/iab/mraid/j;->a(Lcom/explorestack/iab/mraid/j;Z)Z

    iget-object p1, p0, Lcom/explorestack/iab/mraid/j$c;->a:Lcom/explorestack/iab/mraid/j;

    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/j;->c()Lcom/explorestack/iab/mraid/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/i;->f()V

    iget-object p1, p0, Lcom/explorestack/iab/mraid/j$c;->a:Lcom/explorestack/iab/mraid/j;

    invoke-static {p1}, Lcom/explorestack/iab/mraid/j;->b(Lcom/explorestack/iab/mraid/j;)Lcom/explorestack/iab/mraid/j$b;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/explorestack/iab/mraid/j$b;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    sget-object p1, Lcom/explorestack/iab/mraid/j;->g:Ljava/lang/String;

    const-string p2, "onPageStarted"

    invoke-static {p1, p2}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p4, p3, p2}, Lcom/explorestack/iab/mraid/j$c;->a(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/explorestack/iab/mraid/j$c;->a(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0

    sget-object p1, Lcom/explorestack/iab/mraid/j;->g:Ljava/lang/String;

    const-string p2, "onRenderProcessGone"

    invoke-static {p1, p2}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/explorestack/iab/mraid/j$c;->a:Lcom/explorestack/iab/mraid/j;

    invoke-static {p1}, Lcom/explorestack/iab/mraid/j;->b(Lcom/explorestack/iab/mraid/j;)Lcom/explorestack/iab/mraid/j$b;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/explorestack/iab/mraid/j$b;->a(I)V

    return p2
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    const-string p1, "mraid://"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/explorestack/iab/mraid/j$c;->a:Lcom/explorestack/iab/mraid/j;

    invoke-static {p1, p2}, Lcom/explorestack/iab/mraid/j;->a(Lcom/explorestack/iab/mraid/j;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/explorestack/iab/bridge/JsBridgeHandler;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/explorestack/iab/mraid/j$c;->a:Lcom/explorestack/iab/mraid/j;

    invoke-static {p1}, Lcom/explorestack/iab/mraid/j;->c(Lcom/explorestack/iab/mraid/j;)Lcom/explorestack/iab/mraid/i;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/explorestack/iab/bridge/JsBridgeHandler;->a(Lcom/explorestack/iab/mraid/i;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/explorestack/iab/mraid/j$c;->a:Lcom/explorestack/iab/mraid/j;

    invoke-static {p1, p2}, Lcom/explorestack/iab/mraid/j;->b(Lcom/explorestack/iab/mraid/j;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
