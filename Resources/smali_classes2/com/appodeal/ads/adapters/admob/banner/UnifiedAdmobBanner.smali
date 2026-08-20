.class public abstract Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner;
.super Lcom/appodeal/ads/unified/UnifiedBanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdViewType:",
        "Lcom/google/android/gms/ads/BaseAdView;",
        "AdRequestType:",
        "Lcom/google/android/gms/ads/AdRequest;",
        ">",
        "Lcom/appodeal/ads/unified/UnifiedBanner<",
        "Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams<",
        "TAdRequestType;>;>;"
    }
.end annotation


# instance fields
.field private adView:Lcom/google/android/gms/ads/BaseAdView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdViewType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedBanner;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createAdView(Landroid/content/Context;)Lcom/google/android/gms/ads/BaseAdView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TAdViewType;"
        }
    .end annotation
.end method

.method public bridge synthetic load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedBannerParams;

    check-cast p3, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedBannerCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner;->load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedBannerParams;Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;Lcom/appodeal/ads/unified/UnifiedBannerCallback;)V

    return-void
.end method

.method public load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedBannerParams;Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;Lcom/appodeal/ads/unified/UnifiedBannerCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;",
            "Lcom/appodeal/ads/unified/UnifiedBannerParams;",
            "Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams<",
            "TAdRequestType;>;",
            "Lcom/appodeal/ads/unified/UnifiedBannerCallback;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner;->createAdView(Landroid/content/Context;)Lcom/google/android/gms/ads/BaseAdView;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner;->adView:Lcom/google/android/gms/ads/BaseAdView;

    iget-object v1, p3, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/BaseAdView;->setAdUnitId(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/appodeal/ads/unified/UnifiedAdUtils;->getScreenHeightInDp(Landroid/content/Context;)F

    move-result v0

    iget-boolean v1, p3, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;->useAdaptiveBanner:Z

    if-eqz v1, :cond_0

    invoke-interface {p2, p1}, Lcom/appodeal/ads/unified/UnifiedBannerParams;->useSmartBanners(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2, p1}, Lcom/appodeal/ads/unified/UnifiedBannerParams;->getMaxWidth(Landroid/content/Context;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/gms/ads/AdSize;->getCurrentOrientationAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;

    move-result-object p1

    iget-object p2, p0, Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner;->adView:Lcom/google/android/gms/ads/BaseAdView;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/BaseAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result p1

    goto :goto_1

    :cond_0
    iget-boolean v1, p3, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;->useSmartBanner:Z

    const/16 v2, 0x5a

    const/16 v3, 0x32

    if-eqz v1, :cond_2

    invoke-interface {p2, p1}, Lcom/appodeal/ads/unified/UnifiedBannerParams;->useSmartBanners(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner;->adView:Lcom/google/android/gms/ads/BaseAdView;

    sget-object p2, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/BaseAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    const/high16 p1, 0x43c80000    # 400.0f

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_1

    const/16 p1, 0x20

    goto :goto_1

    :cond_1
    const/high16 p1, 0x44340000    # 720.0f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_4

    goto :goto_0

    :cond_2
    invoke-interface {p2, p1}, Lcom/appodeal/ads/unified/UnifiedBannerParams;->needLeaderBoard(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner;->adView:Lcom/google/android/gms/ads/BaseAdView;

    sget-object p2, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/BaseAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    :goto_0
    move p1, v2

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner;->adView:Lcom/google/android/gms/ads/BaseAdView;

    sget-object p2, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/BaseAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    :cond_4
    move p1, v3

    :goto_1
    iget-object p2, p0, Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner;->adView:Lcom/google/android/gms/ads/BaseAdView;

    new-instance v0, Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner$a;

    iget-object v1, p0, Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner;->adView:Lcom/google/android/gms/ads/BaseAdView;

    invoke-direct {v0, p0, p4, v1, p1}, Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner$a;-><init>(Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner;Lcom/appodeal/ads/unified/UnifiedBannerCallback;Lcom/google/android/gms/ads/BaseAdView;I)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/BaseAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    iget-object p1, p0, Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner;->adView:Lcom/google/android/gms/ads/BaseAdView;

    iget-object p2, p3, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;->request:Lcom/google/android/gms/ads/AdRequest;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/BaseAdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner;->adView:Lcom/google/android/gms/ads/BaseAdView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/BaseAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner;->adView:Lcom/google/android/gms/ads/BaseAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/BaseAdView;->destroy()V

    iput-object v1, p0, Lcom/appodeal/ads/adapters/admob/banner/UnifiedAdmobBanner;->adView:Lcom/google/android/gms/ads/BaseAdView;

    :cond_0
    return-void
.end method
