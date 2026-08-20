.class public abstract Lio/bidmachine/measurer/OMSDKAdMeasurer;
.super Ljava/lang/Object;
.source "OMSDKAdMeasurer.java"

# interfaces
.implements Lcom/explorestack/iab/measurer/AdMeasurer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdView:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/explorestack/iab/measurer/AdMeasurer<",
        "TAdView;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdMeasurer"


# instance fields
.field private adEvents:Lcom/iab/omid/library/appodeal/adsession/AdEvents;

.field private adSession:Lcom/iab/omid/library/appodeal/adsession/AdSession;

.field private adViewWeak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/bidmachine/measurer/OMSDKAdMeasurer;)Lcom/iab/omid/library/appodeal/adsession/AdSession;
    .locals 0

    .line 18
    iget-object p0, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer;->adSession:Lcom/iab/omid/library/appodeal/adsession/AdSession;

    return-object p0
.end method

.method static synthetic access$100(Lio/bidmachine/measurer/OMSDKAdMeasurer;Lcom/iab/omid/library/appodeal/adsession/AdSession;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->registerAdView(Lcom/iab/omid/library/appodeal/adsession/AdSession;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$202(Lio/bidmachine/measurer/OMSDKAdMeasurer;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 18
    iput-object p1, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer;->adViewWeak:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$300(Lio/bidmachine/measurer/OMSDKAdMeasurer;)Lcom/iab/omid/library/appodeal/adsession/AdEvents;
    .locals 0

    .line 18
    iget-object p0, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer;->adEvents:Lcom/iab/omid/library/appodeal/adsession/AdEvents;

    return-object p0
.end method

.method static synthetic access$302(Lio/bidmachine/measurer/OMSDKAdMeasurer;Lcom/iab/omid/library/appodeal/adsession/AdEvents;)Lcom/iab/omid/library/appodeal/adsession/AdEvents;
    .locals 0

    .line 18
    iput-object p1, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer;->adEvents:Lcom/iab/omid/library/appodeal/adsession/AdEvents;

    return-object p1
.end method

.method private registerAdView(Lcom/iab/omid/library/appodeal/adsession/AdSession;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 84
    invoke-virtual {p1, p2}, Lcom/iab/omid/library/appodeal/adsession/AdSession;->registerAdView(Landroid/view/View;)V

    .line 86
    const-string p1, "registerAdView"

    invoke-virtual {p0, p1}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->log(Ljava/lang/String;)V

    return-void
.end method

.method private registerViews(Lcom/iab/omid/library/appodeal/adsession/AdSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer;->adViewWeak:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 76
    invoke-direct {p0, p1, v0}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->registerAdView(Lcom/iab/omid/library/appodeal/adsession/AdSession;Landroid/view/View;)V

    .line 78
    :cond_1
    iput-object v1, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer;->adViewWeak:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 107
    new-instance v0, Lio/bidmachine/measurer/OMSDKAdMeasurer$3;

    invoke-direct {v0, p0}, Lio/bidmachine/measurer/OMSDKAdMeasurer$3;-><init>(Lio/bidmachine/measurer/OMSDKAdMeasurer;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected isSessionPrepared()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer;->adSession:Lcom/iab/omid/library/appodeal/adsession/AdSession;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1

    .line 128
    const-string v0, "AdMeasurer"

    invoke-static {v0, p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract onAdLoaded(Lcom/iab/omid/library/appodeal/adsession/AdEvents;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public onAdShown()V
    .locals 1

    .line 90
    new-instance v0, Lio/bidmachine/measurer/OMSDKAdMeasurer$2;

    invoke-direct {v0, p0}, Lio/bidmachine/measurer/OMSDKAdMeasurer$2;-><init>(Lio/bidmachine/measurer/OMSDKAdMeasurer;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected prepareAdSession(Lcom/iab/omid/library/appodeal/adsession/AdSession;)V
    .locals 1

    .line 60
    :try_start_0
    iput-object p1, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer;->adSession:Lcom/iab/omid/library/appodeal/adsession/AdSession;

    .line 61
    invoke-static {p1}, Lcom/iab/omid/library/appodeal/adsession/AdEvents;->createAdEvents(Lcom/iab/omid/library/appodeal/adsession/AdSession;)Lcom/iab/omid/library/appodeal/adsession/AdEvents;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer;->adEvents:Lcom/iab/omid/library/appodeal/adsession/AdEvents;

    .line 62
    invoke-direct {p0, p1}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->registerViews(Lcom/iab/omid/library/appodeal/adsession/AdSession;)V

    .line 63
    invoke-virtual {p1}, Lcom/iab/omid/library/appodeal/adsession/AdSession;->start()V

    .line 64
    iget-object p1, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer;->adEvents:Lcom/iab/omid/library/appodeal/adsession/AdEvents;

    invoke-virtual {p0, p1}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->onAdLoaded(Lcom/iab/omid/library/appodeal/adsession/AdEvents;)V

    .line 66
    const-string p1, "prepareAdSession"

    invoke-virtual {p0, p1}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 68
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public registerAdContainer(Landroid/view/ViewGroup;)V
    .locals 1

    .line 29
    new-instance v0, Lio/bidmachine/measurer/OMSDKAdMeasurer$1;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/measurer/OMSDKAdMeasurer$1;-><init>(Lio/bidmachine/measurer/OMSDKAdMeasurer;Landroid/view/ViewGroup;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerAdView(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdView;)V"
        }
    .end annotation

    return-void
.end method
