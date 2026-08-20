.class public Lcom/appsgeyser/multiTabApp/controllers/WebContentController;
.super Ljava/lang/Object;
.source "WebContentController.java"

# interfaces
.implements Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final APPMAXCACHESIZE:I = 0xc8

.field private static final FIRST_TIMEOUT_FULLSCREEN_BANNER:J = 0x2710L

.field private static final TIMEOUT_FOR_FULLSCREEN_BANNER:J = 0x1d4c0L

.field private static lastTimeFirtsBannerWasShown:J = -0x1L

.field private static lastTimeFullScreenBannerWasShown:J = -0x1L


# instance fields
.field private _bannerJsInjection:Ljava/lang/String;

.field private _browser:Landroid/webkit/WebView;

.field private _mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

.field private _pdfContent:Lcom/appsgeyser/multiTabApp/ui/views/PdfContent;

.field private _progressBar:Landroid/widget/ProgressBar;

.field private _tabsPadding:I

.field private _webContent:Lcom/appsgeyser/multiTabApp/ui/views/WebContent;

.field private _widgetInfo:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

.field private firstBannerWasShown:Z

.field private firstPageFinished:Z

.field private mBrowserWebChromeClient:Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;

.field private popupView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/appsgeyser/multiTabApp/model/WidgetEntity;)V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_webContent:Lcom/appsgeyser/multiTabApp/ui/views/WebContent;

    .line 62
    const-string v1, ""

    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_bannerJsInjection:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    .line 64
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->popupView:Landroid/webkit/WebView;

    .line 65
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->mBrowserWebChromeClient:Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_tabsPadding:I

    .line 70
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->firstBannerWasShown:Z

    .line 78
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_widgetInfo:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)Landroid/webkit/WebView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)Landroid/webkit/WebView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->popupView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->popupView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)Lcom/appsgeyser/multiTabApp/ui/views/WebContent;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_webContent:Lcom/appsgeyser/multiTabApp/ui/views/WebContent;

    return-object p0
.end method

.method static synthetic access$302(J)J
    .locals 0

    .line 55
    sput-wide p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->lastTimeFullScreenBannerWasShown:J

    return-wide p0
.end method

.method private calculateScale()I
    .locals 5

    .line 316
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    .line 318
    const-string v1, "window"

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 326
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dBrowserWidth = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 328
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x32

    .line 329
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    sub-int/2addr v0, v3

    .line 332
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_widgetInfo:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    .line 333
    iget v3, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_tabsPadding:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 334
    iget-object v3, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_widgetInfo:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    invoke-virtual {v3}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v0, v3

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    const/high16 v4, 0x42c80000    # 100.0f

    if-lez v3, :cond_0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 339
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    .line 341
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_0
    mul-float/2addr v0, v4

    float-to-int v0, v0

    return v0
.end method

.method private calculateScale(II)I
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 350
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWidth()I

    move-result v1

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    int-to-float p1, v1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 355
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method

