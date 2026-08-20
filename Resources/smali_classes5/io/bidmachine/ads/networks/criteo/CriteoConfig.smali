.class public Lio/bidmachine/ads/networks/criteo/CriteoConfig;
.super Lio/bidmachine/NetworkConfig;
.source "CriteoConfig.java"


# static fields
.field static final AD_UNIT_ID:Ljava/lang/String; = "ad_unit_id"

.field static final PRICE:Ljava/lang/String; = "price"

.field static final PUBLISHER_ID:Ljava/lang/String; = "publisher_id"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 21
    new-instance v0, Lio/bidmachine/ads/networks/criteo/CriteoConfig$1;

    invoke-direct {v0, p1}, Lio/bidmachine/ads/networks/criteo/CriteoConfig$1;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/bidmachine/ads/networks/criteo/CriteoConfig;-><init>(Ljava/util/Map;)V

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

    .line 27
    const-string v0, "criteo"

    invoke-direct {p0, v0, p1}, Lio/bidmachine/NetworkConfig;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected createNetworkAdapter()Lio/bidmachine/NetworkAdapter;
    .locals 1

    .line 33
    new-instance v0, Lio/bidmachine/ads/networks/criteo/CriteoAdapter;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/criteo/CriteoAdapter;-><init>()V

    return-object v0
.end method

.method public withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/lang/String;)Lio/bidmachine/ads/networks/criteo/CriteoConfig;
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, p1, p2, v0}, Lio/bidmachine/ads/networks/criteo/CriteoConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/lang/String;Lio/bidmachine/Orientation;)Lio/bidmachine/ads/networks/criteo/CriteoConfig;

    move-result-object p1

    return-object p1
.end method

.method public withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/lang/String;Lio/bidmachine/Orientation;)Lio/bidmachine/ads/networks/criteo/CriteoConfig;
    .locals 1

    .line 44
    new-instance v0, Lio/bidmachine/ads/networks/criteo/CriteoConfig$2;

    invoke-direct {v0, p0, p2}, Lio/bidmachine/ads/networks/criteo/CriteoConfig$2;-><init>(Lio/bidmachine/ads/networks/criteo/CriteoConfig;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3}, Lio/bidmachine/ads/networks/criteo/CriteoConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/util/Map;Lio/bidmachine/Orientation;)Lio/bidmachine/NetworkConfig;

    move-result-object p1

    check-cast p1, Lio/bidmachine/ads/networks/criteo/CriteoConfig;

    return-object p1
.end method
