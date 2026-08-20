.class Lio/bidmachine/ads/networks/notsy/NotsyBanner;
.super Lio/bidmachine/unified/UnifiedBannerAd;
.source "NotsyBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/notsy/NotsyBanner$Listener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private listener:Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAdListener;

.field private notsyBannerAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lio/bidmachine/unified/UnifiedBannerAd;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lio/bidmachine/ads/networks/notsy/NotsyBanner;Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd;)Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd;
    .locals 0

    .line 14
    iput-object p1, p0, Lio/bidmachine/ads/networks/notsy/NotsyBanner;->notsyBannerAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd;

    return-object p1
.end method


# virtual methods
.method public bridge synthetic load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdCallback;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 14
    check-cast p2, Lio/bidmachine/unified/UnifiedBannerAdCallback;

    check-cast p3, Lio/bidmachine/unified/UnifiedBannerAdRequestParams;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/ads/networks/notsy/NotsyBanner;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lio/bidmachine/unified/UnifiedBannerAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V

    return-void
.end method

.method public load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lio/bidmachine/unified/UnifiedBannerAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 27
    new-instance p1, Lio/bidmachine/ads/networks/notsy/NotsyParams;

    invoke-direct {p1, p4}, Lio/bidmachine/ads/networks/notsy/NotsyParams;-><init>(Lio/bidmachine/unified/UnifiedMediationParams;)V

    .line 28
    invoke-virtual {p1, p2}, Lio/bidmachine/ads/networks/notsy/NotsyParams;->isValid(Lio/bidmachine/unified/UnifiedAdCallback;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 35
    :cond_0
    new-instance p1, Lio/bidmachine/ads/networks/notsy/NotsyBanner$Listener;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p3}, Lio/bidmachine/ads/networks/notsy/NotsyBanner$Listener;-><init>(Lio/bidmachine/ads/networks/notsy/NotsyBanner;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lio/bidmachine/ads/networks/notsy/NotsyBanner$1;)V

    iput-object p1, p0, Lio/bidmachine/ads/networks/notsy/NotsyBanner;->listener:Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAdListener;

    .line 36
    invoke-static {p5, p1}, Lio/bidmachine/ads/networks/notsy/NotsyNetwork;->loadBanner(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAdListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lio/bidmachine/ads/networks/notsy/NotsyBanner;->listener:Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAdListener;

    .line 42
    iget-object v1, p0, Lio/bidmachine/ads/networks/notsy/NotsyBanner;->notsyBannerAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd;

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v1}, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd;->destroy()V

    .line 44
    iput-object v0, p0, Lio/bidmachine/ads/networks/notsy/NotsyBanner;->notsyBannerAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd;

    :cond_0
    return-void
.end method
