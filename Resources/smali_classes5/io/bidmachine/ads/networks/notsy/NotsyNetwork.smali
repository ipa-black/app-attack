.class Lio/bidmachine/ads/networks/notsy/NotsyNetwork;
.super Ljava/lang/Object;
.source "NotsyNetwork.java"


# static fields
.field private static final isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/bidmachine/ads/networks/notsy/NotsyNetwork;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static init(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Lio/bidmachine/AdsFormat;",
            "Ljava/util/List<",
            "Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;",
            ">;>;)V"
        }
    .end annotation

    .line 30
    sget-object v0, Lio/bidmachine/ads/networks/notsy/NotsyNetwork;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 34
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :catchall_0
    invoke-static {p0, p1}, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->setup(Landroid/content/Context;Ljava/util/Map;)V

    .line 39
    invoke-static {}, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->startLoading()V

    return-void
.end method

.method private static isGAMClassPresent()Z
    .locals 1

    .line 120
    :try_start_0
    const-string v0, "com.google.android.gms.ads.MobileAds"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 121
    const-string v0, "com.google.android.gms.ads.admanager.AdManagerAdRequest$Builder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 122
    const-string v0, "com.google.android.gms.ads.admanager.AdManagerAdView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 123
    const-string v0, "com.google.android.gms.ads.admanager.AdManagerInterstitialAd"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 124
    const-string v0, "com.google.android.gms.ads.rewarded.RewardedAd"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isGAMMetaDataPresent(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 105
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 107
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_0

    return v0

    .line 111
    :cond_0
    const-string v1, "com.google.android.gms.ads.APPLICATION_ID"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 112
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method static isGAMPresent(Landroid/content/Context;)Z
    .locals 0

    .line 47
    invoke-static {p0}, Lio/bidmachine/ads/networks/notsy/NotsyNetwork;->isGAMMetaDataPresent(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lio/bidmachine/ads/networks/notsy/NotsyNetwork;->isGAMClassPresent()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isInitialized()Z
    .locals 1

    .line 43
    sget-object v0, Lio/bidmachine/ads/networks/notsy/NotsyNetwork;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method static loadBanner(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAdListener;)V
    .locals 1

    .line 61
    invoke-static {p0}, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->getNotsyAd(Lio/bidmachine/NetworkAdUnit;)Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;

    move-result-object p0

    .line 62
    instance-of v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->setAdPresentListener(Lio/bidmachine/ads/networks/notsy/InternalNotsyAdPresentListener;)V

    .line 64
    check-cast p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd;

    invoke-interface {p1, p0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAdListener;->onAdLoaded(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {p1, p0}, Lio/bidmachine/ads/networks/notsy/NotsyNetwork;->onAdLoadFailed(Lio/bidmachine/ads/networks/notsy/InternalNotsyAdLoadListener;Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V

    :goto_0
    return-void
.end method

.method static loadInterstitial(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAdListener;)V
    .locals 1

    .line 72
    invoke-static {p0}, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->getNotsyAd(Lio/bidmachine/NetworkAdUnit;)Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;

    move-result-object p0

    .line 73
    instance-of v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->setAdPresentListener(Lio/bidmachine/ads/networks/notsy/InternalNotsyAdPresentListener;)V

    .line 75
    check-cast p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;

    invoke-interface {p1, p0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAdListener;->onAdLoaded(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {p1, p0}, Lio/bidmachine/ads/networks/notsy/NotsyNetwork;->onAdLoadFailed(Lio/bidmachine/ads/networks/notsy/InternalNotsyAdLoadListener;Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V

    :goto_0
    return-void
.end method

.method static loadRewarded(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAdListener;)V
    .locals 1

    .line 83
    invoke-static {p0}, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->getNotsyAd(Lio/bidmachine/NetworkAdUnit;)Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;

    move-result-object p0

    .line 84
    instance-of v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->setAdPresentListener(Lio/bidmachine/ads/networks/notsy/InternalNotsyAdPresentListener;)V

    .line 86
    check-cast p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;

    invoke-interface {p1, p0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAdListener;->onAdLoaded(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {p1, p0}, Lio/bidmachine/ads/networks/notsy/NotsyNetwork;->onAdLoadFailed(Lio/bidmachine/ads/networks/notsy/InternalNotsyAdLoadListener;Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V

    :goto_0
    return-void
.end method

.method private static onAdLoadFailed(Lio/bidmachine/ads/networks/notsy/InternalNotsyAdLoadListener;Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ads/networks/notsy/InternalNotsyAdLoadListener<",
            "*>;",
            "Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 96
    :try_start_0
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :catchall_0
    :cond_0
    invoke-static {}, Lio/bidmachine/utils/BMError;->noFill()Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAdLoadListener;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method static reserveNotsyAd(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/notsy/InternalNotsyData;)Z
    .locals 0

    .line 52
    invoke-static {p0, p1}, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->reserveNotsyAd(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/notsy/InternalNotsyData;)Z

    move-result p0

    return p0
.end method

.method static unReserveNotsyAd(Lio/bidmachine/NetworkAdUnit;)V
    .locals 0

    .line 56
    invoke-static {p0}, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->unReserveNotsyAd(Lio/bidmachine/NetworkAdUnit;)V

    return-void
.end method
