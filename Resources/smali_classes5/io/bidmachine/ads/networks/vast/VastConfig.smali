.class public Lio/bidmachine/ads/networks/vast/VastConfig;
.super Lio/bidmachine/NetworkConfig;
.source "VastConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    const-string v0, "vast"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/bidmachine/NetworkConfig;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected createNetworkAdapter()Lio/bidmachine/NetworkAdapter;
    .locals 1

    .line 17
    new-instance v0, Lio/bidmachine/ads/networks/vast/VastAdapter;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/vast/VastAdapter;-><init>()V

    return-object v0
.end method
