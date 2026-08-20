.class public Lcom/appsgeyser/sdk/ads/FullScreenBanner;
.super Ljava/lang/Object;
.source "FullScreenBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;,
        Lcom/appsgeyser/sdk/ads/FullScreenBanner$FullScreenEventListener;
    }
.end annotation


# static fields
.field public static final FULLSCREEN_CLICKED:Ljava/lang/String; = "fullscreen_clicked"

.field private static final NO_TIMER:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "FullScreenBanner"


# instance fields
.field private backKeyLocked:Z

.field private bannerClicked:Z

.field private bannerUrl:Ljava/lang/String;

.field private bannerView:Landroid/webkit/WebView;

.field private clickUrl:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private currentBannerType:Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

.field private currentlyShownBanners:I

.field private deviceIdParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

.field private errorHappened:Z

.field private eventListener:Lcom/appsgeyser/sdk/ads/FullScreenBanner$FullScreenEventListener;

.field private final handler:Landroid/os/Handler;

.field private impressionUrl:Ljava/lang/String;

.field private isActivityInForeground:Z

.field private isFailedSend:Z

.field private isLoading:Z

.field private isOnTouchFSEnabled:Z

.field private keepAliveCalled:Z

.field private listener:Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;

.field private loadTagBanner:Ljava/lang/String;

.field private openInNativeBrowser:Z

.field private progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

.field private ready:Z

.field private redirect:Z

.field private timerDuration:J

.field private timesToShow:I

.field private final uiThreadHandler:Landroid/os/Handler;

