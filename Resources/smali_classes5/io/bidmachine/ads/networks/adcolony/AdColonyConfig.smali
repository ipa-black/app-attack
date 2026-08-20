.class public Lio/bidmachine/ads/networks/adcolony/AdColonyConfig;
.super Lio/bidmachine/NetworkConfig;
.source "AdColonyConfig.java"


# static fields
.field private static final DEFAULT_STORE_ID:Ljava/lang/String; = "google"

.field static final KEY_ADM:Ljava/lang/String; = "adm"

.field static final KEY_APP_ID:Ljava/lang/String; = "app_id"

.field static final KEY_STORE_ID:Ljava/lang/String; = "store_id"

.field static final KEY_TOKEN:Ljava/lang/String; = "data"

.field static final KEY_ZONE_ID:Ljava/lang/String; = "zone_id"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 26
    const-string v0, "google"

    invoke-direct {p0, p1, v0}, Lio/bidmachine/ads/networks/adcolony/AdColonyConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 31
    new-instance v0, Lio/bidmachine/ads/networks/adcolony/AdColonyConfig$1;

    invoke-direct {v0, p1, p2}, Lio/bidmachine/ads/networks/adcolony/AdColonyConfig$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/bidmachine/ads/networks/adcolony/AdColonyConfig;-><init>(Ljava/util/Map;)V

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

    .line 38
    const-string v0, "adcolony"

    invoke-direct {p0, v0, p1}, Lio/bidmachine/NetworkConfig;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected createNetworkAdapter()Lio/bidmachine/NetworkAdapter;
    .locals 1

    .line 44
    new-instance v0, Lio/bidmachine/ads/networks/adcolony/AdColonyAdapter;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/adcolony/AdColonyAdapter;-><init>()V

    return-object v0
.end method

.method public withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/lang/String;)Lio/bidmachine/ads/networks/adcolony/AdColonyConfig;
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, p1, p2, v0}, Lio/bidmachine/ads/networks/adcolony/AdColonyConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/ads/networks/adcolony/AdColonyConfig;

    move-result-object p1

    return-object p1
.end method

.method public withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/ads/networks/adcolony/AdColonyConfig;
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/bidmachine/ads/networks/adcolony/AdColonyConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/ads/networks/adcolony/AdColonyConfig;

    move-result-object p1

    return-object p1
.end method

.method public withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/ads/networks/adcolony/AdColonyConfig;
    .locals 1

    .line 64
    new-instance v0, Lio/bidmachine/ads/networks/adcolony/AdColonyConfig$2;

    invoke-direct {v0, p0, p2, p3, p4}, Lio/bidmachine/ads/networks/adcolony/AdColonyConfig$2;-><init>(Lio/bidmachine/ads/networks/adcolony/AdColonyConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lio/bidmachine/ads/networks/adcolony/AdColonyConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    move-result-object p1

    check-cast p1, Lio/bidmachine/ads/networks/adcolony/AdColonyConfig;

    return-object p1
.end method