.method private init(Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;)V
    .locals 5

    .line 82
    sget-object v0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$5;->$SwitchMap$com$appsgeyser$multiTabApp$ui$views$TabContent$TabType:[I

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_pdfContent:Lcom/appsgeyser/multiTabApp/ui/views/PdfContent;

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_widgetInfo:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getLink()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$1;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$1;-><init>(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)V

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_widgetInfo:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    .line 92
    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabId()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-virtual {p1, v0, v1, v2}, Lcom/appsgeyser/multiTabApp/ui/views/PdfContent;->init(Ljava/lang/String;Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$PdfEventListener;Ljava/lang/String;)V

    return-void

    .line 84
    :cond_1
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_webContent:Lcom/appsgeyser/multiTabApp/ui/views/WebContent;

    invoke-virtual {p1, p0}, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->init(Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;)V

    .line 96
    :goto_0
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_webContent:Lcom/appsgeyser/multiTabApp/ui/views/WebContent;

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_widgetInfo:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getLoadingCurtainType()Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->setLoadingCurtainType(Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;)V

    .line 97
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_webContent:Lcom/appsgeyser/multiTabApp/ui/views/WebContent;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->getBrowser()Landroid/webkit/WebView;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    .line 99
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_webContent:Lcom/appsgeyser/multiTabApp/ui/views/WebContent;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_progressBar:Landroid/widget/ProgressBar;

    .line 100
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    const/16 v2, 0x82

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->requestFocus(I)Z

    .line 101
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    new-instance v2, Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;

    iget-object v3, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-direct {v2, p0, v3}, Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;-><init>(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;Landroid/webkit/WebView;)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 103
    new-instance p1, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$2;

    invoke-direct {p1, p0, p0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$2;-><init>(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)V

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->mBrowserWebChromeClient:Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;

    .line 145
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 146
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    new-instance v2, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;

    invoke-direct {v2, p0}, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;-><init>(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 147
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 149
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    new-instance v2, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

    invoke-direct {v2, p0}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;-><init>(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)V

    const-string v3, "AppsgeyserJSInterface"

    invoke-virtual {p1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    new-instance v2, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;

    iget-object v3, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-direct {v2, v3}, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;-><init>(Landroid/webkit/WebView;)V

    sget-object v3, Lcom/appsgeyser/multiTabApp/media/WebViewJsAudioPlayer;->JS_INTERFACE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-static {p1, v2}, Lcom/appsgeyser/multiTabApp/plugins/PluginsLoader;->loadPlugins(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 154
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    .line 155
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 156
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 157
    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 158
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 159
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 160
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 162
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    const/4 v2, 0x0

    .line 166
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 170
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 176
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 178
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 180
    const-string v3, "databases"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 181
    const-string v4, "geolocation"

    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 185
    sget-object v0, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 186
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 187
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    const/4 v0, -0x1

    .line 188
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 189
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 190
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 192
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 193
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 195
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_widgetInfo:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getLink()Ljava/lang/String;

    move-result-object v0

    const-string v3, "file:///android_asset/content"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 196
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->calculateScale()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setInitialScale(I)V

    goto :goto_1

    .line 198
    :cond_2
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 199
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 200
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 203
    :goto_1
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/Factory;->getWidgetsController()Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->widgetsCount()I

    move-result p1

    if-le p1, v1, :cond_3

    const/16 p1, 0x3d

    .line 204
    iput p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_tabsPadding:I

    .line 207
    :cond_3
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object p1

    const-string v0, "AppsgeyserPrefs"

    invoke-virtual {p1, v0, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 208
    const-string v0, "bannerJs"

    const-string v2, ""

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_bannerJsInjection:Ljava/lang/String;

    .line 211
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_webContent:Lcom/appsgeyser/multiTabApp/ui/views/WebContent;

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_widgetInfo:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->navigate(Ljava/lang/String;)V

    .line 213
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    .line 217
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {p1, v0, v1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 219
    invoke-virtual {p1, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    return-void
.end method

.method private isFirstShownBanner()Z
    .locals 6

    .line 440
    sget-wide v0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->lastTimeFirtsBannerWasShown:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->lastTimeFirtsBannerWasShown:J

    return v1

    .line 443
    :cond_0
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->firstBannerWasShown:Z

    if-nez v0, :cond_1

    .line 444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->lastTimeFirtsBannerWasShown:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 445
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->firstBannerWasShown:Z

    return v0

    :cond_1
    return v1
.end method


# virtual methods
.method public createTabContent(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 237
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0, p3, p1, p2}, Lcom/appsgeyser/multiTabApp/Factory;->getTabContent(Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 238
    sget-object p2, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$5;->$SwitchMap$com$appsgeyser$multiTabApp$ui$views$TabContent$TabType:[I

    invoke-virtual {p3}, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    if-eq p2, p3, :cond_1

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    move-object p2, p1

    check-cast p2, Lcom/appsgeyser/multiTabApp/ui/views/PdfContent;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_pdfContent:Lcom/appsgeyser/multiTabApp/ui/views/PdfContent;

    .line 245
    sget-object p2, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->PDF:Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    invoke-direct {p0, p2}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->init(Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;)V

    goto :goto_0

    .line 240
    :cond_1
    move-object p2, p1

    check-cast p2, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_webContent:Lcom/appsgeyser/multiTabApp/ui/views/WebContent;

    .line 241
    sget-object p2, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->WEB:Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    invoke-direct {p0, p2}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->init(Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;)V

    :goto_0
    return-object p1
.end method

.method public destroy()V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public getBannerInjectionJs()Ljava/lang/String;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_bannerJsInjection:Ljava/lang/String;

    return-object v0
.end method

.method public getBrowser()Landroid/webkit/WebView;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_webContent:Lcom/appsgeyser/multiTabApp/ui/views/WebContent;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->getBrowser()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public getInjectJSContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 366
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_widgetInfo:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    .line 367
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getInjectJS()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    .line 366
    invoke-static {v0, v1}, Lcom/appsgeyser/multiTabApp/utils/FileManager;->getStringFromAssetsFileWithFileName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 369
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_widgetInfo:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getInjectScripts()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 371
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsgeyser/multiTabApp/configuration/IncludeScriptConfigEntity;

    .line 372
    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/configuration/IncludeScriptConfigEntity;->getRegex()Ljava/lang/String;

    move-result-object v3

    .line 373
    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/configuration/IncludeScriptConfigEntity;->getPattern()Ljava/lang/String;

    move-result-object v4

    .line 374
    const-string v5, " \n "

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/configuration/IncludeScriptConfigEntity;->getFile()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-static {v2, v3}, Lcom/appsgeyser/multiTabApp/utils/FileManager;->getStringFromAssetsFileWithFileName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_0

    .line 377
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {p1, v4}, Lcom/appsgeyser/multiTabApp/utils/WildcardMatcher;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/configuration/IncludeScriptConfigEntity;->getFile()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-static {v2, v3}, Lcom/appsgeyser/multiTabApp/utils/FileManager;->getStringFromAssetsFileWithFileName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    return-object v0
.end method

.method public getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    return-object v0
.end method

.method public getNavigationWidget()Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_webContent:Lcom/appsgeyser/multiTabApp/ui/views/WebContent;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->getNavigationWidget()Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    move-result-object v0

    return-object v0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    return-object v0
.end method

.method public getWidgetInfo()Lcom/appsgeyser/multiTabApp/model/WidgetEntity;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_widgetInfo:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    return-object v0
.end method

.method public hideProgressBarPanel()V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_webContent:Lcom/appsgeyser/multiTabApp/ui/views/WebContent;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->hideProgressBarPanel()V

    return-void
.end method

.method public onBackKeyDown()Z
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->popupView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->popupView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return v1

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->popupView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->popupView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 258
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->popupView:Landroid/webkit/WebView;

    return v1

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 457
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 458
    sget-object p1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->TOUCH:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->showBanner(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;Z)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setBannerInjectionJs(Ljava/lang/String;)V
    .locals 3

    .line 391
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_bannerJsInjection:Ljava/lang/String;

    .line 392
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:(function(){ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " })()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 396
    :cond_0
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    const-string v1, "AppsgeyserPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 397
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 398
    const-string v1, "bannerJs"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 399
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setFirstPageFinished(Z)V
    .locals 0

    .line 464
    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->firstPageFinished:Z

    return-void
.end method

.method public setMainNavigationActivity(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    return-void
.end method

.method public setPageRefreshJsCode(Ljava/lang/String;)V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_webContent:Lcom/appsgeyser/multiTabApp/ui/views/WebContent;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->setPageRefreshJsCode(Ljava/lang/String;)V

    return-void
.end method

.method public setProgressBarState(I)V
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 292
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    .line 294
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$3;

    const-string v1, "progressFinishDelay"

    invoke-direct {v0, p0, v1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$3;-><init>(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;Ljava/lang/String;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setScaleForPageWithSize(II)V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->calculateScale(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setInitialScale(I)V

    return-void
.end method

.method public showBanner(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;Z)V
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    new-instance v1, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$4;-><init>(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;Z)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showConnectionErrorDialog()V
    .locals 0

    return-void
.end method

.method public showNavigationBars()V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_webContent:Lcom/appsgeyser/multiTabApp/ui/views/WebContent;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->showNavigationBars()V

    return-void
.end method

.method public showProgressBarPanel()V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_webContent:Lcom/appsgeyser/multiTabApp/ui/views/WebContent;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->showProgressBarPanel()V

    return-void
.end method

.method public zoomIn()V
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->_browser:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomIn()Z

    return-void
.end method
