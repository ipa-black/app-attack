.class public Lio/bidmachine/ads/networks/notsy/NotsyConfig;
.super Lio/bidmachine/NetworkConfig;
.source "NotsyConfig.java"


# static fields
.field static final KEY_AD_UNIT_ID:Ljava/lang/String; = "ad_unit_id"

.field static final KEY_PRICE:Ljava/lang/String; = "price"

.field static final KEY_SCORE:Ljava/lang/String; = "score"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0}, Lio/bidmachine/ads/networks/notsy/NotsyConfig;-><init>(Ljava/util/Map;)V

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

    .line 24
    const-string v0, "notsy"

    invoke-direct {p0, v0, p1}, Lio/bidmachine/NetworkConfig;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected createNetworkAdapter()Lio/bidmachine/NetworkAdapter;
    .locals 1

    .line 30
    new-instance v0, Lio/bidmachine/ads/networks/notsy/NotsyAdapter;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/notsy/NotsyAdapter;-><init>()V

    return-object v0
.end method

.method public withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/ads/networks/notsy/NotsyConfig;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 37
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/ads/networks/notsy/NotsyConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/ads/networks/notsy/NotsyConfig;

    move-result-object p1

    return-object p1
.end method

.method public withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/ads/networks/notsy/NotsyConfig;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdsFormat;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/ads/networks/notsy/NotsyConfig;"
        }
    .end annotation

    .line 45
    new-instance v6, Lio/bidmachine/ads/networks/notsy/NotsyConfig$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/ads/networks/notsy/NotsyConfig$1;-><init>(Lio/bidmachine/ads/networks/notsy/NotsyConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, p1, v6}, Lio/bidmachine/ads/networks/notsy/NotsyConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    move-result-object p1

    check-cast p1, Lio/bidmachine/ads/networks/notsy/NotsyConfig;

    return-object p1
.end method
