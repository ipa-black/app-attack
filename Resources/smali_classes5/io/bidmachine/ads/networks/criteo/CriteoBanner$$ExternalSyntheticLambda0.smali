.class public final synthetic Lio/bidmachine/ads/networks/criteo/CriteoBanner$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/criteo/CriteoBanner;

.field public final synthetic f$1:Lio/bidmachine/ContextProvider;

.field public final synthetic f$2:Lcom/criteo/publisher/model/BannerAdUnit;

.field public final synthetic f$3:Lio/bidmachine/unified/UnifiedBannerAdCallback;

.field public final synthetic f$4:Lcom/criteo/publisher/Bid;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/criteo/CriteoBanner;Lio/bidmachine/ContextProvider;Lcom/criteo/publisher/model/BannerAdUnit;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lcom/criteo/publisher/Bid;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/criteo/CriteoBanner$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/ads/networks/criteo/CriteoBanner;

    iput-object p2, p0, Lio/bidmachine/ads/networks/criteo/CriteoBanner$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/ContextProvider;

    iput-object p3, p0, Lio/bidmachine/ads/networks/criteo/CriteoBanner$$ExternalSyntheticLambda0;->f$2:Lcom/criteo/publisher/model/BannerAdUnit;

    iput-object p4, p0, Lio/bidmachine/ads/networks/criteo/CriteoBanner$$ExternalSyntheticLambda0;->f$3:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    iput-object p5, p0, Lio/bidmachine/ads/networks/criteo/CriteoBanner$$ExternalSyntheticLambda0;->f$4:Lcom/criteo/publisher/Bid;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/criteo/CriteoBanner$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/ads/networks/criteo/CriteoBanner;

    iget-object v1, p0, Lio/bidmachine/ads/networks/criteo/CriteoBanner$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/ContextProvider;

    iget-object v2, p0, Lio/bidmachine/ads/networks/criteo/CriteoBanner$$ExternalSyntheticLambda0;->f$2:Lcom/criteo/publisher/model/BannerAdUnit;

    iget-object v3, p0, Lio/bidmachine/ads/networks/criteo/CriteoBanner$$ExternalSyntheticLambda0;->f$3:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    iget-object v4, p0, Lio/bidmachine/ads/networks/criteo/CriteoBanner$$ExternalSyntheticLambda0;->f$4:Lcom/criteo/publisher/Bid;

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/bidmachine/ads/networks/criteo/CriteoBanner;->lambda$load$0$io-bidmachine-ads-networks-criteo-CriteoBanner(Lio/bidmachine/ContextProvider;Lcom/criteo/publisher/model/BannerAdUnit;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lcom/criteo/publisher/Bid;)V

    return-void
.end method
