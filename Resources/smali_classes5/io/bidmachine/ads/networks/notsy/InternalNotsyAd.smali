.class abstract Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;
.super Ljava/lang/Object;
.source "InternalNotsyAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Factory;,
        Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;
    }
.end annotation


# instance fields
.field private final adUnit:Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;

.field private status:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

.field private final statusLock:Ljava/lang/Object;

.field private weakAdPresentListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/bidmachine/ads/networks/notsy/InternalNotsyAdPresentListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->statusLock:Ljava/lang/Object;

    .line 27
    sget-object v0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;->Idle:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

    iput-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->status:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

    .line 31
    iput-object p1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->adUnit:Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;

    return-void
.end method


# virtual methods
.method createAdManagerAdRequest()Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;
    .locals 5

    .line 116
    new-instance v0, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;-><init>()V

    .line 117
    iget-object v1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->adUnit:Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;

    invoke-virtual {v1}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;->getCustomTargeting()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 118
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 119
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 120
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->build()Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .line 39
    new-instance v0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract destroyAd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method getAdPresentListener()Lio/bidmachine/ads/networks/notsy/InternalNotsyAdPresentListener;
    .locals 1

    .line 100
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->weakAdPresentListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAdPresentListener;

    return-object v0
.end method

.method getAdUnit()Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;
    .locals 1

    .line 76
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->adUnit:Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;

    return-object v0
.end method

.method getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->getInternalNotsyData()Lio/bidmachine/ads/networks/notsy/InternalNotsyData;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyData;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAdsFormat()Lio/bidmachine/AdsFormat;
    .locals 1

    .line 81
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->adUnit:Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;

    invoke-virtual {v0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;->getAdsFormat()Lio/bidmachine/AdsFormat;

    move-result-object v0

    return-object v0
.end method

.method getInternalNotsyData()Lio/bidmachine/ads/networks/notsy/InternalNotsyData;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->getAdUnit()Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;->getInternalNotsyData()Lio/bidmachine/ads/networks/notsy/InternalNotsyData;

    move-result-object v0

    return-object v0
.end method

.method getScope()F
    .locals 1

    .line 95
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->getInternalNotsyData()Lio/bidmachine/ads/networks/notsy/InternalNotsyData;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyData;->getScore()F

    move-result v0

    return v0
.end method

.method isLoaded()Z
    .locals 3

    .line 110
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->statusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->status:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

    sget-object v2, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;->Loaded:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 112
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic lambda$destroy$0$io-bidmachine-ads-networks-notsy-InternalNotsyAd()V
    .locals 2

    .line 41
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->weakAdPresentListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->weakAdPresentListener:Ljava/lang/ref/WeakReference;

    .line 45
    :cond_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->status:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

    sget-object v1, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;->Shown:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->onNotsyAdDestroy(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 47
    invoke-static {v0}, Lio/bidmachine/core/AdapterLogger;->logThrowable(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$load$1$io-bidmachine-ads-networks-notsy-InternalNotsyAd(Landroid/content/Context;Lio/bidmachine/ads/networks/notsy/InternalLoadListener;)V
    .locals 1

    .line 63
    :try_start_0
    sget-object v0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;->Loading:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->setStatus(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;)V

    .line 65
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->loadAd(Landroid/content/Context;Lio/bidmachine/ads/networks/notsy/InternalLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 67
    invoke-static {p1}, Lio/bidmachine/core/AdapterLogger;->logThrowable(Ljava/lang/Throwable;)V

    .line 68
    const-string p1, "Exception when loading ad object"

    .line 69
    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    .line 68
    invoke-interface {p2, p0, p1}, Lio/bidmachine/ads/networks/notsy/InternalLoadListener;->onAdLoadFailed(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;Lio/bidmachine/utils/BMError;)V

    :goto_0
    return-void
.end method

.method final load(Landroid/content/Context;Lio/bidmachine/ads/networks/notsy/InternalLoadListener;)V
    .locals 1

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 61
    new-instance v0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;Landroid/content/Context;Lio/bidmachine/ads/networks/notsy/InternalLoadListener;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract loadAd(Landroid/content/Context;Lio/bidmachine/ads/networks/notsy/InternalLoadListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public setAdPresentListener(Lio/bidmachine/ads/networks/notsy/InternalNotsyAdPresentListener;)V
    .locals 1

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->weakAdPresentListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method setStatus(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->statusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_0
    iput-object p1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->status:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

    .line 106
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
