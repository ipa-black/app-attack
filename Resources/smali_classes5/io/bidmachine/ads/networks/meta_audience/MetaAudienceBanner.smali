.class Lio/bidmachine/ads/networks/meta_audience/MetaAudienceBanner;
.super Lio/bidmachine/unified/UnifiedBannerAd;
.source "MetaAudienceBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/meta_audience/MetaAudienceBanner$Listener;
    }
.end annotation


# instance fields
.field private adView:Lcom/facebook/ads/AdView;

.field private listener:Lio/bidmachine/ads/networks/meta_audience/MetaAudienceBanner$Listener;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lio/bidmachine/unified/UnifiedBannerAd;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdCallback;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 19
    check-cast p2, Lio/bidmachine/unified/UnifiedBannerAdCallback;

    check-cast p3, Lio/bidmachine/unified/UnifiedBannerAdRequestParams;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceBanner;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lio/bidmachine/unified/UnifiedBannerAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V

    return-void
.end method

.method public load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lio/bidmachine/unified/UnifiedBannerAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 31
    new-instance p5, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceParams;

    invoke-direct {p5, p4}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceParams;-><init>(Lio/bidmachine/unified/UnifiedMediationParams;)V

    .line 32
    invoke-virtual {p5, p2}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceParams;->isValid(Lio/bidmachine/unified/UnifiedAdCallback;)Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    .line 36
    :cond_0
    sget-object p4, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceBanner$1;->$SwitchMap$io$bidmachine$banner$BannerSize:[I

    invoke-interface {p3}, Lio/bidmachine/unified/UnifiedBannerAdRequestParams;->getAdRequestParameters()Lio/bidmachine/banner/BannerAdRequestParameters;

    move-result-object p3

    invoke-virtual {p3}, Lio/bidmachine/banner/BannerAdRequestParameters;->getBannerSize()Lio/bidmachine/banner/BannerSize;

    move-result-object p3

    invoke-virtual {p3}, Lio/bidmachine/banner/BannerSize;->ordinal()I

    move-result p3

    aget p3, p4, p3

    const/4 p4, 0x1

    if-eq p3, p4, :cond_2

    const/4 p4, 0x2

    if-eq p3, p4, :cond_1

    .line 44
    sget-object p3, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    goto :goto_0

    .line 41
    :cond_1
    sget-object p3, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    goto :goto_0

    .line 38
    :cond_2
    sget-object p3, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    .line 47
    :goto_0
    new-instance p4, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceBanner$Listener;

    invoke-direct {p4, p2}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceBanner$Listener;-><init>(Lio/bidmachine/unified/UnifiedBannerAdCallback;)V

    iput-object p4, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceBanner;->listener:Lio/bidmachine/ads/networks/meta_audience/MetaAudienceBanner$Listener;

    .line 48
    new-instance p2, Lcom/facebook/ads/AdView;

    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p4, p5, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceParams;->placementId:Ljava/lang/String;

    invoke-direct {p2, p1, p4, p3}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    iput-object p2, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceBanner;->adView:Lcom/facebook/ads/AdView;

    .line 49
    invoke-virtual {p2}, Lcom/facebook/ads/AdView;->buildLoadAdConfig()Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p1

    iget-object p3, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceBanner;->listener:Lio/bidmachine/ads/networks/meta_audience/MetaAudienceBanner$Listener;

    .line 50
    invoke-interface {p1, p3}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/AdListener;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p1

    iget-object p3, p5, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceParams;->bidPayload:Ljava/lang/String;

    .line 51
    invoke-interface {p1, p3}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->withBid(Ljava/lang/String;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p1

    .line 52
    invoke-interface {p1}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->build()Lcom/facebook/ads/AdView$AdViewLoadConfig;

    move-result-object p1

    .line 49
    invoke-virtual {p2, p1}, Lcom/facebook/ads/AdView;->loadAd(Lcom/facebook/ads/AdView$AdViewLoadConfig;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceBanner;->listener:Lio/bidmachine/ads/networks/meta_audience/MetaAudienceBanner$Listener;

    .line 58
    iget-object v1, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceBanner;->adView:Lcom/facebook/ads/AdView;

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v1}, Lcom/facebook/ads/AdView;->destroy()V

    .line 60
    iput-object v0, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceBanner;->adView:Lcom/facebook/ads/AdView;

    :cond_0
    return-void
.end method
