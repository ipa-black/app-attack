.class public Lio/bidmachine/ads/networks/amazon/AmazonConfig;
.super Lio/bidmachine/NetworkConfig;
.source "AmazonConfig.java"


# static fields
.field static final APP_KEY:Ljava/lang/String; = "app_key"

.field static final SLOT_UUID:Ljava/lang/String; = "slot_uuid"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 21
    new-instance v0, Lio/bidmachine/ads/networks/amazon/AmazonConfig$1;

    invoke-direct {v0, p1}, Lio/bidmachine/ads/networks/amazon/AmazonConfig$1;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/bidmachine/ads/networks/amazon/AmazonConfig;-><init>(Ljava/util/Map;)V

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
    const-string v0, "amazon"

    invoke-direct {p0, v0, p1}, Lio/bidmachine/NetworkConfig;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected createNetworkAdapter()Lio/bidmachine/NetworkAdapter;
    .locals 1

    .line 34
    new-instance v0, Lio/bidmachine/ads/networks/amazon/AmazonAdapter;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/amazon/AmazonAdapter;-><init>()V

    return-object v0
.end method

.method public withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/lang/String;)Lio/bidmachine/ads/networks/amazon/AmazonConfig;
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, p1, p2, v0}, Lio/bidmachine/ads/networks/amazon/AmazonConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/ads/networks/amazon/AmazonConfig;

    move-result-object p1

    return-object p1
.end method

.method public withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/ads/networks/amazon/AmazonConfig;
    .locals 1

    .line 46
    new-instance v0, Lio/bidmachine/ads/networks/amazon/AmazonConfig$2;

    invoke-direct {v0, p0, p2, p3}, Lio/bidmachine/ads/networks/amazon/AmazonConfig$2;-><init>(Lio/bidmachine/ads/networks/amazon/AmazonConfig;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lio/bidmachine/ads/networks/amazon/AmazonConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    move-result-object p1

    check-cast p1, Lio/bidmachine/ads/networks/amazon/AmazonConfig;

    return-object p1
.end method
