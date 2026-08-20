.class public Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;
.super Ljava/lang/Object;
.source "BannerJavascriptInterface.java"


# static fields
.field static final JS_INTERFACE_NAME:Ljava/lang/String; = "AppsgeyserBanner"


# instance fields
.field private final adView:Lcom/appsgeyser/sdk/ads/AdView;

.field private final adsLoader:Lcom/appsgeyser/sdk/ads/AdsLoader;

.field private androidId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/appsgeyser/sdk/ads/AdView;Lcom/appsgeyser/sdk/ads/AdsLoader;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    .line 22
    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;->adsLoader:Lcom/appsgeyser/sdk/ads/AdsLoader;

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;)Lcom/appsgeyser/sdk/ads/AdView;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;)Lcom/appsgeyser/sdk/ads/AdsLoader;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;->adsLoader:Lcom/appsgeyser/sdk/ads/AdsLoader;

    return-object p0
.end method


# virtual methods
.method public addJs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 27
    new-instance v0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$1;-><init>(Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {p1, v0}, Lcom/appsgeyser/sdk/ads/AdView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public checkSecurityCode(Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getAppGuid()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsgeyser/sdk/hasher/Hasher;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public close()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 44
    new-instance v0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$2;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$2;-><init>(Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;)V

    .line 49
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/appsgeyser/sdk/ads/AdView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public forceOpenInNativeBrowser(Z)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;->adsLoader:Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/ads/AdsLoader;->forceOpenInNativeBrowser(Z)V

    return-void
.end method

.method public getAndroidId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;->checkSecurityCode(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;->androidId:Ljava/lang/String;

    return-object p1

    .line 70
    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public proceedClick(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;->adsLoader:Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/ads/AdsLoader;->proceedClick(Ljava/lang/String;)V

    return-void
.end method

.method public reload(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 75
    new-instance v0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$4;

    invoke-direct {v0, p0, p1}, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$4;-><init>(Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {p1, v0}, Lcom/appsgeyser/sdk/ads/AdView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setClickUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 54
    new-instance v0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface$3;-><init>(Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {p1, v0}, Lcom/appsgeyser/sdk/ads/AdView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setUniqId(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/ads/AdView;->setUniqueId(Ljava/lang/String;)V

    return-void
.end method
