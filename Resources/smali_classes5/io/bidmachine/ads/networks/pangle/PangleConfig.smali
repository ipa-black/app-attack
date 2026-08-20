.class public Lio/bidmachine/ads/networks/pangle/PangleConfig;
.super Lio/bidmachine/NetworkConfig;
.source "PangleConfig.java"


# static fields
.field static final KEY_APP_ID:Ljava/lang/String; = "app_id"

.field static final KEY_BID_PAYLOAD:Ljava/lang/String; = "bid_payload"

.field static final KEY_BID_TOKEN:Ljava/lang/String; = "network_bid_token"

.field static final KEY_SLOT_ID:Ljava/lang/String; = "slot_id"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 21
    new-instance v0, Lio/bidmachine/ads/networks/pangle/PangleConfig$1;

    invoke-direct {v0, p1}, Lio/bidmachine/ads/networks/pangle/PangleConfig$1;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/bidmachine/ads/networks/pangle/PangleConfig;-><init>(Ljava/util/Map;)V

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

    .line 28
    const-string v0, "pangle"

    invoke-direct {p0, v0, p1}, Lio/bidmachine/NetworkConfig;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected createNetworkAdapter()Lio/bidmachine/NetworkAdapter;
    .locals 1

    .line 34
    new-instance v0, Lio/bidmachine/ads/networks/pangle/PangleAdapter;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/pangle/PangleAdapter;-><init>()V

    return-object v0
.end method

.method public withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/lang/String;)Lio/bidmachine/ads/networks/pangle/PangleConfig;
    .locals 1

    .line 40
    new-instance v0, Lio/bidmachine/ads/networks/pangle/PangleConfig$2;

    invoke-direct {v0, p0, p2}, Lio/bidmachine/ads/networks/pangle/PangleConfig$2;-><init>(Lio/bidmachine/ads/networks/pangle/PangleConfig;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lio/bidmachine/ads/networks/pangle/PangleConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    move-result-object p1

    check-cast p1, Lio/bidmachine/ads/networks/pangle/PangleConfig;

    return-object p1
.end method
