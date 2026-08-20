.class public Lio/bidmachine/ads/networks/meta_audience/MetaAudienceConfig;
.super Lio/bidmachine/NetworkConfig;
.source "MetaAudienceConfig.java"


# static fields
.field static final KEY_APP_ID:Ljava/lang/String; = "app_id"

.field static final KEY_BID_PAYLOAD:Ljava/lang/String; = "bid_payload"

.field static final KEY_PLACEMENT_ID:Ljava/lang/String; = "meta_key"

.field static final KEY_TOKEN:Ljava/lang/String; = "token"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 25
    new-instance v0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceConfig$1;

    invoke-direct {v0, p1}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceConfig$1;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceConfig;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 31
    const-string v0, "meta_audience"

    invoke-direct {p0, v0, p1}, Lio/bidmachine/NetworkConfig;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected createNetworkAdapter()Lio/bidmachine/NetworkAdapter;
    .locals 1

    .line 37
    new-instance v0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceAdapter;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceAdapter;-><init>()V

    return-object v0
.end method

.method public withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/lang/String;)Lio/bidmachine/ads/networks/meta_audience/MetaAudienceConfig;
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, p1, p2, v0}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/ads/networks/meta_audience/MetaAudienceConfig;

    move-result-object p1

    return-object p1
.end method

.method public withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/ads/networks/meta_audience/MetaAudienceConfig;
    .locals 1

    .line 49
    new-instance v0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceConfig$2;

    invoke-direct {v0, p0, p2, p3}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceConfig$2;-><init>(Lio/bidmachine/ads/networks/meta_audience/MetaAudienceConfig;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    move-result-object p1

    check-cast p1, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceConfig;

    return-object p1
.end method
