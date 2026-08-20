.class public Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView;
.super Landroid/webkit/WebView;
.source "BrowserWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView$OnScrollChangedCallback;
    }
.end annotation


# instance fields
.field private _firstUrl:Z

.field private _navigationWidget:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

.field private context:Landroid/content/Context;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private mOnScrollChangedCallback:Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView$OnScrollChangedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 18
    iput-boolean p2, p0, Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView;->_firstUrl:Z

    const/4 p2, 0x0

    .line 19
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView;->_navigationWidget:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    .line 26
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView;->context:Landroid/content/Context;

    return-void
.end method

.method private _getUrlWithAllArguments(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 71
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    return-object p1
.end method

.method private getSearchUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 57
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120191

    .line 58
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    .line 63
    invoke-direct {p0, v0}, Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView;->_getUrlWithAllArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-object p1
.end method

.method private init()V
    .locals 1

    .line 30
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getNavigationWidget()Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView;->_navigationWidget:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView;->_firstUrl:Z

    return-void
.end method


# virtual methods
.method public getOnScrollChangedCallback(Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView$OnScrollChangedCallback;)Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView$OnScrollChangedCallback;
    .locals 0

    .line 96
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView;->mOnScrollChangedCallback:Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView$OnScrollChangedCallback;

    return-object p1
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 3

    .line 36
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView;->_firstUrl:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView;->init()V

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView;->_navigationWidget:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string v2, "(news|(ht|f)tp(s?)\\://){1}[\\S\\.]+\\.[\\S\\.]+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 45
    :cond_1
    invoke-direct {p0, p1}, Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView;->getSearchUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 48
    :cond_2
    :goto_0
    const-string v0, "javascript:(function(){  })()"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 49
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 90
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView;->mOnScrollChangedCallback:Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView$OnScrollChangedCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView$OnScrollChangedCallback;->onScroll(IIII)V

    :cond_0
    return-void
.end method

.method public setOnScrollChangedCallback(Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView$OnScrollChangedCallback;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView;->mOnScrollChangedCallback:Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView$OnScrollChangedCallback;

    return-void
.end method
