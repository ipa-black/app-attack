.class public Lcom/appnext/ads/interstitial/InterstitialActivity;
.super Lcom/appnext/core/AppnextActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/ads/interstitial/InterstitialActivity$b;,
        Lcom/appnext/ads/interstitial/InterstitialActivity$a;,
        Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;
    }
.end annotation


# instance fields
.field private aE:Lcom/appnext/core/AppnextAd;

.field private aF:Lcom/appnext/ads/b;

.field private ads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/appnext/core/AppnextAd;",
            ">;"
        }
    .end annotation
.end field

.field private autoPlay:Ljava/lang/Boolean;

.field protected bP:Landroid/webkit/WebView;

.field private bQ:Z

.field private bR:Lcom/appnext/ads/interstitial/Interstitial;

.field private bS:Lcom/appnext/ads/interstitial/InterstitialAd;

.field private bT:Ljava/lang/String;

.field private bU:I

.field private bV:Landroid/os/Handler;

.field private bW:Lcom/appnext/core/e$a;

.field private bX:Lcom/appnext/core/webview/WebAppInterface;

.field private bY:Z

.field private bZ:Z

.field private ca:Ljava/lang/String;

.field private canClose:Ljava/lang/Boolean;

.field private cc:Ljava/lang/String;

.field private cd:Z

.field private ce:Ljava/lang/Runnable;

.field private closed:Z