.field private uniqueId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->context:Landroid/content/Context;

    .line 57
    sget-object v1, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;->NO_BANNER:Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->currentBannerType:Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    .line 59
    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->listener:Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;

    .line 60
    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->eventListener:Lcom/appsgeyser/sdk/ads/FullScreenBanner$FullScreenEventListener;

    .line 61
    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->bannerView:Landroid/webkit/WebView;

    .line 63
    const-string v1, "-1"

    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->uniqueId:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->clickUrl:Ljava/lang/String;

    .line 65
    const-string v1, "about:blank"

    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->impressionUrl:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->bannerUrl:Ljava/lang/String;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->bannerClicked:Z

    .line 69
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->redirect:Z

    const/4 v1, 0x1

    .line 70
    iput-boolean v1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->openInNativeBrowser:Z

    .line 71
    iput-boolean v1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->backKeyLocked:Z

    .line 72
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->ready:Z

    .line 73
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->errorHappened:Z

    .line 74
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->keepAliveCalled:Z

    .line 75
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->isLoading:Z

    .line 76
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->isFailedSend:Z

    .line 77
    iput-boolean v1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->isOnTouchFSEnabled:Z

    .line 78
    iput-boolean v1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->isActivityInForeground:Z

    const-wide/16 v2, -0x1

    .line 80
    iput-wide v2, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->timerDuration:J

    .line 82
    iput v1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->timesToShow:I

    .line 83
    iput v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->currentlyShownBanners:I

    .line 87
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->handler:Landroid/os/Handler;

    .line 94
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->context:Landroid/content/Context;

    .line 95
    new-instance v2, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    invoke-direct {v2, p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    .line 96
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->uiThreadHandler:Landroid/os/Handler;

    .line 97
    new-instance v2, Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->bannerView:Landroid/webkit/WebView;

    .line 99
    new-instance v3, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;

    invoke-direct {v3, p0, p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner$1;-><init>(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 231
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->bannerView:Landroid/webkit/WebView;

    new-instance v2, Lcom/appsgeyser/sdk/ads/FullScreenBanner$2;

    invoke-direct {v2, p0}, Lcom/appsgeyser/sdk/ads/FullScreenBanner$2;-><init>(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 242
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->bannerView:Landroid/webkit/WebView;

    new-instance v2, Lcom/appsgeyser/sdk/ads/FullscreenBannerJsInterface;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->context:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/appsgeyser/sdk/ads/FullscreenBannerJsInterface;-><init>(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Landroid/content/Context;)V

    sget-object v3, Lcom/appsgeyser/sdk/ads/FullscreenBannerJsInterface;->JS_INTERFACE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->context:Landroid/content/Context;

    const-string v2, "appcache"

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 246
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->context:Landroid/content/Context;

    const-string v2, "geolocation"

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 248
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->bannerView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, -0x1

    .line 249
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 250
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 252
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 253
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 254
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 255
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 256
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 258
    new-instance p1, Lcom/appsgeyser/sdk/ads/SimpleFullScreenBannerListener;

    invoke-direct {p1}, Lcom/appsgeyser/sdk/ads/SimpleFullScreenBannerListener;-><init>()V

    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->setListener(Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->isLoading:Z

    return p0
.end method

.method static synthetic access$002(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->isLoading:Z

    return p1
.end method

.method static synthetic access$100(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->keepAliveCalled:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->openInNativeBrowser:Z

    return p0
.end method

.method static synthetic access$102(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->keepAliveCalled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->uniqueId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->timerDuration:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->clickUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Landroid/webkit/WebView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->bannerView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->updateBannerUrlWithTag(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->isFailedSend:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->isFailedSend:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->currentlyShownBanners:I

    return p0
.end method

.method static synthetic access$1908(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)I
    .locals 2

    .line 39
    iget v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->currentlyShownBanners:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->currentlyShownBanners:I

    return v0
.end method

.method static synthetic access$200(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->errorHappened:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->timesToShow:I

    return p0
.end method

.method static synthetic access$202(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->errorHappened:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->loadBanner()V

    return-void
.end method

.method static synthetic access$302(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->ready:Z

    return p1
.end method

.method static synthetic access$400(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->currentBannerType:Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    return-object p0
.end method

.method static synthetic access$402(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;)Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->currentBannerType:Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    return-object p1
.end method

.method static synthetic access$500(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->listener:Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->loadTagBanner:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->bannerUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->redirect:Z

    return p0
.end method

.method static synthetic access$900(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->bannerClicked:Z

    return p0
.end method

.method static synthetic access$902(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->bannerClicked:Z

    return p1
.end method

.method private loadBanner()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->bannerUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->isLoading:Z

    if-nez v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->listener:Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;

    if-eqz v0, :cond_0

    .line 281
    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;->onLoadStarted()V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->uiThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/appsgeyser/sdk/ads/FullScreenBanner$3;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/FullScreenBanner$3;-><init>(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 290
    :cond_1
    sget-object v0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->TAG:Ljava/lang/String;

    const-string v1, "initialization error, can\'t load banner!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateBannerUrlWithTag(Ljava/lang/String;)V
    .locals 4

    .line 510
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->loadTagBanner:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 511
    const-string v0, "on_start"

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->loadTagBanner:Ljava/lang/String;

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->loadTagBanner:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 515
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->loadTagBanner:Ljava/lang/String;

    .line 517
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object p1

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://splash.appsgeyser.com/?widgetid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&guid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 521
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getAppGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&v=2.48.s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->bannerUrl:Ljava/lang/String;

    .line 523
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->deviceIdParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    if-eqz v0, :cond_2

    .line 524
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->getAdvId()Ljava/lang/String;

    move-result-object v0

    .line 525
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->deviceIdParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    .line 526
    invoke-virtual {v1}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->getLimitAdTrackingEnabled()Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 527
    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->deviceIdParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    invoke-virtual {v2}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->getaId()Ljava/lang/String;

    move-result-object v2

    .line 529
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 530
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&advid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&limit_ad_tracking_enabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 534
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&aid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->bannerUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->bannerUrl:Ljava/lang/String;

    .line 540
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->bannerUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&tlat=&tlon=&p=android&sdk=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->context:Landroid/content/Context;

    .line 542
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/appsgeyser/sdk/utils/DeviceInfoGetter;->getDeviceInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&load_tag_banner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->loadTagBanner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&templateversion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 544
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getTemplateVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->bannerUrl:Ljava/lang/String;

    .line 548
    :cond_3
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->bannerUrl:Ljava/lang/String;

    const-string v0, "&skipAdmob=true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 549
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->bannerUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->bannerUrl:Ljava/lang/String;

    .line 551
    :cond_4
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->bannerUrl:Ljava/lang/String;

    const-string v0, "&skipMoPub=true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 552
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->bannerUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->bannerUrl:Ljava/lang/String;

    :cond_5
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 491
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->listener:Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;

    if-eqz v0, :cond_0

    .line 492
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->loadTagBanner:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;->onAdHided(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 494
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->redirect:Z

    .line 495
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->eventListener:Lcom/appsgeyser/sdk/ads/FullScreenBanner$FullScreenEventListener;

    if-eqz v0, :cond_1

    .line 497
    :try_start_0
    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/FullScreenBanner$FullScreenEventListener;->bannerClosed()V

    const/4 v0, 0x0

    .line 498
    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->eventListener:Lcom/appsgeyser/sdk/ads/FullScreenBanner$FullScreenEventListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 500
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method forceOpenInNativeBrowser(Z)V
    .locals 0

    .line 506
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->openInNativeBrowser:Z

    return-void
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->clickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->context:Landroid/content/Context;

    return-object v0
.end method

.method getImpressionUrl()Ljava/lang/String;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->impressionUrl:Ljava/lang/String;

    return-object v0
.end method

.method getLoadTagBanner()Ljava/lang/String;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->loadTagBanner:Ljava/lang/String;

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->bannerView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public declared-synchronized initWithDeviceIdParameters(Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;)V
    .locals 9

    const-string v0, "https://splash.appsgeyser.com/"

    const-string v1, "&v=2.48.s"

    const-string v2, "&advid="

    const-string v3, "&aid="

    const-string v4, "?widgetid="

    monitor-enter p0

    .line 368
    :try_start_0
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->deviceIdParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    .line 370
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object v5

    .line 372
    const-string v6, ""

    if-eqz p1, :cond_1

    .line 375
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->getAdvId()Ljava/lang/String;

    move-result-object v6

    .line 377
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->getLimitAdTrackingEnabled()Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;

    move-result-object v7

    invoke-virtual {v7}, Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 378
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->getaId()Ljava/lang/String;

    move-result-object p1

    .line 380
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 381
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "&limit_ad_tracking_enabled="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 385
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 389
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->loadTagBanner:Ljava/lang/String;

    if-nez p1, :cond_2

    .line 390
    const-string p1, "on_start"

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->loadTagBanner:Ljava/lang/String;

    .line 393
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/appsgeyser/sdk/configuration/Configuration;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "&guid="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 394
    invoke-virtual {v5}, Lcom/appsgeyser/sdk/configuration/Configuration;->getAppGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "&tlat=&tlon=&p=android&sdk=1"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->context:Landroid/content/Context;

    .line 397
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/appsgeyser/sdk/utils/DeviceInfoGetter;->getDeviceInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "&load_tag_banner="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->loadTagBanner:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "&templateversion="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 399
    invoke-virtual {v5}, Lcom/appsgeyser/sdk/configuration/Configuration;->getTemplateVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->bannerUrl:Ljava/lang/String;

    .line 403
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->currentBannerType:Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    sget-object v0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;->PENDING_BANNER:Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    invoke-virtual {p1, v0}, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 404
    invoke-direct {p0}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->loadBanner()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isActivityInForeground()Z
    .locals 1

    .line 478
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->isActivityInForeground:Z

    return v0
.end method

.method public isOnTouchFSEnabled()Z
    .locals 1

    .line 466
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->isOnTouchFSEnabled:Z

    return v0
.end method

.method public load(Ljava/lang/String;)V
    .locals 1

    .line 262
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->isLoading:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 263
    iput v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->currentlyShownBanners:I

    .line 264
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->keepAliveCalled:Z

    .line 265
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->ready:Z

    .line 266
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->errorHappened:Z

    .line 268
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->bannerUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 269
    sget-object v0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;->NO_BANNER:Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->currentBannerType:Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    .line 270
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->updateBannerUrlWithTag(Ljava/lang/String;)V

    .line 271
    invoke-direct {p0}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->loadBanner()V

    goto :goto_0

    .line 273
    :cond_0
    sget-object p1, Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;->PENDING_BANNER:Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->currentBannerType:Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    :cond_1
    :goto_0
    return-void
.end method

.method public setActivityInForeground(Z)V
    .locals 0

    .line 482
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->isActivityInForeground:Z

    return-void
.end method

.method setBackKeyLocked(Z)V
    .locals 0

    .line 444
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->backKeyLocked:Z

    return-void
.end method

.method setBannerClicked(Z)V
    .locals 0

    .line 474
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->bannerClicked:Z

    return-void
.end method

.method public setBannerType(Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->currentBannerType:Lcom/appsgeyser/sdk/ads/FullScreenBanner$BannerTypes;

    return-void
.end method

.method setClickUrl(Ljava/lang/String;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->clickUrl:Ljava/lang/String;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->context:Landroid/content/Context;

    .line 439
    new-instance v0, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    invoke-direct {v0, p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    :cond_0
    return-void
.end method

.method public setEventListener(Lcom/appsgeyser/sdk/AdActivity;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->eventListener:Lcom/appsgeyser/sdk/ads/FullScreenBanner$FullScreenEventListener;

    return-void
.end method

.method setImpressionUrl(Ljava/lang/String;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->impressionUrl:Ljava/lang/String;

    return-void
.end method

.method public setListener(Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;)V
    .locals 1

    .line 320
    new-instance v0, Lcom/appsgeyser/sdk/ads/FullScreenBanner$5;

    invoke-direct {v0, p0, p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner$5;-><init>(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;)V

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->listener:Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;

    return-void
.end method

.method public setOnTouchFSEnabled(Z)V
    .locals 0

    .line 470
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->isOnTouchFSEnabled:Z

    return-void
.end method

.method setShowTimer(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 449
    iput-wide p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->timerDuration:J

    :cond_0
    return-void
.end method

.method public setTimesToShow(I)V
    .locals 0

    .line 462
    iput p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->timesToShow:I

    return-void
.end method

.method setUniqueId(Ljava/lang/String;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->uniqueId:Ljava/lang/String;

    return-void
.end method

.method public show()V
    .locals 4

    .line 295
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->isActivityInForeground:Z

    if-eqz v0, :cond_1

    .line 296
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->ready:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->errorHappened:Z

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->show()V

    .line 298
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/appsgeyser/sdk/ads/FullScreenBanner$4;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/FullScreenBanner$4;-><init>(Lcom/appsgeyser/sdk/ads/FullScreenBanner;)V

    .line 307
    invoke-static {}, Lcom/appsgeyser/sdk/configuration/Constants;->getFullScreenDelay()J

    move-result-wide v2

    .line 298
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 309
    :cond_0
    sget-object v0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->ready:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->errorHappened:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string v1, "banner is not ready!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method skipNonHTMLBanner(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 486
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->isLoading:Z

    .line 487
    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->load(Ljava/lang/String;)V

    return-void
.end method

.method stayAlive()V
    .locals 1

    const/4 v0, 0x1

    .line 316
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->keepAliveCalled:Z

    return-void
.end method
