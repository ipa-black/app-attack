.class Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;
.super Ljava/lang/Object;
.source "InternalNotsyAdUnit.java"


# instance fields
.field private final adsFormat:Lio/bidmachine/AdsFormat;

.field private final customTargeting:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final internalNotsyData:Lio/bidmachine/ads/networks/notsy/InternalNotsyData;


# direct methods
.method constructor <init>(Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/notsy/InternalNotsyData;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdsFormat;",
            "Lio/bidmachine/ads/networks/notsy/InternalNotsyData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;->adsFormat:Lio/bidmachine/AdsFormat;

    .line 22
    iput-object p2, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;->internalNotsyData:Lio/bidmachine/ads/networks/notsy/InternalNotsyData;

    .line 23
    iput-object p3, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;->customTargeting:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 49
    :cond_1
    check-cast p1, Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;

    .line 50
    iget-object v2, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;->adsFormat:Lio/bidmachine/AdsFormat;

    iget-object v3, p1, Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;->adsFormat:Lio/bidmachine/AdsFormat;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;->internalNotsyData:Lio/bidmachine/ads/networks/notsy/InternalNotsyData;

    iget-object p1, p1, Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;->internalNotsyData:Lio/bidmachine/ads/networks/notsy/InternalNotsyData;

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method getAdsFormat()Lio/bidmachine/AdsFormat;
    .locals 1

    .line 28
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;->adsFormat:Lio/bidmachine/AdsFormat;

    return-object v0
.end method

.method getCustomTargeting()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;->customTargeting:Ljava/util/Map;

    return-object v0
.end method

.method getInternalNotsyData()Lio/bidmachine/ads/networks/notsy/InternalNotsyData;
    .locals 1

    .line 33
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;->internalNotsyData:Lio/bidmachine/ads/networks/notsy/InternalNotsyData;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 56
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;->adsFormat:Lio/bidmachine/AdsFormat;

    invoke-virtual {v0}, Lio/bidmachine/AdsFormat;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 57
    iget-object v1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;->internalNotsyData:Lio/bidmachine/ads/networks/notsy/InternalNotsyData;

    invoke-virtual {v1}, Lio/bidmachine/ads/networks/notsy/InternalNotsyData;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
