.class Lio/bidmachine/ads/networks/criteo/CriteoAdUnitStorage;
.super Ljava/lang/Object;
.source "CriteoAdUnitStorage.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final adUnitMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/criteo/publisher/model/AdUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/bidmachine/ads/networks/criteo/CriteoAdUnitStorage;->adUnitMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static extractAdUnits(Lio/bidmachine/NetworkConfigParams;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/NetworkConfigParams;",
            ")",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/AdUnit;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-static {}, Lio/bidmachine/AdsFormat;->values()[Lio/bidmachine/AdsFormat;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/bidmachine/NetworkConfigParams;->obtainNetworkMediationConfigs([Lio/bidmachine/AdsFormat;)Ljava/util/EnumMap;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 34
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-virtual {p0}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 36
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/AdsFormat;

    if-nez v3, :cond_2

    goto :goto_0

    .line 40
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_3

    goto :goto_0

    .line 44
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 45
    const-string v5, "ad_unit_id"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 46
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    .line 51
    :cond_5
    sget-object v5, Lio/bidmachine/ads/networks/criteo/CriteoAdUnitStorage$1;->$SwitchMap$io$bidmachine$AdsFormat:[I

    invoke-virtual {v3}, Lio/bidmachine/AdsFormat;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    move-object v5, v0

    goto :goto_2

    .line 65
    :pswitch_0
    new-instance v5, Lcom/criteo/publisher/model/InterstitialAdUnit;

    invoke-direct {v5, v4}, Lcom/criteo/publisher/model/InterstitialAdUnit;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 60
    :pswitch_1
    new-instance v5, Lcom/criteo/publisher/model/BannerAdUnit;

    new-instance v6, Lcom/criteo/publisher/model/AdSize;

    const/16 v7, 0x2d8

    const/16 v8, 0x5a

    invoke-direct {v6, v7, v8}, Lcom/criteo/publisher/model/AdSize;-><init>(II)V

    invoke-direct {v5, v4, v6}, Lcom/criteo/publisher/model/BannerAdUnit;-><init>(Ljava/lang/String;Lcom/criteo/publisher/model/AdSize;)V

    goto :goto_2

    .line 57
    :pswitch_2
    new-instance v5, Lcom/criteo/publisher/model/BannerAdUnit;

    new-instance v6, Lcom/criteo/publisher/model/AdSize;

    const/16 v7, 0x12c

    const/16 v8, 0xfa

    invoke-direct {v6, v7, v8}, Lcom/criteo/publisher/model/AdSize;-><init>(II)V

    invoke-direct {v5, v4, v6}, Lcom/criteo/publisher/model/BannerAdUnit;-><init>(Ljava/lang/String;Lcom/criteo/publisher/model/AdSize;)V

    goto :goto_2

    .line 54
    :pswitch_3
    new-instance v5, Lcom/criteo/publisher/model/BannerAdUnit;

    new-instance v6, Lcom/criteo/publisher/model/AdSize;

    const/16 v7, 0x140

    const/16 v8, 0x32

    invoke-direct {v6, v7, v8}, Lcom/criteo/publisher/model/AdSize;-><init>(II)V

    invoke-direct {v5, v4, v6}, Lcom/criteo/publisher/model/BannerAdUnit;-><init>(Ljava/lang/String;Lcom/criteo/publisher/model/AdSize;)V

    :goto_2
    if-eqz v5, :cond_4

    .line 69
    sget-object v6, Lio/bidmachine/ads/networks/criteo/CriteoAdUnitStorage;->adUnitMap:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static getAdUnit(Ljava/lang/String;)Lcom/criteo/publisher/model/AdUnit;
    .locals 1

    .line 79
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 82
    :cond_0
    sget-object v0, Lio/bidmachine/ads/networks/criteo/CriteoAdUnitStorage;->adUnitMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/criteo/publisher/model/AdUnit;

    return-object p0
.end method

.method static getAdUnitMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/criteo/publisher/model/AdUnit;",
            ">;"
        }
    .end annotation

    .line 87
    sget-object v0, Lio/bidmachine/ads/networks/criteo/CriteoAdUnitStorage;->adUnitMap:Ljava/util/Map;

    return-object v0
.end method