.field private mute:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/appnext/core/AppnextActivity;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bQ:Z

    .line 67
    const-string v1, ""

    iput-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bT:Ljava/lang/String;

    .line 68
    iput-boolean v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->closed:Z

    .line 69
    iput v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bU:I

    .line 75
    iput-boolean v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bY:Z

    .line 76
    iput-boolean v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bZ:Z

    .line 79
    iput-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->cc:Ljava/lang/String;

    .line 82
    iput-boolean v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->cd:Z

    .line 289
    new-instance v0, Lcom/appnext/ads/interstitial/InterstitialActivity$9;

    invoke-direct {v0, p0}, Lcom/appnext/ads/interstitial/InterstitialActivity$9;-><init>(Lcom/appnext/ads/interstitial/InterstitialActivity;)V

    iput-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->ce:Ljava/lang/Runnable;

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    const v0, 0xffffff

    and-int/2addr p0, v0

    .line 907
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "#%06X"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/appnext/ads/interstitial/InterstitialActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->cc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/appnext/ads/interstitial/InterstitialActivity;)V
    .locals 8

    .line 3236
    :try_start_0
    invoke-static {p0}, Lcom/appnext/core/webview/AppnextWebView;->u(Landroid/content/Context;)Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v0

    .line 3237
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->ads:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "fullscreen"

    const-string v3, "interstitial"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/appnext/core/webview/AppnextWebView;->ai(Ljava/lang/String;)Landroid/webkit/WebView;

    move-result-object v1

    iput-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bP:Landroid/webkit/WebView;

    .line 3243
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bR:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v1}, Lcom/appnext/ads/interstitial/Interstitial;->getPageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->w()Lcom/appnext/core/webview/WebAppInterface;

    move-result-object v5

    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bR:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v1}, Lcom/appnext/ads/interstitial/Interstitial;->getFallback()Lcom/appnext/core/webview/a;

    move-result-object v6

    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->ads:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object v7, v3

    :goto_1
    move-object v1, p0

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/appnext/core/webview/AppnextWebView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/appnext/core/webview/WebAppInterface;Lcom/appnext/core/webview/a;Ljava/lang/String;)Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bP:Landroid/webkit/WebView;

    .line 3245
    new-instance v1, Lcom/appnext/ads/interstitial/InterstitialActivity$7;

    invoke-direct {v1, p0}, Lcom/appnext/ads/interstitial/InterstitialActivity$7;-><init>(Lcom/appnext/ads/interstitial/InterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 3269
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bP:Landroid/webkit/WebView;

    new-instance v1, Lcom/appnext/ads/interstitial/InterstitialActivity$8;

    invoke-direct {v1, p0}, Lcom/appnext/ads/interstitial/InterstitialActivity$8;-><init>(Lcom/appnext/ads/interstitial/InterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 3284
    :catchall_0
    const-string v0, "Internal error"

    invoke-virtual {p0, v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->onError(Ljava/lang/String;)V

    .line 3285
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/appnext/ads/interstitial/InterstitialActivity;Lcom/appnext/core/AppnextAd;Lcom/appnext/core/e$a;)V
    .locals 0

    const/4 p2, 0x0

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/appnext/ads/interstitial/InterstitialActivity;->a(Lcom/appnext/core/AppnextAd;Lcom/appnext/core/e$a;)V

    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic a(Lcom/appnext/ads/interstitial/InterstitialActivity;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->cd:Z

    return p1
.end method

.method static synthetic b(Lcom/appnext/ads/interstitial/InterstitialActivity;)Landroid/os/Handler;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic b(Lcom/appnext/ads/interstitial/InterstitialActivity;Ljava/lang/String;)V
    .locals 1

    .line 3402
    invoke-static {}, Lcom/appnext/ads/interstitial/a;->G()Lcom/appnext/ads/interstitial/a;

    invoke-static {p1}, Lcom/appnext/ads/interstitial/a;->parseAd(Ljava/lang/String;)Lcom/appnext/core/g;

    move-result-object p1

    check-cast p1, Lcom/appnext/core/AppnextAd;

    if-eqz p1, :cond_3

    .line 3406
    new-instance v0, Lcom/appnext/ads/interstitial/InterstitialAd;

    invoke-direct {v0, p1}, Lcom/appnext/ads/interstitial/InterstitialAd;-><init>(Lcom/appnext/core/AppnextAd;)V

    iput-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->aE:Lcom/appnext/core/AppnextAd;

    .line 3409
    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bR:Lcom/appnext/ads/interstitial/Interstitial;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/appnext/ads/interstitial/Interstitial;->getOnAdClickedCallback()Lcom/appnext/core/callbacks/OnAdClicked;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3410
    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bR:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {p1}, Lcom/appnext/ads/interstitial/Interstitial;->getOnAdClickedCallback()Lcom/appnext/core/callbacks/OnAdClicked;

    move-result-object p1

    invoke-interface {p1}, Lcom/appnext/core/callbacks/OnAdClicked;->adClicked()V

    .line 3412
    :cond_0
    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->aE:Lcom/appnext/core/AppnextAd;

    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bW:Lcom/appnext/core/e$a;

    invoke-virtual {p0, p1, v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->b(Lcom/appnext/core/AppnextAd;Lcom/appnext/core/e$a;)V

    .line 3413
    const-string p1, "click_event"

    invoke-direct {p0, p1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->report(Ljava/lang/String;)V

    .line 3414
    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->aE:Lcom/appnext/core/AppnextAd;

    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bS:Lcom/appnext/ads/interstitial/InterstitialAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/InterstitialAd;->getBannerID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 3416
    iget-boolean p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bY:Z

    if-nez p1, :cond_3

    .line 3417
    iput-boolean v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bY:Z

    .line 3418
    const-string p1, "interstitial_main_click"

    invoke-direct {p0, p1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->report(Ljava/lang/String;)V

    return-void

    .line 3422
    :cond_2
    iget-boolean p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bZ:Z

    if-nez p1, :cond_3

    .line 3423
    iput-boolean v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bZ:Z

    .line 3424
    const-string p1, "interstitial_suggested_click"

    invoke-direct {p0, p1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->report(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/appnext/ads/interstitial/InterstitialActivity;)Landroid/os/Handler;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lcom/appnext/ads/interstitial/InterstitialActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1341
    invoke-static {}, Lcom/appnext/ads/interstitial/c;->K()Lcom/appnext/ads/interstitial/c;

    move-result-object v0

    .line 335
    invoke-virtual {v0, p1}, Lcom/appnext/core/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 336
    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method static synthetic d(Lcom/appnext/ads/interstitial/InterstitialActivity;)V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->ba()V

    return-void
.end method

.method static synthetic d(Lcom/appnext/ads/interstitial/InterstitialActivity;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->report(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/appnext/ads/interstitial/InterstitialActivity;)Landroid/os/Handler;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private e(Ljava/lang/String;)V
    .locals 1

    .line 402
    invoke-static {}, Lcom/appnext/ads/interstitial/a;->G()Lcom/appnext/ads/interstitial/a;

    invoke-static {p1}, Lcom/appnext/ads/interstitial/a;->parseAd(Ljava/lang/String;)Lcom/appnext/core/g;

    move-result-object p1

    check-cast p1, Lcom/appnext/core/AppnextAd;

    if-nez p1, :cond_0

    return-void

    .line 406
    :cond_0
    new-instance v0, Lcom/appnext/ads/interstitial/InterstitialAd;

    invoke-direct {v0, p1}, Lcom/appnext/ads/interstitial/InterstitialAd;-><init>(Lcom/appnext/core/AppnextAd;)V

    iput-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->aE:Lcom/appnext/core/AppnextAd;

    .line 409
    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bR:Lcom/appnext/ads/interstitial/Interstitial;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/appnext/ads/interstitial/Interstitial;->getOnAdClickedCallback()Lcom/appnext/core/callbacks/OnAdClicked;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 410
    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bR:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {p1}, Lcom/appnext/ads/interstitial/Interstitial;->getOnAdClickedCallback()Lcom/appnext/core/callbacks/OnAdClicked;

    move-result-object p1

    invoke-interface {p1}, Lcom/appnext/core/callbacks/OnAdClicked;->adClicked()V

    .line 412
    :cond_1
    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->aE:Lcom/appnext/core/AppnextAd;

    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bW:Lcom/appnext/core/e$a;

    invoke-virtual {p0, p1, v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->b(Lcom/appnext/core/AppnextAd;Lcom/appnext/core/e$a;)V

    .line 413
    const-string p1, "click_event"

    invoke-direct {p0, p1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->report(Ljava/lang/String;)V

    .line 414
    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->aE:Lcom/appnext/core/AppnextAd;

    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bS:Lcom/appnext/ads/interstitial/InterstitialAd;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/InterstitialAd;->getBannerID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 416
    iget-boolean p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bY:Z

    if-nez p1, :cond_4

    .line 417
    iput-boolean v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bY:Z

    .line 418
    const-string p1, "interstitial_main_click"

    invoke-direct {p0, p1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->report(Ljava/lang/String;)V

    return-void

    .line 422
    :cond_3
    iget-boolean p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bZ:Z

    if-nez p1, :cond_4

    .line 423
    iput-boolean v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bZ:Z

    .line 424
    const-string p1, "interstitial_suggested_click"

    invoke-direct {p0, p1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->report(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method static synthetic f(Lcom/appnext/ads/interstitial/InterstitialActivity;)Landroid/os/Handler;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g(Lcom/appnext/ads/interstitial/InterstitialActivity;)V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->ba()V

    return-void
.end method

.method static synthetic h(Lcom/appnext/ads/interstitial/InterstitialActivity;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->placementID:Ljava/lang/String;

    return-object p0
.end method

.method private static hasVideo(Lcom/appnext/core/AppnextAd;)Z
    .locals 2

    .line 911
    invoke-virtual {p0}, Lcom/appnext/core/AppnextAd;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/appnext/core/AppnextAd;->getVideoUrlHigh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/appnext/core/AppnextAd;->getVideoUrl30Sec()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/appnext/core/AppnextAd;->getVideoUrlHigh30Sec()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic i(Lcom/appnext/ads/interstitial/InterstitialActivity;)Lcom/appnext/core/AppnextAd;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->aE:Lcom/appnext/core/AppnextAd;

    return-object p0
.end method

.method static synthetic j(Lcom/appnext/ads/interstitial/InterstitialActivity;)Lcom/appnext/ads/interstitial/Interstitial;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bR:Lcom/appnext/ads/interstitial/Interstitial;

    return-object p0
.end method

.method static synthetic k(Lcom/appnext/ads/interstitial/InterstitialActivity;)Landroid/os/Handler;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bV:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic l(Lcom/appnext/ads/interstitial/InterstitialActivity;)V
    .locals 3

    .line 3297
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bV:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3298
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->ce:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x1

    .line 3300
    iput-boolean v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bQ:Z

    .line 3310
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "creative"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bT:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3311
    const-string v2, "managed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3312
    :cond_1
    invoke-direct {p0, v1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bT:Ljava/lang/String;

    .line 3315
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/appnext/ads/interstitial/InterstitialActivity$10;

    invoke-direct {v1, p0}, Lcom/appnext/ads/interstitial/InterstitialActivity$10;-><init>(Lcom/appnext/ads/interstitial/InterstitialActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3320
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3322
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bP:Landroid/webkit/WebView;

    if-nez v0, :cond_3

    .line 3323
    const-string v0, "Internal error"

    invoke-virtual {p0, v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->onError(Ljava/lang/String;)V

    .line 3324
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->finish()V

    return-void

    .line 3326
    :cond_3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3327
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bP:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bP:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3328
    :cond_4
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->gl:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bP:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 3329
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bP:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3330
    iget-object p0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bP:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method private loadJS(Ljava/lang/String;)V
    .locals 1

    .line 752
    new-instance v0, Lcom/appnext/ads/interstitial/InterstitialActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/appnext/ads/interstitial/InterstitialActivity$2;-><init>(Lcom/appnext/ads/interstitial/InterstitialActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic m(Lcom/appnext/ads/interstitial/InterstitialActivity;)Lcom/appnext/ads/interstitial/InterstitialAd;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bS:Lcom/appnext/ads/interstitial/InterstitialAd;

    return-object p0
.end method

.method static synthetic n(Lcom/appnext/ads/interstitial/InterstitialActivity;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->onClose()V

    return-void
.end method

.method static synthetic o(Lcom/appnext/ads/interstitial/InterstitialActivity;)Landroid/os/Handler;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private onClose()V
    .locals 1

    .line 737
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bR:Lcom/appnext/ads/interstitial/Interstitial;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->getOnAdClosedCallback()Lcom/appnext/core/callbacks/OnAdClosed;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bR:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->getOnAdClosedCallback()Lcom/appnext/core/callbacks/OnAdClosed;

    move-result-object v0

    invoke-interface {v0}, Lcom/appnext/core/callbacks/OnAdClosed;->onAdClosed()V

    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/appnext/ads/interstitial/InterstitialActivity;)Ljava/lang/Boolean;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->autoPlay:Ljava/lang/Boolean;

    return-object p0
.end method

.method private pageFinished()V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bV:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 298
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->ce:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x1

    .line 300
    iput-boolean v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bQ:Z

    .line 310
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "creative"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bT:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 311
    const-string v2, "managed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    :cond_1
    invoke-direct {p0, v1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bT:Ljava/lang/String;

    .line 315
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/appnext/ads/interstitial/InterstitialActivity$10;

    invoke-direct {v1, p0}, Lcom/appnext/ads/interstitial/InterstitialActivity$10;-><init>(Lcom/appnext/ads/interstitial/InterstitialActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 320
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 322
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bP:Landroid/webkit/WebView;

    if-nez v0, :cond_3

    .line 323
    const-string v0, "Internal error"

    invoke-virtual {p0, v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->onError(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->finish()V

    return-void

    .line 326
    :cond_3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 327
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bP:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bP:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 328
    :cond_4
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->gl:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bP:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 329
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bP:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 330
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bP:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method private play()V
    .locals 1

    .line 726
    const-string v0, "Appnext.Layout.Video.play();"

    invoke-direct {p0, v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->loadJS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic q(Lcom/appnext/ads/interstitial/InterstitialActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->ads:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic r(Lcom/appnext/ads/interstitial/InterstitialActivity;)Landroid/os/Handler;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private report(Ljava/lang/String;)V
    .locals 10

    .line 747
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bR:Lcom/appnext/ads/interstitial/Interstitial;

    if-eqz v0, :cond_2

    .line 748
    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->getTID()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bR:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->getVID()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bR:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->getAUID()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bR:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->getPlacementID()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bR:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->getSessionId()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bS:Lcom/appnext/ads/interstitial/InterstitialAd;

    const-string v6, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/InterstitialAd;->getBannerID()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object v8, v6

    :goto_0
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bS:Lcom/appnext/ads/interstitial/InterstitialAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/InterstitialAd;->getCampaignID()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_1

    :cond_1
    move-object v9, v6

    :goto_1
    const-string v7, "current_interstitial"

    move-object v6, p1

    invoke-static/range {v1 .. v9}, Lcom/appnext/core/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic s(Lcom/appnext/ads/interstitial/InterstitialActivity;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->placementID:Ljava/lang/String;

    return-object p0
.end method

.method private stop()V
    .locals 2

    .line 730
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bP:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 732
    const-string v1, "javascript:(function() { Appnext.Layout.Video.pause();})()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic t(Lcom/appnext/ads/interstitial/InterstitialActivity;)V
    .locals 1

    .line 3726
    const-string v0, "Appnext.Layout.Video.play();"

    invoke-direct {p0, v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->loadJS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic u(Lcom/appnext/ads/interstitial/InterstitialActivity;)I
    .locals 2

    .line 55
    iget v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bU:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bU:I

    return v0
.end method

.method static synthetic v(Lcom/appnext/ads/interstitial/InterstitialActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->ce:Ljava/lang/Runnable;

    return-object p0
.end method

.method private v()V
    .locals 8

    .line 236
    :try_start_0
    invoke-static {p0}, Lcom/appnext/core/webview/AppnextWebView;->u(Landroid/content/Context;)Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->ads:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "fullscreen"

    const-string v3, "interstitial"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/appnext/core/webview/AppnextWebView;->ai(Ljava/lang/String;)Landroid/webkit/WebView;

    move-result-object v1

    iput-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bP:Landroid/webkit/WebView;

    .line 243
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bR:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v1}, Lcom/appnext/ads/interstitial/Interstitial;->getPageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->w()Lcom/appnext/core/webview/WebAppInterface;

    move-result-object v5

    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bR:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v1}, Lcom/appnext/ads/interstitial/Interstitial;->getFallback()Lcom/appnext/core/webview/a;

    move-result-object v6

    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->ads:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object v7, v3

    :goto_1
    move-object v1, p0

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/appnext/core/webview/AppnextWebView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/appnext/core/webview/WebAppInterface;Lcom/appnext/core/webview/a;Ljava/lang/String;)Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bP:Landroid/webkit/WebView;

    .line 245
    new-instance v1, Lcom/appnext/ads/interstitial/InterstitialActivity$7;

    invoke-direct {v1, p0}, Lcom/appnext/ads/interstitial/InterstitialActivity$7;-><init>(Lcom/appnext/ads/interstitial/InterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 269
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bP:Landroid/webkit/WebView;

    new-instance v1, Lcom/appnext/ads/interstitial/InterstitialActivity$8;

    invoke-direct {v1, p0}, Lcom/appnext/ads/interstitial/InterstitialActivity$8;-><init>(Lcom/appnext/ads/interstitial/InterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 284
    :catchall_0
    const-string v0, "Internal error"

    invoke-virtual {p0, v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->onError(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->finish()V

    return-void
.end method

.method static synthetic w(Lcom/appnext/ads/interstitial/InterstitialActivity;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->placementID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic x(Lcom/appnext/ads/interstitial/InterstitialActivity;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->ca:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic y(Lcom/appnext/ads/interstitial/InterstitialActivity;)Lcom/appnext/core/q;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->userAction:Lcom/appnext/core/q;

    return-object p0
.end method

.method static synthetic z(Lcom/appnext/ads/interstitial/InterstitialActivity;)Lcom/appnext/core/q;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->userAction:Lcom/appnext/core/q;

    return-object p0
.end method


# virtual methods
.method protected final b(Lcom/appnext/core/AppnextAd;Lcom/appnext/core/e$a;)V
    .locals 3

    .line 431
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->gl:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/appnext/R$drawable;->apnxt_loader:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->a(Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)V

    .line 433
    invoke-super {p0, p1, p2}, Lcom/appnext/core/AppnextActivity;->b(Lcom/appnext/core/AppnextAd;Lcom/appnext/core/e$a;)V

    return-void
.end method

.method protected final getConfig()Lcom/appnext/core/p;
    .locals 1

    .line 341
    invoke-static {}, Lcom/appnext/ads/interstitial/c;->K()Lcom/appnext/ads/interstitial/c;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->canClose:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    const-string v0, "can_close"

    invoke-direct {p0, v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    :goto_0
    const-string v0, "Appnext.Layout.destroy(\'internal\');"

    invoke-direct {p0, v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->loadJS(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 382
    iput-boolean v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->closed:Z

    .line 383
    invoke-direct {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->onClose()V

    .line 384
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->finish()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x7

    .line 101
    invoke-virtual {p0, v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->setRequestedOrientation(I)V

    .line 106
    invoke-super {p0, p1}, Lcom/appnext/core/AppnextActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    sget-object p1, Lcom/appnext/ads/interstitial/Interstitial;->currentAd:Lcom/appnext/ads/interstitial/Interstitial;

    if-nez p1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->finish()V

    return-void

    .line 112
    :cond_0
    new-instance p1, Lcom/appnext/ads/interstitial/Interstitial;

    sget-object v0, Lcom/appnext/ads/interstitial/Interstitial;->currentAd:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-direct {p1, v0}, Lcom/appnext/ads/interstitial/Interstitial;-><init>(Lcom/appnext/ads/interstitial/Interstitial;)V

    iput-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bR:Lcom/appnext/ads/interstitial/Interstitial;

    .line 115
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->getRequestedOrientation()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 116
    const-string p1, "loaded_landscape"

    invoke-direct {p0, p1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->report(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_1
    const-string p1, "loaded_portrait"

    invoke-direct {p0, p1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->report(Ljava/lang/String;)V

    .line 121
    :goto_0
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-direct {p1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->gl:Landroid/widget/RelativeLayout;

    .line 122
    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->gl:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->setContentView(Landroid/view/View;)V

    .line 123
    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->gl:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 124
    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->gl:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 125
    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->gl:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 128
    :try_start_0
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->placementID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "auto_play"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 134
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->autoPlay:Ljava/lang/Boolean;

    .line 135
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 136
    const-string p1, "auto_play_on"

    invoke-direct {p0, p1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->report(Ljava/lang/String;)V

    goto :goto_1

    .line 138
    :cond_2
    const-string p1, "auto_play_off"

    invoke-direct {p0, p1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->report(Ljava/lang/String;)V

    .line 141
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "can_close"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 142
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->canClose:Ljava/lang/Boolean;

    .line 144
    :cond_4
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "mute"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 145
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->mute:Ljava/lang/Boolean;

    .line 146
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 147
    const-string p1, "mute_on"

    invoke-direct {p0, p1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->report(Ljava/lang/String;)V

    goto :goto_2

    .line 149
    :cond_5
    const-string p1, "mute_off"

    invoke-direct {p0, p1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->report(Ljava/lang/String;)V

    .line 153
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "pview"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 154
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->gj:Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "banner"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->banner:Ljava/lang/String;

    .line 156
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "guid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->guid:Ljava/lang/String;

    .line 160
    :cond_7
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ads"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 161
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->ads:Ljava/util/ArrayList;

    .line 166
    :cond_8
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bV:Landroid/os/Handler;

    .line 170
    invoke-static {p0}, Lcom/appnext/core/webview/AppnextWebView;->u(Landroid/content/Context;)Lcom/appnext/core/webview/AppnextWebView;

    move-result-object p1

    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bR:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/appnext/ads/interstitial/InterstitialActivity$1;

    invoke-direct {v1, p0}, Lcom/appnext/ads/interstitial/InterstitialActivity$1;-><init>(Lcom/appnext/ads/interstitial/InterstitialActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/appnext/core/webview/AppnextWebView;->a(Ljava/lang/String;Lcom/appnext/core/webview/AppnextWebView$c;)V

    .line 184
    new-instance p1, Lcom/appnext/ads/interstitial/InterstitialActivity$4;

    invoke-direct {p1, p0}, Lcom/appnext/ads/interstitial/InterstitialActivity$4;-><init>(Lcom/appnext/ads/interstitial/InterstitialActivity;)V

    iput-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bW:Lcom/appnext/core/e$a;

    .line 203
    new-instance p1, Lcom/appnext/core/q;

    new-instance v0, Lcom/appnext/ads/interstitial/InterstitialActivity$5;

    invoke-direct {v0, p0}, Lcom/appnext/ads/interstitial/InterstitialActivity$5;-><init>(Lcom/appnext/ads/interstitial/InterstitialActivity;)V

    invoke-direct {p1, p0, v0}, Lcom/appnext/core/q;-><init>(Landroid/content/Context;Lcom/appnext/core/q$a;)V

    iput-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->userAction:Lcom/appnext/core/q;

    .line 225
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/appnext/ads/interstitial/InterstitialActivity$6;

    invoke-direct {v0, p0}, Lcom/appnext/ads/interstitial/InterstitialActivity$6;-><init>(Lcom/appnext/ads/interstitial/InterstitialActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 230
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 130
    :catchall_0
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 916
    invoke-super {p0}, Lcom/appnext/core/AppnextActivity;->onDestroy()V

    .line 919
    :try_start_0
    invoke-static {}, Lcom/appnext/ads/interstitial/a;->G()Lcom/appnext/ads/interstitial/a;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bR:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v0, v1}, Lcom/appnext/ads/interstitial/a;->g(Lcom/appnext/core/Ad;)V

    .line 920
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bR:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->destroy()V

    const/4 v0, 0x0

    .line 921
    iput-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bR:Lcom/appnext/ads/interstitial/Interstitial;

    .line 922
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bV:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 923
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 924
    :cond_0
    iput-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bV:Landroid/os/Handler;

    .line 925
    iput-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->ce:Ljava/lang/Runnable;

    .line 926
    iput-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bS:Lcom/appnext/ads/interstitial/InterstitialAd;

    .line 928
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bP:Landroid/webkit/WebView;

    if-eqz v1, :cond_2

    .line 929
    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 930
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bP:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 931
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bP:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bP:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 932
    :cond_1
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bP:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 933
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bP:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 934
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bP:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 935
    iput-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bP:Landroid/webkit/WebView;

    .line 938
    :cond_2
    invoke-static {p0}, Lcom/appnext/core/webview/AppnextWebView;->u(Landroid/content/Context;)Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->w()Lcom/appnext/core/webview/WebAppInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appnext/core/webview/AppnextWebView;->a(Lcom/appnext/core/webview/WebAppInterface;)V

    .line 939
    iput-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bX:Lcom/appnext/core/webview/WebAppInterface;

    .line 941
    iput-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bW:Lcom/appnext/core/e$a;

    .line 943
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->aF:Lcom/appnext/ads/b;

    if-eqz v1, :cond_3

    .line 944
    invoke-virtual {v1, p0}, Lcom/appnext/ads/b;->a(Landroid/content/Context;)V

    .line 945
    iput-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->aF:Lcom/appnext/ads/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    return-void
.end method

.method protected final onError(Ljava/lang/String;)V
    .locals 1

    .line 392
    new-instance v0, Lcom/appnext/ads/interstitial/InterstitialActivity$11;

    invoke-direct {v0, p0, p1}, Lcom/appnext/ads/interstitial/InterstitialActivity$11;-><init>(Lcom/appnext/ads/interstitial/InterstitialActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 364
    invoke-super {p0}, Lcom/appnext/core/AppnextActivity;->onPause()V

    .line 366
    iget-boolean v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->closed:Z

    if-nez v0, :cond_0

    .line 1730
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bP:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1732
    const-string v1, "javascript:(function() { Appnext.Layout.Video.pause();})()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 346
    invoke-super {p0}, Lcom/appnext/core/AppnextActivity;->onResume()V

    .line 348
    iget-boolean v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->cd:Z

    if-eqz v0, :cond_0

    .line 349
    invoke-direct {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->onClose()V

    .line 350
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->finish()V

    return-void

    .line 354
    :cond_0
    iget-boolean v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bQ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->autoPlay:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1726
    const-string v0, "Appnext.Layout.Video.play();"

    invoke-direct {p0, v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->loadJS(Ljava/lang/String;)V

    .line 358
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bP:Landroid/webkit/WebView;

    const-string v1, "javascript:(function() { try{Appnext.countToClose();}catch(e){}})()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method protected final w()Lcom/appnext/core/webview/WebAppInterface;
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bX:Lcom/appnext/core/webview/WebAppInterface;

    if-nez v0, :cond_0

    .line 438
    new-instance v0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;

    invoke-direct {v0, p0}, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;-><init>(Lcom/appnext/ads/interstitial/InterstitialActivity;)V

    iput-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bX:Lcom/appnext/core/webview/WebAppInterface;

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bX:Lcom/appnext/core/webview/WebAppInterface;

    return-object v0
.end method

.method protected final declared-synchronized x()V
    .locals 7

    monitor-enter p0

    .line 764
    :try_start_0
    invoke-static {}, Lcom/appnext/ads/interstitial/a;->G()Lcom/appnext/ads/interstitial/a;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bR:Lcom/appnext/ads/interstitial/Interstitial;

    iget-object v2, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bT:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Lcom/appnext/ads/interstitial/a;->b(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 767
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->finish()V

    .line 768
    const-string v0, "No Ads"

    invoke-virtual {p0, v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->onError(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    monitor-exit p0

    return-void

    .line 771
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/appnext/ads/interstitial/a;->G()Lcom/appnext/ads/interstitial/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appnext/ads/interstitial/a;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 774
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->finish()V

    .line 775
    const-string v0, "No Ads"

    invoke-virtual {p0, v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->onError(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 776
    monitor-exit p0

    return-void

    .line 778
    :cond_1
    :try_start_2
    const-string v2, "\u2028"

    const-string v3, "\\u2028"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 779
    const-string v2, "\u2029"

    const-string v3, "\\u2029"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 780
    iput-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->ca:Ljava/lang/String;

    .line 781
    new-instance v2, Lcom/appnext/ads/interstitial/InterstitialAd;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appnext/core/AppnextAd;

    invoke-direct {v2, v4}, Lcom/appnext/ads/interstitial/InterstitialAd;-><init>(Lcom/appnext/core/AppnextAd;)V

    iput-object v2, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bS:Lcom/appnext/ads/interstitial/InterstitialAd;

    .line 782
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 783
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->y()Lorg/json/JSONObject;

    move-result-object v2

    .line 784
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appnext/core/AppnextAd;

    .line 1911
    invoke-virtual {v4}, Lcom/appnext/core/AppnextAd;->getVideoUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/appnext/core/AppnextAd;->getVideoUrlHigh()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/appnext/core/AppnextAd;->getVideoUrl30Sec()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/appnext/core/AppnextAd;->getVideoUrlHigh30Sec()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 787
    :cond_2
    const-string v4, "remote_auto_play"

    const-string v5, "false"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 785
    :cond_3
    :goto_0
    const-string v4, "remote_auto_play"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->autoPlay:Ljava/lang/Boolean;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    move v6, v3

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 790
    :goto_2
    new-instance v4, Lcom/appnext/ads/interstitial/InterstitialAd;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appnext/core/AppnextAd;

    invoke-direct {v4, v0}, Lcom/appnext/ads/interstitial/InterstitialAd;-><init>(Lcom/appnext/core/AppnextAd;)V

    .line 791
    invoke-virtual {v4}, Lcom/appnext/ads/interstitial/InterstitialAd;->getButtonText()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 792
    invoke-virtual {v4}, Lcom/appnext/ads/interstitial/InterstitialAd;->getAdPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/appnext/core/f;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 793
    const-string v0, "existing_button_text"

    invoke-direct {p0, v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 795
    :cond_5
    const-string v0, "new_button_text"

    invoke-direct {p0, v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 798
    :cond_6
    invoke-virtual {v4}, Lcom/appnext/ads/interstitial/InterstitialAd;->getButtonText()Ljava/lang/String;

    move-result-object v0

    .line 800
    :goto_3
    const-string v3, "b_title"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Appnext.setParams("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ");"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->loadJS(Ljava/lang/String;)V

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Appnext.loadInterstitial("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->loadJS(Ljava/lang/String;)V

    .line 809
    invoke-static {}, Lcom/appnext/ads/interstitial/a;->G()Lcom/appnext/ads/interstitial/a;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bS:Lcom/appnext/ads/interstitial/InterstitialAd;

    invoke-virtual {v1}, Lcom/appnext/ads/interstitial/InterstitialAd;->getBannerID()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/appnext/ads/interstitial/Interstitial;->currentAd:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v0, v1, v2}, Lcom/appnext/ads/interstitial/a;->a(Ljava/lang/String;Lcom/appnext/core/Ad;)V

    .line 810
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/appnext/ads/interstitial/InterstitialActivity$3;

    invoke-direct {v1, p0}, Lcom/appnext/ads/interstitial/InterstitialActivity$3;-><init>(Lcom/appnext/ads/interstitial/InterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 822
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 818
    :try_start_3
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->finish()V

    .line 819
    const-string v1, "Internal error"

    invoke-virtual {p0, v1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->onError(Ljava/lang/String;)V

    .line 821
    invoke-static {v0}, Lcom/appnext/core/f;->b(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 823
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final y()Lorg/json/JSONObject;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 826
    const-string v0, "icon_color"

    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bR:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v1}, Lcom/appnext/ads/interstitial/Interstitial;->getButtonColor()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "button_color"

    invoke-direct {p0, v1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bR:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v1}, Lcom/appnext/ads/interstitial/Interstitial;->getButtonColor()Ljava/lang/String;

    move-result-object v1

    .line 827
    :goto_0
    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 828
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 829
    :cond_1
    iget-object v3, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->autoPlay:Ljava/lang/Boolean;

    const-string v5, "auto_play"

    if-nez v3, :cond_2

    .line 830
    invoke-direct {p0, v5}, Lcom/appnext/ads/interstitial/InterstitialActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->autoPlay:Ljava/lang/Boolean;

    .line 831
    :cond_2
    iget-object v3, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->mute:Ljava/lang/Boolean;

    const-string v6, "mute"

    if-nez v3, :cond_3

    .line 832
    invoke-direct {p0, v6}, Lcom/appnext/ads/interstitial/InterstitialActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->mute:Ljava/lang/Boolean;

    .line 834
    :cond_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 835
    const-string v7, "id"

    iget-object v8, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->placementID:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 836
    iget-object v7, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bR:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v7}, Lcom/appnext/ads/interstitial/Interstitial;->getCategories()Ljava/lang/String;

    move-result-object v7

    const-string v8, "cat"

    invoke-virtual {v3, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 837
    iget-object v7, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bR:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v7}, Lcom/appnext/ads/interstitial/Interstitial;->getPostback()Ljava/lang/String;

    move-result-object v7

    const-string v8, "pbk"

    invoke-virtual {v3, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 839
    const-string v7, "b_color"

    invoke-virtual {v3, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 840
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->ads:Ljava/util/ArrayList;

    const-string v7, "show_desc"

    if-nez v1, :cond_6

    .line 841
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bR:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v1}, Lcom/appnext/ads/interstitial/Interstitial;->getSkipText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v8, "skip_title"

    if-eqz v1, :cond_4

    invoke-direct {p0, v8}, Lcom/appnext/ads/interstitial/InterstitialActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bR:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v1}, Lcom/appnext/ads/interstitial/Interstitial;->getSkipText()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 842
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->ads:Ljava/util/ArrayList;

    const-string v8, "pview"

    if-eqz v1, :cond_5

    const-string v1, "false"

    goto :goto_2

    :cond_5
    invoke-direct {p0, v8}, Lcom/appnext/ads/interstitial/InterstitialActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v3, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 843
    const-string v1, "video_length"

    invoke-direct {p0, v1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 844
    const-string v1, "min_internet_connection"

    invoke-direct {p0, v1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 845
    const-string v1, "min_internet_connection_video"

    invoke-direct {p0, v1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 846
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->mute:Ljava/lang/Boolean;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 847
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->autoPlay:Ljava/lang/Boolean;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 848
    const-string v1, "remove_poster_on_auto_play"

    invoke-direct {p0, v1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 849
    const-string v1, "show_rating"

    invoke-direct {p0, v1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 850
    invoke-direct {p0, v7}, Lcom/appnext/ads/interstitial/InterstitialActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 851
    const-string v1, "creative"

    iget-object v5, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bT:Ljava/lang/String;

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 852
    const-string v1, "remote_auto_play"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 855
    :cond_6
    const-string v1, "stp_flag"

    invoke-direct {p0, v1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 856
    const-string v1, "ext"

    const-string v5, "t"

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 857
    const-string v1, "dct"

    invoke-static {p0}, Lcom/appnext/core/f;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 858
    const-string v1, "did"

    iget-object v5, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->cc:Ljava/lang/String;

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 859
    const-string v1, "devn"

    invoke-static {}, Lcom/appnext/core/f;->be()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 860
    const-string v1, "dosv"

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 861
    const-string v1, "dds"

    const-string v5, "0"

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 863
    const-string v1, "urlApp_protection"

    invoke-direct {p0, v1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 864
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bR:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v1}, Lcom/appnext/ads/interstitial/Interstitial;->getVID()Ljava/lang/String;

    move-result-object v1

    const-string v5, "vid"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 865
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bR:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v1}, Lcom/appnext/ads/interstitial/Interstitial;->getTID()Ljava/lang/String;

    move-result-object v1

    const-string v5, "tid"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 866
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bR:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v1}, Lcom/appnext/ads/interstitial/Interstitial;->getAUID()Ljava/lang/String;

    move-result-object v1

    const-string v5, "auid"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 867
    const-string v1, "osid"

    const-string v5, "100"

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 868
    const-string v1, "ads_type"

    const-string v5, "interstitial"

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 869
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bS:Lcom/appnext/ads/interstitial/InterstitialAd;

    invoke-virtual {v1}, Lcom/appnext/ads/interstitial/InterstitialAd;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v5, "country"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 870
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bS:Lcom/appnext/ads/interstitial/InterstitialAd;

    .line 2341
    invoke-static {}, Lcom/appnext/ads/interstitial/c;->K()Lcom/appnext/ads/interstitial/c;

    move-result-object v5

    .line 870
    invoke-static {v1, v5}, Lcom/appnext/core/k;->a(Lcom/appnext/core/AppnextAd;Lcom/appnext/core/p;)Z

    move-result v1

    const-string v5, "gdpr"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 871
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lcom/appnext/core/a/b;->bp()Lcom/appnext/core/a/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appnext/core/a/b;->bq()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "lang_settings"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 872
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bR:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v1}, Lcom/appnext/ads/interstitial/Interstitial;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 873
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 874
    :cond_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 875
    :cond_8
    const-string v5, "lang"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 876
    new-instance v1, Lorg/json/JSONArray;

    const-string v5, "S1"

    invoke-direct {p0, v5}, Lcom/appnext/ads/interstitial/InterstitialActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "tem"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 877
    const-string v1, "clickType_A"

    invoke-direct {p0, v1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "click_x"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 879
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 880
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 883
    :cond_9
    :try_start_0
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bS:Lcom/appnext/ads/interstitial/InterstitialAd;

    invoke-virtual {v1}, Lcom/appnext/ads/interstitial/InterstitialAd;->getImageURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appnext/core/f;->Y(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 884
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 885
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v1, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 886
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    .line 887
    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    .line 888
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "data:image/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bS:Lcom/appnext/ads/interstitial/InterstitialAd;

    invoke-virtual {v7}, Lcom/appnext/ads/interstitial/InterstitialAd;->getImageURL()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/appnext/ads/interstitial/InterstitialActivity;->bS:Lcom/appnext/ads/interstitial/InterstitialAd;

    invoke-virtual {v8}, Lcom/appnext/ads/interstitial/InterstitialAd;->getImageURL()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2e

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ";base64,"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 891
    :try_start_1
    invoke-static {v1}, Landroidx/palette/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/palette/graphics/Palette$Builder;->generate()Landroidx/palette/graphics/Palette;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/palette/graphics/Palette;->getVibrantSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 893
    invoke-virtual {v1}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result v1

    .line 2907
    const-string v5, "#%06X"

    const v6, 0xffffff

    and-int/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 893
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 895
    :cond_a
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 898
    :catchall_0
    :try_start_2
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 900
    :goto_3
    const-string v0, "icon_src"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-object v3
.end method
